<script>
import UserLogin from '@/components/UserLogin'

export default {
	components: {
		UserLogin
	},
	data () {
		return {
			open: false,

			loginDialog: false,

			links: [
				{name: 'Home', to: '/'},
				{name: 'About', to: '/about'}
			]
		}
	}
}
</script>

<template>
	<div>
		<v-toolbar-side-icon fixed bottom right
		@click.native='open = !open'
		/>

		<v-bottom-nav :value='open' fixed>
			<v-btn
			v-for='(link, index) in links' :key='index'
			:to='link.to'
			@click='open = !open'
			>
				{{ link.name }}
			</v-btn>

			<v-btn @click.native='loginDialog = !loginDialog, open = !open' active-class=''>
				<span v-if='$auth.loggedIn'>
					Sign out
				</span>
				<span v-else>
					Login
				</span>
			</v-btn>
		</v-bottom-nav>

		<v-dialog v-model='loginDialog'>
			<user-login/>
		</v-dialog>
	</div>
</template>
