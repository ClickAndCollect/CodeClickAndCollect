<template>
  <div class="inscription">
    <form class="formulaire">
      <fieldset>
        <legend>Se connecter</legend>
        <div class="form-group">
          <label for="mail">Mail</label>
          <input
            type="email"
            class="form-control"
            id="mail"
            aria-describedby="emailHelp"
            placeholder="Votre mail"
            required
          />
        </div>
        <div class="form-group">
          <label for="mdp">Mot de passe</label>
          <input
            type="password"
            class="form-control"
            id="exampleInputPassword1"
            placeholder="Votre mot de passe"
            required
          />
        </div>
        <button type="submit" class="btn btn-success disabled">
          Se connecter
        </button>
      </fieldset>
    </form>
    <div class="container" style="margin-top: 30px">
    <router-link to="/Inscription" class="btn-inscription" style="text-decoration: none">Pas encore inscrit ?</router-link>
    </div>
  </div>
</template>

<style>
legend {
  font-size: 40px;
  margin-top: 30px;
  margin-bottom: 30px;
}
.formulaire {
  margin-left: 150px;
  margin-right: 150px;
  font-size: 20px;
}
.btn {
  margin-left: 50px;

}
.btn-inscription {
  border-radius: 50px;
  margin-left: 50px;
  font-size: 20px;
}
</style>