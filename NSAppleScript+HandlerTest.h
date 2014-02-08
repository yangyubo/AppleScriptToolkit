//
//  NSAppleScript+HandlerTest.h
//
//  Created by dmaclach on 6/6/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>


@interface NSAppleScript_HandlerTest : SenTestCase {
  NSAppleScript *script_;  // STRONG
}
- (void)testHandlerNoParamsNoReturn;
- (void)testHandlerNoParamsWithReturn;
- (void)testHandlerOneParamWithReturn;
- (void)testHandlerTwoParamsWithReturn;
- (void)testFailures;
@end
