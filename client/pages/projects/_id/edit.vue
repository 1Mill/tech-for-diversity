<script>
export default {
	methods: {
		submitForm () {
			console.log('Edits submitted')
		}
	}
}
</script>

<template>
	<v-container>
		<v-form @submit.prevent='submitForm'>
			<v-btn type='submit'>
				Submit
			</v-btn>
		</v-form>
	</v-container>
</template>
