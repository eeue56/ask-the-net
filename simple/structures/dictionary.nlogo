; the easiest way to add something like a hashmap in pure netlogo is
; to abuse breeds, using ask and with. these are powerful tools and 
; allow for some great tricks
breed [dicts dict]
dicts-own [group key value]

; the dict group in all the examples below is the id of the dict
; this allows for easy access without making a breed for each dict
; 
; sets an entry to have a value
to set-key-value [dict-group entry-key entry-value]
  create-dicts 1 [
    set group dict-group
    set key entry-key
    set value entry-value 
  ]
end

; deletes an entry from a dict
to delete-key [dict-group entry-key]
  ask dicts with [group = dict-group and key = entry-key][
    die
  ]
end

; reports false if no key exists, else reports the value of that entry
to-report get-value [dict-group entry-key]
  let values [value] of dicts with [group = dict-group and key = entry-key] 
  
  if empty? values [ report false ]
  
  report first values
end

; returns the agentset of the dict
to-report get-dict [dict-group]
  report dicts with [group = dict-group]
end

; returns a list of keys
to-report get-keys [dict-group]
  report [key] of get-dict dict-group
end

; returns a list of values
to-report get-values [dict-group]
  report [value] of get-dict dict-group
end