export const state = () => ({
	projects: []
})

export const mutations = {
	GET (state, projects) {
		state.projects = projects
	}
}

export const actions = {
	updateProject: function (context, project) {
		this.$axios.patch(`/api/projects/${project.id}`, {
			project
		})
		.catch(e => {
			console.log(e)
		})
	}
}

export const getters = {
	getProjectById: (state) => (id) => {
		return _.find(state.projects, project => { return project.id == id })
	}
}
