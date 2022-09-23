<?php
// Handle AJAX request (start)
if (isset($_POST['idItem'])) {
    $_SESSION['idItem'] = $_POST['idItem'];
    echo $_POST['idItem'];
    exit;
}
// Handle AJAX request (end)
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--JQUERY-->
    <script src="../public/javascripts/jquery-3.5.1.min.js"></script>
    <!--BOOTSTRAP-->
    <link rel="stylesheet" href="../public/stylesheets/bootstrap.min.css">
    <script src="../public/javascripts/bootstrap.bundle.min.js"></script>
    <!--ALERTIFY-->
    <link rel="stylesheet" href="../public/stylesheets/alertify/alertify.min.css">
    <link rel="stylesheet" href="../public/stylesheets/alertify/themes/default.css">
    <script src="../public/javascripts/alertify.min.js"></script>
    <!---->
    <link rel="stylesheet" href="../public/stylesheets/estilos.css">
    <script src="../public/javascripts/javascript.js"></script>

    <script>
        var delay = 500;
        var url = "../controllers/usersController.php";
        var type = "POST";

        $(document).ready(Read);
        $(document).ready(function() {
            $("#btnRead").click(function() {
                Read();
            });
            $("#btnCreateModal").click(function() {
                document.getElementById("txt2").value = "";
                document.getElementById("txt3").value = "";
                document.getElementById("txt4").value = "";
                $("#txt5").val("0").change();
                document.getElementById("txt6").value = "";
                document.getElementById("txt7").value = "";
                document.getElementById("txt8").value = "";
                document.getElementById("txt9").value = "";
                $("#txt10").val("0").change();
                $("#txt11").val("No Definido").change();
                $("#txt12").val("No Definido").change();
                $("#txt13").val("0").change();
                document.getElementById("txt14").value = "";
                document.getElementById("txt15").value = "";
                document.getElementById("txt16").value = "";
                document.getElementById("txt17").value = "";
                $("#txt18").val("No Definido").change();
                $("#txt19").val("0").change();
                $("#txt20").val("No Definido").change();
                $("#txt21").val("No Definido").change();
                $("#txt22").val("No Definido").change();
                document.getElementById("txt23").value = "";
                //ocultar txt1
                document.getElementById("divtxt1").setAttribute('style', 'display:none')
                //ocultar txt14
                document.getElementById("divtxt14").setAttribute('style', 'display:none')
                document.getElementById("divtxt15").setAttribute('style', 'display:none')
                document.getElementById("divtxt16").setAttribute('style', 'display:none')
                document.getElementById("divtxt17").setAttribute('style', 'display:none')
                document.getElementById("divtxt18").setAttribute('style', 'display:none')
                document.getElementById("divtxt20").setAttribute('style', 'display:none')
                document.getElementById("divtxt21").setAttribute('style', 'display:none')
                document.getElementById("divtxt22").setAttribute('style', 'display:none')
                document.getElementById("divtxt23").setAttribute('style', 'display:none')
                //changing value
                document.getElementById("btnCU").setAttribute('value', 'Insertar');
                $('#modalCU').modal('show');
            });
            $("#btnCU").click(function() {
                valbtn = $("#btnCU").val();
                if (valbtn === 'Insertar') {
                    Create();
                    setTimeout(Read, delay);
                }
                if (valbtn === 'Actualizar') {
                    Update();
                    setTimeout(Read, delay);
                }
            });
            $("#btnSearch").click(function() {
                Search();
            });
            $("#btnatras").click(function() {
                Atras();
            });
            $('#txt13').on('change', function() {
                if (this.value == 1) {
                    //remove style
                    document.getElementById("divtxt14").removeAttribute('style');
                    document.getElementById("divtxt15").removeAttribute('style');
                    document.getElementById("divtxt16").removeAttribute('style');
                    document.getElementById("divtxt17").removeAttribute('style');
                    document.getElementById("divtxt18").removeAttribute('style');
                }
                if (this.value == 0) {
                    //ocultar txt13
                    document.getElementById("divtxt14").setAttribute('style', 'display:none')
                    document.getElementById("divtxt15").setAttribute('style', 'display:none')
                    document.getElementById("divtxt16").setAttribute('style', 'display:none')
                    document.getElementById("divtxt17").setAttribute('style', 'display:none')
                    document.getElementById("divtxt18").setAttribute('style', 'display:none')
                }
                // alert(this.value);
            });
            $('#txt19').on('change', function() {
                if (this.value == 1) {
                    //remove style
                    document.getElementById("divtxt20").removeAttribute('style');
                    document.getElementById("divtxt21").removeAttribute('style');
                    document.getElementById("divtxt22").removeAttribute('style');
                    document.getElementById("divtxt23").removeAttribute('style');
                }
                if (this.value == 0) {
                    //ocultar txt13
                    document.getElementById("divtxt20").setAttribute('style', 'display:none')
                    document.getElementById("divtxt21").setAttribute('style', 'display:none')
                    document.getElementById("divtxt22").setAttribute('style', 'display:none')
                    document.getElementById("divtxt23").setAttribute('style', 'display:none')
                }
                // alert(this.value);
            });
        });
        //MODIFICAR
        $(document).on('click', '#btnUpdateModal', function() {
            var var1 = $(this).attr('var1');
            var var2 = $(this).attr('var2');
            var var3 = $(this).attr('var3');
            var var4 = $(this).attr('var4');
            var var5 = $(this).attr('var5');
            var var6 = $(this).attr('var6');
            var var7 = $(this).attr('var7');
            var var8 = $(this).attr('var8');
            var var9 = $(this).attr('var9');
            var var10 = $(this).attr('var10');
            var var11 = $(this).attr('var11');
            var var12 = $(this).attr('var12');
            var var13 = $(this).attr('var13');
            var var14 = $(this).attr('var14');
            var var15 = $(this).attr('var15');
            var var16 = $(this).attr('var16');
            var var17 = $(this).attr('var17');
            var var18 = $(this).attr('var18');
            var var19 = $(this).attr('var19');
            var var20 = $(this).attr('var20');
            var var21 = $(this).attr('var21');
            var var22 = $(this).attr('var22');
            var var23 = $(this).attr('var23');
            //
            document.getElementById("txt1").value = var1;
            document.getElementById("txt2").value = var2;
            document.getElementById("txt3").value = var3;
            document.getElementById("txt4").value = var4;
            document.getElementById("txt5").value = var5;
            document.getElementById("txt6").value = var6;
            document.getElementById("txt7").value = var7;
            document.getElementById("txt8").value = var8;
            document.getElementById("txt9").value = var9;
            document.getElementById("txt10").value = var10;
            document.getElementById("txt11").value = var11;
            document.getElementById("txt12").value = var12;
            document.getElementById("txt13").value = var13;
            document.getElementById("txt14").value = var14;
            document.getElementById("txt15").value = var15;
            document.getElementById("txt16").value = var16;
            document.getElementById("txt17").value = var17;
            document.getElementById("txt18").value = var18;
            document.getElementById("txt19").value = var19;
            document.getElementById("txt20").value = var20;
            document.getElementById("txt21").value = var21;
            document.getElementById("txt22").value = var22;
            document.getElementById("txt23").value = var23;
            //
            //remove style
            document.getElementById("divtxt1").removeAttribute('style');
            document.getElementById("divtxt14").removeAttribute('style');
            document.getElementById("divtxt15").removeAttribute('style');
            document.getElementById("divtxt16").removeAttribute('style');
            document.getElementById("divtxt17").removeAttribute('style');
            document.getElementById("divtxt18").removeAttribute('style');
            document.getElementById("divtxt20").removeAttribute('style');
            document.getElementById("divtxt21").removeAttribute('style');
            document.getElementById("divtxt22").removeAttribute('style');
            document.getElementById("divtxt23").removeAttribute('style');
            //ocultar txt6
            // document.getElementById("divtxt6").setAttribute('style', 'display:none')
            //readonly
            document.getElementById("txt1").setAttribute('readonly', '');
            //readonly SELECT
            //changing value
            document.getElementById("btnCU").setAttribute('value', 'Actualizar');
            $('#modalCU').modal('show');
        });
        //ELIMINAR
        $(document).on('click', '#btnDeleteModal', function() {
            var var1 = $(this).attr('var1');
            document.getElementById("txtdel").value = var1;
            $('#deleteModal').modal('show');
        });
        $(document).on('click', '#btnDelete', function() {
            Delete();
            setTimeout(Read, delay);
        });


        function Read() {
            $.ajax({
                type: type,
                url: url,
                data: {
                    op: '1',
                    tblName: tblName
                },
                success: function(result) {
                    $("#tabla").html(result);
                }
            });
        }

        function Search() {
            var search = $("#txtbuscar").val();
            $.ajax({
                type: type,
                url: url,
                data: {
                    op: '2',
                    search: search,
                    tblName: tblName
                },
                success: function(result) {
                    document.getElementById("txtbuscar").value = "";
                    $("#tabla").html(result);
                }
            });
        }

        function Create() {
            var var2 = $("#txt2").val();
            var var3 = $("#txt3").val();
            var var4 = $("#txt4").val();
            var var5 = $("#txt5").val();
            var var6 = $("#txt6").val();
            var var7 = $("#txt7").val();
            var var8 = $("#txt8").val();
            var var9 = $("#txt9").val();
            var var10 = $("#txt10").val();
            var var11 = $("#txt11").val();
            var var12 = $("#txt12").val();
            var var13 = $("#txt13").val();
            var var14 = $("#txt14").val();
            var var15 = $("#txt15").val();
            var var16 = $("#txt16").val();
            var var17 = $("#txt17").val();
            var var18 = $("#txt18").val();
            var var19 = $("#txt19").val();
            var var20 = $("#txt20").val();
            var var21 = $("#txt21").val();
            var var22 = $("#txt22").val();
            var var23 = $("#txt23").val();
            $.ajax({
                type: type,
                url: url,
                data: {
                    op: '3',
                    var2: var2,
                    var3: var3,
                    var4: var4,
                    var5: var5,
                    var6: var6,
                    var7: var7,
                    var8: var8,
                    var9: var9,
                    var10: var10,
                    var11: var11,
                    var12: var12,
                    var13: var13,
                    var14: var14,
                    var15: var15,
                    var16: var16,
                    var17: var17,
                    var18: var18,
                    var19: var19,
                    var20: var20,
                    var21: var21,
                    var22: var22,
                    var23: var23,
                    tblName: tblName
                },
                success: function(result) {
                    var tmp = result.split(",");
                    var nro = tmp[0];
                    var msg = tmp[1];
                    if (nro === '1') {
                        alertify.success(msg);
                    } else if (nro === '2') {
                        alertify.warning(msg);
                    } else {
                        alertify.error("Error");
                        alertify.warning(msg);
                    }
                }
            });

        }

        function Update() {
            var var1 = $("#txt1").val();
            var var2 = $("#txt2").val();
            var var3 = $("#txt3").val();
            var var4 = $("#txt4").val();
            var var5 = $("#txt5").val();
            var var6 = $("#txt6").val();
            var var7 = $("#txt7").val();
            var var8 = $("#txt8").val();
            var var9 = $("#txt9").val();
            var var10 = $("#txt10").val();
            var var11 = $("#txt11").val();
            var var12 = $("#txt12").val();
            var var13 = $("#txt13").val();
            var var14 = $("#txt14").val();
            var var15 = $("#txt15").val();
            var var16 = $("#txt16").val();
            var var17 = $("#txt17").val();
            var var18 = $("#txt18").val();
            var var19 = $("#txt19").val();
            var var20 = $("#txt20").val();
            var var21 = $("#txt21").val();
            var var22 = $("#txt22").val();
            var var23 = $("#txt23").val();
            $.ajax({
                type: type,
                url: url,
                data: {
                    op: '4',
                    var1: var1,
                    var2: var2,
                    var3: var3,
                    var4: var4,
                    var5: var5,
                    var6: var6,
                    var7: var7,
                    var8: var8,
                    var9: var9,
                    var10: var10,
                    var11: var11,
                    var12: var12,
                    var13: var13,
                    var14: var14,
                    var15: var15,
                    var16: var16,
                    var17: var17,
                    var18: var18,
                    var19: var19,
                    var20: var20,
                    var21: var21,
                    var22: var22,
                    var23: var23,
                    tblName: tblName
                },
                success: function(result) {
                    var tmp = result.split(",");
                    var nro = tmp[0];
                    var msg = tmp[1];
                    if (nro === '1') {
                        alertify.success(msg);
                    } else if (nro === '2') {
                        alertify.warning(msg);
                    } else {
                        alertify.error("Error");
                        alertify.warning(msg);
                    }
                }
            });
        }

        function Delete() {
            var var1 = $("#txtdel").val();
            $.ajax({
                type: type,
                url: url,
                data: {
                    op: '5',
                    var1: var1,
                    tblName: tblName
                },
                success: function(result) {
                    var tmp = result.split(",");
                    var nro = tmp[0];
                    var msg = tmp[1];
                    if (nro === '1') {
                        alertify.success(msg);
                    } else {
                        alertify.error("Error");
                        alertify.warning(msg);
                        alertify.warning(nro);
                    }
                    $('#deleteModal').modal('hide');
                }
            });
        }
    </script>

    <title>TABLA - USERS</title>

