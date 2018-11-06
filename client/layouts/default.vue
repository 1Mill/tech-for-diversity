<script>
import TheNav from '@/components/TheNav'

export default {
	components: {
		TheNav
	}
}
</script>

<template>
	<v-app>
		<the-nav/>

		<v-container>
			<nuxt/>
		</v-container>
	</v-app>
</template>
