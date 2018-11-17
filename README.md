# Getting started
## With this project
This project uses Ruby on Rails as a back-end RESTful API and Nuxt to render and serve content to users.
This project uses axios within Nuxt to share information between the back and front-ends. 
Additionally, Devise-JWT within Rails and Auth within Nuxt is used to authenticate users (leveragins axios). 
User permissions / rules are defined and enforced by CanCanCan in Rails, and on the front-end the CanCanCan rules are communicated by way of axios to set user permissions within Nuxt using Casl.

### Axios
This project uses the `@nuxtjs/axios` module to communicate with the backend Rails API. 

### User Authentication
Users are authenticated using `Devise-JWT` in Rails, with a JWT token being sent to the front-end on user login. On the front-end, `@nuxtjs/auth` is used with the `local` stratagy enabled to login / logout users. 

### User Authorization
There are 4 user types with differing permissions:
1. Users not logged in: Read only
1. Users logged in: 
    * Business (default): Manage projects where `:user_id = user.id`
    * Volunteer: Accept projects
    * Admin: Manage all projects

User permissions / rules are defined and enforced within Rails by the `CanCanCan` gem, and are trasfered to the front-end through the `/auth/current` API route (which gives the current logged in user) to be used by `@casle/vue` plugin. This plugin also enables the `<can>` HTML component that renders content dependent on user permissions.

# Getting started with Docker Compose
1. [Have docker-compose installed on your machine](https://www.docker.com/)
1. Run `docker-compose run api bundle install` to install Ruby on Rails gems locally on your machine
1. Run `docker-compose run client yarn install` to install Nuxt packages locally on your machine
1. Run `docker-compose build` to build the container images
1. Run `docker-compose up` to start the api and client docker services
1. Open `http://localhost:3000/` to view the client application

# Project Goal
Connect local South Seattle business owners with people who know how to create
beautiful website from a marketing perspective.

This platform serves as an in-take form for business owners to gather contact
information, to then be used by volunteers to pickup requests. With the platform
itself tracking project states (e.g. open, in progress, complete).

# User workflows
## Business Owner
1. Create user account as business owner
1. Create project listing
    * Contact information
      * name of business
      * email
      * phone
      * preferred languages
    * Business information
      * type of business (restaurant, tailor, etc.)
      * what is your mission statement?
      * Who You Are
      * Who You Help
      * What You Do
    * Technical questions
      * what are your expectations from this quest? (may already be defined by platform mission)
      * are you currently using any services (e.g. WordPress, etc.)?
      * how frequently do you think you will update your website (gain scope of user access / maintenance needs; WordPress vs. GitHub pages)
      * provide links so your social media pages
      * do you have a website domain name?
1. What services do you need?
    * Logo design
    * Website (re-)design
    * Translating information
    * Creating social media accounts
1. Wait to be contacted

## Volunteer
1. Create user account as volunteer
1. Look at / search project listings
1. Accept project (move project state to in-progress)
1. Get contact information for business owner
1. Things that happened outside the system
    * Contact business owner
    * Get project requirements / scope (the platform should get as much information as possible)
    * Complete project
1. Mark project as complete

## Admin
1. Have access to everything

# Things to fix for production
1. For some reason "/api/v1/auth/login" generates a JWT token, but "/auth/login/" does not (when the path scope is changed).

1. Add 404 redict to client/projects/:id path. This way when a project does not exist, it goes to 404 instead. Currently there is a temp fix, but may have to use asyncData with Axios (instead of retrieving information from store) to use error / callback method.

1. casl ability is not properly syncing between server and client renderings. Needs to be further explored. The current temp fix is to just log in and then log out or visa versa to reset ability rules after page reload.

1. Ensure CASL / CanCanCan permissions send over secure connections so they can not be modified in-route to front-end.

# Outline of backend
## User
  * Email + Password (Devise JWT)
  * has_many :projects
  * role :enum (:business_owner, :volunteer, :admin)

## Project (business)
  * belongs_to :user
  * has_one :volunteer (through ProjectVoltuneer join table)
  * has_many :links
  * has_many :services
  * has_many :prefered_languages

  * Company info
    * company :string
    * stage :enum (open, in_progress, complete)

  * Owner info
    * name_first :string
    * name_last :string
    * email :string
    * phone :string

  * Address Info
    * address_street_1 :string
    * address_street_2 :string
    * address_city :string
    * address_state :enum
    * address_zipcode :string

  * Business Info
    * business_kind :enum (restaurant, tailor, etc.)
    * mission :text
    * who_you_are :text
    * who_you_help :text
    * what_you_do :text

  * TechnicalInfo
    * current_services :text
    * update_frequency :enum (:rarely to :often, How frequently will they need to update their website?)
    * domain_registered :boolean

## Services
  * belong_to :project
  * name :enum (:logo, :website_redesign, :translating, :social_media, etc.)

## ProjectVolunterJoin
  * belongs_to :user
  * belongs_to :volunteer, :as => :user

## PreferedLanguage
  * belongs_to :contact_info
  * language :enum (or :string)

## Link
  * belongs_to :project
  * route :string (validate includes HTTP/S)
  * group :enum (:social_media, :homepage, etc.)
