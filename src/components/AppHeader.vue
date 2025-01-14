<template>
  <header class="header">
    <div class="logo">
      <h1>Saipi.AI</h1>
    </div>
    <nav>
      <ul>
        <li><router-link to="/">Home</router-link></li>
        <li><router-link to="/courses">Courses</router-link></li>
        <li><router-link to="/contact">Contact</router-link></li>
      </ul>
    </nav>
  </header>
</template>

<style scoped>
.header {
  background-color: #333;
  color: white;
  padding: 20px 0;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0 20px;
}

.logo h1 {
  font-size: 2rem;
}

nav ul {
  list-style: none;
  display: flex;
  gap: 2rem;
}

nav ul li a {
  text-decoration: none;
  color: white;
  font-weight: bold;
}

nav ul li a:hover {
  color: #f4f4f4;
}
</style>
