<?php
//Función para conectarnos con la BBDD 
// Rellenamos todos los datos para conectarnos a la BBDD
require_once '../config/database.php';

//Nos conectamos a SQL
$db = new Database();
$con = $db->conectar();

// Creamos la consulta que va a compartir la visualización en PHP y en CSV

if (isset($_POST["tblName"])) {
    $tblName = $_POST["tblName"];
}
$consulta = $con->query("SELECT * FROM $tblName order by id ASC ");

//Si hemos pulsado al botón de Exportar a Excel (CSV)...
if (isset($_POST["exportarCSV"])) {
    if (!empty($consulta)) {
        //El nombre del fichero tendrá el nombre de "usuarios_dia-mes-anio hora_minutos_segundos.csv"
        $ficheroExcel = $tblName . "_usuarios " . date("d-m-Y H_i_s") . ".csv";

        //Indicamos que vamos a tratar con un fichero CSV
        header("Content-type: text/csv");
        header("Content-Disposition: attachment; filename=" . $ficheroExcel);

        // Vamos a mostrar en las celdas las columnas que queremos que aparezcan en la primera fila, separadas por ; 
        echo "id;codigo;nombres;apellidos;genero;email_ins;email_per;tlf;carrera;egresado;grado_acad;licenciatura;isEstEmpleabilidad;area;puesto;rango_sueldo;ubigeo;modalidad;isContEstudios;universidad;maestria;doctorado;especializacion;created_at;updated_at\n";

        // Recorremos la consulta SQL y lo mostramos
        while ($user = $consulta->fetch()) {
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
        // foreach ($consulta as $row) {
        //     echo $row['1'] . ";";
        //     echo $row['2'] . ";";
        //     echo $row['3'] . ";";
        //     echo $row['4'] . ";";
        //     echo $row['5'] . ";";
        //     echo $row['6'] . ";";
        //     echo $row['7'] . ";";
        //     echo $row['8'] . ";";
        //     echo $row['9'] . ";";
        //     echo $row['10'] . ";";
        //     echo $row['11'] . ";";
        //     echo $row['12'] . ";";
        //     echo $row['13'] . ";";
        //     echo $row['14'] . ";";
        //     echo $row['15'] . ";";
        //     echo $row['16'] . ";";
        //     echo $row['17'] . ";";
        //     echo $row['18'] . ";";
        //     echo $row['19'] . ";";
        //     echo $row['20'] . ";";
        //     echo $row['21'] . ";";
        //     echo $row['22'] . ";";
        //     echo $row['23'] . ";";
        //     echo $row['24'] . "\n";
        // }
    } else {
        echo "No hay datos a exportar";
    }
    //Para que se cree el Excel correctamente, hay que añadir la sentencia exit;
    exit;
}
