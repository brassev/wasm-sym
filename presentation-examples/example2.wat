(module
 (export "test" (func $test))
 (func $test (param $x i32) (param $y i32) (param $z i32)
  (if (i32.eq (get_local $x) (get_local $y))
   (if (i32.eq (get_local $y) (i32.const 2))
    (if (i32.gt_s (get_local $z) (i32.const 10))
     (unreachable)
    )
   )
  )
 )
)
