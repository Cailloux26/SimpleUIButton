//
//  MainViewController.m
//  SimpleUIButton
//
//  Created by Tanaka Koichi on 5/7/14.
//  Copyright (c) 2014 Tanaka Koichi. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView{
    //Creating a View
    CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
    UIView *contentView = [[UIView alloc] initWithFrame:applicationFrame];
    contentView.backgroundColor = [UIColor greenColor];
    self.view = contentView;
    
    //UIButtonTypeRoundedRect
    NSLog(@"self.view.frame.size.width = %f",self.view.frame.size.width);
	UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[btn1 setTitle:@"btn1" forState:UIControlStateNormal];
	btn1.frame = CGRectMake((self.view.frame.size.width - btn1.frame.size.width)/2, 10, btn1.frame.size.width, btn1.frame.size.height);
	[self.view addSubview:btn1];
    
	//UIButtonTypeDetailDisclosure
	UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
	[btn2 setTitle:@"btn2" forState:UIControlStateNormal];
	btn2.frame = CGRectMake((self.view.frame.size.width - btn2.frame.size.width)/2, 80, btn2.frame.size.width, btn2.frame.size.height);
	[self.view addSubview:btn2];
    
	//UIButtonTypeInfoLight or UIButtonTypeInfoDark
	UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeInfoLight];
	[btn3 setTitle:@"btn3" forState:UIControlStateNormal];
	btn3.frame = CGRectMake((self.view.frame.size.width - btn3.frame.size.width)/2, 150, btn3.frame.size.width, btn3.frame.size.height);
	[self.view addSubview:btn3];
    
	//UIButtonTypeInfoLight
	UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeContactAdd];
	[btn4 setTitle:@"btn4" forState:UIControlStateNormal];
	btn4.frame = CGRectMake((self.view.frame.size.width - btn4.frame.size.width)/2, 220, btn4.frame.size.width, btn4.frame.size.height);
	[self.view addSubview:btn4];
    
    //UIButtonTypeCustom
	UIButton *btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
	[btn5 setTitle:@"btn5" forState:UIControlStateNormal];
	btn5.titleLabel.font = [UIFont systemFontOfSize:14.0];
	btn5.frame = CGRectMake((self.view.frame.size.width - 150)/2, 290, 150, 40);
	[btn5 setBackgroundImage:[UIImage imageNamed:@"potrerohill.jpg"] forState:UIControlStateNormal];
	[self.view addSubview:btn5];
    
    //putting point image in UIButtonTypeRoundedRect
	UIButton *btn6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn6 setTitle:@"btn6" forState:UIControlStateNormal];
    [btn6 setTitle:@"btn6 Hightlight" forState:UIControlStateHighlighted];
    [btn6 setTitle:@"btn6 disabled" forState:UIControlStateDisabled];
    [btn6 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn6 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btn6 setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
	btn6.titleLabel.font = [UIFont systemFontOfSize:16.0];
	btn6.frame = CGRectMake((self.view.frame.size.width - 150)/2, 380, 150, 40);
	[btn6 setImage:[UIImage imageNamed:@"Cloud.png"] forState:UIControlStateNormal];
	//adjust a space between image and title
	UIEdgeInsets insets = btn6.imageEdgeInsets;
	insets.right = 30.0;
	btn6.imageEdgeInsets = insets;
	[self.view addSubview:btn6];
    
    //add action to btn5
    [btn5 addTarget:self action:@selector(doaction) forControlEvents:UIControlEventTouchUpInside];
    
    //add action with event to btn6
    [btn6 addTarget:self action:@selector(doactionwithevent:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn7 = [UIButton buttonWithType:UIButtonTypeCustom];
	[btn7 setTitle:@"btn7" forState:UIControlStateNormal];
	btn7.titleLabel.font = [UIFont systemFontOfSize:14.0];
	btn7.frame = CGRectMake((self.view.frame.size.width - 150)/2, 450, 150, 40);
	[btn7 setBackgroundImage:[UIImage imageNamed:@"potrerohill.jpg"] forState:UIControlStateNormal];
	[self.view addSubview:btn7];
    
    //add rectangle design to btn7
    CGSize imageSize = btn7.imageView.frame.size;
    //add space inside of btn7.  UIEdgeInsetsMake(up, left, down, right);
    btn7.imageEdgeInsets = UIEdgeInsetsMake(0.0, imageSize.width/2, 0.0, 0.0);
    btn7.clipsToBounds = YES;
    btn7.layer.cornerRadius = 15;
    btn7.layer.borderColor=[UIColor blackColor].CGColor;
    btn7.layer.borderWidth=2.0f;

 
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)doaction
{
    NSLog(@"did action");
}
- (void)doactionwithevent:(id)sender{
	UIButton *button = (UIButton*)sender;
	NSLog(@"you pushed :%@",button.currentTitle);
}

@end
