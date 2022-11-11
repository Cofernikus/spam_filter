<template>
  <div class="about flex-column">
    <h1>This is a login page</h1>
    <pre style="text-align: left">
      {{ data }}
    </pre>
    <h2 v-if="loading">Šaljem!!!!</h2>
    <input v-model="recipientText" />
    <gumb text="Prizovi API!!" @click="pozoviAPI" />
    <gumb text="Login" @click="login" />
  </div>
</template>

<script lang="ts" setup>
import Gumb from "../components/Gumb.vue";
import axios from "axios";
import { ref } from "vue";

const recipientText = ref("");
const loading = ref(false);
const data = ref();

async function pozoviAPI() {
  // sender, recipient, subject, sent_date
  loading.value = true;

  if (recipientText.value.length <= 4) {
    alert("!!!! lol");
  }

  try {
    const response = await axios.post("http://localhost:3000/api", {
      sender: "fturkovic@tvz.hr",
      recipient: recipientText.value,
      subject: "tvoj",
      sent_date: new Date().toISOString()
    });
    data.value = response.data;
  } catch (e) {
    console.error("zajebo si!!!!!");
  } finally {
    loading.value = false;
  }
}

function login() {
  const data = {
    id: "xyz",
    username: "Pero"
  };
  localStorage.setItem("user", JSON.stringify(data));
}
</script>
