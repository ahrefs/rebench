let sep = "$$//$$"

let random_string len =
  String.init len (fun _ ->
      if Random.int 80 = 0 then '\n' (* average line length of 80 *)
      else
        let i = Random.int 26 in
        Char.chr (Char.code 'a' + i) )

let gen_string () =
  let fragment () =
    let length = Random.int 10000 in
    random_string length
  in
  List.init 50_000 (fun _ -> fragment ()) |> String.concat sep

let () =
  Random.self_init () ;
  let str = gen_string () in
  Out_channel.with_open_bin Sys.argv.(1) (fun ch ->
      Out_channel.output_string ch str )
