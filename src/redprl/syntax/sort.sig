structure SortData = 
struct
  datatype sort =
     EXP
   | TAC
   | MTAC
   | JDG
   | MATCH_CLAUSE
   | DIM
   | TUBE of sort
   | BDRY of sort
   | VEC of sort
   | LVL
   | KND
   | SEL
   | ACC
   | ANY
   | META_NAME
   | IND_SPECTYPE (* argument types in Part IV *)
   | IND_SPEC (* boundary terms in Part IV *)
   | IND_FAM (* the data associated with an inductive type *)
   | IND_CONSTR (* the data associated with a constructor in Part IV *)
end

signature REDPRL_SORT = 
sig
  datatype sort = datatype SortData.sort
  include ABT_SORT where type t = sort
end
