from django.contrib.auth.forms import UserCreationForm
from django import forms

from accounts.models import Student, User, Teacher


class StudentSignUpForm(UserCreationForm):
    sess = forms.CharField(label='Session')

    class Meta(UserCreationForm.Meta):
        model = User
        help_texts = {
            'username': 'Enter your Registration Number'
        }

    def save(self):
        user = super().save(commit=False)
        user.is_student = True
        user.save()
        student = Student.objects.create(user=user)
        student.sessionStudent = self.cleaned_data['sess']
        student.save()
        return user


class TeacherSignUpForm(UserCreationForm):
    class Meta(UserCreationForm.Meta):
        model = User
        help_texts = {
            'username': 'Enter your Name code.'
        }

    def save(self, commit=True):
        user = super().save(commit=False)
        user.is_teacher = True
        if commit:
            user.save()
        teacher = Teacher.objects.create(user=user)
        teacher.save()
        return user
