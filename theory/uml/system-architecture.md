@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml
LAYOUT_WITH_LEGEND()

Person(clinician, "Clinician", "Administers and reviews the MMSE assessment")
Person(patient, "Patient", "Takes the MMSE assessment")

System_Boundary(mmse_system, "AI-Powered MMSE System") {
  Container(frontend, "Frontend", "Vue.js", "Provides the user interface for the assessment")
  Container(backend, "Backend", "Java Spring Boot", "Handles API requests, assessment logic, and AI model interaction")
  ContainerDb(database, "Database", "PostgreSQL", "Stores patient data, assessment results, and longitudinal cognitive data")
  Container(ai_models, "AI Models", "BERT, GPT-3, ResNet-50", "Process natural language, generate responses, and analyze visual data")
  ContainerDb(redis, "Redis", "In-memory data store", "Used for caching and distributed locking")
}

Rel(clinician, frontend, "Initiates assessment", "HTTPS")
Rel(frontend, backend, "Generates unique link", "API call")
Rel(patient, frontend, "Accesses assessment via link", "HTTPS")

Rel_Back(frontend, backend, "Presents MMSE questions", "REST API")
Rel_Back(patient, frontend, "Provides responses", "HTTPS")
Rel(backend, ai_models, "Processes responses using AI", "API calls for inference")
Rel(backend, database, "Stores responses", "JDBC")

Rel(backend, redis, "Acquires/releases locks", "Redis protocol")
Rel(backend, database, "Calculates and stores final scores", "JDBC")
Rel(clinician, frontend, "Reviews results", "HTTPS")
@enduml