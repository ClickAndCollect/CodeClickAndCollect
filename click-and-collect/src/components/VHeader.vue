<template>
    <nav class="menu">
        <router-link class="link" to="/">Accueil</router-link>
        <router-link class="link" to="/Hommes">Hommes</router-link>
         <router-link class="link" to="/Femmes">Femmes</router-link>
        <router-link class="link" to="/Panier">Panier</router-link>
        <router-link class="link" to="/SeConnecter">Se connecter</router-link>

 </nav>


</template>
<script>
export default {

}
var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
var currentScrollPos = window.pageYOffset;
  if (prevScrollpos > currentScrollPos) {
    document.getElementById("navbar").style.top = "0";
  } else {
    document.getElementById("navbar").style.top = "-50px";
  }
  prevScrollpos = currentScrollPos;
}

</script>
<style>

body {
  margin: 0;
  background-color: #f1f1f1;
  font-family: Arial, Helvetica, sans-serif;
}

.menu{

  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
  display: block;
  transition: top 0.3s;
  display: flex;
  justify-content: space-around;
  font-size: 25px;


}
.link{
    font-size: 15;
    color: white;
    text-decoration: none;
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 15px;
    text-decoration: none;
    font-size: 17px;


}
.link:hover {
  background-color: #ddd;
  color: black;
}
</style>