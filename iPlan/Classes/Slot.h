//
//  Slot.h
//  iPlan
//
//  Created by Yingbo Zhan on 11-6-18.
//  Copyright 2011 NUS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConstantFile.h"

@interface Slot : NSObject {

}

@property(nonatomic,readonly) NSString* venue;
@property(nonatomic,readonly) NSNumber* day;
@property(nonatomic,readonly) NSNumber* startTime;
@property(nonatomic,readonly) NSNumber* endTime;
@end
