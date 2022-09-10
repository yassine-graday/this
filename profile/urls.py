from django.urls import path
from profile import views 

app_name= 'profiles'



urlpatterns = [
    path('profiles/<int:pk>', views.profileDetail),
    
    #path('profiles/', Liste_membresView.as_view()),#list all profiles
       
]