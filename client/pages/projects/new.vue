<script>
import { mapActions } from 'vuex'

export default {
	data () {
		return {
			project: {
				company: null,
				name_first: null,
				name_last: null,
				email: null,
				phone: null,

				address_street_1: null,
				address_street_2: null,
				address_city: null,
				address_state: null,
				address_zipcode: null,

				mission_statement: null,
				who_you_are: null,
				who_you_help: null,
				what_you_do: null,

				current_services: null
			}
		}
	},
	methods: {
		...mapActions ('projects', [
			'createProject'
		]),
		async submitForm () {
			const project_id = await this.createProject(this.project)
			this.$router.replace({
				path: '/projects/' + project_id
			})
		}
	}
}
</script>

<template>
	<v-container>
		<v-form @submit.prevent='submitForm'>
			<v-text-field
			v-model='project.company'
			label='Company'/>

			<v-text-field
			v-model='project.name_first'
			label='First name'/>

			<v-text-field
			v-model='project.name_last'
			label='Last name'/>

			<v-text-field
			v-model='project.email'
			label='Email'/>

			<v-text-field
			v-model='project.phone'
			label='Phone'/>


			<v-text-field
			v-model='project.address_street_1'
			label='Streat Address '/>

			<v-text-field
			v-model='project.address_street_2'
			label='Street Address'/>

			<v-text-field
			v-model='project.address_city'
			label='City'/>

			<v-text-field
			v-model='project.address_zipcode'
			label='Zipcode'/>


			<v-textarea
			v-model='project.mission_statement'
			label='Mission statement'/>

			<v-textarea
			v-model='project.who_you_are'
			label='Who you are'/>

			<v-textarea
			v-model='project.who_you_help'
			label='What you do'/>

			<v-textarea
			v-model='project.what_you_do'
			label='What you do'/>


			<v-textarea
			v-model='project.current_service'
			label='Do you have any existing services?'/>

			<v-btn type='submit' color='[ success ]'>
				Submit
			</v-btn>
		</v-form>
	</v-container>
</template>
