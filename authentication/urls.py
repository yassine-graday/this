from django.urls import path
from authentication.views import UpdateUserAPIView
from .views import LoginAPIView, RegistrationAPIView
from authentication import views
app_name ='authentication'


urlpatterns = [
    path('users/',RegistrationAPIView.as_view()),
    path('auth/login',views.login),
    path('auth/sign-up',views.register),
    path('auth/reset-password/<int:pk>',views.updatepassword),#audit security
    path('auth/sign-out/<int:id>',views.logout),
    path('users/login/',LoginAPIView.as_view()),
    path('user/retrieveupdate/',UpdateUserAPIView.as_view()),
    path('auth/request-pass',views.requestpassword),
    
]
