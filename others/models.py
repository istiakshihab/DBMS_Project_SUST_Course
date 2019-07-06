from django.contrib.auth.models import User
from django.db import models
from accounts.models import User, Student


class Course(models.Model):
    course_id = models.CharField(primary_key=True, max_length=6)
    course_name = models.CharField(max_length=50, blank=True, null=True)
    credit = models.FloatField(blank=True, null=True)


class offered_course(models.Model):
    offered_course_id = models.ForeignKey(Course, on_delete=models.CASCADE, blank=True, null=True)
    teachers_code = models.ForeignKey(User, on_delete=models.CASCADE, blank=True, null=True)


class Task(models.Model):
    task_id = models.CharField(primary_key=True, max_length=50)
    start_date = models.DateTimeField(blank=True, null=True)
    deadline = models.DateTimeField(blank=True, null=True)
    course_id = models.ForeignKey(Course, on_delete=models.CASCADE, blank=True, null=True)


class Team(models.Model):
    team_id = models.CharField(primary_key=True, max_length=10)
    team_name = models.CharField(max_length=50, blank=True, null=True)
    course_id = models.ForeignKey(offered_course, on_delete=models.CASCADE, blank=True, null=True)


class TaskTeam(models.Model):
    task_id = models.ForeignKey(Task, on_delete=models.CASCADE, blank=True, null=True)
    team_id = models.ForeignKey(Team, on_delete=models.CASCADE, blank=True, null=True)
    due_date = models.DateTimeField(blank=True, null=True)
    files = models.CharField(max_length=50, blank=True, null=True)


class TeamStudent(models.Model):
    team_id = models.ForeignKey(Team, on_delete=models.CASCADE, blank=True, null=True)
    registration_number = models.ForeignKey(Student, on_delete=models.CASCADE, blank=True, null=True)
