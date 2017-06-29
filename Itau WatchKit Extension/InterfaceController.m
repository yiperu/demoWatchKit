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
@property (nonatomic) Boolean flag;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *refButton;

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

-(void)ocultarSaldo {
  [self.lblSaldo setText:@""];
}

- (IBAction)verSaldo {

  if (self.flag) {    
    [self.refButton setTitle:@"Mostrar Saldo CC"];
    self.flag = 0;
    [self ocultarSaldo];
    
  } else {
    
    [self.refButton setTitle:@"Ocultar Saldo CC"];
    self.flag = 1;
    
    [self mostrarSaldo];
    
  }
  

  
}

@end



