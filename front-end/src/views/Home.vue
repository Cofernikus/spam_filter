<template>
  <div
    id="neki"
    :style="{
      backgroundColor: korisnikUlogiran ? 'pink' : 'salmon'
    }"
  >
    <div v-if="korisnikUlogiran">
      Korisnik je tu!!! LOL!!
      <gumb text="Logiraj se!" @click="odlogirajKorisnika" />
    </div>
    <div class="flex-column" v-else>
      Ulogiraj se!!!!
      <gumb text="Odlogiraj se!" @click="ulogirajKorinika" />
    </div>
    <gumb
      style="margin: 5px"
      :text="'Gumb ' + n"
      @click="klikNaGumb"
      v-for="(n, i) in 20"
      :key="i"
    />
  </div>
</template>

<script lang="ts" setup>
import { ref } from "vue";
import Gumb from "../components/Gumb.vue";

const korisnikUlogiran = ref(false);

function klikNaGumb() {
  console.log("Bok!");
}

function ulogirajKorinika() {
  korisnikUlogiran.value = true;
}

function odlogirajKorisnika() {
  korisnikUlogiran.value = false;
}
</script>

<style>
#neki {
  background-color: pink;
  padding: 50px;
}
</style>
