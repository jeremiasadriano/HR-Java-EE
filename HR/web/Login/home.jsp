<%-- 
    Document   : home
    Created on : 8 Apr 2023, 18:02:23
    Author     : Pedro Nhamirre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Home Page</title>
        <link rel="stylesheet" href="../css/home.css"/>
    </head>
    <body>
        <div class="main">
          <div class="slideshow-container">
            <!-- Full-width images with number and caption text -->
            <div class="mySlides fade">
              <img src="../img/slideshow/1.jpg" >
            </div>
            <div class="mySlides fade">
              <img src="../img/slideshow/3.jpg" >
            </div>
            <div class="mySlides fade">
              <img src="../img/slideshow/4.jpg" >
            </div>
          </div>
          <div class="main-buttons">
            <h2>Gestão de Recursos Humanos</h2>
            <div class="motivacao">
              <p>"O sucesso de uma empresa depende do talento e da dedicação de sua equipe. Como departamento de recursos humanos, temos a oportunidade de atrair, desenvolver e reter os melhores profissionais para alcançarmos juntos nossos objetivos. Sigamos trabalhando juntos para construir uma equipe forte e bem-sucedida!"</p>
            </div>
            <div class="buttons">
                <form action="../Funcionarios/TelaFuncionarios.jsp">
                  <button><i class="fa-solid fa-people-group"></i>Funcionários</button>
                </form>
                <form action="../Departamento/index.jsp">
                  <button><i class="fa-sharp fa-solid fa-code-branch"></i>departamento</button>
                </form>
            </div>
          </div>
        </div>


        <script>
          let slideIndex = 0;
          showSlides();
          function showSlides() {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            for (i = 0; i < slides.length; i++) {
              slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) {slideIndex = 1}
            slides[slideIndex-1].style.display = "block";
            setTimeout(showSlides, 4000); // Change image every 2 seconds
          }
        </script>
    </body>
</html>