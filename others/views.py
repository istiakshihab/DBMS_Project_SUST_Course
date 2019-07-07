from django.http import HttpResponseForbidden
from django.shortcuts import render, redirect

from django.contrib import auth
from others.models import *


def home(request):
    if request.user.is_authenticated:
        if request.user.is_student:
            registration = request.user.username

            return render(request, 'products/home.html',) #{'Courses': Courses})
        else:
            teacher_id = request.user.id
            offered_course = OfferedCourse.objects.filter(teachers_code=teacher_id).values(
                'offered_course_id_id')
            courses = Course.objects.filter(course_id__in=offered_course)
            return render(request, 'products/home.html', {'Courses': courses})
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


def create_course(request):
    if request.user.is_authenticated:
        if request.user.is_teacher:
            if request.method == 'POST':
                print("Nothing")
            else:
                x = OfferedCourse.objects.filter(is_expired=0)
                x = x.values('offered_course_id_id')
                y = Course.objects.all()
                y = y.values('course_id')
                y = y.exclude(course_id__in=x)
                x = OfferedCourse.objects.filter(is_expired=0)
                x = x.values('offered_course_id_id')
                x = x.values('offered_course_id_id')
                y = Course.objects.all()
                y = y.values('course_id')
                y = y.exclude(course_id__in=x)
                return render(request, 'products/create_course.html', {'nbar': y})
        else:
            return HttpResponseForbidden()
    else:
        return HttpResponseForbidden()

def course_enroll(request):
    if request.user.is_authenticated:
        if request.user.is_student:
            if request.method == 'POST':
                print("Nothing")
            else:
                return render(request, 'products/course_enroll.html', {'nbar': y})
        else:
            return HttpResponseForbidden()
    else:
        return HttpResponseForbidden()

