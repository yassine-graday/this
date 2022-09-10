from django.contrib.auth import authenticate
from rest_framework import serializers

from profile.serializers import ProfileSerializer

from .models import User,UserNotification


class RegistrationSerializer(serializers.ModelSerializer):
    fullName = serializers.CharField(max_length=256,required=False)
    password = serializers.CharField(
        max_length=128,
        min_length=8,
        write_only=True
    )
    # The client should not be able to send a token along with a registration
    # request. Making `token` read-only handles that for us.
    token = serializers.CharField(max_length=255, read_only=True)
    password = serializers.CharField(
        max_length=265,
       )
    class Meta:
        model = User
        fields = ['email','fullName','password','token']

    def create(self, validated_data):
        return User.objects.create_user(**validated_data)


class RequestPassSerializer(serializers.ModelSerializer):
    email = serializers.CharField(source='user.email', max_length=256,required=False)
    class Meta:
        model = User
        fields = ['email',]

    def create(self, validated_data):
        return UserNotification.objects.create(**validated_data)


class LoginSerializer(serializers.Serializer):
    id = serializers.IntegerField(required=False)
    email = serializers.CharField(max_length=255)
    fullName = serializers.CharField(max_length=256,required=False)
    password = serializers.CharField(max_length=128, write_only=True)
    token = serializers.CharField(max_length=255, read_only=True)
    rememberMe = serializers.BooleanField(required=False)
    role = serializers.CharField(max_length=255,required=False)
    is_available = serializers.BooleanField(required=False)


    def validate(self, data):

        email = data.get('email', None)
        password = data.get('password', None)

        if email is None:
            raise serializers.ValidationError(
                'email required !!'
            )

        if password is None:
            raise serializers.ValidationError(
                'password required !!'
            )

        # check authentication read docs !!

        user = authenticate(email=email, password=password)

        if user is None:
            raise serializers.ValidationError(
                'user not found !!'
            )

        if not user.is_active:
            raise serializers.ValidationError(
                'user deactivated !!'
            )

           # The `validate` method should return a dictionary of validated data.
        # This is the data that is passed to the `create` and `update` methods
        # that we will see later on.
        return {
            'id': user.id,
            'email': user.email,
            'fullName': user.fullName,
            'token': user.token,
            'is_available' : user.is_available,
            'rememberMe' : user.rememberMe
        }


class UserSerializer(serializers.ModelSerializer):
    # Passwords should not be handled with `setattr`, unlike other fields.
        # Django provides a function that handles hashing and
        # salting passwords. That means
        # we need to remove the password field from the
        # `validated_data` dictionary before iterating over it.
    password = serializers.CharField(max_length=128, min_length=8, write_only=True)

    profile = ProfileSerializer(write_only=True)
    bio = serializers.CharField(source='profile.bio', read_only=True)
    image = serializers.CharField(source='profile.image', read_only=True)


    class Meta:
        model= User
        fields=('email', 'username', 'password', 'token', 'profile', 'bio', 'image',)
        read_only_fields= ('token',)


    def update(self, instance, validated_data):


        password = validated_data.pop('password', None)
        profile_data = validated_data.pop('profile', {})

        for (key,value) in validated_data.items():
            setattr(instance, key, value)

        if password is not None:
            # DJANGO FEATURE ====> .set_password handles all the security features ( to check out later)
            instance.set_password(password)    

        instance.save()

        for(key,value) in profile_data.items():
            setattr(instance.profile, key, value) 

        instance.profile.save()    
        return instance

    # it is possible to create a user with this serializer, but we want the creation of a user to be handeled bu RegistrationSerializer
    
class UserPassSerializer(serializers.ModelSerializer):
        # Passwords should not be handled with `setattr`, unlike other fields.
        # Django provides a function that handles hashing and
        # salting passwords. That means
        # we need to remove the password field from the
        # `validated_data` dictionary before iterating over it.
    password = serializers.CharField(max_length=128, min_length=8, write_only=True)


    class Meta:
        model= User
        fields=('password', )
        
    def update(self, instance, validated_data):
    

        password = validated_data.pop('password', None)

        for (key,value) in validated_data.items():
            setattr(instance, key, value)

        if password is not None:
            # DJANGO FEATURE ====> .set_password handles all the security features ( to check out later)
            instance.set_password(password)    

        instance.save()   
        return instance



    