@startuml
skinparam monochrome true
skinparam defaultTextAlignment center

start
:Clinician initiates assessment;
:System generates unique link for patient;

partition "Patient Interaction" {
  :Patient accesses assessment via unique link;
  
  while (More questions?) is (Yes)
    :System presents MMSE question;
    
    switch (Question type)
      case (Multiple Choice/Text/Voice)
        :Patient selects/types/speaks response;
      case (Drawing)
        :Patient draws on screen;
      case (Calculation)
        :Patient performs subtraction task;
    endswitch
    
    :Frontend stores response in local storage;
    
    if (Response submitted?) then (Yes)
      :Frontend sends response to Backend;
      
      partition "Backend Processing" {
        if (AI processing required?) then (Yes)
          switch (AI Model)
            case (Llama 3.1:70b)
              :Process complex language;
            case (ChatGPT 4o)
              :Process drawings;
            case (Specialized models)
              :Process speech/text/semantics;
          endswitch
        else (No)
          :Standard processing;
        endif
        
        :Store response in Database;
      }
    endif
  endwhile (No)
}

partition "Score Calculation" {
  :CalculateScoreScheduler activates;
  if (Unscored responses?) then (Yes)
    :Acquire Redis lock;
    :Calculate scores;
    :Update Database;
    :Release Redis lock;
  endif
}

:Clinician reviews results;

stop
@enduml