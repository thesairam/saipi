<template>
    <div class="home">
      <section class="hero">
        <div class="hero-content">
          <h1>Welcome to Saipi.AI</h1>
          <p>Learn the latest in tech and build with our own infrastructure.</p>
          <router-link to="/courses" class="cta-button">Explore Courses</router-link>
        </div>
      </section>
    </div>
  </template>
  
  <script>
  export default {
    name: "HomePage",
  };
  </script>
  
  <style scoped>
  .hero {
    background: url('@/assets/images/linux-terminal.jpeg') no-repeat center center/cover;
    padding: 100px 20px;
    color: #fff;
    text-align: center;
    border-radius: 15px;
    box-shadow: 0 6px 30px rgba(0, 0, 0, 0.4);
    position: relative;
    z-index: 1;
  }
  
  .hero-content {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    position: relative;
    z-index: 2;
  }
  
  .hero h1 {
    font-size: 3.5em;
    color: #00ff00;
    text-transform: uppercase;
    font-weight: bold;
  }
  
  .hero p {
    font-size: 1.2em;
    color: #ccc;
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
  
  @media screen and (max-width: 768px) {
    .hero {
      padding: 50px 15px;
    }
  
    .hero h1 {
      font-size: 2.5em;
    }
  
    .cta-button {
      font-size: 1em;
    }
  }
  </style>
  