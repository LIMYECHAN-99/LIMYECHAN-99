from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return '''
        <html>
        <head>
            <title>My Homepage</title>
        </head>
        <body>
            <h1>Welcome to My Homepage!</h1>
            <p>This is a simple homepage served through GCP using Flask.</p>
        </body>
        </html>
    '''

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
