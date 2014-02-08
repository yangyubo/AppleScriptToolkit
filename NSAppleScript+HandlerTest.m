//
//  NSAppleScript+HandlerTest.m
//
//  Created by dmaclach on 6/6/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "NSAppleScript+HandlerTest.h"
#import "NSAppleScript+Handler.h"
#import "NSAppleEventDescriptor+Object.h"

@implementation NSAppleScript_HandlerTest
- (void)setUp {
  NSBundle *bundle = [NSBundle bundleForClass:[NSAppleScript_HandlerTest class]];
  STAssertNotNil(bundle, nil);
  NSString *path = [bundle pathForResource:@"NSAppleEvent+HandlerTest" 
                                    ofType:@"scpt"];
  STAssertNotNil(path, [bundle description]);
  NSDictionary *error = nil;
  script_ = [[NSAppleScript alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]
                                                   error:&error];
  STAssertNotNil(script_, [error description]);
}

- (void)tearDown {
  [script_ release];
}

- (void)testHandlerNoParamsNoReturn {
  NSDictionary *error = nil;
  NSAppleEventDescriptor *desc = [script_ executeHandler:@"test" parameters:nil error:&error];
  STAssertNotNil(desc, [error description]);
  STAssertEquals([desc descriptorType], (DescType)typeNull, nil);
  desc = [script_ executeHandler:@"test" parameters:[NSArray array] error:&error];
  STAssertNotNil(desc, [error description]);
  STAssertEquals([desc descriptorType], (DescType)typeNull, nil);
  
  //Applescript doesn't appear to get upset about extra params
  desc = [script_ executeHandler:@"test" parameters:[NSArray arrayWithObject:@"foo"] error:&error];
  STAssertNotNil(desc, [error description]);
  STAssertEquals([desc descriptorType], (DescType)typeNull, nil);
}
  
- (void)testHandlerNoParamsWithReturn {
  NSDictionary *error = nil;
  NSAppleEventDescriptor *desc = [script_ executeHandler:@"testReturnOne" parameters:nil error:&error];
  STAssertNotNil(desc, [error description]);
  STAssertEquals([desc descriptorType], (DescType)typeSInt32, nil);
  STAssertEquals([desc int32Value], 1L, nil);
  desc = [script_ executeHandler:@"testReturnOne" parameters:[NSArray array] error:&error];
  STAssertNotNil(desc, [error description]);
  STAssertEquals([desc descriptorType], (DescType)typeSInt32, nil);
  STAssertEquals([desc int32Value], 1L, nil);
  
  //Applescript doesn't appear to get upset about extra params
  desc = [script_ executeHandler:@"testReturnOne" parameters:[NSArray arrayWithObject:@"foo"] error:&error];
  STAssertNotNil(desc, [error description]);
  STAssertEquals([desc descriptorType], (DescType)typeSInt32, nil);
  STAssertEquals([desc int32Value], 1L, nil);
}

- (void)testHandlerOneParamWithReturn {
  NSDictionary *error = nil;
  // Note case change in executeHandler call
  NSAppleEventDescriptor *desc = [script_ executeHandler:@"testreturnParam" parameters:nil error:&error];
  STAssertNil(desc, nil);
  STAssertNotNil(error, nil);
  error = nil;
  
  desc = [script_ executeHandler:@"testReturnParam" parameters:[NSArray array] error:&error];
  STAssertNil(desc, nil);
  STAssertNotNil(error, nil);
  error = nil;
  
  desc = [script_ executeHandler:@"testReturnParam" parameters:[NSArray arrayWithObject:@"foo"] error:&error];
  STAssertNotNil(desc, [error description]);
  STAssertEquals([desc descriptorType], (DescType)typeUnicodeText, nil);
  STAssertEqualObjects([desc objectValue], @"foo", nil);
}

- (void)testHandlerTwoParamsWithReturn {
  NSDictionary *error = nil;
  // Note case change in executeHandler call
  NSAppleEventDescriptor *desc = [script_ executeHandler:@"testADDPArams" parameters:nil error:&error];
  STAssertNil(desc, nil);
  STAssertNotNil(error, nil);
  error = nil;
  
  desc = [script_ executeHandler:@"testAddParams" parameters:[NSArray array] error:&error];
  STAssertNil(desc, nil);
  STAssertNotNil(error, nil);
  error = nil;
  
  NSArray *args = [NSArray arrayWithObjects:
    [NSNumber numberWithInt:1],
    [NSNumber numberWithInt:2],
    nil];
  desc = [script_ executeHandler:@"testAddParams" parameters:args error:&error];
  STAssertNotNil(desc, [error description]);
  STAssertEquals([desc descriptorType], (DescType)typeSInt32, nil);
  STAssertEquals([desc int32Value], 3L, nil);

  args = [NSArray arrayWithObjects:
    @"foo",
    @"bar",
    nil];
  desc = [script_ executeHandler:@"testAddParams" parameters:args error:&error];
  STAssertNil(desc, [error description]);
  STAssertNotNil(error, nil);
  error = nil;
}

- (void)testFailures {
  NSDictionary *error = nil;
  NSAppleEventDescriptor *desc = [script_ executeHandler:@"noSuchTest" parameters:nil error:&error];
  STAssertNil(desc, nil);
  STAssertNotNil(error, nil);
  error = nil;

  desc = [script_ executeHandler:@"" parameters:[NSArray array] error:&error];
  STAssertNil(desc, nil);
  STAssertNotNil(error, nil);
  error = nil;
}

@end
