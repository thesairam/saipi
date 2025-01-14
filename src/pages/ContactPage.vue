<template>
    <div class="contact">
      <h2>Contact Us</h2>
      <form @submit.prevent="submitForm" class="contact-form">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" id="name" v-model="name" required placeholder="Enter your name"/>
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" v-model="email" required placeholder="Enter your email"/>
        </div>
        <div class="form-group">
          <label for="message">Message</label>
          <textarea id="message" v-model="message" required placeholder="Write your message..."></textarea>
        </div>
        <button type="submit">Send Message</button>
      </form>
    </div>
  </template>
  
  <script>
  export default {
    name: "ContactPage",
    data() {
      return {
        name: '',
        email: '',
        message: '',
      };
    },
    methods: {
      submitForm() {
        alert(`Message from ${this.name} sent!`);
        // You can handle the form submission logic here (e.g., sending data to an API)
      },
    },
  };
  </script>
  
  <style scoped>
  .contact {
    background-color: #1b1b1b;
    padding: 60px;
    color: #fff;
    font-family: 'Roboto', sans-serif;
    border-radius: 10px;
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
  }
  
  h2 {
    text-align: center;
    font-size: 3em;
    margin-bottom: 30px;
    color: #00ff00;
  }
  
  .contact-form {
    max-width: 600px;
    margin: 0 auto;
    background-color: #333;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.4);
  }
  
  .form-group {
    margin-bottom: 25px;
  }
  
  label {
    display: block;
    font-size: 1.2em;
    color: #bbb;
    margin-bottom: 8px;
  }
  
  input, textarea {
    width: 100%;
    padding: 12px;
    font-size: 1.1em;
    border-radius: 8px;
    border: 1px solid #555;
    background-color: #222;
    color: #fff;
    transition: border 0.3s ease;
  }
  
  input:focus, textarea:focus {
    outline: none;
    border-color: #00ff00;
  }
  
  input::placeholder, textarea::placeholder {
    color: #777;
  }
  
  button {
    padding: 12px 25px;
    font-size: 1.2em;
    background-color: #00ff00;
    color: #1b1b1b;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    width: 100%;
    transition: background-color 0.3s ease;
  }
  
  button:hover {
    background-color: #007bff;
  }
  
  button:active {
    background-color: #0056b3;
  }
  
  @media screen and (max-width: 768px) {
    .contact {
      padding: 40px 20px;
    }
    h2 {
      font-size: 2em;
    }
  }
  </style>
  