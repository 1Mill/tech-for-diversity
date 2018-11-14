<script>
import { mapActions, mapGetters } from 'vuex'

export default {
	data () {
		return {
			project: {
				title: null,
				issue_area: null,
				location_city: null,
				location_state: null,
				status: null,
				description: null
			}
		}
	},
	computed: {
		...mapGetters ('projects', [
			'getProjectById'
		])
	},
	created () {
		// Get project by id
		const id = this.$route.params.id
		const project = this.getProjectById(id)

		// 1. Get project key-pair values (e.g. ["title", "Something"])
		// 2. Break down mutli-demtnional array to single array (e.g. [["title", "Something"], ["description", "Crazy stuff"]] => ["title":"Something", "description":"CrazyStuff"])
		// 3. Assign key-pairs to data (e.g. this.title = array['title'])
		// This allows us to (a) initilize data and (b) make it reactive
		_.assign(this.project, _.fromPairs(_.toPairsIn(project)))
	},
	methods: {
		...mapActions ('projects', [
			'updateProject'
		]),
		async submitForm () {
			await this.updateProject(this.project)
			this.$router.replace({
				path: '/projects/' + this.project.id
			})
		}
	}
}
</script>

<template>
	<v-container>
		<v-form @submit.prevent='submitForm'>
			<v-text-field
			v-model='project.title'
			label='Title'
			/>

			<v-textarea auto-grow
			v-model='project.description'
			label='Description'
			/>

			<v-text-field
			v-model='project.issue_area'
			label='issue_area'
			/>
			<v-text-field
			v-model='project.location_city'
			label='location_city'
			/>
			<v-text-field
			v-model='project.location_state'
			label='location_state'
			/>
			<v-text-field
			v-model='project.status'
			label='status'
			/>

			<v-btn type='submit' color='[ success ]'>
				Submit
			</v-btn>
		</v-form>
	</v-container>
</template>
