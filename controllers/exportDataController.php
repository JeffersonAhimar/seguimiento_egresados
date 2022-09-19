<?php
// Load the database configuration file 
include_once '../config/dbConfig.php';

// Filter the excel data 
function filterData(&$str)
{
    $str = preg_replace("/\t/", "\\t", $str);
    $str = preg_replace("/\r?\n/", "\\n", $str);
    if (strstr($str, '"')) $str = '"' . str_replace('"', '""', $str) . '"';
}

// Excel file name for download 
$fileName = "users-instituto_" . date('Y-m-d')."_". date('H:i:s') . ".xls";

// Column names 
$fields = array(
    'id',
    'codigo',
    'nombres',
    'apellidos',
    'genero',
    'email_ins',
    'email_per',
    'tlf',
    'carrera',
    'egresado',
    'grado_acad',
    'licenciatura',
    'isEstEmpleabilidad',
    'area',
    'puesto',
    'rango_sueldo',
    'ubigeo',
    'modalidad',
    'isContEstudios',
    'universidad',
    'maestria',
    'doctorado',
    'especializacion'
);

// Display column names as first row 
$excelData = implode("\t", array_values($fields)) . "\n";

// Fetch records from database
$query = $db->query("SELECT * FROM users ORDER BY id ASC"); 
if ($query->num_rows > 0) {
    // Output each row of the data 
    while ($row = $query->fetch_row()) {
        // $status = ($row['status'] == 1) ? 'Active' : 'Inactive';
        $lineData = array(
            $row['0'],
            $row['1'],
            $row['2'],
            $row['3'],
            $row['4'],
            $row['5'],
            $row['6'],
            $row['7'],
            $row['8'],
            $row['9'],
            $row['10'],
            $row['11'],
            $row['12'],
            $row['13'],
            $row['14'],
            $row['15'],
            $row['16'],
            $row['17'],
            $row['18'],
            $row['19'],
            $row['20'],
            $row['21'],
            $row['22']
        );
        array_walk($lineData, 'filterData');
        $excelData .= implode("\t", array_values($lineData)) . "\n";
    }
} else {
    $excelData .= 'No records found...' . "\n";
}

// Headers for download 
// header("Content-Type: application/vnd.ms-excel");
header("Content-Type: application/xls");
header("Content-Disposition: attachment; filename=\"$fileName\"");

// Render excel data 
echo $excelData;

exit;
