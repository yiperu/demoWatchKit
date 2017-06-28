//
//  InterfaceController.m
//  Itau WatchKit Extension
//
//  Created by Henry AT on 6/27/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController ()

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *lblSaldo;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
  
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

-(void)mostrarSaldo {
  [self.lblSaldo setText:@"$ 1.000.000"];
}
- (IBAction)verSaldo {
  [self mostrarSaldo];
  
}

@end



