from django.db.models.signals import post_save
from django.dispatch.dispatcher import receiver

from authentication.models import User
from profile.models import Profile


@receiver(post_save, sender=User )
def create_related_profile(sender, instance, created, *args, **kwargs):

    if instance and created :
        instance.profile = Profile.objects.create(user= instance,fullName=instance.fullName)