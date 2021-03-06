//
//  AllSectionTopViewController.h
//  SBBS_xiang
//
//  Created by apple on 14-4-4.
//  Copyright (c) 2014年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFNetworking.h"
#import "Topic.h"
#import "MJRefresh.h"

@protocol AllSectionsTopicsDelegate <NSObject>

-(void)pushToNextViewWithValue:(Topic *)topic;

@end

@interface AllSectionTopViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,MJRefreshBaseViewDelegate>

@property (nonatomic, retain) UITableView *allTopicTableView;

@property (nonatomic, retain) MJRefreshHeaderView *headerView;

@property (nonatomic, retain) NSMutableArray *allTopicsArr;

@property (nonatomic, strong) NSMutableArray *sectionsArr;

@property (nonatomic, strong) NSArray *colorArr;

@property (nonatomic, retain) Topic *selectTopic;

@property (nonatomic, assign) id delegate;

@end
