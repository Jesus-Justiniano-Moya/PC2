<?php

class dbconex
{
    private $host = "localhost";
    private $username = "root";
    private $password = "";
    private $db = "ls";
    private $conexionls;

    protected function conexionls
    (): mysqli
    {

        $conexionls = new mysqli($this->host, $this->username, $this->password, $this->db);
        return $conexionls;
    }

    protected function cerrar(): void
    {
        if ($this->conexionls != null)
            $this->conexionls->close();
    }

}
