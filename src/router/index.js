import { createRouter, createWebHistory } from 'vue-router';
// Import the renamed components (ensure the file names match)
import HomePage from '../pages/HomePage.vue';
import CoursesPage from '../pages/CoursesPage.vue';
import ContactPage from '../pages/ContactPage.vue';

const routes = [
  { path: '/', name: 'Home', component: HomePage },
  { path: '/courses', name: 'Courses', component: CoursesPage },
  { path: '/contact', name: 'Contact', component: ContactPage }
];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;
