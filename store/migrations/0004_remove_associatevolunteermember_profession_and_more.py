# Generated by Django 4.2.4 on 2023-10-30 17:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0003_volunteerrequest_current_address_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='associatevolunteermember',
            name='profession',
        ),
        migrations.AddField(
            model_name='associatehospitalmember',
            name='latest_donation',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='associatehospitalmember',
            name='latest_received',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='associatevolunteermember',
            name='latest_donation',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='associatevolunteermember',
            name='latest_received',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='emergencydonororganizationmember',
            name='current_address',
            field=models.CharField(default='ff', max_length=255),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='emergencydonororganizationmember',
            name='latest_donation',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='emergencydonororganizationmember',
            name='latest_received',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='emergencydonororganizationmember',
            name='workplace',
            field=models.CharField(default='ff', max_length=255),
            preserve_default=False,
        ),
    ]
