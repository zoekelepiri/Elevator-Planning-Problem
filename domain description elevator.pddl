Ονοματεπώνυμο: Ζωή Κελεπίρη
ΑΕΜ:3290



; Describe the relations and transitions that can occur
 

;This one describes the Elevator Controller


(define (domain elevators) 

 (:requirements
    :strips            
  )
 

  

  (:predicates
     
    (floor ?f)

      (people ?p)
    
     (elevator ?e)

  ;the variables of    
    
    (at_elevator ?e ?f)
 ;in which floor elevator is   
    (at_people ?p ?f) ;in which floor people are
   
    
    (in_people ?p ?e) ;in which floor want to go
     
    (belongs ?f ?e)
   ;in which floor elevator can go  
  )

    
 
 (:action move
  ;move elevator from one floor to another  

 
   :parameters (?e ?f1 ?f2)
   
 
   :precondition (and (elevator ?e) (floor ?f1) (floor ?f2)
   (at_elevator ?e ?f1) )
  
 
   :effect (and (at_elevator ?e ?f2) (not(at_elevator  ?e ?f1)) )
)
  
  
  

  
   



  (:action load ;load the people in the elevator
 
 
   
  :parameters (?p ?f ?e)
  
    :precondition (and  (people ?p) (floor ?f) (elevator ?e)
     (at_people ?p ?f) (at_elevator ?e ?f) (belongs ?f ?e))

  
  :effect (and (not(at_people ?p ?f) ) (in_people ?p ?e))
  )
  

 


  (:action upload ;  people are on the floor which they wanted to go
   
  

  :parameters(?p ?f ?e)
   
  
  :precondition (and   (people ?p)  (floor ?f) (elevator ?e)
  (in_people ?p ?e) (at_elevator ?e ?f) (belongs ?f ?e) )
  
 
  :effect (and (at_people ?p ?f) (not(in_people ?p ?e)) )
  
  )
  
  
  
 



)