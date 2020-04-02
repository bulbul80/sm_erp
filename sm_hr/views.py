# from django.shortcuts import render

# Create your views here.

# def home(request):
# return render(request, "home.html", {})

from datetime import datetime
from django.contrib.auth.models import *
from django.http import HttpResponse
from django.shortcuts import render
from django.http import JsonResponse
from sm_hr.models import BloodGroup
from sm_hr.models import EmployeePersonalInformation
from sm_hr.models import Attendance
from rest_framework.decorators import api_view
from django.views.generic import (
    CreateView,
    DetailView,
    ListView,
    UpdateView,
    DeleteView
)
from django import forms
from functools import partial
import datetime


def about(request):
    # return HttpResponse('<h1>Ok do it</h1>')
    return render(request, 'home.html')


def home(request):
    data = {
        'name': 'Vitor',
        'location': 'Finland',
        'is_active': True,
        'count': 28
    }
    return JsonResponse(data)


def get_users(request):
    # users = BloodGroup.objects.filter(().values('blood_group_name', 'create_time', 'status', 'update_time')  # or simply .values() to get all fields
    users = BloodGroup.objects.filter(create_time__range=['2020-03-21', '2020-03-26']).serialize()
    users_list = list(users)  # important: convert the QuerySet to a list object
    return JsonResponse(users_list, safe=False)


DateInput = partial(forms.DateInput, {'class': 'datepicker'})


class DateRangeForm(forms.Form):
    start_date = forms.DateField(widget=DateInput(format='%Y-%m-%d'))
    end_date = forms.DateField(widget=DateInput(format='%Y-%m-%d'))


@api_view(['GET'])
def attendance_list(request):

    if request.method == 'GET':
        f = DateRangeForm(request.GET)
        if request.GET.get('start_date') and request.GET.get('end_date'):
            try:
                attendance = Attendance.objects.filter(
                    att_date__range=(datetime.datetime.strptime(request.GET.get('start_date'), '%m/%d/%Y').date(),
                                     datetime.datetime.strptime(request.GET.get('end_date'), '%m/%d/%Y').date()))
                pass
            except Exception as e:
                return render(request, 'index.html', {'error': f'{e}'})
            pass
        else:

            #attendance = Attendance.objects.all()
            attendance = Attendance.objects.filter(
                att_date__range=(datetime.date.today(),
                                 datetime.date.today()))
            pass

        attendance_list = list(attendance)

        return render(request, 'index.html', {'attendance_list': attendance_list,
                                              'form': f})


def home1(request):
    data = {
        'name': 'Vitor1',
        'location': 'Finland',
        'is_active': True,
        'count': 28
    }
    return JsonResponse(data)


def index(request):
    return render(request, 'index.html')
