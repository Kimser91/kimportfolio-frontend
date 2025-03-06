<script setup>
import { RouterLink } from 'vue-router'
</script>

<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <RouterLink class="navbar-brand" to="/">Kim Thoresen</RouterLink>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <RouterLink class="nav-link" to="/">Hjem</RouterLink>
          </li>
          <li class="nav-item">
            <RouterLink class="nav-link" to="/about">Om meg</RouterLink>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="https://github.com/Kimser91" target="_blank">GitHub</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="https://www.linkedin.com/in/kim-halvar-thoresen-564298289/" target="_blank">LinkedIn</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>

<style scoped>
.navbar {
  box-shadow: 0 2px 10px rgba(0,0,0,0.2);
}
.navbar-brand {
  font-weight: bold;
  font-size: 1.5rem;
  color: #00d4ff;
}
.nav-link {
  font-weight: 500;
  color: #fff;
}
.nav-link:hover {
  color: #00d4ff;
}
</style>
