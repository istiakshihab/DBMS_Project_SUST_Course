from django.contrib.auth.models import User
from django.db import models
from accounts.models import User, Student, Teacher


class Course(models.Model):
    course_id = models.CharField(primary_key=True, max_length=6)
    course_name = models.CharField(max_length=50, blank=True, null=True)
    credit = models.FloatField(blank=True, null=True)

    def __str__(self):
        return self.course_id


class OfferedCourse(models.Model):
    offered_course_id = models.ForeignKey(Course, on_delete=models.CASCADE, unique=False)
    teachers_code = models.ForeignKey(Teacher, on_delete=models.CASCADE, blank=True, null=True)
    is_expired = models.BooleanField(default=False)

    def __str__(self):
        return self.offered_course_id_id


class Task(models.Model):
    task_id = models.CharField(primary_key=True, max_length=50)
    deadline = models.DateTimeField(blank=True, null=True)
    course_id = models.ForeignKey(OfferedCourse, on_delete=models.CASCADE, blank=True, null=True)
    task_description = models.CharField(max_length=1000, null=True)
    referrence = models.CharField(max_length=100, null=True)

    def __str__(self):
        return self.task_id


class Team(models.Model):
    team_name = models.CharField(max_length=50, blank=True, null=True)
    course_id = models.ForeignKey(OfferedCourse, on_delete=models.CASCADE, blank=True, null=True)
    student_id = models.ForeignKey(Student, on_delete=models.CASCADE, blank=True, null=True)

    def __str__(self):
        return self.team_name


class TaskTeam(models.Model):
    task_id = models.ForeignKey(Task, on_delete=models.CASCADE, blank=True, null=True)
    team_id = models.ForeignKey(Team, on_delete=models.CASCADE, blank=True, null=True)
    files = models.CharField(max_length=50, blank=True, null=True)

    def __str__(self):
        return self.team_id_id


