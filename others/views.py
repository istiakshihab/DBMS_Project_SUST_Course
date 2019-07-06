from django.contrib import auth
from django.http import HttpResponseForbidden, HttpResponseRedirect, HttpResponse
from django.shortcuts import render, redirect, get_object_or_404

from others.models import *
from accounts.models import *


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
                print(request.POST.get('optionsRadios'))
                return redirect('home')
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
                x = Course.objects.all()
                x = x.filter(course_id__in=y)
                return render(request, 'products/create_course.html', {'OfCourses': x})
        else:
            return HttpResponseForbidden()
    else:
        return HttpResponseForbidden()


def course_detail(request, course_id):
    if request.user.is_authenticated:
        if request.user.is_teacher:
            course_obj = get_object_or_404(Course, course_id=course_id)
            return HttpResponse('<h1>course_id</h1>')
        else:
            return HttpResponse('<h1>course_id</h1>')
    else:
        print("Not Authorized")
        return HttpResponseForbidden(request, '<h1>Not Authorized</h1>')