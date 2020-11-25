<template>
  <div>
    <div class="panier">
      <table class="table table-hover">
        <thead>
          <tr>
            <th scope="col">Article</th>
            <th scope="col">Quantité</th>
            <th scope="col">Prix</th>
          </tr>
        </thead>
        <tbody></tbody>
      </table>
      Sous total : <span class="subtotal"></span> €
      <div>
        <button type="button" class="btn btn-success"><router-link to="/Paiement">Passer la commande</router-link></button>
      </div>
    </div>
  </div>
</template>

<style>
.btn {
  margin-top: 20px;
}

.table {
  margin-top: 30px;
}

</style>