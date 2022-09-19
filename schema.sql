CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    codigo INT UNIQUE NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    genero TINYINT(1) NOT NULL, /*5*/
    email_ins VARCHAR(100) UNIQUE NOT NULL,
    email_per VARCHAR(100) UNIQUE NOT NULL,
    tlf VARCHAR(12) NOT NULL,
    carrera VARCHAR(50) NOT NULL,
    egresado TINYINT(1) NOT NULL,
    grado_acad ENUM('T','O','No Definido') NOT NULL DEFAULT 'No Definido',
    licenciatura ENUM('T','O','No Definido') NOT NULL DEFAULT 'No Definido',

    isEstEmpleabilidad TINYINT(1) NOT NULL, /*13*/
    area VARCHAR(50),
    puesto VARCHAR(50),
    rango_sueldo VARCHAR(50),
    ubigeo VARCHAR(50),
    modalidad ENUM('P','V','H','No Definido') DEFAULT 'No Definido',

    isContEstudios TINYINT(1) NOT NULL, /*19*/
    universidad ENUM('C','E','T','No Definido') DEFAULT 'No Definido',
    maestria ENUM('C','E','T','No Definido') DEFAULT 'No Definido',
    doctorado ENUM('C','E','T','No Definido') DEFAULT 'No Definido',
    especializacion VARCHAR(50)
);
-----------------------------------------------------------

INSERT INTO users 
(
codigo,
nombres,
apellidos,
genero,
email_ins,
email_per,
tlf,
carrera,
egresado,
grado_acad,
licenciatura,
isEstEmpleabilidad,
isContEstudios
)
VALUES(
'73223649',
'Walter',
'Espino',
'1',
'walterespino@ins.edu.pe',
'walterespino@per.edu.pe',
'920574430',
'Enfermeria',
'1',
'O',
'O',
'0',
'0'
);

-----------------------------------------------------------
-----------------------------------------------------------

CREATE TABLE users(
    userid INT PRIMARY KEY AUTO_INCREMENT,
    codigo INT UNIQUE NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    email_ins VARCHAR(100) UNIQUE NOT NULL,
    email_per VARCHAR(100) UNIQUE NOT NULL,
    
    grado_acad ENUM('T','O','No Definido') NOT NULL,
    licenciatura ENUM('T','O','No Definido') NOT NULL
);
-- ESTADO EMPLEABILIDAD
CREATE TABLE est_empleabilidad(
    id INT PRIMARY KEY AUTO_INCREMENT,
    area VARCHAR(50),
    puesto VARCHAR(50),
    rango_sueldo VARCHAR(50),
    ubigeo VARCHAR(50),
    modalidad ENUM('P','V','H','No Definido') NOT NULL,
    userid INT,
    FOREIGN KEY (userid) REFERENCES users(userid)
);

-- CONTINUIDAD ESTUDIOS
CREATE TABLE cont_estudio(
    id INT PRIMARY KEY AUTO_INCREMENT,
    universidad ENUM('C','E','T','No Definido') NOT NULL,
    maestria ENUM('C','E','T','No Definido') NOT NULL,
    doctorado ENUM('C','E','T','No Definido') NOT NULL,
    especializacion VARCHAR(50),
    userid INT,
    FOREIGN KEY (userid) REFERENCES users(userid)
);
