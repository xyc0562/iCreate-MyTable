//
//  Module.m
//  iPlan
//
//  Created by Yingbo Zhan on 11-6-18.
//  Copyright 2011 NUS. All rights reserved.
//

#import "Module.h"


@implementation Module
@synthesize code;
@synthesize description;
@synthesize title;
@synthesize examinable;
@synthesize openBook;
@synthesize examDate;
@synthesize moduleCredit;
@synthesize prerequisite;
@synthesize preclusion;
@synthesize workload;
@synthesize remarks;
@synthesize lastUpdated;
@synthesize selected;
@synthesize moduleClassTypes;

-(id)initWithDescription:(NSString*)desp
  WithCode:(NSString*)codes
		WithTitle:(NSString*)titl
   WithExaminable:(NSString*)exam
	 WithOpenBook:(NSString*)open
	 WithExamDate:(NSString*)date
	   WithCredit:(NSString*)credit
 WithPrerequisite:(NSString*)prereq
   WithPreclusion:(NSString*)preclu
	 WithWorkload:(NSString*)work
	   WithRemark:(NSString*)remark
   WithLastUpdate:(NSString*)update
	 WithSelected:(NSString*)select
WithModuleClassType:(NSArray*)moduleClassType
{
	[super init];
	if(super !=nil)
	{
		code = codes;
		description = desp;
		title = titl;
		examinable = exam;
		openBook = open;
		examDate = date;
		moduleCredit = credit;
		prerequisite = prereq;
		preclusion = preclu;
		workload = work;
		remarks = remark;
		lastUpdated = update;
		selected = select;
		moduleClassTypes = moduleClassType;
	}
	return self;
}

-(void)encodeWithCoder:(NSCoder *)coder{
	[coder encodeObject:code forKey:@"code"];
	[coder encodeObject:description forKey:@"description"];
	[coder encodeObject:title forKey:@"title"];
	[coder encodeObject:examinable forKey:@"examinable"];
	[coder encodeObject:openBook forKey:@"openBook"];
	[coder encodeObject:examDate forKey:@"examDate"];
	[coder encodeObject:moduleCredit forKey:@"moduleCredit"];
	[coder encodeObject:prerequisite forKey:@"prerequisite"];
	[coder encodeObject:preclusion forKey:@"preclusion"];
	[coder encodeObject:workload forKey:@"workload"];
	[coder encodeObject:remarks forKey:@"remarks"];
	[coder encodeObject:lastUpdated forKey:@"lastUpdated"];
	[coder encodeObject:selected forKey:@"selected"];
	[coder encodeObject:moduleClassTypes forKey:@"moduleClassTypes"];
}

-(id)initWithCoder:(NSCoder *)decoder{
	if([super init]!=nil){
		[self initWithDescription:[decoder decodeObjectForKey:@"description"] 
						 WithCode:[decoder decodeObjectForKey:@"code"] 
						WithTitle:[decoder decodeObjectForKey:@"title"] 
				   WithExaminable:[decoder decodeObjectForKey:@"examinable"] 
					 WithOpenBook:[decoder decodeObjectForKey:@"openBook"] 
					 WithExamDate:[decoder decodeObjectForKey:@"examDate"] 
					   WithCredit:[decoder decodeObjectForKey:@"moduleCredit"] 
				 WithPrerequisite:[decoder decodeObjectForKey:@"prerequisite"] 
				   WithPreclusion:[decoder decodeObjectForKey:@"preclusion"] 
					 WithWorkload:[decoder decodeObjectForKey:@"workload"] 
					   WithRemark:[decoder decodeObjectForKey:@"remarks"] 
				   WithLastUpdate:[decoder decodeObjectForKey:@"lastUpdated"] 
					 WithSelected:[decoder decodeObjectForKey:@"selected"] 
			  WithModuleClassType:[decoder decodeObjectForKey:@"moduleClassTypes"]];
	}
	return self;
}

-(bool)checkSelected
{
	if([selected isEqual:@"YES"])
		return YES;
	else {
		return NO;
	}
}

-(void)dealloc{
	[code release];
	[title release];
	[examinable release];
	[openBook release];
	[examDate release];
	[moduleCredit release];
	[prerequisite release];
	[preclusion release];
	[workload release];
	[remarks release];
	[lastUpdated release];
	[selected release];
	[moduleClassTypes release];
	[super dealloc];
}



@end
