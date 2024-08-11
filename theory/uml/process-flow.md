@startuml
skinparam monochrome true
skinparam defaultTextAlignment center
start
:Clinician initiates assessment;
:System generates unique link for patient;
partition "Patient Interaction" {
:Patient accesses assessment via unique link;
:System loads last saved state (if any);
:System presents MMSE questions;
while (More questions?) is (Yes)
    if (Patient closes browser?) then (Yes)
        :System saves current state to local storage;
        :Patient reopens link;
        :System resumes from last saved state in local storage;
    endif
    switch (Question type)
        case (Multiple Choice)
            :Patient selects answer;
        case (Text Input)
            :Patient types response;
        case (Voice Input)
            :Patient speaks response;
        case (Drawing)
            :Patient draws on screen;
        case (Subtraction Task)
            :Patient enters numerical answer;
    endswitch
    
    :Frontend temporarily stores responses in local storage;
    
    if (Response submitted?) then (Yes)
        :Frontend sends response from local storage to Backend;
        
        partition "Backend Processing" {
            if (AI processing required?) then (Yes)
                switch (AI Model)
                    case (BERT/GPT-3)
                        :Process text/voice input;
                    case (ResNet-50)
                        :Analyze drawing;
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
else (No)
:Wait for next cycle;
endif
}
:Clinician reviews results;
:Clinician provides feedback (optional);
stop
@enduml
