<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../../media/css/style.css" rel="stylesheet" type="text/css">
    <title>Daanielowsky - portfolio</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Daniel Pawlicki - Portfolio</a>
        </div>
        <ul class="nav navbar-nav" style="float: right">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#aboutme">O mnie</a></li>
            <li><a href="#projects">Projekty</a></li>
            <li><a href="#technologies">Technologie</a></li>
            <li><a href="/contact">Kontakt</a></li>
        </ul>
    </div>
</nav>

<div class="container" id="aboutme">
    <center><img src="../../media/img/aboutme.png">
        <div>
            <br>
            Jak można zauważyć to mistrzem front-endu za bardzo nie jestem, ale za to jestem absolwentem Szkoły IT
            „CodersLab” we Wrocławiu ze specjalizacją na „Java Web Developer’a”.<br>
            Podczas nauk odbywałem jeden wspólny projekt w metodologii Scrum.<br>
            Jestem bardzo ambitny, skropulatny oraz gotowy na pracę w pełnym wymiarze godzinowym.<br>
            Dodatkowo studiuje zaocznie na Wyższej Szkoły Bankowej we Wrocławiu na kierunku Informatyka z wybraną
            specjalizacją Developera Aplikacji Mobilnych, by jeszcze bardziej poszerzać swoją wiedzę.<br>
            Poszukuję aktualnie pracy jako Junior/ Intern Java Developer we Wrocławiu.<br>
            <br>
        </div>
    </center>
    <br>
</div>
<div class="container" id="projects">
    <center><img src="../../media/img/projects.png"></center>
    <p id="info">*kliknij obrazek u góry, aby przenieść się na GitHuba.</p>
    <div style="width: 100%; height: 40%;" id="myCarousel" class="carousel slide" data-ride="carousel">


        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>


        <div class="carousel-inner">
            <div class="item active">
                <img src="../../media/img/sellout.png"
                     onclick="javascript:window.open('https://github.com/daanielowsky/SellOutAPI', '_blank')"
                     alt="SellOutAPI" style="width:100%; height: 100%">
                <div class="carousel-caption d-none d-md-block">
                    <h3>SellOutAPI</h3>
                    <p>Aplikacja webowa strony z ogłoszeniami. Działa na bardzo podobnej zasadzie do portalu OLX.pl</p>
                </div>
            </div>

            <div class="item">
                <img src="../../media/img/oddajubrania.png"
                     onclick="javascript:window.open('https://github.com/daanielowsky/Oddaj_Ubrania', '_blank')"
                     alt="OddajUbrania" style="width:100%; height: 100%">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Oddaj Ubrania</h3>
                    <p>Aplikacja webowa, która ma na celu usprawnienie oddawania swoich
                        niepotrzebnych ubrań na akcje charytatywne.</p>
                </div>
            </div>

            <div class="item">
                <img src="../../media/img/recruit.png"
                     onclick="javascript:window.open('https://github.com/daanielowsky/recruitmentapi ', '_blank')"
                     alt="RecruitmentAPI" style="width:100%; height: 100%">
                <div class="carousel-caption d-none d-md-block">
                    <h3>RecruitmentAPI</h3>
                    <p>Aplikacja webowa, która ma na celu usprawnienie procesu rekrutacji. Jest
                        nadal w etapie produkcji.</p>
                </div>
            </div>
        </div>

        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<div id="technologies" class="container">
    <center><img src="../../media/img/tech.png">
        <br>
        <img class="technologies" src="../../media/img/java.png"/>
        <img class="technologies" src="../../media/img/spring.png"/>
        <img class="technologies" src="../../media/img/hibernate.png"/>
        <img class="technologies" src="../../media/img/mysql.png"/>
        <img class="technologies" src="../../media/img/lombok.png"/>
        <img class="technologies" src="../../media/img/maven.png"/>
        <img class="technologies" src="../../media/img/intellij.png"/>

    </center>
</div>
</body>
</html>