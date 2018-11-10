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
	<v-card>
		<v-img
		src='https://picsum.photos/200/200/?random'
		aspect-ratio='1.9'
		>
			<v-container fill-height fluid>
				<v-layout fill-height>
					<v-flex xs12 align-end flexbox>
						<h1 class='[ headline white--text ]'>{{ project.title }}</h1>
					</v-flex>
				</v-layout>
			</v-container>
		</v-img>
		<v-card-title>
			Issue area: {{ project.issue_area }}

			Location {{ project.location_city }} {{ project.location_state }}

			Last updated: {{ project.updated_at }}
		</v-card-title>
		<v-card-actions>
			<v-btn class='[ orange lighten-3 ]'
			@click=''
			>
				Learn more
			</v-btn>
			<v-spacer/>
			<v-btn flat
			@click=''
			>
				Share
			</v-btn>
		</v-card-actions>
	</v-card>
</template>
