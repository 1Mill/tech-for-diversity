<script>
</script>

<template>
	<v-container>
		<h1 class='[ headline ]'>
			Links
		</h1>
		<v-list dense>
			<v-list-tile
			v-for='i in 7' :key='i'
			to='/'
			>
				http://somerandomlink_{{ i }}.com
			</v-list-tile>
		</v-list>
	</v-container>
</template>
