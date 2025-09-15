let split ~(text : string) ~rex ~split =
  let before = Sys.time () in
  for _ = 1 to 1000 do
    ignore (split ~rex text : string list)
  done ;
  let after = Sys.time () in
  after -. before

let replace ~(text : string) ~rex ~replace =
  let before = Sys.time () in
  for _ = 1 to 1000 do
    ignore (replace ~rex text : string)
  done ;
  let after = Sys.time () in
  after -. before
