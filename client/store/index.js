export const state = () => ({
})

export const actions = {
	async nuxtServerInit ({ commit }) {
		const data = await this.$axios.$get(`/api/all_projects`)
		commit('projects/SET', data)
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
