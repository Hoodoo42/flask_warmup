import mariadb
from flask import Flask
import json
import dbhelpers as dbh

app = Flask(__name__)

@app.get('/api/books')
def get_name_and_title():
    results =  dbh.make_api('CALL get_name_and_title')
    return results

@app.get('/api/books_authored')
def get_number_of_books():
    results = dbh.make_api("CALL get_number_of_books")
    return results

@app.get('/api/best_selling_book')
def get_best_selling_book():
    results = dbh.make_api("CALL most_sold")
    return results

@app.get('/api/best_selling_author')
def get_best_selling_author():
    results = dbh.make_api("CALL top_seller")
    return results    



app.run(debug=True)