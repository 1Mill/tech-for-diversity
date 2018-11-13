import { ability } from '@/plugins/ability'

export const abilityPlugin = (store) => {
	ability.update(store.state.rules)

	return store.subscribe((mutation) => {
		switch (mutation.type) {
			case 'SET_RULES':
				ability.update(mutation.payload)
				break
		}
	})
}
