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
    // Do any additional setup after loading the view.
}

- (IBAction)editCreatureTapped:(UIButton *)sender {
    
    if (self.editing) {
        [self.editNameTextField setHidden:true];
        self.title = self.editNameTextField.text;
        sender.titleLabel.text = @"Edit";
        
    } else {
        [self.editNameTextField setHidden:false];
        sender.titleLabel.text = @"Done";
        
    }
}



@end
