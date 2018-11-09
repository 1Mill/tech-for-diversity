export const state = () => ({
})

export const actions = {
	nuxtServerInit ({ commit }) {
		console.log("SOMETHING HAPPENED")
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
