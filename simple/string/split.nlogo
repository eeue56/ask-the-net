; this function is the same as string.split(delimiter) in Python.
;
; delimiter is the item used to split
; string is the string to split
; returns a list of strings
to-report split [delimiter string]
  let strings []
  
  while [position delimiter string != false][
    let start-of-delimiter position delimiter string
    
    set strings lput substring string 0 start-of-delimiter strings
    set string substring string (start-of-delimiter + length delimiter) length string
  ]
  
  report lput string strings
  
end