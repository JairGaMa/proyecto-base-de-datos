from flask import Flask, render_template, request, redirect, url_for, session,flash
import mysql.connector


app = Flask(__name__)
app.secret_key = 'mi_clave_secreta'

# Configuración de la conexión a la base de datos MySQL
db = mysql.connector.connect(
  host="localhost",     #nombre del host
  user="root",          #usuario del host
  password="",          #contraseña del host
  database="papeleria"  #nombre de la base de datos
)

'''
pagina de inicio o index
'''
@app.route('/')
def index():
    return render_template('index.html')


'''
funciones para productos
'''
@app.route('/producto')
def producto():
    cursor = db.cursor()
    cursor.execute("SELECT * FROM producto")
    productos = cursor.fetchall()
    return render_template('producto/producto.html', productos=productos)

@app.route('/agregar_producto', methods=['GET', 'POST'])
def agregar():
    if request.method == 'POST':
        nomProducto = request.form['nomProducto']
        descripcion = request.form['descripcion']
        precio = request.form['precio']
        stock = request.form['stock']
        cursor = db.cursor()
        cursor.execute("INSERT INTO producto (nomProducto, descripcion, precio, stock) VALUES (%s, %s, %s, %s)",
                       (nomProducto, descripcion, precio, stock))
        db.commit()
        return redirect(url_for('producto'))
    return render_template('producto/agregar_producto.html')

@app.route('/editar/<int:id>', methods=['GET', 'POST'])
def editar(id):
    cursor = db.cursor()
    cursor.execute("SELECT * FROM producto WHERE id_producto = %s", (id,))
    producto = cursor.fetchone()

    if request.method == 'POST':
        nomProducto = request.form['nomProducto']
        descripcion = request.form['descripcion']
        precio = request.form['precio']
        stock = request.form['stock']

        cursor.execute("UPDATE producto SET nomProducto=%s, descripcion=%s, precio=%s, stock=%s WHERE id_producto=%s",
                       (nomProducto, descripcion, precio, stock, id))
        db.commit()
        return redirect(url_for('producto'))
    return render_template('producto/editar_producto.html', producto=producto)

@app.route('/eliminar/<int:id>')
def eliminar(id):
    cursor = db.cursor()
    cursor.execute("DELETE FROM producto WHERE id_producto = %s", (id,))
    db.commit()
    return redirect(url_for('producto'))

'''
funciones para usuario
'''
@app.route('/usuario')
def usuario():
    cursor = db.cursor()
    cursor.execute("SELECT * FROM usuario")
    usuarios = cursor.fetchall()
    return render_template('usuario/usuario.html', usuarios=usuarios)

@app.route('/agregar_usuario', methods=['GET', 'POST'])
def agregar_usuario():
    if request.method == 'POST':
        nomU = request.form['nomU']
        contraseña = request.form['contraseña']
        id_rol = request.form['id_rol']

        cursor = db.cursor()
        cursor.execute("INSERT INTO usuario (nomU, contraseña, id_rol) VALUES (%s, %s, %s)", (nomU, contraseña, id_rol))

        db.commit()
        return redirect(url_for('usuario'))
    return render_template('usuario/agregar_usuario.html')

@app.route('/editar_usuario/<int:id>', methods=['GET', 'POST'])
def editar_usuario(id):
    cursor = db.cursor()
    cursor.execute("SELECT * FROM usuario WHERE id_usuario = %s", (id,))
    usuario = cursor.fetchone()

    if request.method == 'POST':
        nomU = request.form['nomU']
        contraseña = request.form['contraseña']
        id_rol = request.form['id_rol']

        cursor.execute("UPDATE usuario SET nomU=%s, contraseña=%s, id_rol=%s WHERE id_usuario=%s",
                       (nomU, contraseña, id_rol, id))
        db.commit()
        return redirect(url_for('usuario'))
    return render_template('usuario/editar_usuario.html', usuario=usuario)

@app.route('/eliminar_usuario/<int:id>')
def eliminar_usuario(id):
    cursor = db.cursor()
    cursor.execute("DELETE FROM usuario WHERE id_usuario = %s", (id,))
    db.commit()
    return redirect(url_for('usuario'))


'''
funciones para ventas 
'''
@app.route('/ventas')
def ventas():
    cursor = db.cursor()
    cursor.execute("SELECT * FROM ventas")
    ventas = cursor.fetchall()
    return render_template('venta/ventas.html', ventas=ventas)

@app.route('/agregar_ventas', methods=['GET', 'POST'])
def agregar_ventas():
    if request.method == 'POST':
        fechaV = request.form['fechaV']
        totalV = request.form['totalV']
        id_usuario = request.form['id_usuario']

        cursor = db.cursor()
        cursor.execute("INSERT INTO ventas (fechaV, totalV, id_usuario) VALUES (%s, %s, %s)", (fechaV, totalV, id_usuario))

        db.commit()
        return redirect(url_for('ventas'))
    return render_template('venta/agregar_venta.html')

@app.route('/editar_ventas/<int:id>', methods=['GET', 'POST'])
def editar_ventas(id):
    cursor = db.cursor()
    cursor.execute("SELECT * FROM ventas WHERE id_venta = %s", (id,))
    venta = cursor.fetchone()

    if request.method == 'POST':
        fechaV = request.form['fechaV']
        totalV = request.form['totalV']
        id_usuario = request.form['id_usuario']

        cursor.execute("UPDATE ventas SET fechaV=%s, totalV=%s, id_usuario=%s WHERE id_venta=%s",
                       (fechaV, totalV, id_usuario, id))
        db.commit()
        return redirect(url_for('ventas'))
    return render_template('venta/editar_venta.html', venta=venta)

@app.route('/eliminar_ventas/<int:id>')
def eliminar_ventas(id):
    cursor = db.cursor()
    cursor.execute("DELETE FROM ventas WHERE id_venta = %s", (id,))
    db.commit()
    return redirect(url_for('ventas'))

if __name__ == '__main__':
    app.run(debug=True)