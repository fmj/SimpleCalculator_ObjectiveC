//
//  Calculator.m
//  TestTDD
//
//  Created by Erik Thue on 2/20/13.
//  Copyright (c) 2013 Erik Thue. All rights reserved.
//

#import "Calculator.h"


@implementation Calculator
NSArray* items;

-(int)Add:(NSString *)input
{
	items = [[NSArray alloc]initWithObjects:@",",@"\n",nil];
	if([input length] == 0)
	{
		return 0;
	}
	else if ([input rangeOfString:items[0]].length > 0 || [input rangeOfString:items[1]].length > 0)
	{
		NSMutableArray* numbers = [[NSMutableArray alloc] init];
		[numbers addObjectsFromArray:[input componentsSeparatedByString:items[0]]];
		int origCount = (int)[numbers count];
		for(int i = 0; i < origCount;i++)
		{
			if ([numbers[i] rangeOfString:items[1]].length > 0)
			{
				
				[numbers addObjectsFromArray:[numbers[i] componentsSeparatedByString:items[1]]];
				[numbers removeObjectAtIndex:i];
			}
		}
		int num = 0;
		for(NSString* s in numbers)
		{
			num += s.integerValue;
		}
		return num;
	}
	else
	{
		int num =[input intValue];
		return num;
	}
}
@end
