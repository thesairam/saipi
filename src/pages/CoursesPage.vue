<template>
  <section class="courses">
    <div class="intro">
      <p class="eyebrow">Education 4.0</p>
      <h2>Build real things, fast</h2>
      <p class="lede">Three deep-dive, hands-on builds on Raspberry Pi. Zero fluff—learn by doing.</p>
    </div>

    <div class="course-grid">
      <article
        v-for="course in courses"
        :key="course.id"
        class="course-card"
      >
        <div class="card-top">
          <div class="pill">{{ course.duration }}</div>
          <h3>{{ course.title }}</h3>
          <p class="summary">{{ course.summary }}</p>
        </div>
        <div class="card-meta">
          <span class="price">{{ course.cost }}</span>
          <button class="cta" @click="toggleDetails(course.id)">
            {{ isOpen(course.id) ? 'Hide details' : 'See details' }}
          </button>
        </div>
        <transition name="fade">
          <div v-if="isOpen(course.id)" class="details">
            <ul>
              <li v-for="(item, index) in course.details" :key="index">{{ item }}</li>
            </ul>
            <p class="note">Kit is optional and priced extra; availability may vary.</p>
          </div>
        </transition>
      </article>
    </div>
  </section>
</template>

<script>
export default {
  name: "CoursesPage",
  data() {
    return {
      openIds: [],
      courses: [
        {
          id: "rover",
          title: "Build a Rover!",
          duration: "1 week sprint",
          cost: "200 Euros (+ kit)",
          summary: "Raspberry Pi rover with mobile control, sensors, and GPIO mastery.",
          details: [
            "Set up Raspberry Pi and fundamentals of Linux",
            "Python essentials for hardware control",
            "GPIO and sensor wiring with safe power practices",
            "Remote control via mobile app",
            "Field test and tune for rough terrain"
          ]
        },
        {
          id: "drive",
          title: "Build your own Google Drive!",
          duration: "1 week sprint",
          cost: "150 Euros (+ kit)",
          summary: "Self-hosted cloud storage on Raspberry Pi using open source stacks.",
          details: [
            "Linux and Raspberry Pi hardening",
            "Deploy open source cloud storage (Nextcloud/Seafile style)",
            "Expose your storage via your own website",
            "Secure access, backups, and uptime basics",
            "Ship and demo from your own Pi"
          ]
        },
        {
          id: "agents",
          title: "Build your own ChatGPT + AI Agents!",
          duration: "1 week sprint",
          cost: "100 Euros",
          summary: "Open-source LLM stacks on Raspberry Pi with web UIs and starter agents.",
          details: [
            "Linux and Raspberry Pi fundamentals for AI workloads",
            "Run open-source LLMs and lightweight web UIs",
            "Wire up prompt pipelines and basic agent loops",
            "Integrate simple tools/APIs for your agents",
            "Demo your local AI assistant"
          ]
        }
      ]
    };
  },
  methods: {
    toggleDetails(id) {
      if (this.openIds.includes(id)) {
        this.openIds = this.openIds.filter(openId => openId !== id);
      } else {
        this.openIds.push(id);
      }
    },
    isOpen(id) {
      return this.openIds.includes(id);
    }
  }
};
</script>

<style scoped>
.courses {
  padding: 64px 24px 96px;
  background: radial-gradient(120% 120% at 20% 20%, #164434 0%, #0b2d26 45%, #061a14 100%);
  color: #e8f4ed;
}

.intro {
  max-width: 800px;
  margin: 0 auto 48px;
  text-align: center;
}

.eyebrow {
  display: inline-block;
  padding: 6px 14px;
  background: rgba(26, 163, 111, 0.12);
  color: #7cf2c0;
  border: 1px solid rgba(124, 242, 192, 0.4);
  border-radius: 999px;
  letter-spacing: 0.06em;
  font-size: 0.85rem;
  text-transform: uppercase;
}

h2 {
  font-size: 2.8rem;
  margin: 12px 0 8px;
  letter-spacing: -0.02em;
}

.lede {
  color: #c6ded1;
  font-size: 1.1rem;
}

.course-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 24px;
}

.course-card {
  background: rgba(11, 45, 38, 0.85);
  border: 1px solid rgba(124, 242, 192, 0.15);
  border-radius: 18px;
  padding: 22px;
  box-shadow: 0 18px 50px rgba(0, 0, 0, 0.35);
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease;
}

.course-card:hover {
  transform: translateY(-6px);
  border-color: rgba(124, 242, 192, 0.4);
  box-shadow: 0 24px 60px rgba(0, 0, 0, 0.45);
}

.card-top h3 {
  margin: 10px 0 8px;
  font-size: 1.6rem;
}

.card-top .summary {
  color: #b8d7c6;
}

.pill {
  display: inline-block;
  padding: 6px 12px;
  border-radius: 999px;
  background: rgba(124, 242, 192, 0.16);
  color: #7cf2c0;
  font-weight: 600;
  font-size: 0.95rem;
}

.card-meta {
  margin-top: 18px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 12px;
}

.price {
  font-weight: 700;
  color: #ffffff;
}

.cta {
  background: linear-gradient(120deg, #1aa36f 0%, #16c487 100%);
  color: #0b2d26;
  border: none;
  padding: 10px 16px;
  border-radius: 10px;
  font-weight: 700;
  cursor: pointer;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.cta:hover {
  transform: translateY(-2px);
  box-shadow: 0 12px 30px rgba(22, 196, 135, 0.35);
}

.details {
  margin-top: 16px;
  padding: 14px 12px;
  border-radius: 14px;
  background: rgba(6, 26, 20, 0.8);
  border: 1px solid rgba(124, 242, 192, 0.12);
}

.details ul {
  padding-left: 18px;
  color: #d7f0e3;
  line-height: 1.6;
}

.note {
  margin-top: 10px;
  color: #9dcab3;
  font-size: 0.95rem;
}

.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.25s ease;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}

@media (max-width: 640px) {
  h2 {
    font-size: 2.2rem;
  }

  .courses {
    padding: 48px 18px 72px;
  }
}
</style>
