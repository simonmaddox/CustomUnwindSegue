//
//  SMXCustomSegue.m
//  CustomUnwindSegue
//
//  Created by Simon Maddox on 28/05/2013.
//  Copyright (c) 2013 Simon Maddox. All rights reserved.
//

#import "SMXCustomSegue.h"

@implementation SMXCustomSegue

- (id) initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination
{
    if (self = [super initWithIdentifier:identifier source:source destination:destination]){
        _unwinding = NO;
    }
    
    return self;
}

- (void) perform
{
    UIViewController *sourceViewController = (UIViewController *) self.sourceViewController;
    UIViewController *destinationViewController = (UIViewController *) self.destinationViewController;
    
    if (self.isUnwinding){
        NSLog(@"Going Back");
        [sourceViewController dismissViewControllerAnimated:YES completion:nil];
    } else {
        NSLog(@"Going Forward");
        [sourceViewController presentViewController:destinationViewController animated:YES completion:nil];
    }
}

@end
