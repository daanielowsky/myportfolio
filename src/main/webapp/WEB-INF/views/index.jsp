<html>
<head>
    <title>Daanielowsky - portfolio</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../media/css/style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body class="bodyBackground">
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Daanielowsky</a>
        </div>
        <ul class="nav navbar-nav" style="float: right">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">O mnie</a></li>
            <li><a href="#">Projekty</a></li>
            <li><a href="#">Technologie</a></li>
        </ul>
    </div>
</nav>
<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">


        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>


        <div class="carousel-inner">
            <div class="item active">
                <img src="la.jpg"
                     onclick="javascript:window.open('https://github.com/daanielowsky/SellOutAPI', '_blank')"
                     alt="Los Angeles" style="width:100%;">
                <div class="carousel-caption d-none d-md-block">
                    <h3>SIEMA</h3>
                    <p>eniu</p>
                </div>
            </div>

            <div class="item">
                <img src="chicago.jpg" alt="Chicago" style="width:100%;">
                <div class="carousel-caption d-none d-md-block">
                    <h3>SIEMA</h3>
                    <p>eniu</p>
                </div>
            </div>

            <div class="item">
                <img src="ny.jpg" alt="New york" style="width:100%;">
                <div class="carousel-caption d-none d-md-block">
                    <h3>SIEMA</h3>
                    <p>eniu</p>
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
</body>
</html>