<script>
import { mapState, mapGetters } from 'vuex'

import ProjectDescription from '@/components/project/ProjectDescription'
import ProjectHeader from '@/components/project/ProjectHeader'
import ProjectLinkList from '@/components/project/ProjectLinkList'
import ProjectSkillList from '@/components/project/ProjectSkillList'
import ProjectTechnologyList from '@/components/project/ProjectTechnologyList'
import RenderMarkdown from '@/components/RenderMarkdown'

export default {
	components: {
		ProjectDescription,
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
			{{ project }}

			<project-header
			:project='project'
			/>

			<project-link-list></project-link-list>
			<project-skill-list></project-skill-list>
			<project-technology-list></project-technology-list>
			<project-description></project-description>

			<render-markdown
			:text='project.description + " "'
			/>

		</span>
		<span v-else>
			<h1 class='[ display-1 ]'>
				Sorry, this project appears to have disappeared.
			</h1>
		</span>
	</v-container>
</template>
