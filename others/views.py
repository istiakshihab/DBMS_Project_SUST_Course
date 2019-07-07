from django.contrib import auth
from django.http import HttpResponseForbidden, HttpResponseRedirect, HttpResponse
from django.shortcuts import render, redirect, get_object_or_404

from others.models import *
from accounts.models import *


def home(request):
    if request.user.is_authenticated:
        if request.user.is_student:
            student_id = request.user.id
            courses = Team.objects.filter(student_id_id=student_id).values('course_id_id')
            offered_course = OfferedCourse.objects.filter(is_expired=0).values('offered_course_id_id')
            offered_course = offered_course.filter(id__in=courses)
            courses = Course.objects.filter(course_id__in=offered_course)
            return render(request, 'products/home.html', {'Courses': courses})
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
                selsected_course = request.POST.get('optionsRadios')
                teacher_id = request.user.id
                new_cffered_course = OfferedCourse.objects.create(offered_course_id_id=selsected_course,
                                                                  teachers_code_id=teacher_id, is_expired=False)

                return redirect('home')
            else:
                not_expired = OfferedCourse.objects.filter(is_expired=0).values('offered_course_id_id')
                course = Course.objects.all().values('course_id')
                course = course.exclude(course_id__in=not_expired)
                courses = Course.objects.all()
                courses = courses.filter(course_id__in=course)
                return render(request, 'products/create_course.html', {'OfCourses': courses})
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
