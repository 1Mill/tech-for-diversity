const pkg = require('./package')
const webpack = require('webpack')

module.exports = {
  mode: 'universal',

  /*
  ** Headers of the page
  */
  head: {
    title: pkg.name,
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: pkg.description }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' },
      { rel: 'stylesheet', href: 'https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' }
    ]
  },

  /*
  ** Customize the progress-bar color
  */
  loading: { color: '#fff' },

  /*
  ** Global CSS
  */
  css: [
    '~/assets/style/app.styl'
  ],

  /*
  ** Plugins to load before mounting the App
  */
  plugins: [
    '@/plugins/vuetify'
  ],

  /*
  ** Nuxt.js modules
  */
  modules: [
    // Doc: https://github.com/nuxt-community/axios-module#usage
    '@nuxtjs/auth',
    '@nuxtjs/axios'
  ],

  /*
  ** Axios module configuration
  */
  axios: {
    proxy: true
  },

  proxy: {
    '/api/': {
      target: 'http://api:3000/',
      pathRewrite: {'^/api/': '/api/v1/'}
    }
  },

  /*
  ** Auth module configuration
  */
  auth: {
    strategies: {
      local: {
        endpoints: {
          login: { url: '/api/auth/login', method: 'post'},
          logout: { ur: '/api/auth/logout', method: 'delete' },
          user: { url: '/api/auth/current', method: 'get' }
        }
      }
    }
  },

  /*
  ** Build configuration
  */
  build: {
    /*
    ** You can extend webpack config here
    */
    extend(config, ctx) {
    },

    plugins: [
      new webpack.ProvidePlugin({
        '_': 'lodash'
      })
    ]
  },

  /*
  ** Forcer webpack to check for changes within files
  */
  watchers: {
    webpack: {
      poll: true
    }
  }
}
