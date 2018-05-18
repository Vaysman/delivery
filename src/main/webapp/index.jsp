<!doctype html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title>Spring MVC+ Hibernate</title>
    <link rel="stylesheet" href="/resources/css/example.css"/>
    <script>
        $(document).ready(function(){
            $("h2").click(function(){
                $("h3").toggle();
            });
        });
    </script>
</head>
<body>
<br>
<div style="text-align:center">
    <h2>
        Hello!<br> <br>
    </h2>
    <button type="button" onclick="loadDoc()">Start</button>
    <h3>
        This application for cargoes delivery company.  <a href="/welcome.html">Click here to start working.</a>
    </h3>
    <script>
        function loadDoc() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("demo").innerHTML =
                        this.responseText;
                }
            };
            xhttp.open("GET", "ajax_info.txt", true);
            xhttp.send();
        }
    </script>

</div>
</body>
</html>