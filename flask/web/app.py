from flask import Flask, request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def hello():
    return f'Hello, world hi'

if __name__ == '__main__':
    app.DEBUG=True
    app.run(host='0.0.0.0')
