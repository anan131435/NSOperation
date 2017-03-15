//
//  LoadOperation.m
//  OperationDemo
//
//  Created by 韩志峰 on 2017/3/14.
//  Copyright © 2017年 韩志峰. All rights reserved.
//

#import "LoadOperation.h"

@interface LoadOperation ()
@property (nonatomic, assign, getter=isFinished) BOOL finished;
@property (nonatomic, assign, getter=isExecuting) BOOL executing;
@end

@implementation LoadOperation
@synthesize finished = _finished,executing = _executing;
- (void)operationFinished{
    [self setFinished:YES];
    [self setExecuting:NO];
}
- (void)setFinished:(BOOL)finished{
    [self willChangeValueForKey:@"isFinished"];
    _finished = finished;
    [self didChangeValueForKey:@"finished"];
}

- (void)setExecuting:(BOOL)executing{
    [self willChangeValueForKey:@"isExecuting"];
    _executing = executing;
    [self didChangeValueForKey:@"isExecuting"];
}
@end
