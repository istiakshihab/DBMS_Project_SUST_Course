from django.contrib import auth
from django.http import HttpResponseForbidden, HttpResponseRedirect, HttpResponse
from django.shortcuts import render, redirect, get_object_or_404

from others.models import *


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
                selected_course = request.POST.get('optionsRadios')
                teacher_id = request.user.id
                OfferedCourse.objects.create(offered_course_id_id=selected_course,
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


def course_enroll(request):
    if request.user.is_authenticated:
        if request.user.is_student:
            if request.method == 'POST':
                team_name = request.POST.get('TeamName')
                member = request.POST.get('TeamMember1')
                member1 = User.objects.filter(username=member).values('id').first()
                member1 = member1.get('id')

                member = request.POST.get('TeamMember2')
                member2 = User.objects.filter(username=member).values('id').first()
                member2 = member2.get('id')

                member = request.POST.get('TeamMember3')
                member3 = User.objects.filter(username=member).values('id').first()
                member3 = member3.get('id')

                course = request.POST.get('courseSelect')
                course_id = OfferedCourse.objects.filter(offered_course_id_id=course).values('id').first()
                course_id = course_id.get('id')

                Team.objects.create(team_name=team_name, course_id_id=course_id, student_id_id=member1)
                Team.objects.create(team_name=team_name, course_id_id=course_id, student_id_id=member2)
                Team.objects.create(team_name=team_name, course_id_id=course_id, student_id_id=member3)

                return redirect('home')
            else:
                not_expired = OfferedCourse.objects.filter(is_expired=0).values('offered_course_id_id')
                course = Course.objects.all().values('course_id')
                course = course.filter(course_id__in=not_expired)
                courses = Course.objects.all()
                courses = courses.filter(course_id__in=course)
                return render(request, 'products/course_enroll.html', {'courses': courses})
        else:
            return HttpResponseForbidden()
    else:
        return HttpResponseForbidden()


def course_detail(request, course_id):
    if request.user.is_authenticated:
        if request.user.is_teacher:
            selected_course = get_object_or_404(Course, course_id=course_id)
            course = OfferedCourse.objects.filter(offered_course_id_id=selected_course).values('id')
            team = Team.objects.all()
            team = team.filter(course_id_id__in=course)
            task = Task.objects.filter(course_id_id__in=course).order_by('-deadline')
            task_count = task.count()
            files = []
            for x in team:
                team_id = x.id
                task_id = task.values('task_id')
                team_task = TaskTeam.objects.filter(team_id_id=team_id, task_id_id__in=task_id)
                files.append(team_task.count())
            data = zip(files, team)
            return render(request, 'products/course.html', {'teams': team, 'tasks': task, 'total_task_count': task_count,
                                                            'team_task_count': files, 'data': data})
        else:

            return HttpResponse('<h1>course_id</h1>')
    else:
        print("Not Authorized")
        return HttpResponseForbidden(request, '<h1>Not Authorized</h1>')
