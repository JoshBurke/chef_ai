;; Domain definition
(define (domain chef-domain)

  ;; Predicates: Properties of objects that we are interested in (boolean)
  (:predicates
    (CHEF ?x) ; True if x is a chef
    (VEGGIE ?x) ; True if x is a veggie
    (SOUP ?x) ; True if x is a soup
    (TOOL ?x) ; True if x is a tool
    (CAN-CUT ?x) ; True if x is a tool that can be used for cutting
    (CAN-STIR ?x) ; True if x is a tool that can be used for stirring
    (CAN-TASTE ?x) ; True if x is a tool that can be used for stirring
    (free-tool ?x) ; True if tool x is free for grabs
    (chef-holds-some-tool ?x) ; True if chef x holds a tool
    (chef-holds-tool ?x ?y) ; True if chef x holds tool y
    (chopped ?x) ; True if x is a veggie and it is chopped
    (soup-has-veggie ?x ?y) ; True if x is a soup and it is contains a veggie
    (well-stirred-soup ?x) ; True if x is a soup and it is contains a veggie
    (approved-soup ?x) ; True if x is a ready soup
  )

  ;; Actions: Ways of changing the state of the world

  ; Chef x can grab a tool y if they do not hold any tool yet and if the tool is free
  ; As a result they hold the tool, and the tool is not free any more 
  ; Parameters:
  ; - x: the chef  
  ; - y: the tool  
  (:action grab-tool
    ; WRITE HERE THE CODE FOR THIS ACTION
  )

  ; Chef x can drop a tool y if they hold the tool   
  ; As a result the chef stops holding the tool, and the tool becomes free
  ; Parameters:
  ; - x: the chef  
  ; - y: the tool 
  (:action drop-tool
     ; WRITE HERE THE CODE FOR THIS ACTION
  )

  ; Chef x can chop veggie y with a tool z that can be used for cutting
  ; As a result the veggie y becomes chopped
  ; Parameters:
  ; - x: the chef  
  ; - y: the veggie 
  ; - z: the tool 
  (:action chop
     ; WRITE HERE THE CODE FOR THIS ACTION
  )
   
  ; Chef x can add veggie y to a soup z if veggie y was chopped and if the chef does not hold any tool
  ; As a result soup z has veggie y, but the soup is not well-stirred any more and it is not approved
  ; Parameters:
  ; - x: the chef  
  ; - y: the veggie 
  ; - z: the soup 
  (:action add
    ; WRITE HERE THE CODE FOR THIS ACTION
  )
  
  ; Chef x can stir soup y with a tool z if the tool can be used for stirring 
  ; As a result soup y becomes well stirred
  ; Parameters:
  ; - x: the chef  
  ; - y: the soup 
  ; - z: the tool 
  (:action stir
    ; WRITE HERE THE CODE FOR THIS ACTION
  )
  
  ; Chef x can taste soup y with a tool z if the tool can be used for tasting and the soup has been well stirred before
  ; As a result soup y becomes approved
  ; Parameters:
  ; - x: the chef  
  ; - y: the soup 
  ; - z: the tool 
  (:action taste
   ; WRITE HERE THE CODE FOR THIS ACTION
  )

)