<script setup lang="ts">
// region Assets
import profilImage from '@/assets/images/profil.jpg'
// endregion

// region Components
import GithubIcon from '@/components/ui/icons/GithubIcon.vue'
import LinkedinIcon from '@/components/ui/icons/LinkedinIcon.vue'
import NavigationMenu from '@/components/NavigationMenu.vue'
// endregion
</script>

<template>
  <NavigationMenu />
  <main class="flex flex-col h-dvh">
    <div class="flex flex-col items-center justify-center h-full w-full">
      <img
        alt="Photo de profil"
        class="mask mask-hexagon h-[10rem] mb-12 grayscale"
        :src="profilImage"
      />
      <h1 class="font-secondary text-5xl">Francois Cancalon</h1>
      <div class="divider mx-auto w-[75%]"></div>
      <h2 class="text">Développeur d'application web et mobile</h2>
    </div>
    <div class="flex p-4 bg-neutral">
      <div class="flex flex-1">
        <GithubIcon class="h-6 w-6 mr-8 fill-base-300"/>
        <LinkedinIcon class="h-6 w-6 fill-base-300"/>
      </div>
      <div class="flex-none">
        <span class="text-base-300">Lyon</span>
      </div>
    </div>
  </main>
</template>
