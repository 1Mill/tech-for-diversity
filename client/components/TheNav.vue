<script>
export default {
	data () {
		return {
			open: true,
			links: [
				{name: 'Home', to: '/'},
				{name: 'About', to: '/about'},
				{name: 'Login', to: '/login'},
				{name: 'Sign Up', to: '/sign-up'}
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
		</v-bottom-nav>
	</div>
</template>
