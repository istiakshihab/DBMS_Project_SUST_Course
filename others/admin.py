# Register your models here.
from django.contrib import admin

from .models import *

admin.site.register(User)
admin.site.register(Student)
admin.site.register(Teacher)
admin.site.register(Course)
admin.site.register(OfferedCourse)
admin.site.register(Task)
admin.site.register(TaskTeam)
admin.site.register(Team)
