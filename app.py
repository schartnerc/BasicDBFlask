from flask import Flask, render_template, url_for, request
from flask_mysqldb import MySQL

app = Flask(__name__)
mysql = MySQL(app)

app.debug = True

app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'P2#7nK?-'
app.config['MYSQL_DB'] = 'movie'


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/highestRanked')
def highest_ranked():
    cursor = mysql.connect.cursor()
    cursor.callproc('HIGHEST_RANKED_MOVIE', (40,))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='All time highest ranked movie.')


@app.route('/director')
def director():
    cursor = mysql.connect.cursor()
    cursor.callproc('MOVIES_DIRECTOR', (request.args['name'],))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Movies by a specified director')


@app.route('/actor')
def actor():
    cursor = mysql.connect.cursor()
    cursor.callproc('MOVIES_ACTOR', (request.args['name'],))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Movies by a specified actor')


@app.route('/yearRated')
def year_rated():
    cursor = mysql.connect.cursor()
    cursor.callproc('YEAR_RATED_MOVIE', (40, request.args['year']))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Movies rated in a specific year')


@app.route('/highestRankedGenre')
def highest_ranked_year():
    cursor = mysql.connect.cursor()
    cursor.callproc('HIGHEST_RANKED_BY_GENRE', (40, request.args['genre']))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Movies rated in a specific genre')


@app.route('/tagRanked')
def tag_ranked():
    cursor = mysql.connect.cursor()
    cursor.callproc('TAG_RANKED', (10, request.args['content']))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Movies by a specified actor')


@app.route('/genreActor')
def genre_actor():
    cursor = mysql.connect.cursor()
    cursor.callproc('GENRE_ACTOR', (request.args['name'], ))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Genre count for a specified actor')


@app.route('/userRatings')
def user_ratings():
    cursor = mysql.connect.cursor()
    cursor.callproc('USER_RATINGS', (request.args['id'], ))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='All movies rated by a specified user')


@app.route('/genreRatedUser')
def genre_rated_user():
    cursor = mysql.connect.cursor()
    cursor.callproc('GENRE_RATED_USER', (request.args['id'], ))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Overview of all genres rated by a specified user')


@app.route('/searchMovie')
def search_movie():
    cursor = mysql.connect.cursor()
    cursor.callproc('SEARCH_MOVIE', (request.args['title'], ))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Information about searched movies')


@app.route('/highestBudget')
def highest_budget():
    cursor = mysql.connect.cursor()
    cursor.callproc('HIGHEST_BUDGET')
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Highest budgeted movies all time')


@app.route('/underdogMovie')
def underdog_movie():
    cursor = mysql.connect.cursor()
    cursor.callproc('UNDERDOG_MOVIE', (50, request.args['max']))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Underdog movies')


@app.route('/ratingEvolution')
def rating_evolution():
    cursor = mysql.connect.cursor()
    cursor.callproc('RATING_EVOLUTION', (request.args['id']))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Rating change over time')


@app.route('/lowestRankedMovie')
def lowest_ranked_movie():
    cursor = mysql.connect.cursor()
    cursor.callproc('LOWEST_RANKED_MOVIE', (50,))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Lowest ranked movies all time')


@app.route('/personInfo')
def person_info():
    cursor = mysql.connect.cursor()
    cursor.callproc('PERSON_INFO', (request.args['id'],))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Basic user information')


@app.route('/longestRuntime')
def longest_runtime():
    cursor = mysql.connect.cursor()
    cursor.callproc('LONGEST_RUNTIME')
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Movies with the longest runtime')


@app.route('/mostTagged')
def most_tagged():
    cursor = mysql.connect.cursor()
    cursor.callproc('MOST_TAGGED')
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Most tagged movies')


@app.route('/movieTags')
def movie_tags():
    cursor = mysql.connect.cursor()
    cursor.callproc('MOVIE_TAGS', (request.args['id'], ))
    header = cursor.description
    results = cursor.fetchall()
    return render_template('table.html', header=header, results=results, heading='Most tagged movies')


if __name__ == '__main__':
    app.run()
    app.add_url_rule('/favicon.ico', redirect_to=url_for('static', filename='favicon.ico'))

