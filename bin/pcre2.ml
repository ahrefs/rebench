let text = In_channel.(with_open_bin Sys.argv.(1) input_all)

let () =
  let regexp = Pcre2.regexp "$$//$$" in
  Printf.printf "split: %f\n%!"
    (Rebench.split ~text ~rex:regexp ~split:(fun ~rex text ->
         Pcre2.split ~rex text ) ) ;
  Printf.printf "replace: %f\n%!"
    (Rebench.replace ~text ~rex:regexp ~replace:(fun ~rex text ->
         Pcre2.qreplace ~rex ~templ:"££**££" text ) )
