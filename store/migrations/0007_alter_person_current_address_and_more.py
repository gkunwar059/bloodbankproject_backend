# Generated by Django 4.2.4 on 2023-08-08 05:38

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0006_alter_address_municipality'),
    ]

    operations = [
        migrations.AlterField(
            model_name='person',
            name='current_address',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, related_name='current_address', to='store.address'),
        ),
        migrations.AlterField(
            model_name='person',
            name='permanent_address',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, related_name='permanent_address', to='store.address'),
        ),
        migrations.AlterField(
            model_name='person',
            name='workplace',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, related_name='workplace_address', to='store.address'),
        ),
    ]