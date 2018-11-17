import Vue from 'vue'
import Vuetify from 'vuetify'
import colors from 'vuetify/es5/util/colors'

Vue.use(Vuetify, {
	theme: {
		primary: colors.orange,
		secondary: '#2F4858',
		accent: '#86BBD8'
	},
	iconfont: 'fa'
})
