@startuml
skinparam backgroundColor transparent
skinparam usecase {
  BackgroundColor #E7EFF9
  BorderColor #5B9BD5
}
skinparam actor {
  BackgroundColor #E7EFF9
  BorderColor #5B9BD5
}

actor "Healthcare Professional" as Admin
actor Patient
actor "AI-Enhanced MMSE Tool" as Tool

rectangle "AI-powered Web-based MMSE" {
  usecase "Initiate Assessment" as UC1
  usecase "Collect Patient Information" as UC2
  usecase "Administer MMSE" as UC3
  usecase "Analyze Responses" as UC4
  usecase "Generate Clinical Insights" as UC5
}

Admin --> UC1
Admin --> UC2
Patient --> UC3
Tool --> UC4

UC1 --> UC2
UC2 --> UC3
UC3 --> UC4
UC4 --> UC5
UC5 --> Admin

@enduml