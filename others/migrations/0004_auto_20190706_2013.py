# Generated by Django 2.2.3 on 2019-07-06 14:13

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('others', '0003_auto_20190706_2009'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='taskteam',
            name='due_date',
        ),
        migrations.DeleteModel(
            name='TeamStudent',
        ),
    ]
