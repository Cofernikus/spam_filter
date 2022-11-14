<template>
  <nav class="flex justify-between">
    <div>
      {{ name }}
    </div>
    <div>
      <template v-if="isUserLoggedIn">
        <router-link to="/">Home</router-link>
        <gumb class="ml-2" text="Log out" @click="logOut" />
      </template>
    </div>
  </nav>
  <router-view />
</template>

<script lang="ts" setup>
import Gumb from "./components/Gumb.vue";
import { storeToRefs } from "pinia";
import { useUserStore } from "./store/userStore";
import { useRouter } from "vue-router";

const store = useUserStore();
const router = useRouter();
const { name, isUserLoggedIn } = storeToRefs(store);

function logOut() {
  store.logout();
  router.push({
    name: "login"
  });
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  margin-left: 15px;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #42b983;
}
</style>
