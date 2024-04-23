<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = isset($_POST['nombre']) ? $_POST['nombre'] : "";
    $apellido = isset($_POST['apellido']) ? $_POST['apellido'] : "";
    $email = isset($_POST['email']) ? $_POST['email'] : "";

    $conn = new mysqli('localhost', 'root', '', 'formulario2');

    if ($conn->connect_error) {
        die('coneccion fallada : ' . $conn->connect_error);
    } else {
        $stmt_insert_usuario = $conn->prepare("INSERT INTO usuarios (nombre, apellido, email) VALUES (?, ?, ?)");
        $stmt_insert_usuario->bind_param("sss", $nombre, $apellido, $email);
        $stmt_insert_usuario->execute();

        $usuario_id = $stmt_insert_usuario->insert_id;
        if (isset($_POST['experiencia'])) {
            foreach ($_POST['experiencia'] as $index => $experiencia) {
                $empresa = isset($_POST['empresa'][$index]) ? $_POST['empresa'][$index] : "";
                $rol = isset($_POST['rol'][$index]) ? $_POST['rol'][$index] : "";
                $stmt_insert_experiencia = $conn->prepare("INSERT INTO experiencia_laboral (usuario_id, experiencia, empresa, rol) VALUES (?, ?, ?, ?)");
                $stmt_insert_experiencia->bind_param("isss", $usuario_id, $experiencia, $empresa, $rol);
                $stmt_insert_experiencia->execute();
                $stmt_insert_experiencia->close();
            }
        }
        if (isset($_POST['institucion'])) {
            foreach ($_POST['institucion'] as $index => $institucion) {
                $Titulo = isset($_POST['Titulo'][$index]) ? $_POST['Titulo'][$index] : "";
                $fecha_inicio = isset($_POST['fecha_inicio'][$index]) ? $_POST['fecha_inicio'][$index] : "";
                $stmt_insert_formacion = $conn->prepare("INSERT INTO formacion (usuario_id, institucion, Titulo, fecha_inicio) VALUES (?, ?, ?, ?)");
                $stmt_insert_formacion->bind_param("isss", $usuario_id, $institucion, $Titulo, $fecha_inicio);
                $stmt_insert_formacion->execute();
                $stmt_insert_formacion->close();
            }
        }
        if (isset($_POST['idioma'])) {
            foreach ($_POST['idioma'] as $index => $idioma) {
                $nivel_idioma = isset($_POST['nivel_idioma'][$index]) ? $_POST['nivel_idioma'][$index] : "";
                $stmt_insert_idioma = $conn->prepare("INSERT INTO idiomas (usuario_id, idioma, nivel_idioma) VALUES (?, ?, ?)");
                $stmt_insert_idioma->bind_param("iss", $usuario_id, $idioma, $nivel_idioma);
                $stmt_insert_idioma->execute();
                $stmt_insert_idioma->close();
            }
        }

        if (isset($_POST['habilidad'])) {
            foreach ($_POST['habilidad'] as $index => $habilidad) {
                $nivel_habilidad = isset($_POST['nivel_habilidad'][$index]) ? $_POST['nivel_habilidad'][$index] : "";
                $stmt_insert_habilidad = $conn->prepare("INSERT INTO aptitudes (usuario_id, habilidad, nivel_habilidad) VALUES (?, ?, ?)");
                $stmt_insert_habilidad->bind_param("iss", $usuario_id, $habilidad, $nivel_habilidad);
                $stmt_insert_habilidad->execute();
                $stmt_insert_habilidad->close();
            }
        }
        $stmt_insert_usuario->close();
        $conn->close();
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>Formulario</title>
</head>
<body>
    <div class="Caja">
        <div class="Titulo">
          
          <h1>Formulario</h1>
        </div>
      <div class="Formulario">
        <form method="post">
            <div class="conte">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
    
            <div class="conte">
                <label for="apellido">Apellido:</label>
                <input type="text" id="apellido" name="apellido" required>
            </div>
    
            <div class="conte">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="conte">
                <label for="experiencia">Experiencia Laboral:</label>
                <a class="adiccion">&plus;</a>
            </div>
            <div class="infoo"></div>
            <div class="conte">
                <label for="Formacion">Formacion:</label>
                <a class="adiccion2">&plus;</a>
            </div>
            <div class="infoo2"></div>
            <div class="conte">
                <label for="Idiomas">Idiomas:</label>
                <a class="adiccion3">&plus;</a>
            </div>
            <div class="infoo3"></div>
            <div class="conte">
                <label for="Aptitudes,Habilidades">Aptitudes/Habilidades:</label>
                <a class="adiccion4">&plus;</a>
            </div>
            <div class="infoo4"></div>
    
            <button type="submit">Enviar</button>
            <script defer src="script.js"></script>
        </form>
      </div>
    </div>
  
</body>
</html>