<script setup>
import { ref, onMounted } from 'vue';
import axios from 'axios';
import Quote from './components/Quote.vue';

const quotes = ref([]);
const loading = ref(true);

onMounted(() => {
  // axios.get('api/getQuotes')
  //   .then((res) => {
  //     // console.log('hope there are quotes below')
  //     // console.log(res.data)
  //     quotes.value = res.data;
  //   })
  //   .catch((err) => {
  //     console.error('Error getting quotes: ', err);
  //   })
  //   // eslint-disable-next-line no-return-assign
  //   .finally(() => (loading.value = false));

  quotes.value = [{
    name: 'test 1',
    text: 'quote text 1',
  }, {
    name: 'test 2',
    text: 'quote text 2',
  }];
  loading.value = false;
});
</script>

<template>
    <h1 class="title">Top 5 Famous Quotes</h1>
    <div v-if="loading">
      <Quote :name="''" :text="'Loading...'" />
    </div>
    <div v-else>
      <div class="quotes" v-for="quote in quotes" :key="quote.name">
        <Quote :name="quote.name" :text="quote.text" />
      </div>
    </div>
</template>

<style scoped>

.title {
  color: #ececec;
  max-width: 800px;
}
</style>
