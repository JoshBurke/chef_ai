(define (problem problem-4)

  ;; Specifying the domain for the problem
  (:domain chef-domain)

  ;; Objects definition
  (:objects
    ; Chefs
    gordon
    jamie
    ; Soups
    carrotsoup
    potatosoup
    ; Vegetables
    carrot
    potato
    ; Tools
    knife
    spoon
  )

  ;; Intial state of problem 4
  (:init
    ;; Declaration of the objects
    ; We initialize the chefs
    (CHEF gordon)
    (CHEF jamie)
    ; Soups
    (SOUP carrotsoup)
    (SOUP potatosoup)
    ; Vegetables
    (VEGGIE carrot)
    (VEGGIE potato)
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
      (approved-soup carrotsoup) (soup-has-veggie carrotsoup carrot) (approved-soup potatosoup) (soup-has-veggie potatosoup potato)
    )
  )

)