export const state = () => ({
	projects: []
})

export const mutations = {
	GET (state, projects) {
		state.projects = projects
	}
}

export const actions = {
	async getProjects ({ commit }) {
		const data = await this.$axios.$get(`/api/all_projects`)
		commit('GET', data)
	},
	async createProject ({ commit }, project) {
		const user_id = this.$auth.user.id
		console.log(user_id)

		const data = await this.$axios.$post(`/api/users/${user_id}/projects/`, {
			project
		})

		commit('GET', data)

		return data.id
	},
	async updateProject ({ dispatch }, project) {
		await this.$axios.patch(`/api/projects/${project.id}`, {
			project
		})
		.catch(e => {
			console.log(e)
		})

		await dispatch('getProjects')
	}
}

export const getters = {
	getProjectById: (state) => (id) => {
		return _.find(state.projects, project => { return project.id == id })
	}
}
