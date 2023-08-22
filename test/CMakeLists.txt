macro(add_my_test testname)
  add_executable(${testname} ${testname}.cpp)
  add_test(NAME ${testname}_test COMMAND ./${testname})
endmacro(add_my_test)

add_my_test(mytest)
