import Vuex from 'vuex'

const createStore = () => {
	return new Vuex.Store ({
		state: () => ({
		}),
		actions: {
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
	})
}

export default createStore
