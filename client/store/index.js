import { abilityPlugin } from './ability'

export const state = () => ({
	rules: []
})

export const actions = {
	async nuxtServerInit ({ commit }) {
		const data = await this.$axios.$get(`/api/all_projects`)
		commit('projects/GET', data)
	},
	loginUser (context, { email, password }) {
		this.$auth.loginWith('local', {
			data: {
				user: {
					email: email,
					password: password
				}
			}
		})
		.catch(e => {
			console.log(e)
		})
	},
	async logoutUser () {
		await this.$auth.logout()
	}
}

export const plugins = [
	abilityPlugin
]
