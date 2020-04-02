from datetime import datetime

from django.db import models
from django.utils.safestring import mark_safe
from django_serializable_model import SerializableModel

#https://www.jetbrains.com/pycharm/features/web_development.html#django?utm_source=from_product&utm_medium=advertiser&utm_campaign=django#

class Publisher(models.Model):
    name = models.CharField(max_length=30)
    address = models.CharField(max_length=50)
    city = models.CharField(max_length=60)
    state_province = models.CharField(max_length=30)
    country = models.CharField(max_length=50)
    website = models.URLField()

    class Meta:
        ordering = ["-name"]

    def __str__(self):
        return self.name

class Author(models.Model):
    salutation = models.CharField(max_length=10)
    name = models.CharField(max_length=200)
    email = models.EmailField()
    headshot = models.ImageField(upload_to='author_headshots')

    def __str__(self):
        return self.name

class Book(models.Model):
    title = models.CharField(max_length=100)
    authors = models.ManyToManyField('Author')
    publisher = models.ForeignKey(Publisher, on_delete=models.CASCADE)
    publication_date = models.DateField()

class BloodGroup(SerializableModel):
    blood_group_name = models.CharField(max_length=100, null=False, blank=False, unique=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)
    status = models.BooleanField(default=True)

    def __str__(self):
        return f'{self.blood_group_name}'

class Religion(models.Model):
    religion_name = models.CharField(max_length=100, null=False, blank=False, unique=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)
    status = models.BooleanField(default=True)
    def __str__(self):
        return f'{self.religion_name}'

class Gender(models.Model):
    gender_name = models.CharField(max_length=100, null=False, blank=False, unique=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)
    status = models.BooleanField(default=True)

    def __str__(self):
        return f'{self.gender_name}'

class GroupOfCompany(models.Model):
    group_of_company_name = models.CharField(max_length=100, null=False, blank=False, unique=True)
    remarks = models.CharField(max_length=300, null=True, blank=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)
    status = models.BooleanField(default=True)

    def __str__(self):
        return f'{self.group_of_company_name}'

class Company(models.Model):
    company_name = models.CharField(max_length=100, null=False, blank=False, unique=True)
    group_of_company = models.ForeignKey(GroupOfCompany, on_delete=models.CASCADE, null=True)
    remarks = models.CharField(max_length=100, null=True, blank=True)
    company_logo = models.ImageField(upload_to='photo', null=True, blank=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)
    status = models.BooleanField(default=True)

    def __str__(self):
        return f'{self.company_name}'

class Department(models.Model):
    department_name = models.CharField(max_length=100, null=False, blank=False, unique=True)
    company = models.ForeignKey(Company, on_delete=models.CASCADE, null=True)
    remarks = models.CharField(max_length=100, null=True, blank=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)
    status = models.BooleanField(default=True)

    def __str__(self):
        return f'{self.department_name}'


class Designation(models.Model):
    designation_name = models.CharField(max_length=100, null=False, blank=False, unique=True)
    company = models.ForeignKey(Company, on_delete=models.CASCADE, null=True)
    remarks = models.CharField(max_length=100, null=True, blank=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)
    status = models.BooleanField(default=True)

    def __str__(self):
        return f'{self.designation_name}'



class Section(models.Model):
    section_name = models.CharField(max_length=100, null=False, blank=False, unique=True)
    department = models.ForeignKey(Department, on_delete=models.CASCADE, null=True)
    remarks = models.CharField(max_length=100, null=True, blank=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)
    status = models.BooleanField(default=True)

    def __str__(self):
        return f'{self.section_name}'

class Country(models.Model):
    country_name = models.CharField(max_length=100, null=False, blank=False, unique=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)
    status = models.BooleanField(default=True)

    def __str__(self):
        return f'{self.country_name}'

class Division(models.Model):
    division_name = models.CharField(max_length=100, null=False, blank=False, unique=True)
    country = models.ForeignKey(Country, on_delete=models.CASCADE, null=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)
    status = models.BooleanField(default=True)

    def __str__(self):
        return f'{self.division_name}'

