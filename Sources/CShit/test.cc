// Default arguments are not compatible with C!
extern "C" int makeResult(int x=1) { return 41; }
