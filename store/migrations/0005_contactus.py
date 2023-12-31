# Generated by Django 4.2.4 on 2023-11-01 18:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0004_remove_associatevolunteermember_profession_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='ContactUs',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('email', models.EmailField(blank=True, max_length=255, null=True)),
                ('phone', models.IntegerField(blank=True, max_length=10, null=True)),
                ('message', models.TimeField()),
            ],
        ),
    ]
