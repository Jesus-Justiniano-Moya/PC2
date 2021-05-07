<?php
include_once "producto.php";

class ProductoControlador
{
    public function mostrar(){
        $producto =  new producto();
        return $producto->mostrar();
    }
}