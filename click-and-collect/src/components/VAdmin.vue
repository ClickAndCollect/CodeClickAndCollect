<template>
  <div>
    <form>
      <fieldset>
        <legend>Page admin</legend>
        <div class="form-group">
          <label for="produit">Titre du produit</label>
          <input
            type="text"
            class="form-control"
            id="produit"
            placeholder="Entrer le titre du produit"
          />
        </div>
        <div class="form-group">
          <label for="exampleInputFile">Ajouter image</label>
          <input
            type="file"
            class="form-control-file"
            id="exampleInputFile"
            aria-describedby="fileHelp"
          />
        </div>
        <div class="form-group">
          <label for="exampleTextarea">Description</label>
          <textarea
            class="form-control"
            id="desc"
            rows="3"
          ></textarea>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Prix du produit (en €)</label>
          <input
            type="number"
            class="form-control"
            id="prix"
            placeholder="Entrer le prix du produit"
          />
        </div>
        <fieldset class="form-group">
          <legend>Sexe du produit</legend>
          <div class="form-check">
            <label class="form-check-label">
              <input
                type="radio"
                class="form-check-input"
                name="optionsRadios"
                id="optionsRadios1"
                value="option1"
                checked=""
              />
              Femmes
            </label>
          </div>
          <div class="form-check">
            <label class="form-check-label">
              <input
                type="radio"
                class="form-check-input"
                name="optionsRadios"
                id="optionsRadios2"
                value="option2"
              />
              Hommes
            </label>
          </div>
        </fieldset>
      </fieldset>
    </form>
    <button type="button" class="btn btn-success"><router-link to="/Femmes">Ajouter à la boutique</router-link></button>
  </div>
</template>