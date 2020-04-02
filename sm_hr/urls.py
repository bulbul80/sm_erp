from django.urls import path
from . import views

urlpatterns = [
    path('ok', views.index, name='index'),
    #path('', views.home),
    path('home1', views.home1),
    path('about', views.about),
    path('', views.attendance_list),
    path('get_users', views.get_users)
]