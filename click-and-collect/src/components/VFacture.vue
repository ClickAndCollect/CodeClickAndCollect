<template>
  <div class="container mt-5 mb-5">
    <div class="row d-flex justify-content-center">
      <div class="col-md-8">
        <div class="card">
          <div class="text-left logo p-2 px-5">
            <img src="..\assets\logo.png" width="50" />
          </div>
          <div class="invoice p-5">
            <h5>Votre facture</h5>
            <span class="font-weight-bold d-block mt-4">Bonjour</span>
            <span>Votre commande a bien été confirmée</span>
            <div
              class="payment border-top mt-3 mb-3 border-bottom table-responsive"
            >
              <table class="table table-borderless">
                <tbody>
                  <tr>
                    <td>
                      <div class="py-2">
                        <span class="d-block text-muted">Date de commande</span>
                        <span>12 Jan,2018</span>
                      </div>
                    </td>
                    <td>
                      <div class="py-2">
                        <span class="d-block text-muted"
                          >Numéro de commande</span
                        >
                        <span>MT12332345</span>
                      </div>
                    </td>
                    <td>
                      <div class="py-2">
                        <span class="d-block text-muted">Paiement</span>
                        <span
                          ><img
                            src="https://img.icons8.com/color/48/000000/mastercard.png"
                            width="20"
                        /></span>
                      </div>
                    </td>
                    <td>
                      <div class="py-2">
                        <span class="d-block text-muted"
                          >Adresse de livraison</span
                        >
                        <span>1 rue du Panda, Paris, 75016</span>
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="product border-bottom table-responsive">
              <table class="table table-borderless">
                <tbody>
                  <tr>
                    <td width="20%">
                      <img
                        src="..\assets\Hommes\10-BOSS-Hugo-Boss.jpg"
                        width="90"
                      />
                    </td>
                    <td width="60%">
                      <span class="font-weight-bold">Boss de Hugo Boss</span>
                      <div class="product-qty">
                        <span class="d-block">Quantité : 1</span>
                      </div>
                    </td>
                    <td width="20%">
                      <div class="text-right">
                        <span class="font-weight-bold">24€</span>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td width="20%">
                      <img
                        src="..\assets\Femmes\08-la-petite-robe-noir.jpg"
                        width="70"
                      />
                    </td>
                    <td width="60%">
                      <span class="font-weight-bold"
                        >La petite robe en noire</span
                      >
                      <div class="product-qty">
                        <span class="d-block">Quantité : 1</span>
                      </div>
                    </td>
                    <td width="20%">
                      <div class="text-right">
                        <span class="font-weight-bold">69€</span>
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="row d-flex justify-content-end">
              <div class="col-md-5">
                <table class="table table-borderless">
                  <tbody class="totals">
                    <tr>
                      <td>
                        <div class="text-left">
                          <span class="text-muted">Total</span>
                        </div>
                      </td>
                      <td>
                        <div class="text-right"><span>93€</span></div>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <div class="text-left">
                          <span class="text-muted">TVA</span>
                        </div>
                      </td>
                      <td>
                        <div class="text-right"><span>3€</span></div>
                      </td>
                    </tr>

                    <tr class="border-top border-bottom">
                      <td>
                        <div class="text-left">
                          <span class="font-weight-bold">TOTAL</span>
                        </div>
                      </td>
                      <td>
                        <div class="text-right">
                          <span class="font-weight-bold">96€</span>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <p>
              Nous enverrons un e-mail de confirmation lorsque la commande sera
              prête
            </p>
            <p class="font-weight-bold mb-0">Merci pour votre achat</p>
            <span>Monde du parfum</span>
          </div>
          <div class="d-flex justify-content-between footer p-3">
            <span
              >Besoin d'aide ?<router-link to="/Conditions">
                CGV</router-link
              ></span
            >
          </div>
        </div>
      </div>
    </div>
  </div>
</template>


<style>
.card {
  border: none;
}

.logo {
  background-color: #eeeeeea8;
}

.totals tr td {
  font-size: 13px;
}
.footer span {
  font-size: 12px;
}

.product-qty span {
  font-size: 12px;
  color: #dedbdb;
}
</style>