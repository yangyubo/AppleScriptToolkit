//
//  NSAppleEventDescriptor+NumberTest.m
//
//  Created by dmaclach on 6/6/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "NSAppleEventDescriptor+NumberTest.h"
#import "NSAppleEventDescriptor+Number.h"
#import <stdlib.h>
#import <time.h>

@implementation NSAppleEventDescriptor_NumberTest
- (void)testDescriptorWithNumberAndNumberValue {
  // There's really no good way to make this into a loop sadly due
  // to me having to pass a pointer of bytes to NSInvocation as an argument.
  // I want the compiler to convert my int to the appropriate type.
  
  NSNumber *original = [NSNumber numberWithBool:YES];
  STAssertNotNil(original, @"Value: YES");
  NSAppleEventDescriptor *desc = [original appleEventDescriptor]; 
  STAssertNotNil(desc, @"Value: YES");
  id returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: YES");
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: YES");
  STAssertEqualObjects(original, returned, @"Value: YES");
  
  original = [NSNumber numberWithBool:NO];
  STAssertNotNil(original, @"Value: NO");
  desc = [original appleEventDescriptor]; 
  STAssertNotNil(desc, @"Value: NO");
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: NO");
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: NO");
  STAssertEqualObjects(original, returned, @"Value: NO");
  
  srand(time(nil)); 
  double value = rand();
  
  original = [NSNumber numberWithChar:value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor]; 
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);

  value = rand();
  original = [NSNumber numberWithUnsignedChar:(char)value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);

  value = rand();
  original = [NSNumber numberWithShort:value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);
  
  value = rand();
  original = [NSNumber numberWithUnsignedShort:value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);
  
  value = rand();
  original = [NSNumber numberWithInt:(int)value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);
  
  value = rand();
  original = [NSNumber numberWithUnsignedInt:(unsigned int)value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);
  
  value = rand();
  original = [NSNumber numberWithLong:(long)value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);
  
  value = rand();
  original = [NSNumber numberWithUnsignedLong:(unsigned long)value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);
  
  value = rand();
  original = [NSNumber numberWithLongLong:value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);
  
  value = rand();
  original = [NSNumber numberWithUnsignedLongLong:value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);
  
  value = rand();
  original = [NSNumber numberWithFloat:(float)value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);

  value = rand();
  original = [NSNumber numberWithDouble:value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);

  value = rand();
  original = [NSNumber numberWithBool:value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);
  
  value = NAN;
  original = [NSNumber numberWithDouble:value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);

  value = INFINITY;
  original = [NSNumber numberWithDouble:value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);
 
  value = -0.0;
  original = [NSNumber numberWithDouble:value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);

  value = -INFINITY;
  original = [NSNumber numberWithDouble:value];
  STAssertNotNil(original, @"Value: %g", value);
  desc = [original appleEventDescriptor];
  STAssertNotNil(desc, @"Value: %g", value);
  returned = [desc objectValue];
  STAssertNotNil(returned, @"Value: %g", value);
  STAssertTrue([returned isKindOfClass:[NSNumber class]], @"Value: %g", value);
  STAssertEqualObjects(original, returned, @"Value: %g", value);
}

- (void)testDescriptorWithDoubleAndDoubleValue {
  srand(time(nil)); 
  for (int i = 0; i < 1000; ++i) {
    double value1 = rand();
    double value2 = rand();
    double value = value1 / value2;
    NSAppleEventDescriptor *desc = [NSAppleEventDescriptor descriptorWithDouble:value];
    STAssertNotNil(desc, @"Value: %g", value);
    double returnedValue = [desc doubleValue];
    STAssertEquals(value, returnedValue, @"Value: %g", value);
  }
  
  double specialCases[] = { 0.0f, __DBL_MIN__, __DBL_EPSILON__, INFINITY, NAN };
  for (unsigned int i = 0; i < sizeof(specialCases) / sizeof(double); ++i) {
    double value = specialCases[i];
    NSAppleEventDescriptor *desc = [NSAppleEventDescriptor descriptorWithDouble:value];
    STAssertNotNil(desc, @"Value: %g", value);
    double returnedValue = [desc doubleValue];
    STAssertEquals(value, returnedValue, @"Value: %g", value);
  }
}

@end
