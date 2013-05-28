//
//  SMXViewController.m
//  CustomUnwindSegue
//
//  Created by Simon Maddox on 28/05/2013.
//  Copyright (c) 2013 Simon Maddox. All rights reserved.
//

#import "SMXViewController.h"
#import "SMXCustomSegue.h"

@implementation SMXViewController

- (IBAction)goBack:(UIStoryboardSegue *)segue
{
    
}

- (UIStoryboardSegue *) segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier
{
    SMXCustomSegue *segue = [[SMXCustomSegue alloc] initWithIdentifier:identifier source:fromViewController destination:toViewController];
    segue.unwinding = YES;
    return segue;
}

@end
