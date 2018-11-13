import { Ability } from '@casl/ability'

export const ability = new Ability()

export const abilityPlugin = (store) => {
	ability.update(store.state.rules)

	return store.subscribe((mutations) => {
		console.log(mutations.type)

		switch (mutations.type) {
			case 'auth/SET':
				if (store.$auth.loggedIn) {
					ability.update([])
					// ability.update(mutation.payload.rules)
				} else {
					ability.update([{ actions: 'read', subject: 'all' }])
				}
				break
		}
	})
}
