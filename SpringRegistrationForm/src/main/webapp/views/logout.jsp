<style type="text/css">
body{
background-color: pink;
background-size : 100%;

color: white;
text-align: center;
}
.sub{
 background-color: black;
background-image: linear-gradient(45deg, #85ff85 0%, #FFFB7D 100%);

 color: white;
}
</style>
<form action="/con/log" method="get">
<input type="hidden" name="name" value="${names}">
<input type="hidden" name="pass" value="${passs}">
<input class="sub" type="submit" value="Logout"></form>