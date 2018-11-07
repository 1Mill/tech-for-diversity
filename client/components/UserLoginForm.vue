<script>
export default {
	data () {
		return {
			email: null,
			password: null
		}
	},
	methods: {
		submit () {
			console.log('Form was submitted')
		}
	}
}
</script>

<template>
	<v-form @submit.prevent='submit'>
		<v-text-field
		v-model='email'
		label='Email'
		/>

		<v-text-field
		v-model='password'
		label='Password' type='password'
		/>

		<v-btn type='submit'>
			Submit
		</v-btn>
	</v-form>
</template>
