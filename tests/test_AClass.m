function test_suite = test_AClass
  initTestSuite;
end

function test_one
  aObject = AClass();
  assert(isa(aObject, AClass));
end
