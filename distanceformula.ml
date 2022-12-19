(*Mohamed Mahmoud*)
(*Ocaml Distance Formula Program*)

let distance_tests = [
  (((1,1),(1,1)),0);
  (((3,3),(1,1)),4);
  (((1,1),(3,3)),4);
  (((-1,-1),(-40,-40)),78);
  (((5,4),(8,9)),8);
  (((20,4),(8,20)),28);
  (((4,20),(20,8)),28);
  (((5,-12),(19,7)),33); 
  (((9,9),(9,9)),0);
  (((0,0),(0,0)),0);
]
;;

let helperAbs (point:int) : int =
  if point < 0 then -point else point ;;

let distance ((x1,y1):(int*int)) ((x2,y2):(int*int)) : int =
  helperAbs (y2-y1) + helperAbs (x2- x1)
