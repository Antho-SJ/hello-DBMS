from flask import Flask, render_template, request, jsonify
import sqlite3
from werkzeug.exceptions import abort

def get_db_connection():
    conn = sqlite3.connect('app\CarbonFootprint.db')
    conn.row_factory = sqlite3.Row
    return conn

def get_post(post_id):
    conn = get_db_connection()
    post = conn.execute('SELECT * FROM Country WHERE Coal != 0;').fetchall()
    conn.close()
    if not post:
        abort(404)
    return post


app = Flask(__name__)

@app.route('/')
def index():
    conn = get_db_connection()

    query1 = 'SELECT ROUND(AVG(Coal)), ROUND(AVG(Gas)), ROUND(AVG(Oil)), ROUND(AVG(Hydro)), ROUND(AVG(Renewable)), ROUND(AVG(Nuclear)) FROM Country;'
    query2 = 'SELECT Region, MAX(Hydro) FROM World;'
    query3 = 'SELECT COUNT(Country) AS "Nombre de pays utilisant encore le charbon"FROM Country WHERE Coal IS NOT 0;'
    query4 = '''SELECT COUNT(Country) AS "Nombre de pays utilisant le charbon à plus de 30% pour la production d'énergie" FROM Country WHERE Coal > 30;'''
    query5 = 'SELECT Country, MAX(Renewable) FROM Country;'
    query6 = 'SELECT Country, Renewable FROM Country ORDER BY Renewable DESC LIMIT 5;'
    query7 = 'SELECT Country, MAX(Nuclear) FROM Country;'
    query8 = '''SELECT
    Country AS "Pays produisant à partir d'une seule",
    CASE
        WHEN Coal = 100 THEN 'Coal'
        WHEN Gas = 100 THEN 'Gas'
        WHEN Oil = 100 THEN 'Oil'
        WHEN Hydro = 100 THEN 'Hydro'
        WHEN Renewable = 100 THEN 'Renewable'
        WHEN Nuclear = 100 THEN 'Nuclear'
    END AS ressource
    FROM
        Country
    WHERE
        Coal = 100 OR Gas = 100 OR Oil = 100 OR Hydro = 100 OR Renewable = 100 OR Nuclear = 100;'''

    results1 = conn.execute(query1).fetchall()
    results2 = conn.execute(query2).fetchall()
    results3 = conn.execute(query3).fetchall()
    results4 = conn.execute(query4).fetchall()
    results5 = conn.execute(query5).fetchall()
    results6 = conn.execute(query6).fetchall()
    results7 = conn.execute(query7).fetchone()[0]
    results8 = conn.execute(query8).fetchall()

    conn.close()
    return render_template('index.html', results1=results1, results2=results2, results3=results3, results4=results4, results5=results5, results6=results6, results7=results7, results=results8)

@app.route('/Database')
def sql_page():
    conn = get_db_connection()

    query10 = 'SELECT * FROM Country'
    query11 = 'SELECT * FROM World'

    results10 = conn.execute(query10).fetchall()
    results11 = conn.execute(query11).fetchall()
    conn.close()
    return render_template('sql_page.html', results10=results10, results11=results11)

@app.route('/stats', methods=['POST', 'GET'])
def stats():
    conn = get_db_connection()

    if request.method == 'POST':
        selected_country = request.form['results10']
        query10 = f"SELECT * FROM Country WHERE Country = ?"
        results10 = conn.execute(query10, (selected_country,)).fetchall()
        return render_template('sql_page.html', results10=results10, selected_country=selected_country)
    else:
        return render_template('sql_page.html', results10=[], selected_country=None)

if __name__ == "__main__":
    app.run(debug=True)