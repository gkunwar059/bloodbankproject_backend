# Generated by Django 4.2.4 on 2023-10-12 01:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0029_alter_userreview_review'),
    ]

    operations = [
        migrations.AlterField(
            model_name='province',
            name='name',
            field=models.CharField(choices=[('Koshi Pradesh', 'Koshi Pradesh'), ('Madesh Pradesh', 'Madesh Pradesh'), ('Bagmati Pradesh', 'Bagmati Pradesh'), ('Gandaki Pradesh', 'Gandaki Pradesh'), ('Lumbini Pradesh', 'Lumbini Pradesh'), ('Karnali Pradesh', 'Karnali Pradesh'), ('Sudurpashchim Pradesh', 'Sudurpashchim Pradesh')], max_length=50, unique=True),
        ),
    ]