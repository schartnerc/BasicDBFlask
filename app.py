from flask import Flask
from flask import render_template
from flask import url_for
from flask_mysqldb import MySQL

app = Flask(__name__)
mysql = MySQL(app)


app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'P2#7nK?-'
app.config['MYSQL_DB'] = 'sale'


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/customer')
def sales():
    cursor = mysql.connect.cursor()
    cursor.callproc('customer')
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Output of the customer procedure')


@app.route('/product')
def product():
    cursor = mysql.connect.cursor()
    cursor.callproc('product')
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Output of the product procedure')


if __name__ == '__main__':
    app.run()
    app.add_url_rule('/favicon.ico', redirect_to=url_for('static', filename='favicon.ico'))
