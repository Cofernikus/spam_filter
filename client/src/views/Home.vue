<template>
  <div>
    <poruka :id="1" @delete="handleDeleteMessage" />
  </div>
</template>

<script lang="ts" setup>
import Poruka from "../components/Poruka.vue";
import router from "@/router";

function odlogirajKorisnika() {
  router.replace("/login");
  router.go(0);
}

function handleDeleteMessage(id: number) {
  console.log(`Brišem poruku ${id}!`);
}
</script>

<style scoped>
#neki {
  background-color: pink;
  padding: 50px;
}
</style>
