# Generated by Django 2.1.15 on 2020-04-23 19:44

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0009_auto_20200423_1853'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='subscription',
            options={'ordering': ['-SubscriptionID']},
        ),
    ]