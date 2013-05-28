//
//  SMXSecondViewController.m
//  CustomUnwindSegue
//
//  Created by Simon Maddox on 28/05/2013.
//  Copyright (c) 2013 Simon Maddox. All rights reserved.
//

#import "SMXSecondViewController.h"

@implementation SMXSecondViewController

- (IBAction)goBack:(id)sender
{
    [self performSegueWithIdentifier:@"GoBack" sender:self];
}

@end
