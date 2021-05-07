
<?php
include_once "producto.php";

$Prod= new Productos();
echo "<table border='1'>" .
    "<tr>
            <th>#</th>
            <th>NombreProducto</th>
            <th>Peso</th>
            <th>Precio</th>
            <th>Tipo_Producto</th>
            <th>Descripcion</th>
            <th>Categoria</th>
            <th>idTienda</th>
        </tr>";
$view = $Prod->mostrarproductos();
if ($view->num_rows != 0) {
    for ($i = 0; $i < $view->num_rows; $i++) {
        $data = $view->fetch_assoc();
        echo "            <tr>
            <td>" . $data["idProducto"] . "</td>
            <td>" . $data["NombreProducto"] . "</td>
            <td>" . $data["Peso"] . "</td>
            <td>" . $data["Precio"] . "</td>
            <td>" . $data["Tipo_Producto"] . "</td>
            <td>" . $data["Descripcion"] . "</td>
            <td>" . $data["Categoria"] . "</td>
            <td>" . $data["idTienda"] . "</td>
         <tr>";
    }
}else{
    echo "<tr>
            <td colspan='7'>No existen resultados</td>
          </tr>";
}

?>