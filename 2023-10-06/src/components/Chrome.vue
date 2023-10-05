<script setup lang="ts">
const props = defineProps<{
  link: string
  name: string
}>()
</script>

<template>
  <span>
    <logos-chrome mr="2" opacity="60" class="transform translate-y-1px" />
    <a :href="`${props.link}`" target="_blank" border="!0" font="mono" opacity="80">
      {{ props.name }}
    </a>
  </span>
</template>
