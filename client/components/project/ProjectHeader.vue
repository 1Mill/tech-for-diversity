<script>
export default {
	props: {
		project: {
			type: Object,
			required: true
		}
	}
}
</script>

<template>
	<v-container>
		<v-layout column>
			<v-flex>
				<h3 class='[ display-1 ]'>
					{{ project.title }}
				</h3>
			</v-flex>
			<v-layout column>
				<v-flex>
					<h1 class='[ subheading ]'>Issue area: {{ project.issue_area }}</h1>
				</v-flex>
				<v-flex>
					<h1 class='[ subheading ]'>Project Stage: {{ project.status }}</h1>
				</v-flex>
				<v-flex>
					<h1 class='[ subheading ]'>Communities: Being help listed here</h1>
				</v-flex>
			</v-layout>
			<v-layout column>
				<v-flex>Homepage: {{ project.homepage }}</v-flex>
				<v-flex>Location: {{ project.location_city }}, {{ project.location_state }}</v-flex>
			</v-layout>
		</v-layout>
	</v-container>
</template>
