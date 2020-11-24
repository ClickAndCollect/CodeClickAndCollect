<template>
  <div class="inscription">
    <form class="formulaire">
      <fieldset>
        <legend>S'inscrire</legend>
        <div class="form-group">
          <label for="lastname">Nom</label>
          <input
            type="text"
            class="form-control"
            id="lastname"
            placeholder="Votre nom"
            required
          />
        </div>
        <div class="form-group">
          <label for="firstname">Prénom</label>
          <input
            type="text"
            class="form-control"
            id="firstname"
            placeholder="Votre prénom"
            required
          />
        </div>
        <div class="form-group">
          <label for="addresHome">Adresse domicile</label>
          <input
            type="text"
            class="form-control"
            id="addresHome"
            placeholder="Votre adresse de domicile"
            required
          />
        </div>
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
          <label for="tel">Téléphone</label>
          <input
            type="text"
            class="form-control"
            id="tel"
            placeholder="Votre numéro de téléphone"
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
          S'inscrire
        </button>
      </fieldset>
    </form>
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
</style>