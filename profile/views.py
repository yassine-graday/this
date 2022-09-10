from django.shortcuts import render
from rest_framework import status
from rest_framework.exceptions import NotFound
from rest_framework.generics import RetrieveAPIView
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.response import Response
from rest_framework.status import HTTP_200_OK
from rest_framework.generics import ListAPIView
from profile.models import Profile
from profile.renderers import ProfileJSONRendrer
from profile.serializers import ProfileSerializer
from django.views.decorators.csrf import csrf_exempt
from rest_framework import request, status
from django.http import JsonResponse,HttpResponse
from rest_framework.parsers import JSONParser
from rest_framework.decorators import permission_classes


@permission_classes([IsAuthenticated, ])
@csrf_exempt
def profileDetail(request, pk):
    try:
        per = Profile.objects.filter(user__pk=pk).first()
    except Profile.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'GET':
        serializer = ProfileSerializer(per)
        return JsonResponse(serializer.data, safe=False)
    
    elif request.method == 'PUT':
        data = JSONParser().parse(request)
        serializer = ProfileSerializer(per, data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data,safe=False) 
        return JsonResponse(serializer.errors, status=400)


class Liste_membresView(ListAPIView):
    permission_classes = (IsAuthenticated,)

    serializer_class = ProfileSerializer
    queryset = Profile.objects.all()


    def get(self, request, *args, **kwargs):
        return self.list(request, *args, **kwargs)
