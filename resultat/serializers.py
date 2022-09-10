from config.settings.base import DATETIME_FORMAT
from django.db.models import fields
from rest_framework import serializers
from rest_framework.fields import ReadOnlyField
from resultat.models import Resultat


class ResultatSerializer(serializers.ModelSerializer):

 #   username = serializers.CharField(source='user.username')
    name = serializers.CharField(allow_blank= True, required=False)

    #personna 
    pratique = serializers.IntegerField( required=False)
    methodique = serializers.IntegerField( required=False)
    entreprenant = serializers.IntegerField( required=False)
    social = serializers.IntegerField( required=False)
    creatif = serializers.IntegerField( required=False)
    investigateur = serializers.IntegerField( required=False)

    #metier

    metier1 = serializers.IntegerField( required=False)
    metier2 = serializers.IntegerField( required=False)
    metier3 = serializers.IntegerField( required=False)
    metier4 = serializers.IntegerField( required=False)
    metier5 = serializers.IntegerField( required=False)
    metier6 = serializers.IntegerField( required=False)
    metier7 = serializers.IntegerField( required=False)
    metier8 = serializers.IntegerField( required=False)
    metier9 = serializers.IntegerField( required=False)
    metier10 = serializers.IntegerField( required=False)
    metier11 = serializers.IntegerField( required=False)
    metier12 = serializers.IntegerField( required=False)
    metier13 = serializers.IntegerField( required=False)
    metier14 = serializers.IntegerField( required=False)

    class Meta:
        model = Resultat
        fields = ('name', 'pratique', 'methodique','entreprenant','social','creatif','investigateur','metier1','metier2','metier3','metier4','metier5','metier6','metier7','metier8','metier9','metier10','metier11','metier12','metier13','metier14')

"""    def get_image(self, obj):
        if obj.image:
            return obj.image

        return 'static/images/image.jpg'        
"""


class ResultatHistorySerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(read_only=True)
    name = serializers.CharField(allow_blank= True, required=False)
    created_at = serializers.DateTimeField(format=DATETIME_FORMAT, input_formats=None, required=False)
    imagePdf = serializers.FileField(max_length=None, allow_empty_file=True, use_url=True)
    
    class Meta:
        model = Resultat
        fields = ('id','name','created_at','imagePdf')
    
        
    
class ResultatPdfSerializer(serializers.ModelSerializer):
    imagePdf = serializers.SerializerMethodField()
    class Meta:
        model = Resultat
        fields = ('name','imagePdf')
    
    def get_imagePdf(self, res):
        request = self.context.get('request')
        imagePdf = res.imagePdf.url
        return request.build_absolute_uri(imagePdf)