@startuml
actor Patient
actor Clinician
participant "Frontend (Vue.js)" as Frontend
participant "Backend (Spring Boot)" as Backend
participant "AI Services" as AI
database "PostgreSQL" as DB
database "Redis Cache" as Cache
database "MinIO" as MinIO

Patient -> Frontend: Start MMSE Test
Frontend -> Backend: Request Test Session
Backend -> DB: Create Test Entity
Backend -> Frontend: Return Test Session ID

loop For each MMSE question
    Frontend -> Backend: Request Question
    Backend -> Cache: Check Cached Question
    alt Question in Cache
        Cache -> Backend: Return Cached Question
    else Question not in Cache
        Backend -> DB: Fetch Question
        Backend -> Cache: Store Question
    end
    Backend -> Frontend: Return Question
    
    Patient -> Frontend: Submit Answer
    Frontend -> Backend: Send Answer
    Backend -> AI: Process Answer
    AI -> Backend: Return Processed Result
    Backend -> DB: Store Answer and Result
end

Backend -> AI: Request Final Analysis
AI -> Backend: Return Analysis Results
Backend -> DB: Store Final Results
Backend -> Frontend: Send Test Completion
Frontend -> Clinician: Display Test Results
@enduml