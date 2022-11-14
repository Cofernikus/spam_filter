<template>
  <div @click="deleteMessage">Poruka!</div>
</template>

<script lang="ts" setup>
const props = defineProps({
  id: {
    type: Number,
    required: true
  }
});

const emit = defineEmits(["delete"]);

function deleteMessage() {
  emit("delete", props.id);
}
</script>

<style scoped>
div {
  background-color: pink;
}
</style>
