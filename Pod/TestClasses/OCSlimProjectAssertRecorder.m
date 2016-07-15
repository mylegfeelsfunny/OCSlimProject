#import "OCSlimProjectAssertRecorder.h"

@implementation OCSlimProjectXCTestAssertRecorder

- (void)recordFailWithTestCase:(XCTestCase *)test {
    
    _XCTPrimitiveFail(test, @"Fitnesse Test Failed", nil);
    
}

- (void)recordPassWithTestCase:(XCTestCase *)test {
    
    _XCTPrimitiveAssertTrue(test, YES, @"Fitnesse Test Passed");
    
}

@end

@implementation OCSlimProjectAssertRecorderSpy

- (void)recordFailWithTestCase:(XCTestCase*)testCase {
    
    self.didRecordFail = true;
    
}

- (void)recordPassWithTestCase:(XCTestCase*)testCase {
    
    self.didRecordPass = true;
    
}

@end
