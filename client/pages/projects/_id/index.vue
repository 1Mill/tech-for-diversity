<script>
import { mapState, mapGetters } from 'vuex'

import ProjectHeader from '@/components/project/ProjectHeader'
import ProjectLinkList from '@/components/project/ProjectLinkList'
import ProjectSkillList from '@/components/project/ProjectSkillList'
import ProjectTechnologyList from '@/components/project/ProjectTechnologyList'
import RenderMarkdown from '@/components/RenderMarkdown'

export default {
	components: {
		ProjectHeader,
		ProjectLinkList,
		ProjectSkillList,
		ProjectTechnologyList,
		RenderMarkdown
	},
	computed: {
		...mapGetters ('projects', [
			'getProjectById'
		])
	},
	created () {
		const id = this.$route.params.id
		this.project = this.getProjectById(id)
	}
}
</script>

<template>
	<v-container>
		<span v-if='this.project != null'>
			<project-header
			:project='project'
			/>

			<v-container>
				<h1 class='[ headline ]'>Project Details</h1>
				<render-markdown
				:text='project.description + " "'
				/>
			</v-container>

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
