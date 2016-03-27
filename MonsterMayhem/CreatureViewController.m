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
@property NSString *details;


@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [self.editNameTextField setHidden:true];
    [super viewDidLoad];
    self.detailsLabel.text = self.details;

}

    
- (IBAction)editCreatureButton:(UIBarButtonItem *)sender {

    if (self.editing) {
        [self.editNameTextField setHidden:true];
        self.navigationItem.title = self.editNameTextField.text;
        self.tempCreature.name = self.navigationItem.title;
        sender.title = @"Edit";
        self.editing = false;
    //    NSLog(sender.title);
        
    } else {
        self.editing = true;
        [self.editNameTextField setHidden:false];
        sender.title = @"Done";
      //  NSLog(sender.title);

    }
}


-(void)unwindForSegue:(UIStoryboardSegue *)unwindSegue towardsViewController:(UIViewController *)subsequentVC {
    ViewController *dvc = unwindSegue.destinationViewController;
    dvc.tempCreature.name = self.tempCreature.name;
    
    
}


@end
