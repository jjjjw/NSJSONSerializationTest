//
//  NSJSONSerializationTestTests.m
//  NSJSONSerializationTestTests
//
//  Created by zjj on 1/26/13.
//  Copyright (c) 2013 Weber. All rights reserved.
//

#import "NSJSONSerializationTest.h"

@implementation NSJSONSerializationTest

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testMantissa1
{
    NSString *JSONPath = [[NSBundle bundleForClass:[self class]] pathForResource:@"float-test1" ofType:@"json"];
    NSData *responseData = [[NSData alloc] initWithContentsOfFile:JSONPath];
    NSError *JSONErr;
    NSDictionary *parsedData = [NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:&JSONErr];
    STAssertNotNil(parsedData, @"no error");
    STAssertNil(JSONErr, @"no error");
}

- (void)testMantissa2
{
    NSString *JSONPath = [[NSBundle bundleForClass:[self class]] pathForResource:@"float-test2" ofType:@"json"];
    NSData *responseData = [[NSData alloc] initWithContentsOfFile:JSONPath];
    NSError *JSONErr;
    NSDictionary *parsedData = [NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:&JSONErr];
    STAssertNotNil(parsedData, @"no error");
    STAssertNil(JSONErr, @"no error");
}

@end
