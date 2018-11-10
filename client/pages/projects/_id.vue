<script>
import { mapState } from 'vuex'

export default {
	data () {
		return {
			project: {}
		}
	},
	computed: {
		...mapState ('projects', [
			'projects'
		])
	},
	created () {
		const id = this.$route.params.id
		this.project = _.find(this.projects, project => { return project.id == id })
	}
}
</script>

<template>
	<div>
		SINGLE PROJECT PAGE

		<br /><br />

		{{ project }}
	</div>
</template>
