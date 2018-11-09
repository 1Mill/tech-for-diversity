<script>
import { mapState } from 'vuex'

import ProjectListCard from '@/components/ProjectListCard'

export default {
	components: {
		ProjectListCard
	},
	computed: {
		...mapState ('projects', [
			'projects'
		])
	}
}
</script>

<template>
	<v-container grid-list-md fluid>
		<v-layout row wrap>
			<v-flex xs12
			v-for='project in projects' :key='project.id'
			>
				<project-list-card/>
			</v-flex>
		</v-layout>
        </v-container>
</template>
