module V1 : sig
  (** Same as [Unix.map_file] in OCaml >= 4.06.0 *)
  val map_file :
       Unix.file_descr
    -> ?pos:int64
    -> ('a, 'b) Bigarray.kind
    -> 'c Bigarray.layout
    -> bool
    -> int array
    -> ('a, 'b, 'c) Bigarray.Genarray.t
end
