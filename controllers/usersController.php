<?php
require_once '../models/usersBean.php';
require_once '../models/usersDao.php';


if (!empty($_POST['op'])) {
    $op = $_POST['op'];
} else {
    echo 'No hay op';
}
if (!empty($_POST['tblName'])) {
    $tblName = $_POST['tblName'];
} else {
    echo 'No hay tblName';
}
//RECUPERANDO DATOS
if (!empty($_POST['var1'])) {
    $var1 = $_POST['var1'];
}

if (!empty($_POST['var2'])) {
    $var2 = $_POST['var2'];
}
if (!empty($_POST['var3'])) {
    $var3 = $_POST['var3'];
}
if (!empty($_POST['var4'])) {
    $var4 = $_POST['var4'];
}
if (!empty($_POST['var5'])) {
    $var5 = $_POST['var5'];
} else {
    $var5 = 0; //puede ser 0
}
if (!empty($_POST['var6'])) {
    $var6 = $_POST['var6'];
}
if (!empty($_POST['var7'])) {
    $var7 = $_POST['var7'];
}
if (!empty($_POST['var8'])) {
    $var8 = $_POST['var8'];
}
if (!empty($_POST['var9'])) {
    $var9 = $_POST['var9'];
}
if (!empty($_POST['var10'])) {
    $var10 = $_POST['var10'];
} else {
    $var10 = 0; //puede ser 0
}
if (!empty($_POST['var11'])) {
    $var11 = $_POST['var11'];
} else {
    $var11 = "No definido"; //puede ser 0
}
if (!empty($_POST['var12'])) {
    $var12 = $_POST['var12'];
} else {
    $var12 = "No definido"; //puede ser 0
}
if (!empty($_POST['var13'])) {
    $var13 = $_POST['var13'];
} else {
    $var13 = 0; //puede ser 0
}
if (!empty($_POST['var14'])) {
    $var14 = $_POST['var14'];
} else {
    $var14 = ""; //puede ser ""
}
if (!empty($_POST['var15'])) {
    $var15 = $_POST['var15'];
} else {
    $var15 = ""; //puede ser ""
}
if (!empty($_POST['var16'])) {
    $var16 = $_POST['var16'];
} else {
    $var16 = ""; //puede ser ""
}
if (!empty($_POST['var17'])) {
    $var17 = $_POST['var17'];
} else {
    $var17 = ""; //puede ser ""
}
if (!empty($_POST['var18'])) {
    $var18 = $_POST['var18'];
} else {
    $var18 = ""; //puede ser ""
}
if (!empty($_POST['var19'])) {
    $var19 = $_POST['var19'];
} else {
    $var19 = 0; //puede ser 0
}
if (!empty($_POST['var20'])) {
    $var20 = $_POST['var20'];
} else {
    $var20 = 0; //puede ser 0
}
if (!empty($_POST['var21'])) {
    $var21 = $_POST['var21'];
} else {
    $var21 = 0; //puede ser 0
}
if (!empty($_POST['var22'])) {
    $var22 = $_POST['var22'];
} else {
    $var22 = 0; //puede ser 0
}
if (!empty($_POST['var23'])) {
    $var23 = $_POST['var23'];
} else {
    $var23 = ""; //puede ser ""
}

// if (!empty($_POST['var5'])) {
//     $var5 = $_POST['var5'];
// } else {
//     $var5 = 0; //puede ser 0
// }
// if (!empty($_POST['var6'])) {
//     $var6 = $_POST['var6'];
// } else {
//     $var6 = 0; //puede ser 0
// }
if (!empty($_POST['search'])) {
    $search = $_POST['search'];
} else {
    $search = 0; //puede ser 0
}


