from django.db import models
from core.models import TimeStampedModel



class Permission(TimeStampedModel):
    view  = models.CharField(max_length=255)
    app = models.CharField(max_length=255)
    view_perm = models.CharField(max_length=255,blank=True)
    description = models.TextField()

    class Meta:
        verbose_name_plural="Permissions"
        ordering = ["id"]

    def __str__(self):
        return u'%s' % self.view



class Role(TimeStampedModel):
    role = models.CharField(max_length=255, null=False)
    permission = models.ManyToManyField(Permission, related_name="roles")

    class Meta:
        verbose_name_plural="Roles"
        ordering = ["role"]

    def __str__(self):
        return u'%s' % self.role



class Profile(TimeStampedModel):

    user = models.OneToOneField('authentication.User', on_delete=models.CASCADE,related_name="profiles")
    description = models.TextField(blank=True)
    image = models.ImageField(upload_to='staticfiles/assets/images/profiles/',max_length=512,blank=True, null=True)
    image_base64 = models.TextField(blank=True, null=True)
    fullName = models.CharField(max_length=256,blank=True,null=True)
    date = models.DateTimeField(blank=True,null=True)
    firstName = models.CharField(max_length=256,blank=True,null=True)
    lastName = models.CharField(max_length=256,blank=True,null=True)
    school = models.CharField(max_length=256,blank=True,null=True)
    city = models.CharField(max_length=256,blank=True,null=True)
    branch = models.CharField(max_length=256,blank=True,null=True)
    tel = models.CharField(max_length=256,blank=True,null=True)
    role = models.ForeignKey('role', on_delete=models.CASCADE, related_name="profiles", blank= True, null= True)
    pdfResult = models.CharField(max_length=256,blank=True,null=True)
    
    def __str__(self):
        return self.user.username
    
    
    def get_permission(self):
        permissions = []
        roles = self.role.permission.all()
        for r in roles:
            permissions.append(r.type)
        return permissions
        