</head>

<body>

    <!-- HEADER -->
    <header>
        <div class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container col">
                <div class="logo"><img src="../public/images/logo_dre.png" width="200" height="100%" margin-right="30" style="margin-right: 1rem;"></div>
                <a href="#" class="navbar-brand" style="margin-left: 1rem;">
                    <strong><?php echo $title_iestp; ?></strong>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarHeader">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active">SEGUIMIENTO DE EGRESADOS</a>
                        </li>
                    </ul>

                    <form action="../controllers/dataController.php" method="post" style="margin-left: 0.7rem;">
                        <button type="submit" id="export_data" name="exportarCSV" value="Export to excel" class="btn btn-default"><img src="../public/images/sql_csv.ico" alt="Exportar en CSV" style="width: 70px; height: 70px;"></button>
                        <input type="hidden" name="tblName" id="tblName" value="<?php echo $tblName; ?>">
                    </form>

                    <a id="btnCreateModal" class="btn btn-success" style="margin-left: 0.7rem;">
                        Añadir<span id="num_cart" class="badge bg-secondary"><?php ?></span>
                    </a>

                    <button id="btnSearch" class="btn btn-info" style="margin-left: 0.7rem;">Buscar</button>
                    <input id="txtbuscar" style="margin-left: 0.4rem; border-radius: 10%;" type="search" placeholder="Buscar" aria-label="Search">

                </div>
            </div>
        </div>
    </header>

    <!----------------DATOS TABLA---------------->
    <div class="table-responsive">
        <table class="table table-bordered" id="tblData">
            <thead>
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">código</th>
                    <th scope="col">nombres</th>
                    <th scope="col">apellidos</th>
                    <th scope="col">genero</th>
                    <th scope="col">email_institucional</th>
                    <th scope="col">email_personal</th>
                    <th scope="col">teléfono</th>
                    <th scope="col">carrera</th>
                    <th scope="col">egresado</th>
                    <th scope="col">grado_academico</th>
                    <th scope="col">licenciatura</th>
                    <th scope="col">Empleabilidad</th>
                    <th scope="col">Continuidad estudio</th>
                    <th scope="col" colspan="2">Acciones</th>
                </tr>
            </thead>
            <tbody id="tabla">

            </tbody>
        </table>
    </div>
