from django.urls import path
from test.views import TestAPIView
from test import views
app_name ='test'


urlpatterns = [
    path('test/<str:name>', TestAPIView.as_view()), 
    path('test/updaterating/<int:pk>', views.updateTestRating),
    path('test/ratingraport/', views.getRatingChartElements),
    path('test/', views.createTest),
    path('questions/', views.getQuestions), 
    path('template/', views.pdf_result),
    path('oc/', views.index)

]
