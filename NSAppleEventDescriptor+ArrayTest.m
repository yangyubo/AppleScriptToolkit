//
//  NSAppleEventDescriptor+ArrayTest.m
//
//  Created by dmaclach on 6/6/07.
//  Copyright 2007 Google Inc. All rights reserved.
//

#import "NSAppleEventDescriptor+ArrayTest.h"
#import "NSAppleEventDescriptor+Array.h"

@implementation NSAppleEventDescriptor_ArrayTest
- (void)testDescriptorWithArrayAndArrayValue {
  // Test empty array
  NSAppleEventDescriptor *desc = [[NSArray array] appleEventDescriptor];
  STAssertNotNil(desc, nil);
  STAssertEquals([desc numberOfItems], 0, nil);
  
  // Complex array
  NSArray *array = [NSArray arrayWithObjects:
    [NSNumber numberWithInt:4],
    @"foo",
    [NSNumber numberWithInt:2], 
    @"bar",
    [NSArray arrayWithObjects:
      @"bam",
      [NSArray arrayWithObjects:
        [NSNumber numberWithFloat:4.2f],
        nil],
      nil],
    nil];
  STAssertNotNil(array, nil);
  desc = [array appleEventDescriptor];
  STAssertNotNil(desc, nil);
  NSArray *array2 = [desc objectValue];
  STAssertNotNil(array2, nil);
  NSArray *array3 = [desc arrayValue];
  STAssertNotNil(array3, nil);
  STAssertTrue([array isEqualToArray:array2], 
               @"array: %@\narray2: %@\ndesc: %@", 
               [array description], [array2 description], [desc description]);
  STAssertTrue([array2 isEqualToArray:array3], 
               @"array: %@\narray2: %@\ndesc: %@", 
               [array description], [array2 description], [desc description]);
  
  // Test a single object
  array = [NSArray arrayWithObject:@"foo"];
  desc = [NSAppleEventDescriptor descriptorWithString:@"foo"];
  STAssertNotNil(desc, nil);
  array2 = [desc arrayValue];
  STAssertTrue([array isEqualToArray:array2], 
               @"array: %@\narray2: %@\ndesc: %@", 
               [array description], [array2 description], [desc description]);
}
@end
