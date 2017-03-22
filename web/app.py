from flask import Flask
from misc.print_method import *
app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Flask Dockerized :) ' + str(print_hello())

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
