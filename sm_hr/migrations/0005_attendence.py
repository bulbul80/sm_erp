# Generated by Django 3.0.4 on 2020-03-28 16:09

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('sm_hr', '0004_jobdescription'),
    ]

    operations = [
        migrations.CreateModel(
            name='Attendence',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('att_date', models.DateField(default=datetime.datetime.now)),
                ('time_in', models.TimeField(default=datetime.datetime.now)),
                ('time_out', models.TimeField(default=datetime.datetime.now)),
                ('remarks', models.CharField(blank=True, max_length=100, null=True)),
                ('create_time', models.DateTimeField(auto_now_add=True)),
                ('update_time', models.DateTimeField(auto_now=True)),
                ('employee', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='sm_hr.EmployeePersonalInformation')),
            ],
        ),
    ]