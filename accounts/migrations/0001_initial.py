# Generated by Django 2.2.3 on 2019-07-03 17:29

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AuthGroup',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=150, unique=True)),
            ],
            options={
                'db_table': 'auth_group',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthGroupPermissions',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'auth_group_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthPermission',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('codename', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'auth_permission',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUser',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128)),
                ('last_login', models.DateTimeField(blank=True, null=True)),
                ('is_superuser', models.IntegerField()),
                ('username', models.CharField(max_length=150, unique=True)),
                ('first_name', models.CharField(max_length=30)),
                ('last_name', models.CharField(max_length=150)),
                ('email', models.CharField(max_length=254)),
                ('is_staff', models.IntegerField()),
                ('is_active', models.IntegerField()),
                ('date_joined', models.DateTimeField()),
            ],
            options={
                'db_table': 'auth_user',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserGroups',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'auth_user_groups',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserUserPermissions',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'auth_user_user_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Course',
            fields=[
                ('courseid', models.CharField(db_column='CourseID', max_length=6, primary_key=True, serialize=False)),
                ('course_name', models.CharField(blank=True, db_column='Course Name', max_length=50, null=True)),
                ('credit', models.FloatField(blank=True, db_column='Credit', null=True)),
            ],
            options={
                'db_table': 'course',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoAdminLog',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('action_time', models.DateTimeField()),
                ('object_id', models.TextField(blank=True, null=True)),
                ('object_repr', models.CharField(max_length=200)),
                ('action_flag', models.PositiveSmallIntegerField()),
                ('change_message', models.TextField()),
            ],
            options={
                'db_table': 'django_admin_log',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoContentType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('app_label', models.CharField(max_length=100)),
                ('model', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'django_content_type',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoMigrations',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('app', models.CharField(max_length=255)),
                ('name', models.CharField(max_length=255)),
                ('applied', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_migrations',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoSession',
            fields=[
                ('session_key', models.CharField(max_length=40, primary_key=True, serialize=False)),
                ('session_data', models.TextField()),
                ('expire_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_session',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Offeredcourse',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'offeredcourse',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Student',
            fields=[
                ('firstname', models.CharField(blank=True, db_column='FirstName', max_length=50, null=True)),
                ('lastname', models.CharField(blank=True, db_column='LastName', max_length=50, null=True)),
                ('contactnumber', models.CharField(blank=True, db_column='ContactNumber', max_length=50, null=True)),
                ('registrationnumber', models.CharField(db_column='RegistrationNumber', max_length=10, primary_key=True, serialize=False)),
                ('session', models.CharField(blank=True, db_column='Session', max_length=50, null=True)),
            ],
            options={
                'db_table': 'student',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Task',
            fields=[
                ('taskid', models.CharField(db_column='TaskID', max_length=50, primary_key=True, serialize=False)),
                ('start_date', models.DateTimeField(blank=True, db_column='Start Date', null=True)),
                ('deadline', models.DateTimeField(blank=True, db_column='Deadline', null=True)),
            ],
            options={
                'db_table': 'task',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TaskTeam',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('due_date', models.DateTimeField(blank=True, db_column='Due Date', null=True)),
                ('files', models.CharField(blank=True, db_column='Files', max_length=50, null=True)),
            ],
            options={
                'db_table': 'task-team',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Teacher',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(blank=True, db_column='First Name', max_length=50, null=True)),
                ('last_name', models.CharField(blank=True, db_column='Last Name', max_length=50, null=True)),
                ('designation', models.CharField(blank=True, db_column='Designation', max_length=6, null=True)),
                ('code', models.CharField(blank=True, db_column='Code', max_length=3, null=True, unique=True)),
                ('contact', models.CharField(blank=True, db_column='Contact', max_length=12, null=True)),
            ],
            options={
                'db_table': 'teacher',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Team',
            fields=[
                ('teamid', models.CharField(db_column='TeamID', max_length=10, primary_key=True, serialize=False)),
                ('team_name', models.CharField(blank=True, db_column='Team Name', max_length=50, null=True)),
            ],
            options={
                'db_table': 'team',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TeamStudent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'team_student',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Users',
            fields=[
                ('username', models.CharField(db_column='Username', max_length=50, primary_key=True, serialize=False)),
                ('pasword', models.CharField(db_column='Pasword', max_length=50)),
                ('type', models.CharField(db_column='Type', max_length=1)),
            ],
            options={
                'db_table': 'users',
                'managed': False,
            },
        ),
    ]
