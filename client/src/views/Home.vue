<template>
  <div>
    Korisnik je tu!!! LOL!!
    <gumb text="Odlogiraj se!" @click="odlogirajKorisnika" />
  </div>

</template>

<script lang="ts" setup>
import { ref } from "vue";
import Gumb from "../components/Gumb.vue";
import router from "@/router";

const korisnikUlogiran = ref(false);

function odlogirajKorisnika() {
  korisnikUlogiran.value = false;
  localStorage.removeItem('user');
  router.replace('/login');
  router.go(0);
}
</script>

<style>
#neki {
  background-color: pink;
  padding: 50px;
}
</style>
