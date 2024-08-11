@startuml
skinparam monochrome true
skinparam defaultTextAlignment center

start
:Clinician initiates assessment;
:System generates unique link;

partition "Patient Interaction" {
  :Patient accesses assessment;
  while (More questions?) is (Yes)
    :Patient answers question;
    :Store response;
  endwhile (No)
}

partition "Backend Processing" {
  :Process responses;
  :Calculate scores;
}

:Clinician reviews results;
stop

@enduml