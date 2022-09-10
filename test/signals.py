from django.db.models.signals import post_save
from django.dispatch.dispatcher import receiver
#import plotly.express as px
#import pandas as pd
import os    
from test.models import Test,Question,Resultparam
from resultat.models import Resultat
#import pdfkit
from django.core.files import File
from django.core.files.temp import NamedTemporaryFile
import urllib.request






@receiver(post_save, sender=Test )
def create_related_resultat(sender, instance, created, *args, **kwargs):
    param1count = 27
    param2count = 39
    param3count = 46
    param4count = 26
    param5count = 18
    param6count = 32
    param7count = 29
    param8count = 36
    param9count = 34
    param10count =33
    param11count =  29
    param12count = 32
    param13count = 25
    param14count = 29
    param15count = 36
    param16count = 37
    param17count = 40
    param18count = 39
    param19count = 41
    param20count = 39

    #answers
    question1=instance.question1
    question2=instance.question2
    question3=instance.question3
    question4=instance.question4
    question5=instance.question5
    question6=instance.question6
    question7=instance.question7
    question8=instance.question8
    question9=instance.question9
    question10=instance.question10
    question11=instance.question11
    question12=instance.question12
    question13=instance.question13
    question14=instance.question14
    question15=instance.question15
    question16=instance.question16
    question17=instance.question17
    question18=instance.question18
    question19=instance.question19
    question20=instance.question20    
    
    
    questions= [question1,question2,question3,question4,question5,question6,question7,question8,question9,question10,question11,question12,question13,question14,question15,question16,question17,question18,question19,question20]
    creatifCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="CREATIF").filter(questions__name=q).count()
        creatifCount=creatifCount+count
    creatif = int(abs((creatifCount/param1count +0.30)*100))
    
    
    #for q range(len(questions)):
    methCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="METHODIQUE").filter(questions__name=q).count()
        methCount=methCount+count
    meth = int(abs((methCount/param2count  +  0.30 )*100))
    
    #for q range(len(questions)):
    pratiqueCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="PRATIQUE").filter(questions__name=q).count()
        pratiqueCount=pratiqueCount+count
    pratique = int(abs((pratiqueCount/param3count  +  0.30 )*100))
    
    #for q range(len(questions)):
    socialCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="SOCIAL").filter(questions__name=q).count()
        socialCount=socialCount+count
    social = int(abs((socialCount/param4count  +  0.30 )*100))
    
    #for q range(len(questions)):
    investigCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="INVESTIGATEUR").filter(questions__name=q).count()
        investigCount=investigCount+count
    inves= int(abs((investigCount/param5count  +  0.30 )*100))
    
    #for q range(len(questions)):
    entrprCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="ENTREPRENANT").filter(questions__name=q).count()
        entrprCount=entrprCount+count
    entre = int(abs((entrprCount/param6count  +  0.30 )*100))
    
    #for q range(len(questions)):
    aCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="A").filter(questions__name=q).count()
        aCount=aCount+count
    metier1= int(abs((aCount/param7count  +  0.15 )*100))
    
    #for q range(len(questions)):
    bCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="B").filter(questions__name=q).count()
        bCount=bCount+count
    metier2= int(abs((bCount/param8count  +  0.15 )*100))
    
    #for q range(len(questions)):
    cCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="C").filter(questions__name=q).count()
        cCount=cCount+count
    metier3= int(abs((cCount/param9count  +  0.15 )*100))
    
    #for q range(len(questions)):
    dCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="D").filter(questions__name=q).count()
        dCount=dCount+count
    metier4= int(abs((dCount/param10count  +  0.15 )*100))
    
    #for q range(len(questions)):
    eCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="E").filter(questions__name=q).count()
        eCount=eCount+count
    metier5= int(abs((eCount/param11count  +  0.15 )*100))
    
    #for q range(len(questions)):
    fCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="F").filter(questions__name=q).count()
        fCount=fCount+count
    metier6= int(abs((fCount/param12count  +  0.15 )*100))
    
    #for q range(len(questions)):
    gCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="G").filter(questions__name=q).count()
        gCount=gCount+count
    metier7= int(abs((gCount/param13count  +  0.15 )*100))
    
    #for q range(len(questions)):
    hCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="H").filter(questions__name=q).count()
        hCount=hCount+count
    metier8= int(abs((hCount/param14count  +  0.15 )*100))
    
    #for q range(len(questions)):
    iCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="I").filter(questions__name=q).count()
        iCount=iCount+count
    metier9= int(abs((iCount/param15count  +  0.15 )*100))
    
    #for q range(len(questions)):
    jCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="J").filter(questions__name=q).count()
        jCount=jCount+count
    metier10= int(abs((jCount/param16count  +  0.15 )*100))
    
    #for q range(len(questions)):
    kCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="K").filter(questions__name=q).count()
        kCount=kCount+count
    metier11= int(abs((kCount/param17count  +  0.15 )*100))
    
    #for q range(len(questions)):
    lCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="L").filter(questions__name=q).count()
        lCount=lCount+count
    metier12= int(abs((lCount/param18count  +  0.15 )*100))
    
    #for q range(len(questions)):
    mCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="M").filter(questions__name=q).count()
        mCount=mCount+count
    metier13= int(abs((mCount/param19count  +  0.15 )*100))
    
    #for q range(len(questions)):
    nCount=0
    for q in questions:
        count = Resultparam.objects.filter(name="N").filter(questions__name=q).count()
        nCount=nCount+count
    metier14= int(abs((nCount/param20count  +  0.15 )*100))
    #sync updates | stag 01
    
    """options={
    'page-size': 'A4',
    'margin-top': '0.75in',
    'margin-right': '0.75in',
    'margin-bottom': '0.75in',
    'margin-left': '0.75in',
    'encoding': "UTF-8",
    'custom-header' : [
        ('Accept-Encoding', 'gzip')
    ],
    'cookie': [
        ('cookie-name1', 'cookie-value1'),
        ('cookie-name2', 'cookie-value2'),
    ],
    'no-outline': None}
    membreId = instance.membre.pk
    #result_url='staticfiles/assets/images/results/result'+str(membreId)+'.pdf'
    
    file_url='http://localhost:8000/'+result_url
    file_temp = NamedTemporaryFile(delete = True)
    file_temp.write(urllib.request.urlopen(file_url).read())
    file_temp.flush()
    
    
    pdfresult = pdfkit.from_file('test/templates/temp.html','test/test2.pdf',options=options)

    df = pd.DataFrame(dict(
    r=[pratique,inves , creatif,meth , entre,social],
    theta=['Pratique','Inverstigateur','Creatif',
           'Methodique', 'Entreprenant','social']))
    fig = px.line_polar(df, r='r', theta='theta', line_close=True, range_r=[0,100])
    fig.write_html("test/file.html")
    #fig.show()
    """
    
    if not os.path.exists("staticfiles/assets/images"):
        os.mkdir("staticfiles/assets/images")
    #fig.update_traces(fill='toself')
    fig.write_image("staticfiles/assets/images/fig1.png")
    
    if instance and created :
        instance.resultat = Resultat.objects.create(membre_id=instance.membre.pk,test= instance,name="amine",pratique=pratique,methodique=meth,entreprenant=entre,social=social,creatif=creatif,investigateur=inves,metier1=metier1,metier2=metier2,metier3=metier3,metier4=metier4,metier5=metier5,metier6=metier6,metier7=metier7,metier8=metier8,metier9=metier9,metier10=metier10,metier11=metier11,metier12=metier12,metier13=metier13,metier14=metier14)
        #,pratique=,methodique=,entreprenant=,social=,creatif=,investigateur=,metier1=,

