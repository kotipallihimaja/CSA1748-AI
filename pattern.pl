% Base case: an empty pattern matches an empty list.
match([], []).

% Recursive case: match the head of the pattern and list, then continue matching the tails.
match([H|T], [H|T1]) :-
    match(T, T1).

% Recursive case: match variables in the pattern (represented as '_').
match([_ | T], [_ | T1]) :-
    match(T, T1).
