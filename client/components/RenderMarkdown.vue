<script>
export default {
	props: {
		text: {
			type: String,
			required: true
		}
	}
}
</script>

<template>
	<div
	v-html='$md.render(text)'
	/>
</template>
