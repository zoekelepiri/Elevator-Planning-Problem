Ονοματεπώνυμο: Ζωή Κελεπίρη
ΑΕΜ:3290

(define (problem elevators-problem)
  
  (:domain elevators)

  

   ; Objects are candidates to replace free variables
   
     (:objects f1 f2 f3 f4 f5 ;five floors 
          
               p1 p2 p3 p4 p5  ;five calls
           
               e1 e2 e3  ;three elevators
 
      )


  


     ;The first situation 
     (:init
    (floor f1) (floor f2) (floor f3) (floor f4) (floor f5)
  
               (people p1) (people p2) (people p3) (people p4) (people p5)
   
               (elevator e1) (elevator e2) (elevator e3)
    
    
               (at_elevator e1 f4)(belongs f4 e1) (belongs f1 e1)
   
               (at_elevator e2 f1) (belongs f1 e2) (belongs f2 e2)
    
               (at_elevator e3 f3) (belongs f3 e3) (belongs f5 e3)
    
   
               (at_people p1 f4) (at_people p2 f3) (at_people p3 f1) 
   
               (at_people p4 f2) (at_people p5 f5)
    
  
     )

  


   ; The goal state describe what we desire to achieve
  
   (:goal (and
   
        (at_people p1 f2) (at_people p2 f5) (at_people p3 f4)
   (at_people p4 f1) (at_people p5 f3))
   
   
   )

)