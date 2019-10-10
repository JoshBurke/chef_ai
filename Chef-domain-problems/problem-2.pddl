;; Problem definition
(define (problem problem-2)

  ;; Specifying the domain for the problem
  (:domain chef-domain)

  ;; Objects definition
  (:objects
    ; Chefs
    gordon
    jamie
    ; Soups
    soup
    ; Vegetables
    carrot
    potato
    onion
    ; Tools
    knife
    spoon
  )

  ;; Intial state of problem
  (:init
    ;; Declaration of the objects
    ; We initialize the chefs
    (CHEF gordon)
    (CHEF jamie)
    ; Soups
    (SOUP soup)
    ; Vegetables
    (VEGGIE carrot)
    (VEGGIE potato)
    (VEGGIE onion)
    ; Tools
    (TOOL knife)
    (TOOL spoon)
    ; Tools' capabilities
    (CAN-CUT knife)
    (CAN-STIR spoon)
    (CAN-TASTE spoon)
    ;; Declaration of the predicates of the objects
    ; We set the tools are free
    (free-tool knife)
    (free-tool spoon)
    
  )

  ;; Goal specification
  (:goal
    (and
      (approved-soup soup) (soup-has-veggie soup carrot)(soup-has-veggie soup potato)(soup-has-veggie soup onion)
    )
  )

)