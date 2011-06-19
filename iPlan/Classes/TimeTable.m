//
//  TimeTable.m
//  iPlan
//
//  Created by Yingbo Zhan on 11-6-18.
//  Copyright 2011 NUS. All rights reserved.
//

#import "TimeTable.h"


@implementation TimeTable
@synthesize name;
@synthesize modules;

-(id)initWithName:(NSString*)naming
{
	[super init];
	if(super !=nil)
	{
		name = naming;
		modules = [[NSMutableArray alloc]init];
	}
	return self;
}

-(id)initWithName:(NSString*)naming WithModules:(NSMutableArray*)module
{
	[super init];
	if(super !=nil)
	{
		name = naming;
		modules = module;
	}
	return self;
}

-(void)encodeWithCoder:(NSCoder *)coder{
	
	[coder encodeObject:name forKey:@"name"];
	[coder encodeObject:modules forKey:@"modules"];

}

-(id)initWithCoder:(NSCoder *)decoder{
	if([super init]!=nil){
		[self initWithName:[decoder decodeObjectForKey:@"name"] WithModules:[decoder decodeObjectForKey:@"modules"]];
	}
	return self;
}

-(void)dealloc{
	[name release];
	[modules release];
	[super dealloc];
}



@end
