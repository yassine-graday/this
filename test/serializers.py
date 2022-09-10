from rest_framework import serializers
from test.models import Test,Question,Element,Resultparam
from profile.serializers import ProfileSerializer
from profile.models import Profile


class ResultparamSerializer(serializers.ModelSerializer):
    name = serializers.CharField(max_length=128)
    class Meta:
        model= Resultparam
        fields=( 'name',)



class QuestionSerializer(serializers.ModelSerializer):
    params = ResultparamSerializer(read_only=True, many=True) 
    name = serializers.CharField(max_length=128)
    class Meta:
        model= Question
        fields=( 'name','params')
        


class ElementSerializer(serializers.ModelSerializer):
     
    name = serializers.CharField(max_length=128)
    questions= QuestionSerializer(many=True)
    
    class Meta:
        model= Element
        fields=( 'name', 'questions',)
        


class TestSerializer(serializers.ModelSerializer):
     
    #membre = ProfileSerializer()
    membre_id = serializers.IntegerField(read_only=False)

    class Meta:
        model= Test
        fields=('membre_id', 'name','question1','question2','question3','question4','question5','question6','question7','question8','question9','question10',
        'question11','question12','question13','question14','question15','question16','question17','question18','question19','question20',)
        
    def create(self, validated_data):
        user_id = validated_data.pop('membre_id')
        membre = Profile.objects.filter(user__pk=user_id).first()
        return Test.objects.create(membre=membre,**validated_data)    


class TestRatingSerializer(serializers.ModelSerializer):
    membre_id = serializers.IntegerField(required=False)
    class Meta:
        model= Test
        fields= ('rating','membre_id')

    def update(self, instance, validated_data):
        user_id = validated_data.pop('membre_id')
        rating = validated_data.pop('rating', None)
        membre = Profile.objects.filter(user__pk=user_id).first()
        test = Test.objects.filter(membre=membre)
        test.rating=rating
        return test


class RatingRapportSerializer(serializers.ModelSerializer):
    tbien_count = serializers.IntegerField(required=False)
    bien_count = serializers.IntegerField(required=False)
    mediocre_count = serializers.IntegerField(required=False)
    
    class Meta:
        model = Test
        fields = ('tbien_count', 'bien_count', 'mediocre_count')