class District(models.Model):
    district_name = models.CharField(max_length=100, null=False, blank=False, unique=True)
    division = models.ForeignKey(Division, on_delete=models.CASCADE, null=True)
    remarks = models.CharField(max_length=100, null=True, blank=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)
    status = models.BooleanField(default=True)

    def __str__(self):
        return f'{self.district_name}'


class PoliceStation(models.Model):
    police_station_name = models.CharField(max_length=100, null=False, blank=False, unique=True)
    district = models.ForeignKey(District, on_delete=models.CASCADE, null=True)
    remarks = models.CharField(max_length=100, null=True, blank=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)
    status = models.BooleanField(default=True)

    def __str__(self):
        return f'{self.police_station_name}'


class EmployeePersonalInformation(models.Model):
    employee_name = models.CharField(max_length=225, null=False, blank=False, unique=True)
    image = models.ImageField(upload_to='photo/', blank=True)
    employee_id = models.CharField(max_length=50, null=False, blank=False, unique=True)
    Father_name = models.CharField(max_length=225, null=False, blank=False)
    Mother_name = models.CharField(max_length=225, null=False, blank=False)
    personal_mobile_number = models.CharField(max_length=17, null=False, blank=False, unique=True)
    alternate_mobile_number = models.CharField(max_length=17, null=False, blank=True)
    date_of_birth = models.DateField(null=False, blank=False, default='1900-01-01')
    national_id = models.CharField(max_length=20, null=False, blank=False, unique=True, default='')
    passport_number = models.CharField(max_length=20, null=False, blank=True, unique=True)
    passport_expiry_date = models.DateField(null=True, blank=True)
    country = models.ForeignKey(Country, on_delete=models.CASCADE, null=True)
    gender = models.ForeignKey(Gender, on_delete=models.CASCADE, null=True)
    blood_group = models.ForeignKey(BloodGroup, on_delete=models.CASCADE, null=True)
    religion = models.ForeignKey(Religion, on_delete=models.CASCADE, null=True)
    division = models.ForeignKey(Division, on_delete=models.CASCADE, null=True)
    district = models.ForeignKey(District, on_delete=models.CASCADE, null=True)
    present_address = models.TextField(max_length=300, null=True, blank=True)
    permanant_address = models.TextField(max_length=300, null=True, blank=True)
    email = models.EmailField(null=False, blank=True, unique=True)
    remarks = models.CharField(max_length=300, null=True, blank=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)
    is_active = models.BooleanField(default=True)

    def __str__(self):
        return f'{self.employee_name}'


class JobDescription(models.Model):
    employee = models.ForeignKey(EmployeePersonalInformation, on_delete=models.CASCADE, null=True)
    company = models.ForeignKey(Company, on_delete=models.CASCADE, null=True)
    designation = models.ForeignKey(Designation, on_delete=models.CASCADE, null=True)
    department = models.ForeignKey(Department, on_delete=models.CASCADE, null=True)
    section = models.ForeignKey(Section, on_delete=models.CASCADE, null=True)
    joining_date = models.DateField(null=False, blank=False)
    remarks = models.CharField(max_length=100, null=True, blank=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)

    def __str__(self):
        return f'{self.employee,self.designation}'


class Attendance(SerializableModel):
    employee = models.ForeignKey(EmployeePersonalInformation, on_delete=models.CASCADE, null=True)
    att_date = models.DateField(null=False, blank=False,  default=datetime.now)
    time_in = models.TimeField(null=False, blank=False, default=datetime.now)
    time_out = models.TimeField(null=False, blank=False, default=datetime.now)
    remarks = models.CharField(max_length=100, null=True, blank=True)
    create_time = models.DateTimeField(null=False, blank=False, auto_now_add=True)
    update_time = models.DateTimeField(null=False, blank=False, auto_now=True)

    def __str__(self):
        return f'{self.employee}'

from django.db import models

# Create your models here.