<template>
  <nav class="navbar navbar-expand-lg navbar-dark">
    <button
      class="navbar-toggler"
      type="button"
      data-toggle="collapse"
      data-target="#navbarColor01"
      aria-controls="navbarColor01"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <router-link class="nav-link" to="/">Accueil</router-link>

          <span class="sr-only">(current)</span>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/Femmes">Femmes</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/Hommes">Hommes</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/Panier">Panier</router-link>
        </li>

      <li class="nav-item">
          <router-link class="nav-link" to="/SeConnecter">Se connecter</router-link>
        </li>
      </ul>

      <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="text" placeholder="Rechercher un produit" />
        <button class="btn btn-secondary my-2 my-sm-0" type="submit">
          Ok
        </button>
      </form>
    </div>
  </nav>
</template>

<style>
body {
  margin: 0;
  background-color: #eef7f5;
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  position: relative;
  width: 100%;
  display: block;
  transition: top 0.3s;
  display: flex;
  background-color: #42b983;
}
.nav-link {
  font-size: 15;
  color: black;
  text-decoration: none;
  float: left;
  display: block;
  text-align: center;
  padding: 15px;
  text-decoration: none;
  font-size: 20px;
  margin-left: 200px;
}
.nav-link:hover {
  background-color: rgb(221, 221, 221);
  color: black;
}
.nav-item {
  color: black;
}
</style>