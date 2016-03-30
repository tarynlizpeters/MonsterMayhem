//
//  CreatureViewController.m
//  MonsterMayhem
//
//  Created by Taryn Parker on 1/19/16.
//  Copyright © 2016 Mobile Makers. All rights reserved.
//

#import "CreatureViewController.h"


@interface CreatureViewController ()
@property (weak, nonatomic) IBOutlet UITextField *editNameTextField;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UILabel *accessoryLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.editNameTextField setHidden:true];
    self.title = self.tempCreature.name;
    self.detailLabel.text = self.tempCreature.details;
    self.imageView.image = self.tempCreature.image;
    


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
