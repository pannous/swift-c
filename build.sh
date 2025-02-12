# cc -c Sources/CShit/test.c #-shared -o Sources/CShit/libtest.so
# cc -c Sources/CShit/test.cc -o libtest.a
# swiftc Sources/main.swift -I Sources -ltest -L . -Xlinker -lstdc++ &&
# ./main
g++ -shared -o Sources/CShit/libtest.so Sources/CShit/test.cc
# swiftc Sources/main.swift -I Sources -L Sources/CShit -ltest &&
swiftc Sources/main.swift -I Sources -L Sources/CShit -ltest -Xlinker -lc++ &&
./main