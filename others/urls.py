from django.urls import path

from . import views

urlpatterns = [
    path('profile', views.profile, name='profile'),
    path('login', views.login, name='login'),
    path('logout', views.logout, name='logout'),
    path('create_course', views.create_course, name='create_course')
]
