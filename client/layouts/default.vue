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
			<the-nav/>

			<v-container>
				<nuxt/>
			</v-container>
		</v-app>
	</div>
</template>
