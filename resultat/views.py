from django.shortcuts import render
from rest_framework import status
from rest_framework.exceptions import NotFound
from rest_framework.generics import RetrieveAPIView
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.status import HTTP_200_OK
from resultat.serializers import ResultatSerializer,ResultatPdfSerializer,ResultatHistorySerializer
from resultat.models import Resultat
from profile.models import Profile
from django.template import loader
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt



class ResultatRetrieveAPIView(RetrieveAPIView):

    permission_classes = (IsAuthenticated,)
    serializer_class = ResultatSerializer

    def retrieve(self, request, id, *args, **kwargs):

        try:
            #select_related ----> avoid unnecessary db calls.
            res = Resultat.objects.filter(membre__user__pk= id).last()
        except Resultat.DoesNotExist :
            raise NotFound('resultat not found')

        serialzer = self.serializer_class(res)
        return Response(serialzer.data, status=status.HTTP_200_OK)      
    

class ResultatHistoryRetrieveAPIView(RetrieveAPIView):
    
    permission_classes = (IsAuthenticated,)
    serializer_class = ResultatHistorySerializer

    def retrieve(self, request, id, *args, **kwargs):

        try:
            #select_related ----> avoid unnecessary db calls.
            res = Resultat.objects.filter(membre__user__pk= id)
        except Resultat.DoesNotExist :
            raise NotFound('resultat not found')

        serialzer = self.serializer_class(res,many=True)
        return Response(serialzer.data, status=status.HTTP_200_OK)      
    

    
class ResultatPdfRetrieveAPIView(RetrieveAPIView):
    
    permission_classes = (IsAuthenticated, )
    serializer_class = ResultatPdfSerializer

    def retrieve(self, request, id, *args, **kwargs):

        try:
            #select_related ----> avoid unnecessary db calls.
            res = Resultat.objects.filter(membre__user__pk= id).last()
        except Resultat.DoesNotExist :
            raise NotFound('resultat not found')

        serialzer = self.serializer_class(res,context={"request": request})
        return Response(serialzer.data, status=status.HTTP_200_OK)      
        

def home(request):
    return render(request, 'home.html',{})
