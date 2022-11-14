import { defineStore } from "pinia";
import { ref, computed } from "vue";

export const useUserStore = defineStore(
  "userStore",
  () => {
    const name = ref<string | null>(null);

    function login(newName: string) {
      name.value = newName;
    }

    function logout() {
      name.value = null;
    }

    const isUserLoggedIn = computed(() => {
      return name.value !== null;
    });

    return { name, login, logout, isUserLoggedIn };
  },
  {
    persist: true
  }
);
