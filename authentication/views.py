from rest_framework.decorators import permission_classes
from rest_framework import request, status
from rest_framework.generics import RetrieveUpdateAPIView
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.response import Response
from rest_framework.views import APIView
from django.views.decorators.csrf import csrf_exempt
from authentication.renderers import UserJSONRenderer
from authentication.serializers import LoginSerializer, UserSerializer, RegistrationSerializer,UserPassSerializer,RequestPassSerializer
from rest_framework.parsers import JSONParser
from django.http import JsonResponse,HttpResponse
from authentication.models import User
from rest_framework.decorators import api_view, renderer_classes
from rest_framework.renderers import JSONRenderer


class RegistrationAPIView(APIView):

    permission_classes = (IsAuthenticated,)
    renderer_classes = (UserJSONRenderer,)
    serializer_class = RegistrationSerializer

    def post(self, request):
        user = request.data.get('user', {})

        # The create serializer, validate serializer, save serializer pattern
        # below is common and you will see it a lot throughout this course and
        # your own work later on. Get familiar with it.s
        serializer = self.serializer_class(data=user)
        serializer.is_valid(raise_exception=True)
        serializer.save()

        return Response(serializer.data, status=status.HTTP_201_CREATED)

@csrf_exempt
@permission_classes([IsAuthenticated, ])

def register(request):
    
    if request.method == 'POST':
        data = JSONParser().parse(request)
        serializer = RegistrationSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data, status=201)
        return JsonResponse(serializer.errors, status=400)

@csrf_exempt
@permission_classes([IsAuthenticated, ])
def requestpassword(request):
    
    if request.method == 'POST':
        data = JSONParser().parse(request)
        serializer = RequestPassSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data, status=201)
        return JsonResponse(serializer.errors, status=400)


@csrf_exempt
@permission_classes([IsAuthenticated, ])
def updatepassword(request, pk):
    try:
        user = User.objects.filter(pk=pk).first()
    except User.DoesNotExist:
        return HttpResponse(status=404)
  
    if request.method == 'PUT':
        data = JSONParser().parse(request)
        serializer = UserPassSerializer(user, data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data,safe=False)
        return JsonResponse(serializer.errors, status=400)


@csrf_exempt
def login(request):
    
    if request.method == 'POST':
        data = JSONParser().parse(request)
        serializer = LoginSerializer(data=data)
        if serializer.is_valid():
            return JsonResponse(serializer.data, status=201)
        return JsonResponse(serializer.errors, status=400)


@permission_classes([IsAuthenticated, ])
@api_view(('DELETE',))
@renderer_classes((JSONRenderer,))
@csrf_exempt
def logout(request, id):
    try:
        user = User.objects.filter(pk=id)
    except User.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'DELETE':
        user.is_active = False
        return Response(status=status.HTTP_204_NO_CONTENT) 


class LoginAPIView(APIView):

    permission_classes = (IsAuthenticated,)
    renderer_classes = (UserJSONRenderer,)
    serializer_class = LoginSerializer


    def post(self, request):

        #inspect later the {} argument bellow
        user = request.data.get('user', {})

        serializer = self.serializer_class(data= user)
        serializer.is_valid(raise_exception=True)
        return Response(serializer.data, status=status.HTTP_200_OK)





class UpdateUserAPIView(RetrieveUpdateAPIView):

    permission_classes = (IsAuthenticated,)
    renderer_classes = (UserJSONRenderer,)
    serializer_class = UserSerializer

    def retrieve(self, request, *args, **kwargs):

        serializer = self.serializer_class(request.user)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def update(self, request, *args, **kwargs):
        #serialize, validate, save pattern


        user_data = request.data.get('user', {})

        serializer_data = {
            'username' : user_data.get('username', request.user.username),
            'email' : user_data.get('email', request.user.email),

            'profile': {
                'bio' : user_data.get('bio', request.user.profile.bio),
                'image' : user_data.get('image', request.user.profile.image)

            }
        }


        serializer = self.serializer_class(
             request.user, data=serializer_data, partial= True
         )
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data, status=status.HTTP_200_OK)

         





