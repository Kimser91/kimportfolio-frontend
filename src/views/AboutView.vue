<script setup>
</script>

<template>
  <div class="container mt-5">
    <div class="text-center">
      <img src="../assets/profile.jpg" alt="Profilbilde av Kim Halvar Thoresen" class="rounded-circle mb-4" style="width: 150px; height: 150px; object-fit: cover;">
      <h1 class="text-primary">Om meg</h1>
      <p class="lead">Nysgjerrig, Logisk, Pålitelig, Selvstendig</p>
    </div>

    <div class="mt-4">
      <h3>Min reise</h3>
      <p>
        Jeg heter Kim Halvar Thoresen, 33 år fra Larvik. Jeg har alltid hatt stor interesse for teknologi, og har i mange år drevet med
        PC-bygging, hjemme-nettverk og NAS-servere. Lidenskapen for systemer og utvikling skjøt virkelig fart da jeg startet på
        GET Academy, hvor jeg fikk øynene opp for programmering og databaser.
      </p>
      <p>
        Etter omtrent 10 uker på GET, innså jeg at dette er noe jeg vil jobbe med i mange år framover. Jeg elsker å skape løsninger som fungerer i praksis, 
        og å forstå hvordan den digitale verden henger sammen.
      </p>
    </div>

    <div class="mt-4">
      <h3>Kode og teknologi</h3>
      <p>
        På GET Academy har jeg jobbet mye med JavaScript, HTML/CSS, C#, Node.js og SQL, med fokus på både frontend og backend.
        Jeg har også erfaring med å lage og bruke API-er, samt sette opp databaser. Planen framover er å dykke enda dypere inn i
        Node.js og Vue.js, og kanskje utforske Kotlin eller lignende språk i fremtiden.
      </p>
    </div>

    <div class="mt-4">
      <h3>Læring og samarbeid</h3>
      <p>
        Jeg er alltid på jakt etter å lære noe nytt og forbedre det jeg kan. Min filosofi er at man aldri er utlært – og at man alltid kan lære av andre, 
        uansett erfaring. Jeg setter stor pris på faglige diskusjoner og samarbeid, og liker å løse problemer i fellesskap.
      </p>
    </div>

    <div class="mt-4">
      <h3>Mine styrker</h3>
      <p>
        Med bakgrunn som selvstendig næringsdrivende har jeg fått erfaring med å lede ansatte og drifte teknisk utstyr, 
        noe som har gitt meg innsikt i både kommunikasjon og struktur i arbeidslivet. På GET har jeg fått bekreftet at mine største styrker er:
      </p>
      <ul>
        <li><strong>Grit:</strong> Jeg gir ikke opp.</li>
        <li><strong>Ærlighet:</strong> Jeg tar ansvar og tåler konstruktiv kritikk.</li>
        <li><strong>Teamwork:</strong> Jeg hjelper gjerne andre, og spør selv om hjelp når det trengs.</li>
      </ul>
    </div>

    <div class="mt-4">
      <h3>Kontakt</h3>
      <ul class="list-unstyled">
        <li><strong>E-post:</strong> kimtskht@gmail.com</li>
        <li><strong>Telefon:</strong> +4741201828</li>
        <li><strong>LinkedIn:</strong> <a href="https://www.linkedin.com/in/kim-halvar-thoresen-564298289/" target="_blank">LinkedIn-profil</a></li>
        <li><strong>GitHub:</strong> <a href="https://github.com/Kimser91" target="_blank">github.com/Kimser91</a></li>
      </ul>
      <div class="text-center mt-3">
        <router-link to="/contact" class="btn btn-primary">Send meg en melding</router-link>
      </div>
    </div>
  </div>
  <br/>
</template>

<style scoped>
h1, h3 {
  color: #007bff;
}
p {
  font-size: 1.1rem;
}
</style>