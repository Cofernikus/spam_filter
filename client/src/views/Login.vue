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

const username_input = ref("");
const password_input = ref("");
const loading = ref(false);
const data = ref();

async function login() {
  const audio = new Audio("/test.mp3");
  audio.play();

  const data = {
    id: "xyz",
    username: "test"
  };

  if (username_input.value.length <= 4) {
    alert("!!!! lol");
    loading.value = false;
  } else {
    try {
      const request = await axios
        .post("http://localhost:3000/login", {
          address: username_input.value,
          password: password_input.value
        })
        .then(function (response) {
          console.log(response.data);
          data.username = response.data;
          localStorage.setItem("user", JSON.stringify(data));
        });
    } catch (e) {
      console.error("zajebo si!!!!!");
    } finally {
      loading.value = false;
      router.push("/");
    }
  }
}
</script>
