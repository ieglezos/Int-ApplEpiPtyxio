<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link href="css/styless.scss" rel="stylesheet/scss" type="text/css">
    <title>Int and Applications</title>
</head>
<body>

<div class="Wrapper">
    <h1 class="Title">Εισάγετε τη χρονιά που θέλετε και δείτε πόσα ειστήρια κόπηκαν στα ελληνικά καζίνο</h1>
    <div class="Input">
        <input type="text" id="input" class="Input-text" placeholder="2009-2016"><br>
        <button onclick="myfunction()" class="learn-more">Enter</button>
        <label for="input" class="Input-label">Εισιτήρια</label>
<%--         <p><h1>Τα εισιτήρια για τη χρονιά τάδε είναι:</h1></p>--%>
        <p id="result"></p>
    </div>
</div>

<form method="post" action="new.jsp">
    <input type="hidden" name="year">
    <input type ="hidden" name="tickets">

</form>
<script type="text/javascript">

    // isNaN($(a))
    const years = ["2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016"]
    const api_url = "https://data.gov.gr/api/v1/query/eeep_casino_tickets"
    async function getAPI(a,years){
        const response = await fetch(api_url,{
            headers: {
                "Authorization": "Token 864583693e8d39d25b6dd13ad786669e6cf75e7c"
            },
        });
        const data = await  response.json();
        // var num1 = ~~document.getElementById("num1").value;
        for(var i =0; i < data.length; i++){
            if(years[i]==a){
                var b = i;
            }
        }

        console.log(data[b].tickets);
        document.getElementById("result").innerHTML= data[b].tickets;
        // document.getElementById("year").value= a;
        // document.getElementById("tickets").value= data[b].tickets;
        // document.form.submit();
        // window.location.replace("index.jsp?year="+ a);
        // window.location.replace("index.jsp?result="+ data[b].tickets);
    }

    function myfunction(){
        const year = document.getElementById('input').value;
        const a = parseInt(year);
        console.log(a);
        if(!(a>2008 && a<2017)){
            alert("Η χρονιά πρέπει να είναι μεταξύ  2009 και 2016");
        }
        else{
            getAPI(a,years);
            // location.replace(('new.jsp'));

        }
    }


</script>



</body>
</html>