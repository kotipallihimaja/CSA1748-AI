% Facts
eats_well(john).
exercises(john).

% Rules
healthy(Person) :- eats_well(Person), exercises(Person).
active(Person) :- exercises(Person).

% Forward chaining rule for deriving new facts.
derive :- healthy(Person), write(Person), write(' is healthy'), nl, fail.
derive :- active(Person), write(Person), write(' is active'), nl, fail.
derive.
