<script setup lang="ts">
// region Components
import MoonIcon from '@/components/ui/icons/MoonIcon.vue'
import SunIcon from '@/components/ui/icons/SunIcon.vue'
// endregion
</script>

<template>
  <header class="navbar fixed px-4 pb-3 pt-3 top-0 right-0 left-0 bg-base-100 shadow-xl">
    <div class="flex-1">
      <label class="swap swap-rotate">
        <!-- Switch between themes -->
        <input class="theme-controller" type="checkbox" value="business" />
        <SunIcon class="swap-off h-8 w-8 fill-current" />
        <MoonIcon class="swap-on h-8 w-8 fill-current" />
      </label>
    </div>
    <div class="flex-none">
      <ul class="menu menu-horizontal px-1">
        <li>
          <a>A propos</a>
        </li>
        <li>
          <a>Projets</a>
        </li>
        <li>
          <a>Contact</a>
        </li>
      </ul>
    </div>
  </header>
</template>
