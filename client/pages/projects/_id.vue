<script>
import { mapState } from 'vuex'

import ProjectDescription from '@/components/project/ProjectDescription'
import ProjectHeader from '@/components/project/ProjectHeader'
import ProjectLinkList from '@/components/project/ProjectLinkList'
import ProjectSkillList from '@/components/project/ProjectSkillList'
import ProjectTechnologyList from '@/components/project/ProjectTechnologyList'

export default {
	components: {
		ProjectDescription,
		ProjectHeader,
		ProjectLinkList,
		ProjectSkillList,
		ProjectTechnologyList
	},
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
	<v-container>
		<span v-if='this.project != null'>
			{{ project }}

		<project-description></project-description>
		<project-header></project-header>
		<project-link-list></project-link-list>
		<project-skill-list></project-skill-list>
		<project-technology-list></project-technology-list>
		</span>
		<span v-else>
			<h1 class='[ display-1 ]'>
				Sorry, this project appears to have disappeared.
			</h1>
		</span>
	</v-container>
</template>
