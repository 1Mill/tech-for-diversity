export const state = () => ({
	projects: []
})

export const mutations = {
	GET (state, projects) {
		state.projects = projects
	}
}

export const getters = {
	getProjectById: (state) => (id) => {
		return _.find(state.projects, project => { return project.id == id })
	}
}
