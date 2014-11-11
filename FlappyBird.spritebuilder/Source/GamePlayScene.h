//
//  GamePlayScene.h
//  FlappyBird
//
//  Created by Gerald on 2/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"
#import "Character.h"

typedef NS_ENUM(NSInteger, DrawingOrder) {
    DrawingOrderPipes,
    DrawingOrderGround,
    DrawingOrderHero
};

@interface GamePlayScene : CCNode <CCPhysicsCollisionDelegate>
{
    // define variables here;
    Character* character;       // will store Flappy Bird instance
    CCPhysicsNode* physicsNode; // will reference a node that simulates physics
                                // a "node" is a single unit in a hierarchy (kind of like OO inheritance)
                                // a parent node can have 1 or more child nodes
                                // child nodes are influenced by parent node, but parent isn't influenced by child
                                // earth <- car <- driver, if move car, it updates position of driver, but not earth
    
}

-(void) initialize;
-(void) addObstacle;
-(void) showScore;

@end
