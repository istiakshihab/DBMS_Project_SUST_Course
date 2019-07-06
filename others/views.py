from django.shortcuts import render,redirect
from django.contrib.auth import logout
from django.contrib.auth.models import User
from django.contrib import auth
from others.models import *


def home(request):
    if request.user.is_authenticated:
        if request.user.is_student:
            registration = request.user.username
            query = ''

            return render(request, 'products/home.html', {query})
        else:
            teacher_id = request.user.id
            offered_course = OfferedCourse.objects.filter(teachers_code=teacher_id).values('offered_course_id_id')
            active_course = Course.objects.filter(course_id__in=offered_course)
            return render(request, 'products/home.html', {'Courses': active_course})
    else:
        return render(request, 'products/home.html', {'Courses': 'home'})


def profile(request):
    return render(request, 'products/profile.html', {'nbar': 'profile'})


def login(request):
    if request.method == 'POST':
        user = auth.authenticate(username=request.POST['InputUser'],
                                 password=request.POST['inputPassword'])
        if user is not None:
            auth.login(request, user)
            return redirect('home')
        else:
            return render(request, 'products/login.html',
                          {'error': 'Somethings Wrong!'})
    else:
        return render(request, 'products/login.html', {'nbar': 'login'})


def logout(request):
    if request.method == 'POST':
        auth.logout(request)
        return redirect('home')
