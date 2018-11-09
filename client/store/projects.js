export const state = () => ({
	projects: []
})

export const mutations = {
	SET (state, payload) {
		state.projects = payload
	}
}
