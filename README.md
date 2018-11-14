# Getting started
1. Have docker-compose installed on your machine.
1. Run `docker-compose up --build`
1. Open `http://localhost:3000/` to view the client application.

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
      * prefered languages
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

# Things to return to
1. Upload images using Carrrier Wave + MiniMagick for projects

# Outline of backend
## User
  * Email + Passowrd (Devise JWT)
  * has_many :projects
  * role :enum (business_owner, volunteer, admin)

## Project
  * belongs_to :user
  * has_many :communities
  * has_many :technologies
  * has_many :needed_skills
  * has_many :links
  * title :string
  * issue_area :enum (Civic, Cultural, Economy, ...)
  * location_city :string
  * location_state :enum
  * status :enum
  * homepage :string
  * description :text (? support markdown on render)
  * image :string (User CarrierWave + MiniMagick + S3)

## Community
  * belongs_to :project
  * name :enum

## NeededSkill
  * belongs_to :project
  * department :enum (buisness, data, software development, etc.)
  * role :enum (buisness -> [fundraiser, marketing], data => [visulization, architect])

## Technology
  * belongs_to :project
  * name :enum

## Link
  * belongs_to :project
  * url :string (validate includes HTTP)
