<script>
import { mapState } from 'vuex'

import ProjectListCard from '@/components/ProjectIndexCard'

export default {
	components: {
		ProjectIndexCard
	},
	computed: {
		...mapState ('projects', [
			'projects'
		])
	}
}
</script>

<template>
	<v-container grid-list-lg fluid>
		<v-layout row wrap>
			<v-flex xs12
			v-for='project in projects' :key='project.id'
			>
				<project-index-card
				:project='project'
				/>
			</v-flex>
		</v-layout>
        </v-container>
</template>
