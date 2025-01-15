<template>
    <div class="courses">
      <h2>Our Courses</h2>
      <div class="course-list">
        <div class="course">
          <h3>Raspberry Pi + Linux</h3>
          <p>Learn to use Raspberry Pi with Linux for various applications.</p>
        </div>
        <div class="course">
          <h3>Raspberry Pi + Data Analytics</h3>
          <p>Master data analytics techniques using Raspberry Pi and popular libraries.</p>
        </div>
        <div class="course">
          <h3>Raspberry Pi + Robotics</h3>
          <p>Build exciting robotics projects using Raspberry Pi.</p>
        </div>
        <div class="course">
          <h3>Raspberry Pi + Python</h3>
          <p>Learn Python programming and apply it to Raspberry Pi projects.</p>
        </div>
        <div class="course">
          <h3>Raspberry Pi + Vue.js</h3>
          <p>Explore web development with Vue.js and Raspberry Pi.</p>
        </div>
        <div class="course">
          <h3>Raspberry Pi as NAS</h3>
          <p>Turn your Raspberry Pi into a Network-Attached Storage (NAS) server.</p>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: "CoursesPage",
  };
  </script>
  
  <style scoped>
  .courses {
    padding: 40px;
    background-color: #fff;
  }
  
  h2 {
    text-align: center;
    font-size: 2.5em;
    margin-bottom: 30px;
  }
  
  .course-list {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
  }
  
  .course {
    background-color: #f9f9f9;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    text-align: center;
  }
  
  .course h3 {
    color: #007bff;
  }
  
  .course p {
    color: #555;
  }
  </style>
  