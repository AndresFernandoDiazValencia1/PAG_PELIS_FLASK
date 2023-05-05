
# aquí voy a desarrollar el archivo principal desde donde 
# ejecutare las primeras paginas que voy a crear con flask

from flask import Flask, render_template, request, redirect, url_for
from flask_mysqldb import MySQL, MySQLdb
import mysql.connector

app = Flask(__name__)
db = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="maven_pag"
 
)

# rutas de las paginas ------------------------------------------------->
# esta es la ruta de la pagina raíz,, HOME ------------------------------------------------->

@app.route("/")
def home ():
    return render_template ("home.html")

# esta es la ruta de la pagina  cartelera ------------------------------------------------->

@app.route("/cartelera")
def cartelera ():
    return render_template ("cartelera.html")

# esta es la ruta de la pagina películas ------------------------------------------------->

@app.route("/peliculas")
def peliculas ():
    return render_template ("peliculas.html")


# esta es la ruta de la pagina contacto ------------------------------------------------->

@app.route("/contacto")
def contacto ():
    return render_template ("contacto.html")

# esta es la ruta de la pagina bienvenido papi ------------------------------------------------->

@app.route("/bienvenido")
def bienvenido ():
    return render_template ("bienvenido.html")

# esta es la ruta de la pagina ERROR  papi ------------------------------------------------->

@app.route("/error")
def error ():
    return render_template ("error.html")

# esta es la RUTA REGISTRO  ------------------------------------------------->

@app.route('/registro', methods=['GET', 'POST'])
def registro():
    if request.method == 'GET':
        return render_template('registro.html')
    else:
        datos = request.form
        cursor = db.cursor()
        consulta = "INSERT INTO users (name, email, password) VALUES (%s, %s, %s)"
        cursor.execute(consulta, (datos['name'], datos['email'], datos['password']))
        db.commit()
   
    return render_template('login.html')

# esta es la RUTA DEL LOGIN  ------------------------------------------------->

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'GET':
        return render_template('login.html')
    else:
        datos = request.form
        cursor = db.cursor()
        consulta = "SELECT * FROM users WHERE email=%s AND password=%s"
        cursor.execute(consulta, (datos['email'], datos['password']))
        resultado = cursor.fetchone()
        if resultado:
           
            return render_template('bienvenido.html')
        else:
            return render_template('error.html')
    

   


if __name__ == "__main__":
    app.run (debug = True)