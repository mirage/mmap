module V1 = struct
  external map_internal :
       Unix.file_descr
    -> ('a, 'b) Bigarray.kind
    -> 'c Bigarray.layout
    -> bool
    -> int array
    -> int64
    -> ('a, 'b, 'c) Bigarray.Genarray.t
    = "caml_unix_map_file_bytecode" "caml_unix_map_file"

  let map_file fd ?(pos = 0L) kind layout shared dims =
    map_internal fd kind layout shared dims pos
end
