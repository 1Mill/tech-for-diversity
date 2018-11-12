<script>
import { mapGetters } from 'vuex'

export default {
	data () {
		return {
			title: null,
			issue_area: null,
			location_city: null,
			location_state: null,
			status: null,
			description: null
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
		_.assign(this, _.fromPairs(_.toPairsIn(project)))

	},
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
