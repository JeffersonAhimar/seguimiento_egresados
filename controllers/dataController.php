<?php
// require_once '../config/database.php';
//Función para conectarnos con la BBDD 
function conectar()
{
    // Rellenamos todos los datos para conectarnos a la BBDD
    $x = new mysqli(
        "localhost", // URL
        "root", // Usuario
        "", // Clave
        "seguimiento_egresados_mo" // Nombre 
    );
    //En caso de haber un error de conexión a la BBDD...
    if ($x->connect_errno) {
        //Salimos de la conexión con el error
        die("Error: " . $x->connect_errno . $x->connect_error);
        exit();
    }
    return $x;
}
//Nos conectamos a SQL
$c = conectar();

// Creamos la consulta que va a compartir la visualización en PHP y en CSV

if (isset($_POST["tblName"])) {
    $tblName = $_POST["tblName"];
}
$consulta = $c->query("SELECT * FROM $tblName order by id ASC ");

//Si hemos pulsado al botón de Exportar a Excel (CSV)...
if (isset($_POST["exportarCSV"])) {
    if (!empty($consulta)) {
        //El nombre del fichero tendrá el nombre de "usuarios_dia-mes-anio hora_minutos_segundos.csv"
        $ficheroExcel = $tblName."_usuarios " . date("d-m-Y H_i_s") . ".csv";

        //Indicamos que vamos a tratar con un fichero CSV
        header("Content-type: text/csv");
        header("Content-Disposition: attachment; filename=" . $ficheroExcel);

        // Vamos a mostrar en las celdas las columnas que queremos que aparezcan en la primera fila, separadas por ; 
        echo "id;codigo;nombres;apellidos;genero;email_ins;email_per;tlf;carrera;egresado;grado_acad;licenciatura;isEstEmpleabilidad;area;puesto;rango_sueldo;ubigeo;modalidad;isContEstudios;universidad;maestria;doctorado;especializacion;created_at;updated_at\n";

        // Recorremos la consulta SQL y lo mostramos
        while ($user = $consulta->fetch_row()) {
            echo $user['0'] . ";";
            echo $user['1'] . ";";
            echo $user['2'] . ";";
            echo $user['3'] . ";";
            echo $user['4'] . ";";
            echo $user['5'] . ";";
            echo $user['6'] . ";";
            echo $user['7'] . ";";
            echo $user['8'] . ";";
            echo $user['9'] . ";";
            echo $user['10'] . ";";
            echo $user['11'] . ";";
            echo $user['12'] . ";";
            echo $user['13'] . ";";
            echo $user['14'] . ";";
            echo $user['15'] . ";";
            echo $user['16'] . ";";
            echo $user['17'] . ";";
            echo $user['18'] . ";";
            echo $user['19'] . ";";
            echo $user['20'] . ";";
            echo $user['21'] . ";";
            echo $user['22'] . ";";
            echo $user['23'] . ";";
            echo $user['24'] . "\n";
        }
    } else {
        echo "No hay datos a exportar";
    }
    //Para que se cree el Excel correctamente, hay que añadir la sentencia exit;
    exit;
}
