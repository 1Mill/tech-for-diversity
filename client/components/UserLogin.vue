<script>
import { mapActions } from 'vuex'

import UserLoginForm from '@/components/UserLoginForm'

export default {
	components: {
		UserLoginForm
	},
	methods: {
		...mapActions ([
			'logoutUser'
		])
	}
}
</script>

<template>
	<v-card>
		<v-container>
			<v-layout
			v-if='$auth.loggedIn'
			>
				<v-flex>
					Logged in as {{ $auth.user.email }}
				</v-flex>
				<v-btn @click.native='logoutUser'>
					Logout
				</v-btn>
			</v-layout>

			<user-login-form v-else/>
		</v-container>
	</v-card>
</template>
