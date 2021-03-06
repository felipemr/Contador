//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"


//esse e o contador

@implementation Contador {
    int boy;
    int girl;
}

static Contador *_instancia=nil;

+(Contador *)instancia{
    if (_instancia == nil) {
        _instancia=[[Contador alloc]init];
    }
    return _instancia;
}


-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
    }
    return self;
}

- (void)maisUmCueca {
    boy = boy + 1;
    [_delegate atualiza];
}
- (void)maisUmaGata {
    girl++;
    [_delegate atualiza];
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal{
    return [self getBoys]+[self getGirls];
}



@end

