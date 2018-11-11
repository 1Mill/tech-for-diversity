export const state = () => ({
	projects: []
})

export const mutations = {
	GET (state, projects) {
		state.projects = projects
	}
}
