from rest_framework import serializers
from profile.models import Profile
from profile.fields import Base64ImageField

class ProfileSerializer(serializers.ModelSerializer):
    image_base64 = Base64ImageField(required=False, allow_null=True)
    image = serializers.CharField(required=False, allow_null=True,allow_blank=True)
    class Meta:
        model = Profile
        fields = ('fullName', 'date', 'image_base64', 'image',
                  'school', 'city', 'branch', 'tel', 'description')
    
    def validate(self, data):
        if "image_base64" in data and data["image_base64"]:
            try:
                decoded_image = data["image_base64"]
                data["image"] = decoded_image
            except:
                raise serializers.ValidationError({'detail': 'photo invalid format'})
        return data
    
    def image_url(self, string):
        return 'media/staticfiles/'+ string
