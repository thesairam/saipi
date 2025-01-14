<template>
    <div class="home">
      <!-- Hero Section -->
      <section class="hero">
        <!-- Image as background, no content here -->
      </section>
  
      <!-- Content Section -->
      <section class="content">
        <div class="content-wrapper">
          <h1>Welcome to Saipi.AI</h1>
          <p>Learn the latest in tech and build with our own infrastructure.</p>
          <router-link to="/courses" class="cta-button">Explore Courses</router-link>
        </div>
      </section>
  
      <!-- Footer Component -->
      <AppFooter />
    </div>
  </template>
  
  <script>
  import AppFooter from "@/components/AppFooter.vue"; // Import the footer component
  
  export default {
    name: "HomePage",
    components: {
      AppFooter, // Register the footer component
    },
  };
  </script>
  
  <style scoped>
  /* Hero Section */
  .hero {
    background: url('@/assets/images/linux-terminal.jpg') no-repeat center center/cover;
    height: 50vh; /* Reduced height */
    position: relative;
    z-index: 1;
  }
  
  /* Content Section */
  .content {
    background-color: #fff;
    padding: 50px 20px;
    text-align: center;
  }
  
  .content-wrapper {
    max-width: 800px;
    margin: 0 auto;
  }
  
  .content h1 {
    font-size: 3em;
    color: #00ff00;
    font-weight: bold;
  }
  
  .content p {
    font-size: 1.2em;
    color: #333;
    margin: 20px 0;
  }
  
  .cta-button {
    display: inline-block;
    margin-top: 30px;
    padding: 12px 25px;
    background-color: #00ff00;
    color: #1b1b1b;
    font-size: 1.2em;
    text-decoration: none;
    border-radius: 8px;
    transition: background-color 0.3s ease;
  }
  
  .cta-button:hover {
    background-color: #007bff;
  }
  
  /* Responsive Design */
  @media screen and (max-width: 768px) {
    .content h1 {
      font-size: 2.5em;
    }
  
    .cta-button {
      font-size: 1em;
    }
  }
  </style>
  