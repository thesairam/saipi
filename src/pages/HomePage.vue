<template>
  <div class="home">
    <section class="hero">
      <div class="hero-overlay">
        <p class="eyebrow">Education 4.0</p>
        <h1>Learn hardware-backed products with confidence.</h1>
        <p class="lede">We teach by building: Raspberry Pi, Linux, cloud, robotics—no passive watching.</p>
        <div class="actions">
          <router-link to="/courses" class="cta">Explore builds</router-link>
          <router-link to="/contact" class="ghost">Talk to us</router-link>
        </div>
      </div>
    </section>

    <section class="highlights">
      <div class="tile">
        <h3>Hands-on sprints</h3>
        <p>One week to build and demo on your own Raspberry Pi.</p>
      </div>
      <div class="tile">
        <h3>Zero fluff</h3>
        <p>Concepts tied to deliverables: rover control, self-hosted storage, secure access.</p>
      </div>
      <div class="tile">
        <h3>Career-ready</h3>
        <p>Education 4.0 mindset—automation, autonomy, and build-first learning over slides.</p>
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
.home {
  background: #061a14;
  color: #e8f4ed;
}

.hero {
  min-height: 70vh;
  display: flex;
  align-items: center;
  padding: 80px 24px;
  background: linear-gradient(120deg, rgba(26, 163, 111, 0.25) 0%, rgba(11, 45, 38, 0.9) 60%),
    url('@/assets/images/linux-terminal.jpg') center/cover;
}

.hero-overlay {
  max-width: 760px;
  margin: 0 auto;
  text-align: left;
}

.eyebrow {
  display: inline-block;
  padding: 6px 12px;
  background: rgba(124, 242, 192, 0.15);
  color: #7cf2c0;
  border: 1px solid rgba(124, 242, 192, 0.4);
  border-radius: 999px;
  letter-spacing: 0.06em;
  font-size: 0.9rem;
  text-transform: uppercase;
}

h1 {
  margin: 16px 0 12px;
  font-size: 2.8rem;
  letter-spacing: -0.02em;
}

.lede {
  color: #c4e1d3;
  font-size: 1.1rem;
  max-width: 620px;
}

.actions {
  display: flex;
  gap: 14px;
  margin-top: 22px;
}

.cta,
.ghost {
  padding: 12px 18px;
  border-radius: 10px;
  font-weight: 700;
  text-decoration: none;
  transition: transform 0.2s ease, box-shadow 0.2s ease, background 0.2s ease;
}

.cta {
  background: linear-gradient(120deg, #1aa36f 0%, #16c487 100%);
  color: #0b2d26;
  box-shadow: 0 18px 40px rgba(22, 196, 135, 0.25);
}

.cta:hover {
  transform: translateY(-2px);
  box-shadow: 0 20px 46px rgba(22, 196, 135, 0.35);
}

.ghost {
  border: 1px solid rgba(124, 242, 192, 0.35);
  color: #e8f4ed;
  background: transparent;
}

.ghost:hover {
  background: rgba(124, 242, 192, 0.12);
  transform: translateY(-2px);
}

.highlights {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
  gap: 16px;
  padding: 36px 24px 80px;
  background: #0b2d26;
}

.tile {
  border: 1px solid rgba(124, 242, 192, 0.15);
  border-radius: 14px;
  padding: 18px 16px;
  background: rgba(6, 26, 20, 0.9);
  color: #d9efe3;
  box-shadow: 0 12px 32px rgba(0, 0, 0, 0.35);
}

.tile h3 {
  margin: 0 0 8px;
}

.tile p {
  margin: 0;
  color: #b4d3c3;
}

@media (max-width: 768px) {
  h1 {
    font-size: 2.2rem;
  }

  .hero {
    padding: 64px 18px;
    min-height: 65vh;
  }

  .actions {
    flex-direction: column;
    align-items: flex-start;
  }
}
</style>
  