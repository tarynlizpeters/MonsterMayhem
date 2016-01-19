//
//  CreatureViewController.m
//  MonsterMayhem
//
//  Created by Taryn Parker on 1/19/16.
//  Copyright © 2016 Mobile Makers. All rights reserved.
//

#import "CreatureViewController.h"
#import "MagicalCreature.h"

@interface CreatureViewController ()
@property (weak, nonatomic) IBOutlet UITextField *editNameTextField;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [self.editNameTextField setHidden:true];
    [super viewDidLoad];

}
- (IBAction)editCreatureButton:(UIBarButtonItem *)sender {

    if (self.editing) {
        [self.editNameTextField setHidden:true];
        self.navigationItem.title = self.editNameTextField.text;
        sender.title = @"Edit";
        self.editing = false;
        NSLog(sender.title);
        
    } else {
        self.editing = true;
        [self.editNameTextField setHidden:false];
        sender.title = @"Done";
        NSLog(sender.title);

    }
}



@end
