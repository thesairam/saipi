<template>
  <div class="home">
    <section class="hero">
      <div class="hero-overlay">
        <p class="eyebrow">SMART Vidyashram</p>
        <h1>Build-first learning across Science, Mathematics, AI & Analytics, Robotics, and Technology.</h1>
        <p class="lede">Hands-on Raspberry Pi pathways that fuse STEM fundamentals with modern automation and AI—no passive watching.</p>
        <div class="actions">
          <router-link to="/courses" class="cta">Explore builds</router-link>
          <router-link to="/contact" class="ghost">Talk to us</router-link>
        </div>
      </div>
    </section>

    <section class="highlights">
      <div class="tile">
        <h3>S — Science</h3>
        <p>Instrument, measure, and validate with real sensors on Raspberry Pi labs to make theory tangible.</p>
      </div>
      <div class="tile">
        <h3>M — Mathematics</h3>
        <p>Decode signals, optimize motion, and model data so every build is grounded in numeracy and logic.</p>
      </div>
      <div class="tile">
        <h3>A — AI & Analytics</h3>
        <p>Run lightweight LLMs, edge vision, and data pipelines to make your projects observant and adaptive.</p>
      </div>
      <div class="tile">
        <h3>R — Robotics</h3>
        <p>Wire GPIO, motor drivers, and autonomy loops to ship moving systems with safe power practices.</p>
      </div>
      <div class="tile">
        <h3>T — Technology</h3>
        <p>Ship complete stacks: Linux hardening, cloud exposure, APIs, and web UIs that stand up to real users.</p>
      </div>
    </section>

    <section class="education">
      <div class="education-content">
        <p class="eyebrow">Education 4.0</p>
        <h2>Apply-first, adaptive, and demonstrable</h2>
        <p class="lede">We keep SMART projects aligned to Education 4.0: rapid build-measure-learn loops, adaptive difficulty, and artifacts you can demo.</p>
        <ul class="edu-list">
          <li><span class="label">Build-first:</span> start with hardware in hand and ship a working demo each sprint.</li>
          <li><span class="label">Adaptive:</span> layer AI, automation, and cloud as you progress—no dead ends for fast learners.</li>
          <li><span class="label">Evidence:</span> every module ends with a deployable artifact you can show or share.</li>
        </ul>
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

.education {
  padding: 48px 24px 80px;
  background: linear-gradient(120deg, rgba(11, 45, 38, 0.95) 0%, rgba(6, 26, 20, 0.98) 100%);
  color: #e8f4ed;
}

.education-content {
  max-width: 900px;
  margin: 0 auto;
  padding: 28px;
  border: 1px solid rgba(124, 242, 192, 0.18);
  border-radius: 18px;
  background: rgba(6, 26, 20, 0.9);
  box-shadow: 0 16px 44px rgba(0, 0, 0, 0.35);
}

.education h2 {
  margin: 10px 0 10px;
  font-size: 2.2rem;
  letter-spacing: -0.01em;
}

.edu-list {
  list-style: none;
  padding: 0;
  margin: 18px 0 0;
  display: grid;
  gap: 10px;
}

.edu-list li {
  display: flex;
  gap: 8px;
  align-items: flex-start;
  color: #cfe7d7;
}

.edu-list .label {
  color: #7cf2c0;
  font-weight: 700;
}

@media (max-width: 640px) {
  .education-content {
    padding: 22px;
  }

  .education h2 {
    font-size: 1.9rem;
  }
}
</style>
  