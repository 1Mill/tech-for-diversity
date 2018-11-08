<script>
import UserLoginForm from '@/components/UserLoginForm'

export default {
	components: {
		UserLoginForm
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
			</v-layout>

			<user-login-form v-else/>
		</v-container>
	</v-card>
</template>
