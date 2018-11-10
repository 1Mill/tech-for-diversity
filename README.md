# Things to fix for production
1. Rails CORS and Nuxt Axios BaseURL
  * Use Docker service hostnames, however, Nuxt does not appear to evalaute "http://api:3001" to api service as it is evaluated client side rather than server side.

1. For some reason "/api/v1/auth/login" generates a JWT token, but "/auth/login/" does not (when the path scope is changed).

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
