@startuml
skinparam backgroundColor transparent
skinparam activity {
  FontColor black
  BorderColor #5B9BD5
  BackgroundColor #E7EFF9
}

start
:Problem Identification;
repeat
  :Design;
  :Development;
  :Evaluation;
  :Refinement;
repeat while (Satisfactory?) is (No)
-> Yes;
:Final Artifact;
stop

@enduml