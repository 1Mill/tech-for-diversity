<script>
import NewProjectLink from '@/components/project/NewProjectLink'
import ProjectIndex from '@/components/ProjectIndex'

export default {
	components: {
		NewProjectLink,
		ProjectIndex
	}
}

</script>

<template>
	<v-layout>
		<new-project-link/>
		<project-index/>
	</v-layout>
</template>
