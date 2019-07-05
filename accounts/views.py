from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib import auth
from .models import *


# Create your views here.
def signup(request):
    if request.method == 'POST':
        if request.POST['inputPassword1'] == request.POST['inputPassword2']:
            try:
                User.objects.get(username=request.POST['InputUser'])
                return render(request,
                              'accounts/signup.html',
                              {'error': 'Username has already been taken'},
                              {'nbar': 'signup'})
            except User.DoesNotExist:
                user = User.objects.create_user(request.POST['InputUser'],
                                                password=request.POST['inputPassword1'],
                                                first_name='GayMan',
                                                last_name='Rafi',
                                                email=request.POST['emailAddress'],)

                auth.login(request, user)
                                                
                user = request.POST.get('InputUser')
                password = request.POST.get('inputPassword1')
                type = request.POST.get('optionsRadios')

                new_user = Users(username=user, password=password, type=type)
                new_user.save()
                print(type)

                if type == 'Student':
                    return redirect('student_signup')
    else:
        return render(request, 'accounts/signup.html', {'nbar': 'signup'})


def login(request):
    if request.method == 'POST':
        user = auth.authenticate(username=request.POST['InputUser'],
                                 password=request.POST['inputPassword'])
        if user is not None:
            auth.login(request, user)
            print(user.username)
            print(user.password)
            return redirect('home')
        else:
            return render(request, 'accounts/login.html',
                          {'error': 'Somethings Wrong!'})
    else:
        return render(request, 'accounts/login.html', {'nbar': 'login'})


def logout(request):
    if request.method == 'POST':
        auth.logout(request)
        return redirect('home')


def trying2(request):
    if request.method == 'POST':
        user = request.POST.get('InputUser')
        password = request.POST.get('inputPassword')

        c = 'a'
        c = Users.objects.filter(username__exact=user).filter(password__exact=password)
        if len(c) == 0:
            print("hello")
            return redirect('home')
        else:
            print(c[0].username, c[0].pasword)
            return redirect('home')
    else:
        return render(request, 'accounts/login.html', {'nbar': 'login'})


def student_signup(request):
    if request.method == 'POST':
        firstname = request.POST.get('firstName')
        lastname = request.POST.get('lastName')
        registration = request.POST.get('registration')
        session = request.POST.get('session')
        contact = request.POST.get('contact')

        new_student = Student(FirstName='firstname',
                              LastName='lastname',
                              RegistrationNumber='registraion',
                              Session='session',
                              ContactNumber='contact')
        new_student.save()
        return redirect('home')
    else:
        return render(request,'accounts/student_form.html',{'nbar':'student_signup'})
