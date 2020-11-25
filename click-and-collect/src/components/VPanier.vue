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
        <button type="button" class="btn btn-success">Payer la commande</button>
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
  background-color: #42b983;
  color: white;
}

.panier {
  padding-left: 280px;
  padding-right: 280px;
}
</style>