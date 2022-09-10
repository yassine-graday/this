from django.db import models
from profile.models import Profile
from test.models import Test
from core.models import TimeStampedModel
from resultat.filesettings import MyFileStorage
# Create your models here.
class Resultat(TimeStampedModel):
    
    mfs = MyFileStorage()
    
    membre = models.ForeignKey(Profile,on_delete=models.CASCADE,related_name='resultats')
    test = models.ForeignKey(Test,on_delete=models.CASCADE,related_name="resultats")
    name = models.CharField(max_length=255)
    description = models.TextField(blank=True,null=True)
    #persona
    imagePdf =  models.FileField(storage = mfs,upload_to='staticfiles/assets/images/results/',blank=True,null=True)

    pratique =  models.FloatField(blank=True,null=True)
    pratiqueDesc =  models.TextField(blank=True,null=True)
    methodique= models.FloatField(blank=True,null=True)
    methodiqueDesc =  models.TextField(blank=True,null=True)
    entreprenant = models.FloatField(blank=True,null=True)
    entreprenantDesc =  models.TextField(blank=True,null=True)
    social = models.FloatField(blank=True,null=True)
    socialDesc =  models.TextField(blank=True,null=True)
    creatif = models.FloatField(blank=True,null=True)
    creatifDesc =  models.TextField(blank=True,null=True)
    investigateur = models.FloatField(blank=True,null=True)
    investigateurDesc =  models.TextField(blank=True,null=True) 

    #meties

    metier1= models.FloatField(blank=True,null=True)
    metier2= models.FloatField(blank=True,null=True)
    metier3= models.FloatField(blank=True,null=True)
    metier4= models.FloatField(blank=True,null=True)
    metier5= models.FloatField(blank=True,null=True)
    metier6= models.FloatField(blank=True,null=True)
    metier7= models.FloatField(blank=True,null=True)
    metier8= models.FloatField(blank=True,null=True)
    metier9= models.FloatField(blank=True,null=True)
    metier10= models.FloatField(blank=True,null=True)
    metier11= models.FloatField(blank=True,null=True)
    metier12= models.FloatField(blank=True,null=True)
    metier13= models.FloatField(blank=True,null=True)
    metier14= models.FloatField(blank=True,null=True)


    class Meta:
            verbose_name_plural="resultats"
            ordering = ["id"]
    
    def __str__(self):
        return self.name
        
class ResulatMetier(models.Model):
    resultat_metier= models.ForeignKey(Resultat,models.CASCADE,related_name='resultatmetiers')
    name = models.CharField(max_length=255)
    pourcentage = models.FloatField(blank=True,null=True)
    description = models.TextField(blank=True,null=True)


    class Meta:
            verbose_name_plural="Metiers"
            ordering = ["id"]
    
    def __str__(self):
        return self.name
        

class ResulataPersona(models.Model):
    resultat_persona= models.ForeignKey(Resultat,models.CASCADE,related_name='resultatpersonna')
    name = models.CharField(max_length=255)
    pourcentage = models.FloatField(blank=True,null=True)
    description = models.TextField(blank=True,null=True)


    class Meta:
            verbose_name_plural="Personna"
            ordering = ["id"]
    
    def __str__(self):
        return self.name
        
          
"""{
    "question1": {
        "Plus": "Diriger un groupe",
        "Moin": "Tondre une pelouse"
    },
    "question2": {
        "Plus": "Tondre une pelouse",
        "Moin": "Aider quelqu'un à surmonter une difficulté"
    },
    "question3": {
        "Plus": "Diriger un groupe",
        "Moin": "Aider quelqu'un à surmonter une difficulté"
    }
} """     