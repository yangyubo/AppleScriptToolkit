//
//  NSAppleEventDescriptor+NullTest.m
//
//  Created by dmaclach on 6/6/07.
//  Copyright 2007 Google Inc. All rights reserved.
//

#import "NSAppleEventDescriptor+NullTest.h"
#import "NSAppleEventDescriptor+Null.h"

@implementation NSAppleEventDescriptor_NullTest
- (void)testDescriptorWithNull {  
  // Test Null
  NSNull *null = [NSNull null];
  NSAppleEventDescriptor *desc = [null appleEventDescriptor];
  STAssertNotNil(desc, nil);
  NSNull *null2 = [desc objectValue];
  STAssertNotNil(null2, nil);
  NSNull *null3 = [desc nullValue];
  STAssertNotNil(null2, nil);
  STAssertEqualObjects(null, null2, 
               @"null: %@\null2: %@\ndesc: %@", 
               [null description], [null2 description], [desc description]);
  STAssertEqualObjects(null, null3, 
                       @"null: %@\null3: %@\ndesc: %@", 
                       [null description], [null3 description], [desc description]);
}
@end
