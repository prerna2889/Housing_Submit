from flask import Flask

app = Flask(__name__)

def wrap_html(message):
    html = """
        <html>
        <body style="background:blue;">
            <div style='font-size:20px;'>
            <center>
                {0}<br>
            </center> 
            </div>
        </body>
        </html>""".format(message)
    return html

@app.route('/')
def capstone_hello_world():
    message = 'Hello Friends! My name is Maria Jose Gomez Mora presenting my Udacity Cloud DevOps Engineer Nanodegree - Capstone project!'
    html = wrap_html(message)
    return html

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
