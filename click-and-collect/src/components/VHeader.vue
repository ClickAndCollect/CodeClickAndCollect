<template>
    <nav class="menu">
        <router-link class="link" to="/">Accueil</router-link>
        <router-link class="link" to="/Femmes">Femmes</router-link>
        <router-link class="link" to="/Hommes">Hommes</router-link>
        <router-link class="link" to="/Panier">Panier</router-link>
        <router-link class="link" to="/SeConnecter">Se connecter</router-link>
    </nav>
</template>


<script>
export default {
    
}
</script>



<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #eef7f5;
}
.menu {
    display: flex;
    justify-content: space-around;
    padding-top: 10px;
    padding-bottom: 10px;
    margin-left: 300px;
    margin-right: 300px;
    border-bottom: 1px solid #2cbdae;
}
.link {
    font-size: 20px;
    text-decoration: none;
    color: #2cbdae;
}
.link:hover {
    color: #e9e1bd;
}
</style>