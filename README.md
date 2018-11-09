# Things to fix for production
1. Rails CORS and Nuxt Axios BaseURL
  * Use Docker service hostnames, however, Nuxt does not appear to evalaute "http://api:3001" to api service as it is evaluated client side rather than server side.
