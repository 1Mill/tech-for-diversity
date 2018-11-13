<script>
import { mapActions } from 'vuex'

export default {
	data () {
		return {
			email: 'test@html.erb',
			password: 'password',
			error: null
		}
	},
	methods: {
		...mapActions ([
			'loginUser'
		])
	}
}
</script>

<template>
	<v-form @submit.prevent='loginUser({"email": email, "password": password})'>
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
