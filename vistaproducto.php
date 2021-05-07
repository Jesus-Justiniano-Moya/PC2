<?php
include_once "controladorproducto.php";

$controladorproducto = new controladorproducto();
$resultado = $controladorproductor->mostrar();

foreach ($resultado as $producto) {
    echo "<li>".$producto["nombre"]."</li>";
}

