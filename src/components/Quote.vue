<script setup>
defineProps({
  name: String,
  text: String,
})
</script>

<template>
  <main class="quote">
    <h1 class="text">"{{ text }}"</h1>
    <hr class="line"/>
    <p class="name">{{ name }}</p>
  </main>
</template>

<style scoped>
.quote {
  background-color: #385170;
  border-radius: 8px;
  border: 1px solid transparent;
  padding: 0.6em 1.2em;
  margin: 32px 0px;
  max-width: 800px;
}
.quote:hover {
  background-color: #547296;
  /* background-color: #0e233e; */
}

.name, .text {
  color: #ececec;
}

.text {
  font-size: 2.5em;
}

.name {
  font-size: 1.5em;
}

.line {
  border: solid;
  border-color: #9fd3c7;
}
</style>
