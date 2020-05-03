# Generated by Django 2.1.15 on 2020-04-21 02:05

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Customer',
            fields=[
                ('CustomerID', models.AutoField(primary_key=True, serialize=False)),
                ('FirstName', models.CharField(max_length=200)),
                ('LastName', models.CharField(max_length=200)),
                ('Email', models.EmailField(max_length=200)),
                ('Birthday', models.DateField()),
                ('Address', models.CharField(max_length=255)),
                ('PostalCode', models.CharField(max_length=10)),
                ('Province', models.CharField(max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='HeadBill',
            fields=[
                ('HeadBillID', models.AutoField(primary_key=True, serialize=False)),
                ('CustomerID', models.IntegerField()),
                ('BillDate', models.DateField()),
                ('BillNumber', models.CharField(max_length=45)),
            ],
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('ProductID', models.AutoField(primary_key=True, serialize=False)),
                ('NameProduct', models.CharField(max_length=200)),
                ('PriceProduct', models.DecimalField(decimal_places=2, max_digits=8)),
            ],
        ),
        migrations.CreateModel(
            name='Subscription',
            fields=[
                ('SubscriptionID', models.AutoField(primary_key=True, serialize=False)),
                ('SubscriptionCard', models.CharField(max_length=200)),
                ('CreateDate', models.DateField()),
                ('ExpDate', models.DateField()),
                ('CustomerID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.Customer')),
            ],
        ),
        migrations.CreateModel(
            name='TaxType',
            fields=[
                ('TaxTypeID', models.AutoField(primary_key=True, serialize=False)),
                ('TaxType', models.CharField(max_length=200)),
                ('TaxPercentage', models.DecimalField(decimal_places=2, max_digits=4)),
            ],
        ),
    ]