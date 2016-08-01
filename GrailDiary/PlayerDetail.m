//
//  PlayerDetail.m
//  GrailDiary
//
//  Created by Ross Gottschalk on 8/1/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "PlayerDetail.h"

@implementation PlayerDetail

+ (PlayerDetail *)playerDetailWithDictionary: (NSDictionary *)playerDetailDict;
{
    PlayerDetail *aPlayer = nil;
    if (playerDetailDict)
    {
        aPlayer = [[PlayerDetail alloc] init];
        aPlayer.name = [playerDetailDict objectForKey:@"name"];
        aPlayer.position = [playerDetailDict objectForKey:@"position"];
        aPlayer.team = [playerDetailDict objectForKey:@"team"];
    }
    return aPlayer;
}

@end
