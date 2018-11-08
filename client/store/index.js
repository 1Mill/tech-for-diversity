import Vuex from 'vuex'

const createStore = () => {
	return new Vuex.Store ({
		state: () => ({
		}),
		actions: {
			loginUser ({ commit }, { email, password }) {
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
			}
		}
	})
}

export default createStore
