# Generated by Django 2.1.15 on 2020-04-24 04:16

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0016_auto_20200424_0029'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='billdetail',
            name='Static_NameProduct',
        ),
        migrations.RemoveField(
            model_name='billdetail',
            name='Static_PriceProduct',
        ),
        migrations.RemoveField(
            model_name='billdetail',
            name='Static_ProductID',
        ),
        migrations.AddField(
            model_name='billdetail',
            name='ProductID',
            field=models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='productID', to='core.Product'),
            preserve_default=False,
        ),
    ]