import { createApp } from 'vue';
import App from './App.vue';
import router from './router';  // Make sure this path points to src/router/index.js

createApp(App).use(router).mount('#app');
