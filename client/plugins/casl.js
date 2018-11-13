import { abilitiesPlugin, Can } from '@casl/vue'
import Vue from 'vue'
import { ability } from '@/store/ability'

Vue.use(abilitiesPlugin, ability)
Vue.component('Can', Can)
