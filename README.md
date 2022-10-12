# Exception Analysis Tests

Assuming that the binary for reanalyze is named `reanalyze-test`, first run the following command in the base directory to make the cmt files necessary for analysis.
```shell
./make_test.sh         # make cmt files
```

Now, test out exception analysis in different levels of elaboration by 
```shell
./run_test.sh          # run exa and print the results to tests/*.result
./make_log.sh          # print debug logs and print the results to tests/*.debug.log
./make_pat_log.sh      # print pattern filtering logs and print the results to tests/*.debug_pat.log
```

You can also print out the lambda IR/Typedtree/Parsetree of the code by running
```shell
./print_lambda.sh      # dump lambda IR to tests/*.lam
./print_tast.sh        # dump Typedtree to tests/*.tast
./print_ast.sh         # dump Parsetree to tests/*.ast
```
