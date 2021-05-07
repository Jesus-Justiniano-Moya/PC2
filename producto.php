<?php 
include_once "conex.php";

class productos   extends dbconex
{
    private $idProducto;
    private $NombreProducto;
    private $Peso;
    private $Precio;
    private $Tipo_Producto;
    private $Descripcion;
    private $Categoria;
    private $idTienda;

    public function getidProducto()
    {
        return $this->idProducto;
    }

    public function setidProducto($idProducto): void
    {
        $this->idProducto = $idProducto;
    }

    public function getNombreProducto()
    {
        return $this->NombreProducto;
    }

    public function setNombreProducto($NombreProducto): void
    {
        $this->NombreProducto = $NombreProducto;
    }

    public function getPeso()
    {
        return $this->Peso;
    }

    public function setPeso($Peso): void
    {
        $this->Peso = $Peso;
    }

    public function getPrecio()
    {
        return $this->Precio;
    }

    public function setPrecio($Precio): void
    {
        $this->Precio = $Precio;
    }

    public function getTipo_Producto()
    {
        return $this->Tipo_Producto;
    }

    public function setTipo_Producto($Tipo_Producto): void
    {
        $this->Tipo_Producto = $Tipo_Producto;
    }

    public function getDescripcion()
    {
        return $this->Descripcion;
    }

    public function setDescripcion($Descripcion): void
    {
        $this->Descripcion = $Descripcion;
    }

    public function getCategoria()
    {
        return $this->Categoria;
    }

    public function setCategoria($Categoria): void
    {
        $this->Categoria = $Categoria;
    }

    public function getidTienda()
    {
        return $this->idTienda;
    }

    public function setidTienda($idTienda): void
    {
        $this->idTienda = $idTienda;
    }

    public function mostrarproductos()
    {
        $conexionls = $this->conexion();
        $resultados = $conexionls->query("select * from productos");

        return $resultados;
    }
}
