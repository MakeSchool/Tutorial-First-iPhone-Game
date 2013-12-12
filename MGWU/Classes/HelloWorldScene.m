//
//  HelloWorldScene.m
//  MGWU
//
//  Created by Benjamin Encz on 11/12/13.
//  Copyright MakeGamesWithUs 2013. All rights reserved.
//
// -----------------------------------------------------------------------

#import "HelloWorldScene.h"

@implementation HelloWorldScene

CCSprite *ship1;
CCSprite *ship2;

+ (HelloWorldScene *)scene
{
    return [[self alloc] init];
}

- (id)init
{
    if (self = [super init])
    {
        //Initialize the ship sprite with a specific file, the ship image
        ship1 = [CCSprite spriteWithImageNamed: @"ship.png"];
        
        //Set the ship's position. (0,0) is at the bottom left
        ship1.position = ccp( 50, 200 );
        
        //Initialize the other sprite
        ship2 = [CCSprite spriteWithImageNamed: @"ship.png"];
        
        //Set the other ship's position
        ship2.position = ccp( 100, 50 );
        
        //Add the ships to the game
        [self addChild:ship1];
        [self addChild:ship2];
    }
    
	return self;
}

@end