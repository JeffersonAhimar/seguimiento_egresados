<?php
require_once 'usersBean.php';
// require_once '../config/config.php';
require_once '../config/database.php';

class usersDao
{

    //DECLARANDO VARIABLES
    // 12 dato
    private $id;
    private $codigo;
    private $nombres;
    private $apellidos;
    private $genero;
    private $email_ins;
    private $email_per;
    private $tlf;
    private $carrera;
    private $egresado;
    private $grado_acad;
    private $licenciatura;

    // 6
    private $isEstEmpleabilidad;
    private $area;
    private $puesto;
    private $rango_sueldo;
    private $ubigeo;
    private $modalidad;

    // 5
    private $isContEstudios;
    private $universidad;
    private $maestria;
    private $doctorado;
    private $especializacion;


    //OBTENIENDO DATOS DEL OBJETO BEAN
    public function GetData(usersBean $objBean)
    {
        //12
        $this->id = htmlspecialchars($objBean->getId());
        $this->codigo = htmlspecialchars($objBean->getCodigo());
        $this->nombres = htmlspecialchars($objBean->getNombres());
        $this->apellidos = htmlspecialchars($objBean->getApellidos());
        $this->genero= htmlspecialchars($objBean->getGenero());
        $this->email_ins = htmlspecialchars($objBean->getEmail_ins());
        $this->email_per = htmlspecialchars($objBean->getEmail_per());
        $this->tlf = htmlspecialchars($objBean->getTlf());
        $this->carrera = htmlspecialchars($objBean->getCarrera());
        $this->egresado = htmlspecialchars($objBean->getEgresado());
        $this->grado_acad = htmlspecialchars($objBean->getGrado_acad());
        $this->licenciatura = htmlspecialchars($objBean->getLicenciatura());

        // 6
        $this->isEstEmpleabilidad = htmlspecialchars($objBean->getIsEstEmpleabilidad()); //13
        $this->area = htmlspecialchars($objBean->getArea());
        $this->puesto = htmlspecialchars($objBean->getPuesto());
        $this->rango_sueldo = htmlspecialchars($objBean->getRango_sueldo());
        $this->ubigeo = htmlspecialchars($objBean->getUbigeo());
        $this->modalidad = htmlspecialchars($objBean->getModalidad());

        // 5
        $this->isContEstudios = htmlspecialchars($objBean->getIsContEstudios()); //19
        $this->universidad = htmlspecialchars($objBean->getUniversidad());
        $this->maestria = htmlspecialchars($objBean->getMaestria());
        $this->doctorado = htmlspecialchars($objBean->getDoctorado());
        $this->especializacion = htmlspecialchars($objBean->getEspecializacion());

    }

    //BUSCAR UN REGISTRO DE LA TABLA
    public function Search($search)
    {
        $sql_text = "SELECT * FROM users WHERE id LIKE '%$search%' OR codigo LIKE '%$search%' OR nombres LIKE '%$search%' OR apellidos LIKE '%$search%' OR email_ins LIKE '%$search%' OR email_per LIKE '%$search%' OR grado_acad LIKE '%$search%' OR licenciatura LIKE '%$search%'";
        $tabla = $this->ListarTablas($sql_text);
        return $tabla;
    }

    //CREAR REGISTRO EN LA TABLA
    public function Create(usersBean $objBean)
    {
        $this->GetData($objBean);
        $result = 0;
        $msg = 'Error al ingresar';
        try {
            $db = new Database();
            $con = $db->conectar();
            $sql = $con->prepare("INSERT INTO users (
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
                area,
                puesto,
                rango_sueldo,
                ubigeo,
                modalidad,
                isContEstudios,
                universidad,
                maestria,
                doctorado,
                especializacion
                ) 
                VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            $sql->execute(
                [
                    $this->codigo,
                    $this->nombres,
                    $this->apellidos,
                    $this->genero,
                    $this->email_ins,
                    $this->email_per,
                    $this->tlf,
                    $this->carrera,
                    $this->egresado,
                    $this->grado_acad,
                    $this->licenciatura,
                    $this->isEstEmpleabilidad,
                    $this->area,
                    $this->puesto,
                    $this->rango_sueldo,
                    $this->ubigeo,
                    $this->modalidad,
                    $this->isContEstudios,
                    $this->universidad,
                    $this->maestria,
                    $this->doctorado,
                    $this->especializacion
                ]
            );
            $lastId = $con->lastInsertId();
            //
            if ($lastId > 0) {
                $result = 1;
                $msg = 'Ingresado correctamente';
            }
        } catch (PDOException $e) {
            $msg = 'Error conexion: ' . $e->getMessage();
        }
        $mensajes = array($result, $msg);
        return $mensajes;
    }