switch ($op) {

        //LISTAR
    case 1: {
            $objDao = new usersDao();
            $tabla = $objDao->Read($tblName);
            echo $tabla;
            break;
        }

        //     //BUSCAR
    case 2: {
            $objDao = new usersDao();
            //LISTANDO
            $tabla = $objDao->Search($search,$tblName);
            echo $tabla;
            break;
        }

        //     //INSERTAR
    case 3: {
            //CAMBIANDO FORMATO DE DATE
            /*$realDate = $var6;
            $newDate = new DateTime($realDate);
            $var6 = $newDate->format('Y-m-d');*/
            //VERIFICANDO SI ESTAN VACIOS LOS CAMPOS
            if ($var2 == '' || $var3 == '' || $var4 == '' || $var5 == '' || $var6 == '' || $var7 == '' || $var8 == '' || $var9 == '' || $var10 == '' || $var11 == '' || $var12 == '' || $var13 == '' || $var19 == '') {
                $mensajes = array('2', 'Faltan llenar campos');
            } else {
                //CREANDO OBJETO E INSERTANDOLE LOS DATOS RECUPERADOS
                $objBean = new usersBean();
                $objBean->setCodigo($var2);
                $objBean->setNombres($var3);
                $objBean->setApellidos($var4);
                $objBean->setGenero($var5);
                $objBean->setEmail_ins($var6);
                $objBean->setEmail_per($var7);
                $objBean->setTlf($var8);
                $objBean->setCarrera($var9);
                $objBean->setEgresado($var10);
                $objBean->setGrado_acad($var11);
                $objBean->setLicenciatura($var12);
                $objBean->setIsEstEmpleabilidad($var13);
                $objBean->setArea($var14);
                $objBean->setPuesto($var15);
                $objBean->setRango_sueldo($var16);
                $objBean->setUbigeo($var17);
                $objBean->setModalidad($var18);
                $objBean->setIsContEstudios($var19);
                $objBean->setUniversidad($var20);
                $objBean->setMaestria($var21);
                $objBean->setDoctorado($var22);
                $objBean->setEspecializacion($var23);
                //CREANDO EL REGISTRO EN LA BASE DE DATOS
                $objDao = new usersDao();
                $mensajes = $objDao->Create($objBean,$tblName);
            }
            //DEVOLVIENDO MENSAJES
            foreach ($mensajes as $m) {
                echo $m . ",";
            }
            break;
        }

        //     //MODIFICAR
    case 4: {
            //VERIFICANDO SI ESTAN VACIOS LOS CAMPOS
            if ($var2 == '' || $var3 == '' || $var4 == '' || $var5 == '' || $var6 == '' || $var7 == '' || $var8 == '' || $var9 == '' || $var10 == '' || $var11 == '' || $var12 == '' || $var13 == '' || $var19 == '') {
                $mensajes = array('2', 'Faltan llenar campos');
            } else {
                //CREANDO OBJETO E INSERTANDOLE LOS DATOS RECUPERADOS
                $objBean = new usersBean();
                $objBean->setId($var1);
                $objBean->setCodigo($var2);
                $objBean->setNombres($var3);
                $objBean->setApellidos($var4);
                $objBean->setGenero($var5);
                $objBean->setEmail_ins($var6);
                $objBean->setEmail_per($var7);
                $objBean->setTlf($var8);
                $objBean->setCarrera($var9);
                $objBean->setEgresado($var10);
                $objBean->setGrado_acad($var11);
                $objBean->setLicenciatura($var12);
                $objBean->setIsEstEmpleabilidad($var13);
                $objBean->setArea($var14);
                $objBean->setPuesto($var15);
                $objBean->setRango_sueldo($var16);
                $objBean->setUbigeo($var17);
                $objBean->setModalidad($var18);
                $objBean->setIsContEstudios($var19);
                $objBean->setUniversidad($var20);
                $objBean->setMaestria($var21);
                $objBean->setDoctorado($var22);
                $objBean->setEspecializacion($var23);
                //CREANDO EL REGISTRO EN LA BASE DE DATOS
                $objDao = new usersDao();
                $mensajes = $objDao->Update($objBean,$tblName);
            }
            //DEVOLVIENDO MENSAJES
            foreach ($mensajes as $m) {
                echo $m . ",";
            }
            break;
        }

        //     //ELIMINAR
    case 5: {
            //CREANDO OBJETO E INSERTANDOLE LOS DATOS RECUPERADOS
            $objBean = new usersBean();
            $objBean->setId($var1);
            //ELIMINANDO EL REGISTRO DE LA BASE DE DATOS
            $objDao = new usersDao();
            $mensajes = $objDao->Delete($objBean,$tblName);
            //DEVOLVIENDO MENSAJES
            foreach ($mensajes as $m) {
                echo $m . ",";
            }
            break;
        }
}
