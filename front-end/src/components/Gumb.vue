<template>
  <button>
    {{ text }}
  </button>
</template>

<script lang="ts" setup>
defineProps({
  text: {
    type: String,
    default: "Tekst"
  }
});
</script>
