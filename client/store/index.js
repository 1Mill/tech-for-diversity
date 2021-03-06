import { abilityPlugin } from './ability'

export const state = () => ({
	rules: []
})

export const mutations = {
	SET_RULES (state, rules) {
		state.rules = rules
	}
}

export const actions = {
	async nuxtServerInit ({ dispatch }) {
		await dispatch('projects/getProjects')
		await dispatch('getUserRules')
	},
	async getUserRules ({ commit }) {
		const data = await this.$axios.$get(`/api/auth/current`)
		commit('SET_RULES', data.rules)
	},
	async loginUser ({ commit, dispatch }, { email, password }) {
		await this.$auth.loginWith('local', {
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

		await dispatch('getUserRules')
	},
	async logoutUser ({ dispatch }) {
		await this.$auth.logout()

		await dispatch('getUserRules')
	}
}

export const plugins = [
	abilityPlugin
]
