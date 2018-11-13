# Things to fix for production
1. For some reason "/api/v1/auth/login" generates a JWT token, but "/auth/login/" does not (when the path scope is changed).

1. Add 404 redict to client/projects/:id path. This way when a project does not exist, it goes to 404 instead. Currently there is a temp fix, but may have to use asyncData with Axios (instead of retreieving information from store) to use error / callback method.

1. casl ability is not properly syncing between server and client renderings. Needs to be further expored. The current temp fix is to just log in and then log out or visa versa to reset ability rules after page reload. 

# Things to return to
1. Upload images using Carrrier Wave + MiniMagick for projects

# Outline of backend
## User
  * Email + Passowrd (Devise JWT)
  * has_many :projects

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
