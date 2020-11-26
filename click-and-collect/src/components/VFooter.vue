<template>
  <footer class="footer">
    <div class="footer__addr">
      <h2>Contact</h2>
      <address>1 rue du Panda, Paris, 75016
      <a class="footer__btn" href="baptistedantaspro@gmail.com">Envoyez  un mail</a>
      </address>
    </div>

    <ul class="footer__nav">
      <li class="nav__item">
        <ul class="nav__ul">
          <li>
            <router-link to="/Conditions">Conditions Générales</router-link>
          </li>
        </ul>
      </li>
    </ul>
  </footer>
</template>

<style>
.footer {
  display: flex;
  flex-flow: row wrap;
  color: #2f2f2f;
  background-color: #42b983;
  border-top: 1px solid #e5e5e5;
}


.footer__addr h2 {
  margin-top: 1.3em;
  font-size: 15px;
  font-weight: 400;
}


.footer__btn {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 36px;
  max-width: max-content;
  background-color: rgb(33, 33, 33, 0.07);
  border-radius: 100px;
  color: #2f2f2f;
  line-height: 0;
  font-size: 1rem;
  margin-left: 260px;
}

.footer ul {
  list-style: none;
  padding-left: 0;
}

.footer li {
  line-height: 2em;
}

.footer a {
  text-decoration: none;
}

.footer__nav {
  display: flex;
	flex-flow: row wrap;
}

.footer__nav > * {
  flex: 1 50%;
  margin-right: 1.25em;
}

.nav__ul a {
  color: black;
}

.nav__ul--extra {
  column-count: 2;
  column-gap: 1.25em;
}

.legal {
  display: flex;
  flex-wrap: wrap;
  color: #999;
}
  
.legal__links {
  display: flex;
  align-items: center;
}

.heart {
  color: #2f2f2f;
}

@media screen and (min-width: 24.375em) {
  .legal .legal__links {
    margin-left: auto;
  }
}

@media screen and (min-width: 40.375em) {
  .footer__nav > * {
    flex: 1;
  }
  
  .nav__item--extra {
    flex-grow: 2;
  }
  
  .footer__addr {
    flex: 1 0px;
  }
  
  .footer__nav {
    flex: 2 0px;
  }
}
</style>