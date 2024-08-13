@startuml
skinparam backgroundColor #EEEBDC
skinparam handwritten false
left to right direction
actor "Users" as Users
rectangle "Frontend" {
[Vue.js Application]
}
cloud "External Services" {
[ChatGPT 4o API]
[Ollama (Llama 3.1:70B)]
[MinIO]
}
rectangle "Backend" {
[Spring Boot App]
[Security Layer]
package "Specialized Services" {
[NLP Services]
[Audio Processing]
[Text Analysis]
}
database "Data Storage" {
[PostgreSQL]
[Redis Cache]
}
}
Users --> [Vue.js Application]
[Vue.js Application] <--> [Spring Boot App] : REST API, JWT
[Spring Boot App] --> [Security Layer]
[Spring Boot App] --> [NLP Services]
[Spring Boot App] --> [Audio Processing]
[Spring Boot App] --> [Text Analysis]
[Spring Boot App] --> [PostgreSQL]
[Spring Boot App] --> [Redis Cache]
[Spring Boot App] --> [ChatGPT 4o API]
[Spring Boot App] --> [Ollama (Llama 3.1:70B)]
[Spring Boot App] --> [MinIO]
@enduml