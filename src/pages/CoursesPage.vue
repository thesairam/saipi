<template>
  <div class="courses">
    <h2>Explore Our Courses</h2>

    <!-- Cart Section -->
    <div v-if="cart.length > 0" class="cart">
      <h3>Your Cart</h3>
      <ul>
        <li v-for="(course, index) in cart" :key="index">{{ course.name }}</li>
      </ul>
      <button @click="checkout">Proceed to Checkout</button>
    </div>

    <!-- Course List Section -->
    <div class="course-list">
      <div class="course" v-for="(course, index) in courses" :key="index">
        <div class="course-header">
          <img src="https://via.placeholder.com/150?text=Raspberry+Pi" alt="Course Image" class="course-image"/>
          <h3>{{ course.name }}</h3>
        </div>
        <p>{{ course.description }}</p>
        <button @click="addToCart(course)" class="add-to-cart-btn">Add to Cart</button>
      </div>
    </div>

    <!-- WhatsApp input section -->
    <div v-if="showWhatsappInput" class="whatsapp-input">
      <h3>Enter your WhatsApp number to proceed</h3>
      <input v-model="whatsappNumber" type="text" placeholder="Your WhatsApp Number"/>
      <button @click="sendWhatsappMessage">Send WhatsApp Message</button>
    </div>
  </div>
</template>

<script>
export default {
  name: "CoursesPage",
  data() {
    return {
      courses: [
        { name: "Raspberry Pi + Linux", description: "Learn to use Raspberry Pi with Linux for various applications." },
        { name: "Raspberry Pi + Data Analytics", description: "Master data analytics techniques using Raspberry Pi and popular libraries." },
        { name: "Raspberry Pi + Robotics", description: "Build exciting robotics projects using Raspberry Pi." },
        { name: "Raspberry Pi + Python", description: "Learn Python programming and apply it to Raspberry Pi projects." },
        { name: "Raspberry Pi + Vue.js", description: "Explore web development with Vue.js and Raspberry Pi." },
        { name: "Raspberry Pi as NAS", description: "Turn your Raspberry Pi into a Network-Attached Storage (NAS) server." },
      ],
      cart: [],
      showWhatsappInput: false,
      whatsappNumber: "",
    };
  },
  methods: {
    addToCart(course) {
      this.cart.push(course);
    },
    checkout() {
      if (this.cart.length > 0) {
        this.showWhatsappInput = true;
      } else {
        alert("Your cart is empty!");
      }
    },
    sendWhatsappMessage() {
      if (this.whatsappNumber) {
        alert(`Sending a message to WhatsApp number: ${this.whatsappNumber}`);
      } else {
        alert("Please enter a valid WhatsApp number.");
      }
    }
  }
};
</script>

<style scoped>
/* Base layout styling */
.courses {
  padding: 40px;
  background-color: #1b1b1b;
  color: #fff;
  font-family: 'Roboto', sans-serif;
}

h2 {
  text-align: center;
  font-size: 3em;
  margin-bottom: 30px;
  color: #00ff00;
}

h3 {
  color: #00ff00;
}

.course-list {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 30px;
  margin-bottom: 40px;
}

.course {
  background-color: #333;
  padding: 20px;
  border-radius: 15px;
  text-align: center;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
  transition: transform 0.3s ease;
}

.course:hover {
  transform: translateY(-10px);
}

.course-header {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 20px;
}

.course-image {
  width: 80px;
  height: 80px;
  margin-right: 15px;
}

.course p {
  font-size: 1rem;
  color: #bbb;
  margin-bottom: 20px;
}

.add-to-cart-btn {
  background-color: #007bff;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.add-to-cart-btn:hover {
  background-color: #0056b3;
}

.cart {
  margin-bottom: 40px;
  padding: 20px;
  background-color: #444;
  border-radius: 10px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
}

.cart ul {
  list-style: none;
  padding: 0;
  color: #bbb;
}

.cart button {
  background-color: #28a745;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.cart button:hover {
  background-color: #218838;
}

/* WhatsApp Input Section */
.whatsapp-input {
  background-color: #333;
  padding: 20px;
  border-radius: 10px;
  margin-top: 30px;
  text-align: center;
}

.whatsapp-input input {
  padding: 12px;
  font-size: 1.2rem;
  margin-right: 10px;
  border: 2px solid #bbb;
  border-radius: 5px;
  width: 250px;
}

.whatsapp-input button {
  background-color: #25d366;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.whatsapp-input button:hover {
  background-color: #128c7e;
}
</style>
