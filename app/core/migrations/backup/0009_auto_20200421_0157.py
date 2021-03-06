# Generated by Django 2.1.15 on 2020-04-21 01:57

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True
    
    dependencies = [
        ('core', '0008_headbill_taxtype'),
    ]

    operations = [
        migrations.RenameField(
            model_name='customer',
            old_name='address',
            new_name='Address',
        ),
        migrations.RenameField(
            model_name='customer',
            old_name='birthday',
            new_name='Birthday',
        ),
        migrations.RenameField(
            model_name='customer',
            old_name='email',
            new_name='Email',
        ),
        migrations.RenameField(
            model_name='customer',
            old_name='firstname',
            new_name='FirstName',
        ),
        migrations.RenameField(
            model_name='customer',
            old_name='lastname',
            new_name='LastName',
        ),
        migrations.RenameField(
            model_name='customer',
            old_name='postalcode',
            new_name='PostalCode',
        ),
        migrations.RenameField(
            model_name='customer',
            old_name='province',
            new_name='Province',
        ),
        migrations.RemoveField(
            model_name='customer',
            name='id',
        ),
        migrations.AddField(
            model_name='customer',
            name='CustomerID',
            field=models.AutoField(default=django.utils.timezone.now, primary_key=True, serialize=False),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='subscription',
            name='CustomerID',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='core.Customer'),
            preserve_default=False,
        ),
    ]
