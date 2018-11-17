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
		},
		owner () {
			return this.project.name_first + ' ' + this.project.name_last
		}
	}
}
</script>

<template>
	<v-card>
		<can I='manage' :this='project'>
			<v-btn
			to='`/projects/${project.id}/edit`'
			>
				Edit
			</v-btn>
		</can>
		<v-card-title primary-title>
			<v-layout row>
				<v-flex>
					<h1 class='[ title ]'>{{ project.company }}</h1>
				</v-flex>
			</v-layout>
		</v-card-title>
		<v-card-text>
			<v-layout column>
				<v-flex>
					<v-layout row>
						<v-flex shrink>
							<v-icon>fas fa-map-marker</v-icon>
						</v-flex>
						<v-flex shrink>
							{{ project.address_city }}, {{ project.address_state }}
						</v-flex>
					</v-layout>
				</v-flex>
			</v-layout>
		</v-card-text>
		<v-card-actions>
			<v-btn
			@click=''
			class='[ primary lighten-2 ]'
			>
				learn more
			</v-btn>
			<v-spacer/>
			<v-btn flat>
				share
			</v-btn>
		</v-card-actions>
	</v-card>
</template>
