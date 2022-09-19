<?php
class usersBean{
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



    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */ 
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get the value of codigo
     */ 
    public function getCodigo()
    {
        return $this->codigo;
    }

    /**
     * Set the value of codigo
     *
     * @return  self
     */ 
    public function setCodigo($codigo)
    {
        $this->codigo = $codigo;

        return $this;
    }

    /**
     * Get the value of nombres
     */ 
    public function getNombres()
    {
        return $this->nombres;
    }

    /**
     * Set the value of nombres
     *
     * @return  self
     */ 
    public function setNombres($nombres)
    {
        $this->nombres = $nombres;

        return $this;
    }

    /**
     * Get the value of apellidos
     */ 
    public function getApellidos()
    {
        return $this->apellidos;
    }

    /**
     * Set the value of apellidos
     *
     * @return  self
     */ 
    public function setApellidos($apellidos)
    {
        $this->apellidos = $apellidos;

        return $this;
    }

    /**
     * Get the value of email_ins
     */ 
    public function getEmail_ins()
    {
        return $this->email_ins;
    }

    /**
     * Set the value of email_ins
     *
     * @return  self
     */ 
    public function setEmail_ins($email_ins)
    {
        $this->email_ins = $email_ins;

        return $this;
    }

    /**
     * Get the value of email_per
     */ 
    public function getEmail_per()
    {
        return $this->email_per;
    }

    /**
     * Set the value of email_per
     *
     * @return  self
     */ 
    public function setEmail_per($email_per)
    {
        $this->email_per = $email_per;

        return $this;
    }

    /**
     * Get the value of grado_acad
     */ 
    public function getGrado_acad()
    {
        return $this->grado_acad;
    }

    /**
     * Set the value of grado_acad
     *
     * @return  self
     */ 
    public function setGrado_acad($grado_acad)
    {
        $this->grado_acad = $grado_acad;

        return $this;
    }

    /**
     * Get the value of licenciatura
     */ 
    public function getLicenciatura()
    {
        return $this->licenciatura;
    }

    /**
     * Set the value of licenciatura
     *
     * @return  self
     */ 
    public function setLicenciatura($licenciatura)
    {
        $this->licenciatura = $licenciatura;

        return $this;
    }

    /**
     * Get the value of tlf
     */ 
    public function getTlf()
    {
        return $this->tlf;
    }

    /**
     * Set the value of tlf
     *
     * @return  self
     */ 
    public function setTlf($tlf)
    {
        $this->tlf = $tlf;

        return $this;
    }

    /**
     * Get the value of carrera
     */ 
    public function getCarrera()
    {
        return $this->carrera;
    }

    /**
     * Set the value of carrera
     *
     * @return  self
     */ 
    public function setCarrera($carrera)
    {
        $this->carrera = $carrera;

        return $this;
    }

    /**
     * Get the value of egresado
     */ 
    public function getEgresado()
    {
        return $this->egresado;
    }

    /**
     * Set the value of egresado
     *
     * @return  self
     */ 
    public function setEgresado($egresado)
    {
        $this->egresado = $egresado;

        return $this;
    }

    /**
     * Get the value of isEstEmpleabilidad
     */ 
    public function getIsEstEmpleabilidad()
    {
        return $this->isEstEmpleabilidad;
    }

    /**
     * Set the value of isEstEmpleabilidad
     *
     * @return  self
     */ 
    public function setIsEstEmpleabilidad($isEstEmpleabilidad)
    {
        $this->isEstEmpleabilidad = $isEstEmpleabilidad;

        return $this;
    }

    /**
     * Get the value of area
     */ 
    public function getArea()
    {
        return $this->area;
    }

    /**
     * Set the value of area
     *
     * @return  self
     */ 
    public function setArea($area)
    {
        $this->area = $area;

        return $this;
    }

    /**
     * Get the value of puesto
     */ 
    public function getPuesto()
    {
        return $this->puesto;
    }

    /**
     * Set the value of puesto
     *
     * @return  self
     */ 
    public function setPuesto($puesto)
    {
        $this->puesto = $puesto;

        return $this;
    }

    /**
     * Get the value of rango_sueldo
     */ 
    public function getRango_sueldo()
    {
        return $this->rango_sueldo;
    }

    /**
     * Set the value of rango_sueldo
     *
     * @return  self
     */ 
    public function setRango_sueldo($rango_sueldo)
    {
        $this->rango_sueldo = $rango_sueldo;

        return $this;
    }

    /**
     * Get the value of ubigeo
     */ 
    public function getUbigeo()
    {
        return $this->ubigeo;
    }

    /**
     * Set the value of ubigeo
     *
     * @return  self
     */ 
    public function setUbigeo($ubigeo)
    {
        $this->ubigeo = $ubigeo;

        return $this;
    }

    /**
     * Get the value of modalidad
     */ 
    public function getModalidad()
    {
        return $this->modalidad;
    }

    /**
     * Set the value of modalidad
     *
     * @return  self
     */ 
    public function setModalidad($modalidad)
    {
        $this->modalidad = $modalidad;

        return $this;
    }

    /**
     * Get the value of isContEstudios
     */ 
    public function getIsContEstudios()
    {
        return $this->isContEstudios;
    }

    /**
     * Set the value of isContEstudios
     *
     * @return  self
     */ 
    public function setIsContEstudios($isContEstudios)
    {
        $this->isContEstudios = $isContEstudios;

        return $this;
    }

    /**
     * Get the value of universidad
     */ 
    public function getUniversidad()
    {
        return $this->universidad;
    }

    /**
     * Set the value of universidad
     *
     * @return  self
     */ 
    public function setUniversidad($universidad)
    {
        $this->universidad = $universidad;

        return $this;
    }

    /**
     * Get the value of maestria
     */ 
    public function getMaestria()
    {
        return $this->maestria;
    }

    /**
     * Set the value of maestria
     *
     * @return  self
     */ 
    public function setMaestria($maestria)
    {
        $this->maestria = $maestria;

        return $this;
    }

    /**
     * Get the value of doctorado
     */ 
    public function getDoctorado()
    {
        return $this->doctorado;
    }

    /**
     * Set the value of doctorado
     *
     * @return  self
     */ 
    public function setDoctorado($doctorado)
    {
        $this->doctorado = $doctorado;

        return $this;
    }

    /**
     * Get the value of especializacion
     */ 
    public function getEspecializacion()
    {
        return $this->especializacion;
    }

    /**
     * Set the value of especializacion
     *
     * @return  self
     */ 
    public function setEspecializacion($especializacion)
    {
        $this->especializacion = $especializacion;

        return $this;
    }

    /**
     * Get the value of genero
     */ 
    public function getGenero()
    {
        return $this->genero;
    }

    /**
     * Set the value of genero
     *
     * @return  self
     */ 
    public function setGenero($genero)
    {
        $this->genero = $genero;

        return $this;
    }
}