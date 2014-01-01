; the easiest way to join a list of strings is to use reduce
; with word. this is also the easiest way to concat any two
; strings together.
;
; this function is the same as ''.join(strings) in Python. 
;
; strings is a list of strings
; returns the strings joined together by nothing
to-report join [strings]
  if empty? strings [ report "" ] 
  report reduce [(word ?1 ?2)] strings
end

; this function is the same as joiner.join(strings) in Python.
;
; joiner is the delimiter with which the strings will be joined
; strings is a list of strings
; returns the strings joined together by joiner
to-report join-by [joiner strings]
  if empty? strings [ report "" ]
  report reduce [(word ?1 joiner ?2)] strings
end