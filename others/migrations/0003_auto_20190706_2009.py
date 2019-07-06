# Generated by Django 2.2.3 on 2019-07-06 14:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0001_initial'),
        ('others', '0002_task_team'),
    ]

    operations = [
        migrations.AddField(
            model_name='offeredcourse',
            name='is_expired',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='team',
            name='members',
            field=models.ManyToManyField(to='accounts.Student'),
        ),
        migrations.CreateModel(
            name='TeamStudent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('registration_number', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='accounts.Student')),
                ('team_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='others.Team')),
            ],
        ),
        migrations.CreateModel(
            name='TaskTeam',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('due_date', models.DateTimeField(blank=True, null=True)),
                ('files', models.CharField(blank=True, max_length=50, null=True)),
                ('task_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='others.Task')),
                ('team_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='others.Team')),
            ],
        ),
    ]