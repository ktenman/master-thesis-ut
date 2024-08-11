@startuml
!theme plain
skinparam linetype ortho
entity User {
*id: bigint
login: varchar(50)
email: varchar(191)
activated: boolean
}
entity PatientProfile {
*id: bigint
patient_id: varchar(255)
name: varchar(255)
}
entity TestEntity {
*id: bigint
score: integer
created_at: timestamp
updated_at: timestamp
user_id: bigint <<FK>>
patient_profile_id: bigint <<FK>>
}
entity UserAnswer {
*id: bigint
answer_text: varchar(255)
question_id: varchar(255)
score: integer
test_entity_id: bigint <<FK>>
}
entity OrientationToPlaceAnswer {
*id: bigint
question_id: varchar(255)
correct_answer: varchar(255)
patient_profile_id: bigint <<FK>>
}
User ||--o{ TestEntity
PatientProfile ||--o{ TestEntity
TestEntity ||--o{ UserAnswer
PatientProfile ||--o{ OrientationToPlaceAnswer
@enduml