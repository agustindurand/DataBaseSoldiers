import mysql.connector

# Conexión a la base de datos MySQL
conexion = mysql.connector.connect(
    host="localhost",
    user="root",
    password="durand18",
    database="soldiers"
)

# Crear un cursor
cursor = conexion.cursor()

# Crear una tabla llamada 'usuarios' (si no existe)
cursor.execute('''CREATE TABLE IF NOT EXISTS Leadership (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    nombre VARCHAR(255) NOT NULL,
                    edad INT,
                    email VARCHAR(255) UNIQUE,
                    activo BOOLEAN
                )''')

# Datos de ejemplo para insertar
data_leadership = [
    ('Drago', 60, 'drago@example.com', True),
    ('Patrick', 75, 'patrick@example.com', True),
    ('Jonh', 75, 'jnsoldier@example.com', False),
    ('Paul', 78, 'anpaul7@example.com', True)
]

# Inserción de datos en la tabla 'leadership'
for leadership in data_leadership:
    cursor.execute('''INSERT INTO Leadership (nombre, edad, email, activo)
                      VALUES (%s, %s, %s, %s)''', leadership)

# Confirmar la transacción
conexion.commit()
print("Datos insertados correctamente.")

# Cerrar el cursor y la conexión
cursor.close()
conexion.close()