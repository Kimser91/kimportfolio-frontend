<script setup>
import { ref, onMounted } from 'vue'

const projects = ref([])

onMounted(async () => {
  const response = await fetch('https://api.github.com/users/Kimser91/repos?sort=updated')
  const repos = await response.json()
  projects.value = repos.map(repo => ({
    id: repo.id,
    name: repo.name,
    description: repo.description || 'Ingen beskrivelse tilgjengelig',
    url: repo.html_url
  }))
})
</script>

<template>
  <div class="container mt-5">
    <div class="jumbotron text-center py-5" style="background-color: #f8f9fa; border-radius: 10px;">
      <h1 class="display-4" style="color: #007bff;">Velkommen til min portefølje</h1>
      <p class="lead text-muted">IT/IKT-entusiast og student ved GET Academy med stor interesse for teknologi, koding og systemadministrasjon</p>
    </div>

    <div class="mt-5">
      <h2 class="text-primary">Hvem er jeg?</h2>
      <p>
        Jeg heter Kim og har i flere år holdt på med PC-er, hjemmenettverk og NAS-servere på hobbybasis.
        Det var først da jeg startet på GET Academy at jeg begynte å lære koding, databaser og moderne webutvikling.
        Siden da har jeg utviklet prosjekter som spenner fra små CLI-verktøy til større webapplikasjoner med backend og database.
      </p>
    </div>

    <div class="mt-5">
      <h2 class="text-primary">Mine teknologier</h2>
      <ul class="list-group">
        <li class="list-group-item">☁️ Virtualisering: Proxmox, VMware ESXi</li>
        <li class="list-group-item">💻 Systemer: Windows Server, Linux (Debian, Ubuntu)</li>
        <li class="list-group-item">🌐 Web: Vue.js, Express.js, .NET Core, SQL</li>
        <li class="list-group-item">🛠️ DevOps: CI/CD, GitHub Actions, Bash-scripting</li>
        <li class="list-group-item">🔐 Sikkerhet: Nettverkssikring, Brannmurer, PKI/SSL</li>
      </ul>
    </div>

    <div class="mt-5">
      <h2 class="text-primary">Utvalgte prosjekter</h2>
      <div v-if="projects.length" class="row">
        <div class="col-md-4" v-for="project in projects" :key="project.id">
          <div class="card mb-3">
            <div class="card-body">
              <h5 class="card-title">{{ project.name }}</h5>
              <p class="card-text">{{ project.description }}</p>
              <a :href="project.url" class="btn btn-outline-primary" target="_blank">Vis på GitHub</a>
            </div>
          </div>
        </div>
      </div>
      <p v-else class="text-muted">Ingen prosjekter funnet ennå.</p>
    </div>
  </div>
</template>



<style scoped>
h1, h2 {
  font-weight: bold;
}
</style>