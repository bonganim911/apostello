# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2016-04-28 09:06
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apostello', '0010_auto_20160421_1411'),
    ]

    operations = [
        migrations.AddField(
            model_name='recipient',
            name='do_not_reply',
            field=models.BooleanField(default=False, help_text='Tick this box to disable automated replies for this person.', verbose_name='Do not reply'),
        ),
    ]
