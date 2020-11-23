<template>
  <div id="app">
    <v-header></v-header>
    <router-view/>
  </div>
</template>
   <?php
    // echo "Bonjour le monde"; //pour test php
    //Sous WAMP 
    //$bdd = new PDO('mysql:host=localhost;dbname=clickandcollect;charset=utf8', 'root', '');

    // Sous MAMP
    //$bdd = new PDO('mysql:host=http://localhost:8888/;dbname=clickandcollect;charset=utf8', 'root', 'root');
    echo "Bonjour le monde";

    $serv='localhost';
    $util='root';
    $pwd='root';
    $base='clickandcollect';
    //connexion au serveur de données
    $cx=mysqli_connect($serv,$util,$pwd) or die('connexion au serveur '.$serv.' impossible');
    //connexion a la base de données
    $cxb=mysqli_select_db($cx,$base) or die('connexion à la base '.$base.' impossible');
  ?> 
<script>
import VHeader from './components/VHeader.vue'

export default {
  name: 'App',
  components: {
    VHeader,
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
</style>
