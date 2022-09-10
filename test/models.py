from django.db import models
from core.models import TimeStampedModel
from profile.models import Profile
BLANK = 'BLANK'
TBIEN = 'TBIEN'
BIEN = 'BIEN'
MEDIOCRE = 'MEDIOCRE'
CHOICES = [
        (BLANK, 'Blank'),
        (TBIEN, 'Tbien'),
        (BIEN, 'Bien'),
        (MEDIOCRE, 'Mediocre'),
    ]
# Create your models here.
class Test(TimeStampedModel):
    membre = models.ForeignKey(Profile,on_delete=models.CASCADE,related_name='tests')
    name = models.CharField(max_length=255,blank=True,null=True)
    question1 = models.CharField(max_length=255,blank=True,null=True)
    question2 = models.CharField(max_length=255,blank=True,null=True)
    question3 = models.CharField(max_length=255,blank=True,null=True)
    question4 = models.CharField(max_length=255,blank=True,null=True)
    question5 = models.CharField(max_length=255,blank=True,null=True)
    question6 = models.CharField(max_length=255,blank=True,null=True)
    question7 = models.CharField(max_length=255,blank=True,null=True)
    question8 = models.CharField(max_length=255,blank=True,null=True)
    question9 = models.CharField(max_length=255,blank=True,null=True)
    question10 = models.CharField(max_length=255,blank=True,null=True)
    question11 = models.CharField(max_length=255,blank=True,null=True)
    question12 = models.CharField(max_length=255,blank=True,null=True)
    question13 = models.CharField(max_length=255,blank=True,null=True)
    question14 = models.CharField(max_length=255,blank=True,null=True)
    question15 = models.CharField(max_length=255,blank=True,null=True)
    question16 = models.CharField(max_length=255,blank=True,null=True)
    question17 = models.CharField(max_length=255,blank=True,null=True)
    question18 = models.CharField(max_length=255,blank=True,null=True)
    question19 = models.CharField(max_length=255,blank=True,null=True)
    question20 = models.CharField(max_length=255,blank=True,null=True)

    elements = models.ManyToManyField('Element',related_name='tests',blank=True,null=True)
    
    rating = models.CharField(
        max_length=265,
        choices=CHOICES,
        default=BLANK, blank=True,null=True
    )
    tbien_count = models.IntegerField(blank=True, null=True)
    bien_count = models.IntegerField(blank=True,null=True)
    mediocre_count = models.IntegerField(blank=True,null=True)

    

        
class TypeTest(TimeStampedModel):
    name = models.CharField(max_length=255)
    def __str__(self):
        return self.name
        
class Resultparam(models.Model):
    name = models.CharField(max_length=255, blank= True, null= True)
    class Meta:
            verbose_name_plural="PResultats"
            ordering = ["id"]
    def __str__(self):
        return self.name
            

class Question(models.Model):
    name = models.CharField(max_length=255, blank= True, null= True)
    params=models.ManyToManyField(Resultparam,related_name='questions')
    class Meta:
            verbose_name_plural="Questions"
            ordering = ["id"]
    def __str__(self):
        return self.name
            




class Page(TimeStampedModel):

    test = models.ForeignKey('Test',on_delete=models.CASCADE,related_name='pages')
    name = models.CharField(max_length=255, blank= True, null= True)
    title = models.CharField(max_length=255, blank= True, null= True)
    description = models.TextField()

    def __str__(self):
        return self.name





class Element(TimeStampedModel):
#    page = models.ForeignKey('Page',on_delete=models.CASCADE,related_name='elements')
#    typelement = models.ForeignKey('TypeElement',on_delete=models.CASCADE,related_name='elements')
#   title=models.CharField(max_length=255, blank= True, null= True)


    name = models.CharField(max_length=255, blank= True, null= True)
    questions = models.ManyToManyField(Question,related_name='elements', blank= True, null= True)

    def __str__(self):
        return self.name
        



class TypeElement(TimeStampedModel):

    param= models.ManyToManyField('ElementParam',related_name='typeelements')
    name = models.CharField(max_length=255, blank= True, null= True)

    class Meta:
        ordering = ["name"]
    def __str__(self):
        return self.name
        




class ElementParam(TimeStampedModel):
    name = models.CharField(max_length=255, blank= True, null= True)
    param=models.CharField(max_length=255) 
    param_value =models.CharField(max_length=255) 

    class Meta:
            verbose_name_plural="parametres"
            ordering = ["id"]
    def __str__(self):
        return self.name
    


    
