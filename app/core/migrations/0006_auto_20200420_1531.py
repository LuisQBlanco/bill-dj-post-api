# Generated by Django 2.1.15 on 2020-04-20 15:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0005_auto_20200420_1521'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subscription',
            name='SubscriptionID',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]