</body>






<!----------------MODAL AÑADIR / MODIFICAR---------------->
<div class="modal fade" id="modalCU" tabindex="-1" aria-labelledby="modalCULabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalCULabel">Seguimiento de Egresados</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3" id="divtxt1">
                    <label class="col-form-label" for="txt1">id:</label>
                    <input type="text" class="form-control" id="txt1">
                </div>
                <div class="mb-3" id="divtxt2">
                    <label class="col-form-label" for="txt2">código:</label>
                    <input type="text" class="form-control" id="txt2" placeholder="Campo obligatorio">
                </div>
                <div class="mb-3" id="divtxt3">
                    <label class="col-form-label" for="txt3">nombres:</label>
                    <input type="text" class="form-control" id="txt3" placeholder="Campo obligatorio">
                </div>
                <div class="mb-3" id="divtxt4">
                    <label class="col-form-label" for="txt4">apellidos:</label>
                    <input type="text" class="form-control" id="txt4" placeholder="Campo obligatorio">
                </div>
                <div class="mb-3" id="divtxt5">
                    <label class="col-form-label" for="txt5">género:</label>
                    <select name="select" class="form-control" id="txt5">
                        <!-- OPTIONS -->
                        <?php require 'dependencies/gender.php';  ?>
                    </select>
                </div>
                <div class="mb-3" id="divtxt6">
                    <label class="col-form-label" for="txt6">email_institucional:</label>
                    <input type="text" class="form-control" id="txt6" placeholder="Campo obligatorio">
                </div>
                <div class="mb-3" id="divtxt7">
                    <label class="col-form-label" for="txt7">email_personal:</label>
                    <input type="text" class="form-control" id="txt7" placeholder="Campo obligatorio">
                </div>
                <div class="mb-3" id="divtxt8">
                    <label class="col-form-label" for="txt8">telefono:</label>
                    <input type="text" class="form-control" id="txt8" placeholder="Campo obligatorio">
                </div>
                <div class="mb-3" id="divtxt9">
                    <label class="col-form-label" for="txt9">carrera:</label>
                    <input type="text" class="form-control" id="txt9" placeholder="Campo obligatorio">
                </div>
                <div class="mb-3" id="divtxt10">
                    <label class="col-form-label" for="txt10">egresado:</label>
                    <select name="select" class="form-control" id="txt10">
                        <!-- OPTIONS -->
                        <?php require 'dependencies/bit.php';  ?>
                    </select>
                </div>
                <div class="mb-3" id="divtxt11">
                    <label class="col-form-label" for="txt11">grado_académico:</label>
                    <select name="select" class="form-control" id="txt11">
                        <!-- OPTIONS -->
                        <?php require 'dependencies/t_o.php';  ?>
                    </select>
                </div>
                <div class="mb-3" id="divtxt12">
                    <label class="col-form-label" for="txt12">licenciatura:</label>
                    <select name="select" class="form-control" id="txt12">
                        <!-- OPTIONS -->
                        <?php require 'dependencies/t_o.php';  ?>
                    </select>
                </div>
                <!-- EMPLEABILIDAD -->
                <div class="mb-3 bg-info" id="divtxt13">
                    <label class="col-form-label" for="txt13">¿Está laborando?:</label>
                    <select name="select" class="form-control" id="txt13">
                        <!-- OPTIONS -->
                        <?php require 'dependencies/bit.php';  ?>
                    </select>
                    <!--  -->
                </div>
                <div class="mb-3 text-info" id="divtxt14">
                    <label class="col-form-label" for="txt14">área:</label>
                    <input type="text" class="form-control" id="txt14">
                </div>
                <div class="mb-3 text-info" id="divtxt15">
                    <label class="col-form-label" for="txt15">puesto:</label>
                    <input type="text" class="form-control" id="txt15">
                </div>
                <div class="mb-3 text-info" id="divtxt16">
                    <label class="col-form-label" for="txt16">rango_sueldo:</label>
                    <input type="text" class="form-control" id="txt16">
                </div>
                <div class="mb-3 text-info" id="divtxt17">
                    <label class="col-form-label" for="txt17">ubigeo:</label>
                    <input type="text" class="form-control" id="txt17">
                </div>
                <div class="mb-3 text-info" id="divtxt18">
                    <label class="col-form-label" for="txt18">modalidad:</label>
                    <select name="select" class="form-control" id="txt18">
                        <!-- OPTIONS -->
                        <?php require 'dependencies/p_v_h.php';  ?>
                    </select>
                </div>
                <div class="mb-3 bg-warning" id="divtxt19">
                    <label class="col-form-label" for="txt19">¿Continua sus estudios?:</label>
                    <select name="select" class="form-control" id="txt19">
                        <!-- OPTIONS -->
                        <?php require 'dependencies/bit.php';  ?>
                    </select>
                    <!--  -->
                </div>
                <div class="mb-3 text-warning" id="divtxt20">
                    <label class="col-form-label" for="txt20">universidad:</label>
                    <select name="select" class="form-control" id="txt20">
                        <!-- OPTIONS -->
                        <?php require 'dependencies/c_e_t.php';  ?>
                    </select>
                    <!--  -->
                </div>
                <div class="mb-3 text-warning" id="divtxt21">
                    <label class="col-form-label" for="txt21">maestría:</label>
                    <select name="select" class="form-control" id="txt21">
                        <!-- OPTIONS -->
                        <?php require 'dependencies/c_e_t.php';  ?>
                    </select>
                    <!--  -->
                </div>
                <div class="mb-3 text-warning" id="divtxt22">
                    <label class="col-form-label" for="txt22">doctorado:</label>
                    <select name="select" class="form-control" id="txt22">
                        <!-- OPTIONS -->
                        <?php require 'dependencies/c_e_t.php';  ?>
                    </select>
                    <!--  -->
                </div>
                <div class="mb-3 text-warning" id="divtxt23">
                    <label class="col-form-label" for="txt23">especialización:</label>
                    <input type="text" class="form-control" id="txt23">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <input type="button" class="btn btn-primary" id="btnCU">
            </div>
        </div>
    </div>
</div>

<!----------------MODAL ELIMINAR---------------->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteModalLabel">Seguro que desea eliminar?</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <label for="txtdel" class="col-form-label">id:</label>
                <input type="text" class="form-control" id="txtdel" readonly>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                <button type="button" class="btn btn-danger" id="btnDelete">Sí</button>
            </div>
        </div>
    </div>
</div>

</html>