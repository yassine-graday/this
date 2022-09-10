from django.http.response import HttpResponse
from django.template import loader
from django.shortcuts import render
from rest_framework.permissions import AllowAny
from rest_framework.views import APIView
from rest_framework.generics import RetrieveAPIView
from django.views.decorators.csrf import csrf_exempt
from django.http import JsonResponse
from test.serializers import TestSerializer
from rest_framework.response import Response
from rest_framework import status
from authentication.models import User 
from profile.models import Profile
from test.models import Test,Question
from rest_framework.parsers import JSONParser
from test.serializers import QuestionSerializer, TestRatingSerializer, RatingRapportSerializer
from rest_framework.permissions import IsAuthenticated
from rest_framework.decorators import permission_classes


class TestAPIView(RetrieveAPIView):
    
    permission_classes = (IsAuthenticated,)
    serializer_class = TestSerializer
    
    def retrieve(self, request, name, *args, **kwargs):

        try:
            #select_related ----> avoid unnecessary db calls.
            #select related  with name
            test = Test.objects.filter(membre__user__username=name)
        except Test.DoesNotExist :
            raise NotFound('a profile with this username does not exist')

        serialzer = self.serializer_class(test,many=True)
        return Response(serialzer.data, status=status.HTTP_200_OK)   
    
    
@permission_classes([IsAuthenticated,])
@csrf_exempt
def createTest(request):
    permission_classes = (IsAuthenticated,)
    if request.method == 'POST':
        data = JSONParser().parse(request)
        serializer = TestSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data, status=201)
        return JsonResponse(serializer.errors, status=400)        


@permission_classes([IsAuthenticated, ])
@csrf_exempt
def updateTestRating(request,pk):
    try:
        test = Test.objects.filter(membre__user__pk=pk).last()
    except Profile.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'PUT':
        data = JSONParser().parse(request)
        serializer = TestRatingSerializer(test, data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data, safe=False)
        return JsonResponse(serializer.errors, status=400)
    

@permission_classes([IsAuthenticated, ])
@csrf_exempt
def getRatingChartElements(request):

    if request.method == 'GET':
        tbien_count = Test.objects.filter(rating ="TBIEN").count()
        bien_count = Test.objects.filter(rating = "BIEN").count()
        mediocre_count = Test.objects.filter(rating="MEDIOCRE").count()
        questions = {'tbien_count':tbien_count,'bien_count':bien_count,'mediocre_count':mediocre_count}
        serializer = RatingRapportSerializer(questions)
        return JsonResponse(serializer.data, safe=False)



@csrf_exempt
def getQuestions(request):

    if request.method == 'GET':
        questions = Question.objects.all()
        serializer = QuestionSerializer(questions, many=True)
        return JsonResponse(serializer.data, safe=False)        
   
   
def pdf_result(request):
    return render(request,'test.html',{})
   
   
def index(request):
    template = loader.get_template('index.html')
    return HttpResponse(template.render(request=request))
