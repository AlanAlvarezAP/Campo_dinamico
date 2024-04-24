
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
        <form action= "generar_cv.php" method="post">
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