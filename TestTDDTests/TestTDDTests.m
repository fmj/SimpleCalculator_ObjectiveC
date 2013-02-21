//
//  TestTDDTests.m
//  TestTDDTests
//
//  Created by Erik Thue on 2/20/13.
//  Copyright (c) 2013 Erik Thue. All rights reserved.
//

#import "TestTDDTests.h"


@implementation TestTDDTests
Calculator* calc;
- (void)setUp
{
    [super setUp];
    calc = [[Calculator alloc] init];
	
    }

- (void)tearDown
{
    // Tear-down code here.
    [super tearDown];
}

- (void)testEmptyString
{
	STAssertEquals([calc Add:@""],0 , @"no valid result returned");
}

- (void)testSimpleString
{
	STAssertEquals([calc Add:@"1"], 1, @"no valid result returned");
}

- (void) testDelimitedString
{
	STAssertEquals([calc Add:@"1,2"],3, @"Wrong value returned");
}

- (void) testDelimitedStringNewLine
{
	STAssertEquals([calc Add:@"1\n2\n4"],7, @"Wrong value returned");
}


- (void) testDelimitedStringMixed
{
	STAssertEquals([calc Add:@"1,2\n3"],6, @"Wrong value returned");
}

@end
