from flask_wtf import  Form
from wtforms import StringField


class Director(Form):
    name = StringField('Name')