    //MODIFICAR UN REGISTRO DE LA TABLA
    public function Update(usersBean $objBean)
    {
        $this->GetData($objBean);
        $result = 0;
        $msg = 'Error al modificar';
        try {
            $db = new Database();
            $con = $db->conectar();
            $sql = $con->prepare("UPDATE users SET 
            codigo=?, 
            nombres=?,
            apellidos=?,
            genero=?,
            email_ins=?,
            email_per=?, 
            tlf=?, 
            carrera=?, 
            egresado=?, 
            grado_acad=?, 
            licenciatura=?, 
            isEstEmpleabilidad=?, 
            area=?, 
            puesto=?, 
            rango_sueldo=?, 
            ubigeo=?, 
            modalidad=?, 
            isContEstudios=?, 
            universidad=?, 
            maestria=?, 
            doctorado=?, 
            especializacion=? 
            WHERE id=?");
            $sql->execute([
                $this->codigo,
                $this->nombres,
                $this->apellidos,
                $this->genero,
                $this->email_ins,
                $this->email_per,
                $this->tlf,
                $this->carrera,
                $this->egresado,
                $this->grado_acad,
                $this->licenciatura,
                $this->isEstEmpleabilidad,
                $this->area,
                $this->puesto,
                $this->rango_sueldo,
                $this->ubigeo,
                $this->modalidad,
                $this->isContEstudios,
                $this->universidad,
                $this->maestria,
                $this->doctorado,
                $this->especializacion,
                $this->id
            ]);
            $result = 1;
            $msg = 'Modificado correctamente';
        } catch (PDOException $e) {
            $msg = 'Error conexion: ' . $e->getMessage();
        }
        $mensajes = array($result, $msg);
        return $mensajes;
    }

    //ELIMINAR UN REGISTRO DE LA TABLA
    public function Delete(usersBean $objBean)
    {
        $id = $objBean->getId();    //GET ID
        $result = 0;
        $msg = 'Error al eliminar';
        try {
            $db = new Database();
            $con = $db->conectar();
            $sql = $con->prepare("DELETE FROM users WHERE id=?");
            $sql->execute([$id]);
            $result = 1;
            $msg = 'Eliminado correctamente';
        } catch (PDOException $e) {
            $msg = 'Error conexion: ' . $e->getMessage();
        }
        $mensajes = array($result, $msg);
        return $mensajes;
    }


    //LEER TODOS LOS REGISTROS DE LA TABLA
    public function Read()
    {
        $sql_text = "SELECT * FROM users";
        $tabla = $this->ListarTablas($sql_text);
        return $tabla;
    }

    //OBTENER REGISTROS DE LA TABLA Y DARLES FORMATO HTML
    private function ListarTablas($sql_text)
    {
        try {
            $db = new Database();
            $con = $db->conectar();
            $tabla = "";
            $i = 1;
            foreach ($con->query($sql_text) as $row) {
                $tabla .= "<tr>";
                $tabla .= "<th scope='row'>" . $row[0] . "</th>";
                $tabla .= "<td>" . $row[1] . "</td>";
                $tabla .= "<td>" . $row[2] . "</td>";
                $tabla .= "<td>" . $row[3] . "</td>";
                $tabla .= "<td>" . $row[4] . "</td>";
                $tabla .= "<td>" . $row[5] . "</td>";
                $tabla .= "<td>" . $row[6] . "</td>";
                $tabla .= "<td>" . $row[7] . "</td>";
                $tabla .= "<td>" . $row[8] . "</td>";
                $tabla .= "<td>" . $row[9] . "</td>";
                $tabla .= "<td>" . $row[10] . "</td>";
                $tabla .= "<td>" . $row[11] . "</td>";
                $tabla .= "<td>" . $row[12] . "</td>";
                $tabla .= "<td>" . $row[18] . "</td>";
                // $tabla .= "<td>" . $row[5] . "</td>";
                // MODIFICAR BTN
                $tabla .= "<td><button class='btn btn-outline-warning' id='btnUpdateModal'";
                for ($j = 0; $j < 23; $j++) {
                    /*if ($j === 5) {
                        //$tabla .= "var" . ($j + 1) . "='" . $row[$j]->format('Y-m-d H:j:s') . "'";
                        $tabla .= "var" . ($j + 1) . "='" . $row[$j]->format('Y-m-d') . "'";
                    } else {
                        $tabla .= "var" . ($j + 1) . "='" . $row[$j] . "'";
                    }*/
                    $tabla .= "var" . ($j + 1) . "='" . $row[$j] . "'";
                }
                $tabla .= ">Modificar</button></td>";
                // ELIMINAR BTN
                $tabla .= "<td><button class='btn btn-outline-danger' id='btnDeleteModal'"
                    . "var1='" . $row[0] . "'"
                    . ">"
                    . "Eliminar</button></td>";
                $tabla .= "</tr>";
                $i++;
            }
        } catch (Exception $ex) {
        }
        return $tabla;
    }
}
