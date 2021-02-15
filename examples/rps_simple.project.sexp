(@module (begin end)
         (@label begin)
         (@debug-label dlb)
         (def winner
              (λ (handA handB)
                 (begin0 end0)
                 (@label begin0)
                 (@debug-label dlb0)
                 (def tmp (@app - 4 handB))
                 (def tmp0 (@app + handA tmp))
                 (return (@app mod tmp0 3))
                 (@label end0)))
         (@debug-label dlb1)
         (def rockPaperScissors
              (@make-interaction
               ((@list A B))
               (wagerAmount)
               (begin1 end1)
               (#f
                (@label begin1)
                (@debug-label dlb2)
                (@label cp)
                (consensus:set-participant A)
                (@debug-label dlb3)
                (consensus:set-participant A)
                (consensus:set-participant A)
                (@debug-label dlb4)
                (consensus:set-participant A)
                (@debug-label dlb5)
                (consensus:set-participant A)
                (@debug-label dlb6)
                (consensus:set-participant A)
                (def commitment (expect-published 'commitment))
                (@debug-label dlb7)
                (consensus:set-participant A)
                (expect-deposited wagerAmount)
                (@debug-label dlb8)
                (@label cp0)
                (consensus:set-participant B)
                (@debug-label dlb9)
                (consensus:set-participant B)
                (def handB0 (expect-published 'handB0))
                (@debug-label dlb10)
                (consensus:set-participant B)
                (expect-deposited wagerAmount)
                (@debug-label dlb11)
                (def tmp2 (@app < handB0 3))
                (require! tmp2)
                (@debug-label dlb12)
                (@label cp1)
                (consensus:set-participant A)
                (def salt (expect-published 'salt))
                (consensus:set-participant A)
                (def handA0 (expect-published 'handA0))
                (@debug-label dlb13)
                (def tmp3 (@app < handA0 3))
                (require! tmp3)
                (@debug-label dlb14)
                (def tmp4 (digest salt handA0))
                (def tmp5 (== commitment tmp4))
                (require! tmp5)
                (@debug-label dlb15)
                (def outcome (@app winner handA0 handB0))
                (@debug-label dlb16)
                (@label begin-switch)
                (switch outcome
                  (2
                   (@debug-label dlb17)
                   (def tmp6 (@app * 2 wagerAmount))
                   (consensus:withdraw A tmp6))
                  (0
                   (@debug-label dlb18)
                   (def tmp7 (@app * 2 wagerAmount))
                   (consensus:withdraw B tmp7))
                  (1
                   (@debug-label dlb19)
                   (consensus:withdraw A wagerAmount)
                   (@debug-label dlb20)
                   (consensus:withdraw B wagerAmount)))
                (@label end-switch)
                (@debug-label dlb21)
                (return outcome)
                (@label end1))
               (A (@label begin1)
                  (@debug-label dlb2)
                  (@label cp)
                  (participant:set-participant A)
                  (def handA0
                       (input Nat
                              "First player, pick your hand: 0 (Rock), 1 (Paper), 2 (Scissors)"))
                  (@debug-label dlb3)
                  (participant:set-participant A)
                  (def tmp1 (@app < handA0 3))
                  (participant:set-participant A)
                  (require! tmp1)
                  (@debug-label dlb4)
                  (participant:set-participant A)
                  (def salt (@app randomUInt256))
                  (@debug-label dlb5)
                  (participant:set-participant A)
                  (def commitment (digest salt handA0))
                  (@debug-label dlb6)
                  (participant:set-participant A)
                  (add-to-publish 'commitment commitment)
                  (@debug-label dlb7)
                  (participant:set-participant A)
                  (add-to-deposit wagerAmount)
                  (@debug-label dlb8)
                  (@label cp0)
                  (participant:set-participant B)
                  (@debug-label dlb9)
                  (participant:set-participant B)
                  (def handB0 (expect-published 'handB0))
                  (@debug-label dlb10)
                  (participant:set-participant B)
                  (expect-deposited wagerAmount)
                  (@debug-label dlb11)
                  (def tmp2 (@app < handB0 3))
                  (require! tmp2)
                  (@debug-label dlb12)
                  (@label cp1)
                  (participant:set-participant A)
                  (add-to-publish 'salt salt)
                  (participant:set-participant A)
                  (add-to-publish 'handA0 handA0)
                  (@debug-label dlb13)
                  (def tmp3 (@app < handA0 3))
                  (require! tmp3)
                  (@debug-label dlb14)
                  (def tmp4 (digest salt handA0))
                  (def tmp5 (== commitment tmp4))
                  (require! tmp5)
                  (@debug-label dlb15)
                  (def outcome (@app winner handA0 handB0))
                  (@debug-label dlb16)
                  (@label begin-switch)
                  (switch outcome
                    (2
                     (@debug-label dlb17)
                     (def tmp6 (@app * 2 wagerAmount))
                     (participant:withdraw A tmp6))
                    (0
                     (@debug-label dlb18)
                     (def tmp7 (@app * 2 wagerAmount))
                     (participant:withdraw B tmp7))
                    (1
                     (@debug-label dlb19)
                     (participant:withdraw A wagerAmount)
                     (@debug-label dlb20)
                     (participant:withdraw B wagerAmount)))
                  (@label end-switch)
                  (@debug-label dlb21)
                  (return outcome)
                  (@label end1))
               (B (@label begin1)
                  (@debug-label dlb2)
                  (@label cp)
                  (participant:set-participant A)
                  (@debug-label dlb3)
                  (participant:set-participant A)
                  (participant:set-participant A)
                  (@debug-label dlb4)
                  (participant:set-participant A)
                  (@debug-label dlb5)
                  (participant:set-participant A)
                  (@debug-label dlb6)
                  (participant:set-participant A)
                  (def commitment (expect-published 'commitment))
                  (@debug-label dlb7)
                  (participant:set-participant A)
                  (expect-deposited wagerAmount)
                  (@debug-label dlb8)
                  (@label cp0)
                  (participant:set-participant B)
                  (def handB0
                       (input Nat
                              "Second player, pick your hand: 0 (Rock), 1 (Paper), 2 (Scissors)"))
                  (@debug-label dlb9)
                  (participant:set-participant B)
                  (add-to-publish 'handB0 handB0)
                  (@debug-label dlb10)
                  (participant:set-participant B)
                  (add-to-deposit wagerAmount)
                  (@debug-label dlb11)
                  (def tmp2 (@app < handB0 3))
                  (require! tmp2)
                  (@debug-label dlb12)
                  (@label cp1)
                  (participant:set-participant A)
                  (def salt (expect-published 'salt))
                  (participant:set-participant A)
                  (def handA0 (expect-published 'handA0))
                  (@debug-label dlb13)
                  (def tmp3 (@app < handA0 3))
                  (require! tmp3)
                  (@debug-label dlb14)
                  (def tmp4 (digest salt handA0))
                  (def tmp5 (== commitment tmp4))
                  (require! tmp5)
                  (@debug-label dlb15)
                  (def outcome (@app winner handA0 handB0))
                  (@debug-label dlb16)
                  (@label begin-switch)
                  (switch outcome
                    (2
                     (@debug-label dlb17)
                     (def tmp6 (@app * 2 wagerAmount))
                     (participant:withdraw A tmp6))
                    (0
                     (@debug-label dlb18)
                     (def tmp7 (@app * 2 wagerAmount))
                     (participant:withdraw B tmp7))
                    (1
                     (@debug-label dlb19)
                     (participant:withdraw A wagerAmount)
                     (@debug-label dlb20)
                     (participant:withdraw B wagerAmount)))
                  (@label end-switch)
                  (@debug-label dlb21)
                  (return outcome)
                  (@label end1))))
         (return (@tuple))
         (@label end))
