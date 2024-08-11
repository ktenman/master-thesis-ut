@startuml
!theme plain
top to bottom direction
skinparam linetype ortho

class databasechangelog {
   id: varchar(255)
   author: varchar(255)
   filename: varchar(255)
   dateexecuted: timestamp
   orderexecuted: integer
   exectype: varchar(10)
   md5sum: varchar(35)
   description: varchar(255)
   comments: varchar(255)
   tag: varchar(255)
   liquibase: varchar(20)
   contexts: varchar(255)
   labels: varchar(255)
   deployment_id: varchar(10)
}
class databasechangeloglock {
   locked: boolean
   lockgranted: timestamp
   lockedby: varchar(255)
   id: integer
}
class dolphin_question {
   question: varchar(1000)
   answer: text
   created_at: timestamp with time zone
   updated_at: timestamp with time zone
   id: bigint
}
class media_recording {
   file_name: varchar(255)
   test_entity_id: bigint
   question_id: varchar(255)
   created_at: timestamp with time zone
   updated_at: timestamp with time zone
   id: bigint
}
class mmse_authority {
   name: varchar(50)
}
class mmse_user {
   login: varchar(50)
   password_hash: varchar(60)
   first_name: varchar(50)
   last_name: varchar(50)
   email: varchar(191)
   image_url: varchar(256)
   activated: boolean
   lang_key: varchar(10)
   activation_key: varchar(20)
   reset_key: varchar(20)
   created_by: varchar(50)
   created_date: timestamp
   reset_date: timestamp
   last_modified_by: varchar(50)
   last_modified_date: timestamp
   id: bigint
}
class mmse_user_authority {
   user_id: bigint
   authority_name: varchar(50)
}
class orientation_to_place_answer {
   question_id: varchar(255)
   correct_answer: varchar(255)
   answer_options: varchar(255)
   patient_profile_id: bigint
   created_at: timestamp with time zone
   updated_at: timestamp with time zone
   id: bigint
}
class patient_profile {
   patient_id: varchar(255)
   name: varchar(255)
   created_at: timestamp with time zone
   updated_at: timestamp with time zone
   id: bigint
}
class test_entity {
   created_at: timestamp
   updated_at: timestamp
   score: integer
   user_id: bigint
   patient_profile_id: bigint
   id: bigint
}
class test_entity_hash {
   hash: varchar(8)
   test_entity_id: bigint
   created_at: timestamp with time zone
   updated_at: timestamp with time zone
   id: bigint
}
class user_answer {
   answer_text: varchar(255)
   created_at: timestamp
   updated_at: timestamp
   question_id: varchar(255)
   test_entity_id: bigint
   score: integer
   maximum_score: integer
   id: bigint
}

media_recording              -[#595959,plain]-^  test_entity                 : "test_entity_id:id"
mmse_user_authority          -[#595959,plain]-^  mmse_authority              : "authority_name:name"
mmse_user_authority          -[#595959,plain]-^  mmse_user                   : "user_id:id"
orientation_to_place_answer  -[#595959,plain]-^  patient_profile             : "patient_profile_id:id"
test_entity                  -[#595959,plain]-^  mmse_user                   : "user_id:id"
test_entity                  -[#595959,plain]-^  patient_profile             : "patient_profile_id:id"
test_entity_hash             -[#595959,plain]-^  test_entity                 : "test_entity_id:id"
user_answer                  -[#595959,plain]-^  test_entity                 : "test_entity_id:id"
@enduml