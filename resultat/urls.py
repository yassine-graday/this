from django.urls import path
from resultat.views import ResultatRetrieveAPIView,ResultatPdfRetrieveAPIView,ResultatHistoryRetrieveAPIView
from resultat import views

app_name= 'resultat'



urlpatterns = [
    path('resultat/<int:id>', ResultatRetrieveAPIView.as_view()),
    path('resultathistory/<int:id>', ResultatHistoryRetrieveAPIView.as_view()),
    path('resultat/pdf/<int:id>', ResultatPdfRetrieveAPIView.as_view()),
    path('template/', views.home)
]

