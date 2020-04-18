# Generated by Django 2.1.15 on 2020-04-16 21:13

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Customers',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('firstname', models.CharField(max_length=200)),
                ('lastname', models.CharField(max_length=200)),
                ('email', models.EmailField(max_length=200)),
                ('birthday', models.DateField()),
                ('address', models.CharField(max_length=255)),
                ('postalcode', models.CharField(max_length=10)),
                ('province', models.CharField(max_length=10)),
            ],
        ),
    ]