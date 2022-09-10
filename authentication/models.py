import jwt
from datetime import datetime, timedelta
from django.conf import settings
from django.contrib.auth.models import (
    AbstractBaseUser, BaseUserManager, PermissionsMixin
)
from django.db import models
from core.models import TimeStampedModel

class UserManager(BaseUserManager):
    """
    Django requires that custom users define their own Manager class. By
    inheriting from `BaseUserManager`, we get a lot of the same code used by
    Django to create a `User`. 

"""

    def create_user(self ,email,fullName, password=None):

        if fullName is None:
            raise TypeError('Users must have a username')
        
        if email is None:
            raise TypeError('Users must have an email address.')

    
        user = self.model(username=fullName,fullName=fullName, email=self.normalize_email(email))
        user.set_password(password)
        user.save()
        return user

    def create_superuser(self,email, password):

        if password is None:
            raise TypeError('Superusers must have a password.')
        fullName = email
        user = self.create_user(fullName, email, password)
        user.is_superuser = True
        user.is_staff = True
        user.save()

        return user


class User(AbstractBaseUser, PermissionsMixin, TimeStampedModel):

    username = models.CharField(db_index=True, max_length=255,unique=True)
    fullName = models.CharField(max_length=255,blank=True,null=True)
    email = models.EmailField(db_index=True, unique=True)
    rememberMe = models.BooleanField(default=False)
    terms = models.BooleanField(default=True,blank=True,null=True)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    is_available = models.BooleanField(default=False)   

    # The `USERNAME_FIELD` property tells us which field we will use to log in.
    # In this case we want it to be the email field.
    USERNAME_FIELD = 'email'

    # Tells Django that the UserManager class defined above should manage
    # objects of this type.
    objects = UserManager()

    def __str__(self):
        return self.email

    @property
    def token(self):
        """
        Allows us to get a user's token by calling `user.token` instead of
        `user.generate_jwt_token().

        The `@property` decorator above makes this possible. `token` is called
        a "dynamic property".
        """
        return self._generate_jwt_token()

    def get_full_name(self):
        return self.username

    def get_short_name(self):
        return self.username

    def _generate_jwt_token(self):
        dt = datetime.now() + timedelta(days=60)

        token = jwt.encode({
            'id': self.pk,
            'exp': int(dt.strftime('%s'))
        }, settings.SECRET_KEY, algorithm='HS256')

        return token.decode('utf-8')


class UserNotification(TimeStampedModel):
    user = models.ForeignKey(User,on_delete=models.CASCADE,related_name="users",blank=True,null=True)
    email = models.EmailField(unique=True)
    label = models.CharField(max_length=255,blank=True,null=True)
    
    def __str__(self):
        return self.user.email
    