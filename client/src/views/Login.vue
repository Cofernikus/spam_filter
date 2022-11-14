<template>
  <div class="about flex-column">
    <h1>This is a login page</h1>
    <pre style="text-align: left">
      {{ data }}
    </pre>
    <h2 v-if="loading">Šaljem!!!!</h2>
    <input v-model="username_input" />
    <input v-model="password_input" />
    <gumb text="Login" @click="login" />
  </div>
</template>

<script lang="ts" setup>
import Gumb from "../components/Gumb.vue";
import axios from "axios";
import { ref } from "vue";
import router from "@/router";
import { useUserStore } from "@/store/userStore";

const username_input = ref("");
const password_input = ref("");
const loading = ref(false);
const data = ref();
const userStore = useUserStore();

async function login() {
  if (username_input.value.length <= 4) {
    alert("!!!! lol");
    loading.value = false;
  } else {
    try {
      const { data } = await axios.post("http://localhost:3000/login", {
        address: username_input.value,
        password: password_input.value
      });
      userStore.login(data);
      router.push("/");
    } catch (e) {
      console.error("zajebo si!!!!!");
    } finally {
      loading.value = false;
    }
  }
}
</script>
