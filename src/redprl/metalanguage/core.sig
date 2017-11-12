signature ML_CORE = 
sig
  datatype vtype = datatype SyntaxData.vtype
  datatype ctype = datatype SyntaxData.ctype
  datatype vpat = datatype SyntaxData.I.vpat
  datatype vterm = datatype SyntaxData.I.vterm
  datatype vneu = datatype SyntaxData.I.vneu
  datatype cterm = datatype SyntaxData.I.cterm
  datatype cneu = datatype SyntaxData.I.cneu
  type var = SyntaxData.Var.t

  (* variable context *)
  type ctx = (var * vtype) list

  (* inversion context *)
  type ictx = (vpat * vtype) list

  (* check computations (inversion) *)
  val rinv : ctx * ictx * cterm * ctype -> unit
  val linv : ctx * ictx * cterm * ctype -> unit

  (* check values (right focus) *)
  val rfoc : ctx * vterm * vtype -> unit

  (* infer neutral values (right focus) *)
  val rfocNeu : ctx * vneu -> vtype

  (* infer neutral computations (left focus) *)
  val lfoc : ctx * cneu -> ctype
end