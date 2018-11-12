<script>
import TheNav from '@/components/TheNav'

export default {
	components: {
		TheNav
	}
}
</script>

<template>
	<div id='app'>
		<v-app>
			<v-container>
				<nuxt/>
			</v-container>

			<the-nav/>
		</v-app>
	</div>
</template>
