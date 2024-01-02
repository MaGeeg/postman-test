#!/bin/bash
echo "Tests execution from all Postman collection files in the directory Postman_tests/ "
for file in ./tests/*; do
    newman run "$file" -e ./GAD.postman_environment.json -r cli,htmlextra
done
