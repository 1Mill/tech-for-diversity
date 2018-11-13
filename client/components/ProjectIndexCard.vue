<script>
export default {
	props: {
		project: {
			type: Object,
			required: true
		}
	},
	computed: {
		_ () {
			return _
		}
	}
}
</script>

<template>
	<v-card>
		<v-img
		:src='`https://picsum.photos/${_.random(180, 220)}/200/?random`'
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
			<v-container>
				<v-layout>
					<v-flex>
						<v-btn class='[ orange lighten-3 ]'
						:to='`/projects/${project.id}`'
						>
							Learn more
						</v-btn>
					</v-flex>

					<v-flex>
						<v-btn flat
						@click=''
						>
							Share
						</v-btn>
					</v-flex>
				</v-layout>
			</v-container>
			<can I='manage' :this='project'>
				<v-btn absolute fab top right small class='[ green lighten-4 ]'
				:to='`/projects/${project.id}/edit`'
				>
					<v-icon>create</v-icon>
				</v-btn>
			</can>
		</v-card-actions>
	</v-card>
</template>
