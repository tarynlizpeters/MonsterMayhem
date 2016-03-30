//
//  MagicalCreature.m
//  MonsterMayhem
//
//  Created by Taryn Parker on 1/19/16.
//  Copyright © 2016 Mobile Makers. All rights reserved.
//

#import "MagicalCreature.h"


@implementation MagicalCreature
-(instancetype) initWithName: (NSString *)name andDetails:(NSString *)details andImage:(UIImage *)images {
    
    self = [super init];
    if (self)
    self.name = name;
    self.details = details;
    self.image = images;
    return self;
}

@end
