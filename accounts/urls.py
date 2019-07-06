from django.urls import path

from accounts.views import students, teachers

urlpatterns = [
    path('student_signup', students.StudentSignUpView.as_view(), name='student_signup'),
    path('teacher_signup', teachers.TeacherSignUpView.as_view(), name='teacher_signup'),
]
