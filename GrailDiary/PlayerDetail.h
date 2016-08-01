//
//  PlayerDetail.h
//  GrailDiary
//
//  Created by Ross Gottschalk on 8/1/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerDetail : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *position;
@property (nonatomic) NSString *team;

+ (PlayerDetail *)playerDetailWithDictionary: (NSDictionary *)playerDetailDict;

@end
