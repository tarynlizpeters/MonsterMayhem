//
//  MagicalCreature.h
//  MonsterMayhem
//
//  Created by Taryn Parker on 1/19/16.
//  Copyright © 2016 Mobile Makers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MagicalCreature : NSObject

@property NSString *name;
@property NSString *details;
@property NSString *accessories;
@property UIImage *image;

-(instancetype) initWithName: (NSString *)name andDetails:(NSString *)details andImage:(UIImage *)images;


@end
