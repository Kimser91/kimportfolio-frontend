<script setup>
import { ref } from 'vue'
import axios from 'axios'

const form = ref({
  name: '',
  email: '',
  company: '',
  message: ''
})

const successMessage = ref('')
const errorMessage = ref('')

async function sendEmail() {
  try {
    const response = await axios.post('https://api.kimportfolio.org/api/contact', form.value)
    if (response.status === 200) {
      successMessage.value = 'Meldingen er sendt! Jeg svarer så snart jeg kan.'
      form.value = { name: '', email: '', company: '', message: '' }
      errorMessage.value = ''
    }
  } catch (error) {
    console.error('Feil ved sending:', error)
    errorMessage.value = 'Noe gikk galt. Prøv igjen senere.'
    successMessage.value = ''
  }
}
</script>

<template>
    <div class="container mt-5">
      <h1 class="text-primary">Kontakt meg</h1>
      <p>Har du spørsmål eller ønsker å komme i kontakt? Send meg en melding her:</p>
  
      <form @submit.prevent="sendEmail">
        <div class="mb-3">
          <label for="name" class="form-label">Navn</label>
          <input type="text" class="form-control" id="name" v-model="form.name" required>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">E-post</label>
          <input type="email" class="form-control" id="email" v-model="form.email" required>
        </div>
        <div class="mb-3">
          <label for="company" class="form-label">Firma (om relevant)</label>
          <input type="company" class="form-control" id="company" v-model="form.company">
        </div>
        <div class="mb-3">
          <label for="message" class="form-label">Melding</label>
          <textarea class="form-control" id="message" rows="4" v-model="form.message" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Send melding</button>
      </form>
  
      <p v-if="successMessage" class="mt-3 text-success">{{ successMessage }}</p>
      <p v-if="errorMessage" class="mt-3 text-danger">{{ errorMessage }}</p>
    </div>
  </template>
  
  <style scoped>
  h1 {
    color: #007bff;
  }
  </style>
  