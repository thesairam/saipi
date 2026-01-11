<template>
  <div class="home">
    <section class="hero">
      <div class="hero-content">
        <h1>Welcome to SMART Vidyashram</h1>
        <p>Science, Mathematics, AI & Analytics, Robotics, and Technology—learn by building on Raspberry Pi.</p>
        <router-link to="/courses" class="cta-button">Explore SMART builds</router-link>
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
  background-color: #f5f5f5;
  padding: 40px;
  text-align: center;
}

.hero-content {
  max-width: 600px;
  margin: 0 auto;
}

.hero h1 {
  font-size: 3em;
  color: #333;
}

.hero p {
  font-size: 1.2em;
  color: #666;
}

.cta-button {
  display: inline-block;
  margin-top: 20px;
  padding: 10px 20px;
  background-color: #007bff;
  color: white;
  font-size: 1.1em;
  text-decoration: none;
  border-radius: 5px;
}

.cta-button:hover {
  background-color: #0056b3;
}
</style>
