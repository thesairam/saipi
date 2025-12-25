<template>
  <div class="contact">
    <div class="intro">
      <p class="eyebrow">Education 4.0</p>
      <h2>Tell us what you want to build</h2>
      <p class="lede">Pick your build and we will help you get the kit, schedule, and launch plan.</p>
    </div>

    <form @submit.prevent="submitForm" class="contact-form">
      <div class="form-grid">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" id="name" v-model="name" required placeholder="Alex Maker" />
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" v-model="email" required placeholder="you@example.com" />
        </div>
      </div>

      <div class="form-group">
        <label for="course">Course</label>
        <select id="course" v-model="course" required>
          <option value="" disabled>Select a course</option>
          <option value="rover">Build a Rover!</option>
          <option value="drive">Build your own Google Drive!</option>
          <option value="agents">Build your own ChatGPT + AI Agents!</option>
          <option value="general">General inquiry</option>
        </select>
      </div>

      <div class="form-group">
        <label for="message">What would you like to achieve?</label>
        <textarea
          id="message"
          v-model="message"
          rows="4"
          required
          placeholder="Share your goals, constraints, or timelines."
        ></textarea>
      </div>

      <button type="submit">Send inquiry</button>
      <p class="note">We can email you a confirmation and schedule a call. To send emails automatically, connect an email API (SendGrid/Mailgun) in the submit handler.</p>
    </form>
  </div>
</template>

<script>
export default {
  name: "ContactPage",
  data() {
    return {
      name: "",
      email: "",
      course: "",
      message: "",
    };
  },
  methods: {
    submitForm() {
      alert(`Thanks ${this.name}! We will follow up about ${this.courseLabel} via ${this.email}.`);
      // To send real emails: call your backend endpoint that triggers an email service
      // (e.g., SendGrid/Mailgun/SES) with the payload below.
      const payload = {
        name: this.name,
        email: this.email,
        course: this.courseLabel,
        message: this.message,
      };
      console.log("contact form submission", payload);
    },
  },
  computed: {
    courseLabel() {
      const map = {
        rover: "Build a Rover!",
        drive: "Build your own Google Drive!",
        agents: "Build your own ChatGPT + AI Agents!",
        general: "General inquiry",
      };
      return map[this.course] || "(no selection)";
    },
  },
};
</script>

<style scoped>
.contact {
  padding: 64px 24px 96px;
  background: #0b2d26;
  color: #e8f4ed;
  font-family: 'Arial', sans-serif;
}

.intro {
  text-align: center;
  max-width: 760px;
  margin: 0 auto 32px;
}

.eyebrow {
  display: inline-block;
  padding: 6px 12px;
  background: rgba(124, 242, 192, 0.15);
  color: #7cf2c0;
  border: 1px solid rgba(124, 242, 192, 0.35);
  border-radius: 999px;
  letter-spacing: 0.06em;
  font-size: 0.9rem;
  text-transform: uppercase;
}

h2 {
  font-size: 2.4rem;
  margin: 12px 0 8px;
}

.lede {
  color: #c4e1d3;
}

.contact-form {
  max-width: 760px;
  margin: 0 auto;
  background: rgba(6, 26, 20, 0.92);
  border: 1px solid rgba(124, 242, 192, 0.15);
  border-radius: 16px;
  padding: 26px;
  box-shadow: 0 16px 48px rgba(0, 0, 0, 0.35);
}

.form-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
  gap: 16px;
}

.form-group {
  margin-bottom: 18px;
}

label {
  display: block;
  margin-bottom: 8px;
  color: #cfe7d7;
  font-weight: 600;
}

input,
select,
textarea {
  width: 100%;
  padding: 12px 12px;
  border-radius: 10px;
  border: 1px solid rgba(124, 242, 192, 0.25);
  background: rgba(11, 45, 38, 0.8);
  color: #e8f4ed;
  font-size: 1rem;
  transition: border-color 0.2s ease, box-shadow 0.2s ease;
}

input:focus,
select:focus,
textarea:focus {
  outline: none;
  border-color: rgba(124, 242, 192, 0.6);
  box-shadow: 0 0 0 3px rgba(124, 242, 192, 0.15);
}

button {
  width: 100%;
  padding: 14px;
  border-radius: 12px;
  border: none;
  font-weight: 700;
  font-size: 1.05rem;
  background: linear-gradient(120deg, #1aa36f 0%, #16c487 100%);
  color: #0b2d26;
  cursor: pointer;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}

button:hover {
  transform: translateY(-2px);
  box-shadow: 0 16px 36px rgba(22, 196, 135, 0.3);
}

.note {
  margin-top: 10px;
  color: #9dcab3;
  font-size: 0.95rem;
}

@media (max-width: 640px) {
  h2 {
    font-size: 2rem;
  }

  .contact {
    padding: 48px 18px 72px;
  }
}
</style>
  