% Base case: an empty list has 0 vowels.
count_vowels([], 0).

% If the head of the list is a vowel, increase the count.
count_vowels([H|T], Count) :-
    is_vowel(H),
    count_vowels(T, TailCount),
    Count is TailCount + 1.

% If the head of the list is not a vowel, continue with the tail.
count_vowels([H|T], Count) :-
    \+ is_vowel(H),
    count_vowels(T, Count).

% Define the vowels.
is_vowel(a).
is_vowel(e).
is_vowel(i).
is_vowel(o).
is_vowel(u).
is_vowel('A').
is_vowel('E').
is_vowel('I').
is_vowel('O').
is_vowel('U').
