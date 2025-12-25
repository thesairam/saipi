<template>
  <header class="header">
    <div class="logo">Saipi.AI</div>
    <nav>
      <ul>
        <li><router-link to="/" exact-active-class="active">Home</router-link></li>
        <li><router-link to="/courses" exact-active-class="active">Courses</router-link></li>
        <li><router-link to="/contact" exact-active-class="active">Contact</router-link></li>
      </ul>
    </nav>
  </header>
</template>

<style scoped>
.header {
  position: sticky;
  top: 0;
  z-index: 20;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 14px 22px;
  background: rgba(6, 26, 20, 0.9);
  backdrop-filter: blur(10px);
  border-bottom: 1px solid rgba(124, 242, 192, 0.18);
}

.logo {
  font-weight: 800;
  letter-spacing: -0.02em;
  font-size: 1.3rem;
  color: #7cf2c0;
}

nav ul {
  list-style: none;
  display: flex;
  gap: 1.4rem;
  margin: 0;
  padding: 0;
}

nav a {
  text-decoration: none;
  color: #e8f4ed;
  font-weight: 600;
  padding: 8px 10px;
  border-radius: 10px;
  transition: background 0.2s ease, color 0.2s ease;
}

nav a:hover {
  background: rgba(124, 242, 192, 0.12);
}

.active {
  background: rgba(124, 242, 192, 0.18);
  color: #7cf2c0;
}

@media (max-width: 640px) {
  .header {
    flex-direction: column;
    gap: 10px;
  }
}
</style>
