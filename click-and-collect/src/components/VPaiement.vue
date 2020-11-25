<template>
  <div>
    <fieldset>
      <legend>Informations CB</legend>
      <ol>
        <li>
          <fieldset>
            <legend>Type de carte bancaire</legend>
            <ul>
              <li>
                <input id="visa" name="type_de_carte" type="radio" />
                <label for="visa">VISA</label>
              </li>
              <li>
                <input id="amex" name="type_de_carte" type="radio" />
                <label for="amex">American Express</label>
              </li>
              <li>
                <input id="mastercard" name="type_de_carte" type="radio" />
                <label for="mastercard">Mastercard</label>
              </li>
            </ul>
          </fieldset>
        </li>
        <li>
          <label for="numero_de_carte">Numéro de carte</label>
          <input
            id="numero_de_carte"
            name="numero_de_carte"
            type="number"
            required
          />
        </li>
        <li>
          <label for="securite">Code sécurité</label>
          <input id="securite" name="securite" type="text" placeholder="Au dos de la carte" required />
        </li>
        <li>
          <label for="securite">Date de validité</label>
          <input name="date" type="date" required />
        </li>
        <li>
          <label for="nom_porteur">Nom sur la carte</label>
          <input
            id="nom_porteur"
            name="nom_porteur"
            type="number"
            required
          />
        </li>
      </ol>
    </fieldset>

    <fieldset>
      <button type="submit">Payer</button>
    </fieldset>
  </div>
</template>

<style>
html, body, h1, form, fieldset, legend, ol, li {
  margin: 0;
  padding: 0;
}
li {
  list-style: none;
}
form#paiement {
  background: #9cbc2c;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 5px;
  padding: 20px;
  width: 400px;
}
form#paiement fieldset {
  border: none;
  margin-bottom: 10px;
}
form#paiement fieldset:last-of-type {
  margin-bottom: 0;
}
form#paiement legend {
  color: #384313;
  font-size: 16px;
  font-weight: bold;
  padding-bottom: 10px;
  text-shadow: 0 1px 1px #c0d576;
}
form#paiement > fieldset > legend:before {
  content: "Étape " counter(fieldsets) " : ";
  counter-increment: fieldsets;
}
form#paiement fieldset fieldset legend {
  color: #111111;
  font-size: 13px;
  font-weight: normal;
  padding-bottom: 0;
}
form#paiement label {
  float: left;
  font-size: 13px;
  width: 110px;
}
form#paiement fieldset fieldset label {
  background:none no-repeat left 50%;
  line-height: 20px;
  padding: 0 0 0 30px;
  width: auto;
}
form#paiement fieldset fieldset label:hover {
  cursor: pointer;
}
form#paiement input:not([type=radio]),
form#paiement textarea {
  background: #ffffff;
  border: none;
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  -khtml-border-radius: 3px;
  border-radius: 3px;
  font: italic 13px Georgia, "Times New Roman", Times, serif;
  outline: none;
  padding: 5px;
  width: 200px;
}
form#paiement input:not([type=submit]):focus,
form#paiement textarea:focus {
  background: #eaeaea;
}
form#paiement input[type=radio] {
  float: left;
  margin-right: 5px;
}
form#paiement button {
  background: #384313;
  border: none;
  -moz-border-radius: 20px;
  -webkit-border-radius: 20px;
  -khtml-border-radius: 20px;
  border-radius: 20px;
  color: #ffffff;
  display: block;
  font: 18px Georgia, "Times New Roman", Times, serif;
  letter-spacing: 1px;
  margin: auto;
  padding: 7px 25px;
  text-shadow: 0 1px 1px #000000;
  text-transform: uppercase;
}
form#paiement button:hover {
  background: #1e2506;
  cursor: pointer;
}
</style>