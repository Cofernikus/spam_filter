<template>
  <nav>
    {{ "Current user: " + username }}
    <router-link v-if="username" to="/">Home</router-link>
    <router-link to="/login">Login</router-link>
  </nav>
  <router-view />
</template>

<script lang="ts" setup>
import { computed } from "vue";
import { User } from "./models";

const username = computed(() => {
  const localStorageKey = localStorage.getItem("user");

  if (localStorageKey) {
    const userData: User = JSON.parse(localStorageKey);
    return userData.username;
  }

  return "";
});
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
