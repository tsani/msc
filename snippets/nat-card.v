Lemma nat_card : ~(\exists x:nat, \exists y:nat, \forall z:nat, x = z \/ y = z).
Proof.
  intros A; elim A. intros x H; elim H. intros y J.
  specialize (J 0) as H1. specialize (J 1) as H2. specialize (J 2) as H3.
  elim H1; elim H2; elim H3; intros;
  match goal with
    | [_ : ?x = ?a, H : ?x = ?b |- _ ] =>
      subst x; discriminate H
  end.
Qed.
