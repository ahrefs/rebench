let text = In_channel.(with_open_bin Sys.argv.(1) input_all)

let () =
  let regexp = Pcre.regexp ~study:true ~jit_compile:true "$$//$$" in
  Printf.printf "split: %f\n%!"
    (Rebench.split ~text ~rex:regexp ~split:(fun ~rex text ->
         Pcre.split ~rex text ) ) ;
  Printf.printf "replace: %f\n%!"
    (Rebench.replace ~text ~rex:regexp ~replace:(fun ~rex text ->
         Pcre.qreplace ~rex ~templ:"££**££" text ) )
