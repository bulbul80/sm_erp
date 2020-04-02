from django.contrib import admin
from sm_hr.models import *


# Register your models here.


class CountryAdmin(admin.ModelAdmin):
    list_display = ('country_name', 'status')
    pass

class DivisionAdmin(admin.ModelAdmin):
    list_display = ('division_name', 'country', 'status')
    pass

class DistrictAdmin(admin.ModelAdmin):
    list_display = ('district_name', 'division', 'remarks', 'status')
    pass

class PoliceStationAdmin(admin.ModelAdmin):
    list_display = ('police_station_name', 'remarks', 'district', 'status')
    pass


class GroupOfCompanyAdmin(admin.ModelAdmin):
    list_display = ('group_of_company_name', 'remarks', 'status')
    pass

class CompanyAdmin(admin.ModelAdmin):
    list_display = ('company_name', 'group_of_company', 'remarks', 'company_logo', 'status')
    pass

class DepartmentAdmin(admin.ModelAdmin):
    list_display = ('department_name', 'company', 'remarks', 'status')
    pass

class SectionAdmin(admin.ModelAdmin):
    list_display = ('section_name', 'department', 'remarks', 'status')
    pass

class GenderAdmin(admin.ModelAdmin):
    list_display = ('gender_name', 'status')
    pass

class ReligionAdmin(admin.ModelAdmin):
    list_display = ('religion_name', 'status')
    pass

class BloodGroupAdmin(admin.ModelAdmin):
    list_display = ('blood_group_name',  'status')
    pass

class DesignationAdmin(admin.ModelAdmin):
    list_display = ('designation_name',  'status')
    pass

class EmployeePersonalInformationAdmin(admin.ModelAdmin):
    list_display = ('employee_name', 'remarks', 'is_active')
    pass

class JobDescriptionAdmin(admin.ModelAdmin):
    list_display = ('employee', 'remarks')
    pass

class AttendanceAdmin(admin.ModelAdmin):
    list_display = ('employee', 'att_date', 'time_in', 'time_out', 'remarks')
    pass

admin.site.register(EmployeePersonalInformation, EmployeePersonalInformationAdmin)
admin.site.register(Attendance, AttendanceAdmin)
admin.site.register(JobDescription, JobDescriptionAdmin)
admin.site.register(Designation, DesignationAdmin)
admin.site.register(BloodGroup, BloodGroupAdmin)
admin.site.register(Religion, ReligionAdmin)
admin.site.register(Gender, GenderAdmin)
admin.site.register(Section, SectionAdmin)
admin.site.register(Department, DepartmentAdmin)
admin.site.register(Country, CountryAdmin)
admin.site.register(Company, CompanyAdmin)
admin.site.register(Division, DivisionAdmin)
admin.site.register(District, DistrictAdmin)
admin.site.register(PoliceStation, PoliceStationAdmin)
admin.site.register(GroupOfCompany, GroupOfCompanyAdmin)
