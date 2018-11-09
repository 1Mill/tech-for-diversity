<script>
import { mapState } from 'vuex'

export default {
	computed: {
		...mapState ('projects', [
			'projects'
		])
	}
}
</script>

<template>
	<div>
		LIST

		{{ projects }}
	</div>
</template>
