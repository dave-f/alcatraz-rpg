
;
; Helper macros
(defmacro calc-skills-professional (var)
  (list 'loop 'for 'i 'in (intern (concat var "-skill-profession")) 'sum '(cdr i)))

(defmacro calc-skills-personal (var)
  (list 'loop 'for 'i 'in (intern (concat var "-skill-personal")) 'sum '(cdr i)))

(macroexpand-1 '(calc-skills-personal "det"))

;
; ---------------------------------------- 1. Clarence ----------------------------------------


;
; Base stats.
; 3 points can be redistributed, but no characteristic can be more than 21.
(setq clarence-base-stats (list 
                           '(str . 11) ; 3d6
                           '(con . 8)  ; 3d6
                           '(siz . 10) ; 2d6+6
                           '(int . 12) ; 2d6+6
                           '(pow . 11) ; 3d6
                           '(dex . 9)  ; 3d6
                           '(app . 10) ; 3D6
))

(setq clarence-generated-stats (list
                                '(damage-bonus . 0) ; n/a here
                                `(hp . ,(ceiling (/ (+ (cdr (assoc 'con clarence-base-stats)) (cdr (assoc 'siz clarence-base-stats))) 2.0)))
))

;
; Skill points, up to 300 from their profession.
(setq clarence-skill-profession (list
                                 '(appraise . 5)
                                 '(dodge . 20)
                                 '(fast-talk . 20)
                                 '(hide . 40)
                                 '(stealth . 40)
                                 '(brawl . 35)
                                 '(grapple . 35)
                                 '(climb . 20)
                                 '(spot . 20)
                                 '(knife . 65)))

;
; int*10 points for 'personal' skills: (* (cdr (assoc 'int clarence-base-stats)) 10) 120
(setq clarence-skill-personal (list
                               '(swim . 35)
                               '(club . 65)
                               '(disguise . 10)
                               '(craft . 10)))


;
; Check totals
(calc-skills-professional "clarence")
(calc-skills-personal "clarence")

;
; ---------------------------------------- 2. John ----------------------------------------


;
; Base stats.
; 3 points can be redistributed, but no characteristic can be more than 21.

(setq john-base-stats (list
                           '(str . 12) ; 3d6
                           '(con . 13) ; 3d6
                           '(siz . 14) ; 2d6+6
                           '(int . 13) ; 2d6+6
                           '(pow . 10) ; 3d6
                           '(dex . 12) ; 3d6
                           '(app . 10) ; 3D6
))

(setq john-generated-stats (list
                            '(damage-bonus . 0) ; n/a here
                            `(hp . ,(ceiling (/ (+ (cdr (assoc 'con john-base-stats)) (cdr (assoc 'siz john-base-stats))) 2.0)))
))

;
; Skill points, up to 300 from their profession.
(setq john-skill-profession (list
                                 '(appraise . 5)
                                 '(dodge . 20)
                                 '(fast-talk . 20)
                                 '(hide . 40)
                                 '(stealth . 40)
                                 '(brawl . 35)
                                 '(grapple . 35)
                                 '(climb . 20)
                                 '(spot . 20)
                                 '(handgun . 65)))

;
; int*10 points for 'personal' skills: (* (cdr (assoc 'int john-base-stats)) 10) 130
(setq john-skill-personal (list
                               '(swim . 40)
                               '(club . 70)
                               '(disguise . 10)
                               '(craft . 10)))

;
; Check totals
(calc-skills-professional "john")
(calc-skills-personal "john")

;
; ---------------------------------------- 3. Frank ----------------------------------------

;
; Base stats.
; 3 points can be redistributed, but no characteristic can be more than 21.
(setq frank-base-stats (list 
                           '(str . 10) ; 3d6
                           '(con . 12) ; 3d6
                           '(siz . 10) ; 2d6+6
                           '(int . 14) ; 2d6+6
                           '(pow . 9)  ; 3d6
                           '(dex . 13) ; 3d6
                           '(app . 6)  ; 3D6
))

(setq frank-generated-stats (list
                                '(damage-bonus . 0) ; n/a here
                                `(hp . ,(ceiling (/ (+ (cdr (assoc 'con frank-base-stats)) (cdr (assoc 'siz frank-base-stats))) 2.0)))
))

;
; Skill points, up to 300 from their profession.
(setq frank-skill-profession (list
                                 '(brawl . 35)
                                 '(dodge . 20)
                                 '(grapple . 35)
                                 '(club . 40)
                                 '(knife . 20)
                                 '(climb . 20)
                                 '(handgun . 70)
                                 '(hide . 10)
                                 '(swim . 20)
                                 '(spot . 30)))

;
; int*10 points for 'personal' skills: (* (cdr (assoc 'int frank-base-stats)) 10) 140
(setq frank-skill-personal (list
                               '(listen . 30)
                               '(stealth . 40)
                               '(throw . 40)
                               '(craft . 20)
                               '(disguise . 10)))

;
; Check totals
(calc-skills-professional "frank")
(calc-skills-personal "frank")

;
; ---------------------------------------- 4. Detective ----------------------------------------

;
; Base stats.
; 3 points can be redistributed, but no characteristic can be more than 21.
(setq det-base-stats (list 
                      '(str . 9)  ; 3d6
                      '(con . 7)  ; 3d6
                      '(siz . 12) ; 2d6+6
                      '(int . 15) ; 2d6+6
                      '(pow . 9)  ; 3d6
                      '(dex . 9)  ; 3d6
                      '(app . 7)  ; 3D6
))

(setq det-generated-stats (list
                           '(damage-bonus . 0) ; n/a here
                           `(hp . ,(ceiling (/ (+ (cdr (assoc 'con det-base-stats)) (cdr (assoc 'siz det-base-stats))) 2.0)))
))

;
; Skill points, up to 300 from their profession.
(setq det-skill-profession (list
                            '(disguise . 10)
                            '(fast-talk . 5)
                            '(hide . 40)
                            '(insight . 10)
                            '(law . 20)
                            '(listen . 40)
                            '(spot . 40)
                            '(stealth . 15)
                            '(track . 5)
                            '(handgun . 65)
                            '(club . 40)
                            '(knife . 10)))

;
; int*10 points for 'personal' skills: (* (cdr (assoc 'int det-base-stats)) 10) 150
(setq det-skill-personal (list
                          '(psycho-analyse . 10)
                          '(research . 20)
                          '(sense . 10)
                          '(medicine . 10)
                          '(brawl . 20)
                          '(grapple . 30)
                          '(persuade . 10)
                          '(bargain . 20)
                          '(climb . 10)
                          '(jump . 10)))

;
; Check totals
(calc-skills-professional "det")
(calc-skills-personal "det")

;
; ---------------------------------------- 5. Doctor ----------------------------------------

;
; Base stats.
; 3 points can be redistributed, but no characteristic can be more than 21.
(setq doc-base-stats (list 
                      '(str . 12)  ; 3d6
                      '(con . 10)  ; 3d6
                      '(siz . 11)  ; 2d6+6
                      '(int . 12)  ; 2d6+6
                      '(pow . 11)  ; 3d6
                      '(dex . 9)   ; 3d6
                      '(app . 7)   ; 3D6
))

(setq doc-generated-stats (list
                           '(damage-bonus . 0) ; n/a here
                           `(hp . ,(ceiling (/ (+ (cdr (assoc 'con doc-base-stats)) (cdr (assoc 'siz doc-base-stats))) 2.0)))))

;
; Skill points, up to 300 from their profession.
(setq doc-skill-profession (list
                            '(first-aid . 50)
                            '(language-own . 10)
                            '(medicine . 65)
                            '(persuade . 20)
                            '(research . 20)
                            '(spot . 45)
                            '(psycotherapy . 35)
                            '(science . 25)
                            '(insight . 30)))

;
; int*10 points for 'personal' skills: (* (cdr (assoc 'int doc-base-stats)) 10) 120
(setq doc-skill-personal (list
                          '(teach . 30)
                          '(fine-manipulation . 20)
                          '(club . 60)
                          '(jump . 10)))


;
; Check totals
(calc-skills-professional "doc")
(calc-skills-personal "doc")

;
; ---------------------------------------- 6. Inventor ----------------------------------------

;
; Base stats.
; 3 points can be redistributed, but no characteristic can be more than 21.
(setq invent-base-stats (list 
                         '(str . 11)  ; 3d6
                         '(con . 12)  ; 3d6
                         '(siz . 10)  ; 2d6+6
                         '(int . 16)  ; 2d6+6
                         '(pow . 11)  ; 3d6
                         '(dex . 16)  ; 3d6
                         '(app . 9)   ; 3D6
))

(setq invent-generated-stats (list
                              '(damage-bonus . 0) ; n/a here
                              `(hp . ,(ceiling (/ (+ (cdr (assoc 'con invent-base-stats)) (cdr (assoc 'siz invent-base-stats))) 2.0)))))


(setq invent-skill-profession (list
                               '(climb . 20)
                               '(hide . 15)
                               '(listen . 20)
                               '(navigate . 10)
                               '(spot . 30)
                               '(stealth . 30)
                               '(track . 25)
                               '(handgun . 60)
                               '(club . 60)
                               '(first-aid . 30)))

;
; int*10 points for 'personal' skills: (* (cdr (assoc 'int invent-base-stats)) 10) 160
(setq invent-skill-personal (list
                             '(brawl . 25)
                             '(grapple . 25)
                             '(jump . 15)
                             '(craft . 30)
                             '(flamethrower . 65)))

;
; Check totals
(calc-skills-professional "invent")
(calc-skills-personal "invent")

;
; ------------------------------- 7. Captured Journalists ----------------------------------------

;
; Base stats.
; 3 points can be redistributed, but no characteristic can be more than 21.
(setq journo-base-stats (list 
                         '(str . 10)  ; 3d6
                         '(con . 7)   ; 3d6
                         '(siz . 14)  ; 2d6+6
                         '(int . 12)  ; 2d6+6
                         '(pow . 12)  ; 3d6
                         '(dex . 13)  ; 3d6
                         '(app . 11)  ; 3D6
))

(setq journo-generated-stats (list
                              '(damage-bonus . 0) ; n/a here
                              `(hp . ,(ceiling (/ (+ (cdr (assoc 'con journo-base-stats)) (cdr (assoc 'siz journo-base-stats))) 2.0)))))


; art/craft history library own language charm/fast talk/persuade psychology ANY OTHER ONE

(setq journo-skill-profession (list
                               '(art . 25)
                               '(hide . 20)
                               '(bargain . 35)
                               '(language-own . 25)
                               '(persuade . 25)
                               '(research . 35)
                               '(stealth . 25)
                               '(fast-talk . 30)
                               '(teach . 25)
                               '(sense . 30)
                               '(track . 25)))

;
; int*10 points for 'personal' skills: (* (cdr (assoc 'int journo-base-stats)) 10) 120
(setq journo-skill-personal (list
                             '(brawl . 10)
                             '(spot . 25)
                             '(listen . 25)
                             '(knife . 35)
                             '(throw . 25)))

;
; Check stats
(calc-skills-professional "journo")
(calc-skills-personal "journo")
