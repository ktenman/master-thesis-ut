@startuml 
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml
' Include material icons
!define ICONURL https://raw.githubusercontent.com/tupadr3/plantuml-icon-font-sprites/master/material
!define ICONURL2 https://raw.githubusercontent.com/tupadr3/plantuml-icon-font-sprites/master/devicons2
!include ICONURL/person.puml
!include ICONURL2/vuejs.puml
!include ICONURL2/java.puml
!include ICONURL2/postgresql.puml
!include ICONURL2/redis.puml
!include ICONURL/memory.puml

LAYOUT_WITH_LEGEND()
SHOW_LEGEND(false)

Person(clinician, "Clinician", "Administers and reviews MMSE assessments", $sprite="person")
Person(patient, "Patient", "Takes the MMSE assessment", $sprite="person")
System_Boundary(mmse_system, "AI-Powered MMSE System") {
  Container(frontend, "Frontend", "Vue.js", "Provides interactive UI for assessments", $sprite="vuejs")
  Container(backend, "Backend", "Java Spring Boot", "Manages assessment logic and AI interactions", $sprite="java")
  ContainerDb(database, "Database", "PostgreSQL", "Stores patient and assessment data", $sprite="postgresql")
  Container(ai_models, "AI Models", "ML models", "NLP, vision, and cognitive assessment", $sprite="memory")
  ContainerDb(redis, "Redis", "In-memory store", "Caching and distributed locking", $sprite="redis")
}
Rel(clinician, frontend, "Uses", "HTTPS")
Rel(patient, frontend, "Uses", "HTTPS")
Rel(frontend, backend, "Interacts with", "REST API") 
Rel(backend, database, "Reads/Writes data", "JDBC")
Rel(backend, ai_models, "Uses for analysis", "API calls")
Rel(backend, redis, "Manages shared state", "Redis protocol")
@enduml