//
//  NSAppleEventDescriptor+ObjectTest.m
//
//  Created by dmaclach on 6/7/07.
//  Copyright 2007 Google Inc. All rights reserved.
//

#import "NSAppleEventDescriptor+ObjectTest.h"
#import "NSAppleEventDescriptor+Object.h"

@implementation NSAppleEventDescriptor_ObjectTest
- (void)testRegisterSelectorForTypesCount {
  // Weird edge casey stuff.
  // + (void)registerSelector:(SEL)selector forTypes:(DescType*)types count:(int)count
  // is tested heavily by the other NSAppleEventDescriptor+foo categories.
  DescType type;
  [NSAppleEventDescriptor registerSelector:nil forTypes:&type count:1];
  [NSAppleEventDescriptor registerSelector:@selector(retain) forTypes:nil count:1];
  [NSAppleEventDescriptor registerSelector:@selector(retain) forTypes:&type count:0];
}

- (void)testObjectValue {
  // - (void)testObjectValue is tested heavily by the other 
  // NSAppleEventDescriptor+foo categories.
  long data = 1;
  NSAppleEventDescriptor *desc = [NSAppleEventDescriptor descriptorWithDescriptorType:'v@#f'
                                                                                bytes:&data
                                                                               length:sizeof(data)];
  id value = [desc objectValue];
  STAssertNil(value, nil);
}

- (void)testAppleEventDescriptor {
  // - (NSAppleEventDescriptor*)appleEventDescriptor is tested heavily by the 
  // other NSAppleEventDescriptor+foo categories.
  NSAppleEventDescriptor *desc = [self appleEventDescriptor];
  STAssertNotNil(desc, nil); 
  STAssertEquals([desc descriptorType], (DescType)typeUnicodeText, nil);
}
@end
