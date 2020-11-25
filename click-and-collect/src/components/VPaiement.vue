<template>
  <div>
    <h1 class="titre">Information bancaire</h1>
    <div class="paiement">
      <form
        method="post"
        data-centralpay="form"
        action="https://example.centralpay.net/v2/process/display"
      >
        <div class="row mx-0 text-center"></div>
        <div data-centralpay="errors" class="custom-form"></div>
        <p data-form="main-description" class="sr-only">Card data</p>
        <div class="form-row mt-3" data-toggle="popover-example-data">
          <div class="form-group col-6">
            <div class="has-feedback input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <div class="ico ico-user"></div>
                </div>
              </div>
              <input
                data-centralpay="firstName"
                type="text"
                name="order[firstName]"
                autocomplete="off"
                data-form="card-user"
                class="form-control"
                placeholder="First name"
                required="required"
              />
            </div>
          </div>
          <div class="form-group col-6">
            <div class="has-feedback input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <div class="ico ico-user"></div>
                </div>
              </div>
              <input
                data-centralpay="lastName"
                type="text"
                name="order[lastName]"
                autocomplete="off"
                data-form="card-user"
                class="form-control"
                placeholder="Last name"
                required="required"
              />
            </div>
          </div>
        </div>
        <div data-form="card-validation">
          <div class="form-row d-none">
            <div class="form-group col-12">
              <select
                list="userCards"
                data-form="card-list"
                type="text"
                class="form-control input-large"
              >
                <option>-- pay with a new credit card --</option>
              </select>
            </div>
          </div>
          <div id="card-option" class="new-card-ok">
            <div class="form-row">
              <div class="form-group col-12 new-card">
                <div class="has-feedback input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                      <div class="ico ico-cb"></div>
                    </div>
                  </div>
                  <input
                    data-centralpay="card[number]"
                    type="tel"
                    pattern="([0-9]{16})"
                    autocomplete="off"
                    class="form-control form-card-data form-card-number"
                    placeholder="Numéro de carte"
                    maxlength="19"
                    data-form="card-data"
                  />
                </div>
              </div>
            </div>
            <div class="form-row align-items-center">
              <div class="form-group col-8 new-card">
                <div class="has-feedback input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                      <div class="ico ico-calendar"></div>
                    </div>
                  </div>
                  <input
                    data-centralpay="card[expirationMonth]"
                    type="tel"
                    pattern="[0-9]{1,2}"
                    maxlength="2"
                    autocomplete="off"
                    class="form-control form-card-data"
                    placeholder="MM"
                    data-form="card-data"
                  />
                  <input
                    data-centralpay="card[expirationYear]"
                    type="tel"
                    max="9999"
                    inputmode="tel"
                    pattern="[0-9]{4}"
                    maxlength="4"
                    autocomplete="off"
                    class="form-control form-card-data"
                    data-form="card-data"
                    placeholder="YYYY"
                  />
                </div>
              </div>
              <div class="form-group stored-card use-cvv text-right"></div>
              <div class="form-group col-4 use-cvv">
                <div class="has-feedback input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                      <div class="ico ico-lock"></div>
                    </div>
                  </div>
                  <input
                    data-centralpay="card[cvc]"
                    type="tel"
                    pattern="[0-9]{3}"
                    maxlength="3"
                    autocomplete="off"
                    class="form-control form-card-data"
                    placeholder="Code sécurité (au dos)"
                    name="customerValidationValue"
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="form-row">
          <div class="col-12">
            <div
              data-form="remember-div"
              class="remember remember-option d-flex align-items-center mb-3"
            >
              <span class="remember-checkbox form-check">
                <input
                  class="form-check-input"
                  data-form="remember-select"
                  id="remember"
                  type="checkbox"
                  name="store-card"
                />
                <label class="form-check-label" for="remember"
                  >Se souvenir de ma carte</label
                >
              </span>
              <a class="help-icon" data-toggle="popover-info">
                <img src="/v2/src/img/question-mark.png" alt="" />
              </a>
              <div id="popover-card-info" class="d-none">
                <span class="np-popover-style"
                  >Your card data is stored securely.
                  <a href="#">More information</a></span
                >
              </div>
            </div>
          </div>
        </div>
        <div class="text-center mt-2">
          <button
            class="btn btn-cpay btn-success"
            type="submit"
            value="submit"
            data-form="submit"
            data-toggle="popover"
            data-placement="bottom"
            data-trigger="hover"
          >
            <div class="np-button-content">
              <span data-display="submit-value">Payer</span>
              <div class="np-loader"></div>
            </div>
          </button>
          <br>
          <br>
          <img src="..\assets\cartes.png">
        </div>
      </form>
    </div>
  </div>
</template>

<style>
.titre {
  padding-top: 30px;
}
.paiement {
  padding-top: 100px;
}
</style>