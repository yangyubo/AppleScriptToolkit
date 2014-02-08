//
//  NSAppleEventDescriptor+StringTest.m
//
//  Created by dmaclach on 6/6/07.
//  Copyright 2007 Google Inc. All rights reserved.
//

#import "NSAppleEventDescriptor+StringTest.h"
#import "NSAppleEventDescriptor+String.h"

@implementation NSAppleEventDescriptor_StringTest
- (void)testDescriptorWithString {
  // Test empty String
  NSAppleEventDescriptor *desc = [[NSString string] appleEventDescriptor];
  STAssertNotNil(desc, nil);
  
  // Test String
  NSString *string = @"Ratatouille!";
  desc = [string appleEventDescriptor];
  STAssertNotNil(desc, nil);
  NSString *string2 = [desc objectValue];
  STAssertNotNil(string2, nil);
  STAssertEqualObjects(string, string2, 
               @"string: %@\nstring: %@\ndesc: %@", 
               [string description], [string2 description], [desc description]);
  
}
@end
