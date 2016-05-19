//
//  mainViewController.m
//  vendingmachine
//
//  Created by User on 2016. 5. 13..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "mainViewController.h"
#import "CustomButton.h"
#import "TrayBox.h"
#import "DrinkObject.h"
#import "Casher.h"

@interface mainViewController () <CustomButtonDelegate>
//메뉴 영역
@property (nonatomic, weak) IBOutlet UIView *menuView;
// 500원 영역
@property (nonatomic, weak)IBOutlet UIView *input500CoinArea;
@property (nonatomic, weak)UILabel *title500CoinLb;
@property (nonatomic, weak)UIButton *add500CoinBtn;
//100원 영영
@property (nonatomic, weak)IBOutlet UIView *input100CoinArea;
@property (nonatomic, weak)UILabel *title100CoinLb;
@property (nonatomic, weak)UIButton *add100CoinBtn;
//돈 컨트롤(남은돈표시 , 반환버튼)
@property (nonatomic, weak)IBOutlet UIView *moneyControlArea;
@property (nonatomic, weak)UILabel *moneyTitleLb;
@property (nonatomic, weak)UITextField *remainMoneyShowTF;
@property (nonatomic, weak)UIButton *moneyChangeBtn;
//상태 표시화면
@property (nonatomic, weak)UITextView *displayView;

@property (nonatomic) NSMutableArray *drinkBtList;
@property (nonatomic) TrayBox *traybox;
@property (nonatomic) Casher *casher;
@end

// 여기까지 찾던 중 remainMoneyShowTF의 일부에서 "Money"의 M이 소문자로 되었던 것을 고침

@implementation mainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.drinkBtList = [[NSMutableArray alloc] initWithCapacity:4];
    self.traybox =[[TrayBox alloc]init];
    self.casher =[[Casher alloc]init];
    [self creatView];
    [self updateLayout];
   
}
//
//-(void) viewDidAppear:(BOOL)amimated{
//    [super viewDidAppear:amimated];
//    [self creatView];
//    [self updateLayout];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//유아이 객체 생성
- (void) creatView{
//    
//    UIView *menuView = [[UIView alloc]init];
//    [menuView setBackgroundColor:[UIColor clearColor]];
//    [self.view addSubview:menuView];
//    self.menuView =menuView;
    {
        for (int i= 0; i< maximumDrinkCount; i++){
           DrinkObject *drinkData = [self.traybox.drinkinds objectAtIndex:i];
            
            CustomButton *drinkBtn = [[CustomButton alloc] init];
           
            drinkBtn.tag = i;
            drinkBtn.delegate = self;
            [drinkBtn setTitle: drinkData.name];
            
            [drinkBtn setImageName:[NSString stringWithFormat:@"painting%d", i+1]];
            [self.menuView addSubview:drinkBtn];
            [self.drinkBtList addObject:drinkBtn];
        }
        
    }
    
//    UIView *input500CoinArea = [[UIView alloc]init];
//    [input500CoinArea setBackgroundColor:[UIColor clearColor]];
//    [self.view addSubview:input500CoinArea];
//    self.input500CoinArea =input500CoinArea;
    {
        UILabel *title500CoinLb=[[UILabel alloc]init];
        title500CoinLb.text =@"500원";
        title500CoinLb.textColor = [UIColor blackColor];
        title500CoinLb.textAlignment = NSTextAlignmentRight;
        [self.input500CoinArea addSubview:title500CoinLb];
        self.title500CoinLb = title500CoinLb;
        
        UIButton *add500coinBtn =[UIButton buttonWithType:UIButtonTypeContactAdd];
        add500coinBtn.tag = 500;
        [add500coinBtn addTarget: self
                          action:@selector(onTouchupInsideAddCoin:)
                forControlEvents:UIControlEventTouchUpInside ];
         [self.input500CoinArea addSubview:add500coinBtn];
         self.add500CoinBtn = add500coinBtn;
        
    }
//    UIView *input100CoinArea = [[UIView alloc]init];
//    [input100CoinArea setBackgroundColor:[UIColor clearColor]];
//    [self.view addSubview:input100CoinArea];
//    self.input100CoinArea =input100CoinArea;
    {
        UILabel *title100CoinLb=[[UILabel alloc]init];
        title100CoinLb.text =@"100원";
        title100CoinLb.textColor = [UIColor blackColor];
        title100CoinLb.textAlignment = NSTextAlignmentRight;
        [self.input100CoinArea addSubview:title100CoinLb];
        self.title100CoinLb = title100CoinLb;
        
        UIButton *add100CoinBtn =[UIButton buttonWithType:UIButtonTypeContactAdd];
        add100CoinBtn.tag = 100;
        [add100CoinBtn addTarget: self
                          action:@selector(onTouchupInsideAddCoin:)
                forControlEvents:UIControlEventTouchUpInside ];
        [self.input100CoinArea addSubview:add100CoinBtn];
        self.add100CoinBtn = add100CoinBtn;
        
    }

    
//    UIView *moneyControlArea = [[UIView alloc]init];
//    [moneyControlArea setBackgroundColor:[UIColor clearColor]];
//    [self.view addSubview:moneyControlArea];
//    self.moneyControlArea =moneyControlArea;
    {
        UILabel *moneyTitleLb = [[UILabel alloc]init];
        moneyTitleLb.text =@"Money:";
        moneyTitleLb.textColor = [UIColor blackColor];
        moneyTitleLb.textAlignment = NSTextAlignmentRight;
        [self.moneyControlArea addSubview:moneyTitleLb];
        self.moneyTitleLb = moneyTitleLb;
        
        UITextField *remainMoneyShowTF = [[UITextField alloc] init];
        remainMoneyShowTF.userInteractionEnabled =NO;
        remainMoneyShowTF.borderStyle = UITextBorderStyleLine;
        remainMoneyShowTF.textAlignment = NSTextAlignmentRight;
        [self.moneyControlArea addSubview:remainMoneyShowTF];
        self.remainMoneyShowTF = remainMoneyShowTF;
    
        //잔돈반환 버튼
        UIButton *moneyChangeBtn = [[UIButton alloc] init];
        [moneyChangeBtn setTitle:@"반환" forState:UIControlStateNormal];
        [moneyChangeBtn addTarget:self action:@selector(onTouchupInsideMoneyChangeBtn:) forControlEvents:UIControlEventTouchUpInside];
        [moneyChangeBtn setTitleColor:[UIColor blackColor]forState: UIControlStateNormal];
        [moneyChangeBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        
        [self.moneyControlArea addSubview:moneyChangeBtn];
        self.moneyChangeBtn =moneyChangeBtn;
        
        
    }
    
    
    
    UITextView *displayView = [[UITextView alloc]init];
    [displayView setBackgroundColor:[UIColor grayColor]];
    [displayView setTextColor:[UIColor whiteColor]];
    displayView.editable =NO;
    [self.view addSubview:displayView];
    self.displayView =displayView;
}

//UI 레이아웃 수정
-(void)updateLayout{
    const CGFloat SIDE_MARGIN = 30.f;//상수라 구분하기 쉽게 대문자를 사용한건가요?
    NSInteger offsetY = 20;
    
    
    
    [self.menuView setFrame:CGRectMake(SIDE_MARGIN, offsetY, self.view.frame.size.width - SIDE_MARGIN*2,370)];
    offsetY += self.menuView.frame.size.height +10;
    {
        CGSize drinkBtnSize = CGSizeMake(140, 175);
        for(int i=0; i<self.drinkBtList.count ; i++ ){
            NSInteger row = i/2;
            NSInteger col = i%2;
            CustomButton *drinkBtn = self.drinkBtList[i];
            [drinkBtn setFrame:CGRectMake(10+col*(drinkBtnSize.width + 20), row*(drinkBtnSize.height + 20), drinkBtnSize.width,drinkBtnSize.height)];
            [drinkBtn updateLayout];
        }
    }
    
    [self.input500CoinArea setFrame:CGRectMake(SIDE_MARGIN, offsetY, self.view.frame.size.width - SIDE_MARGIN*2,30)];
    offsetY += self.input500CoinArea.frame.size.height ;
    {
        [self.title500CoinLb setFrame:CGRectMake(0, 0, 265, self.input500CoinArea.frame.size.height)];
        [self.add500CoinBtn setFrame:CGRectMake(270, 0, 30, 30)];
    }
    [self.input100CoinArea setFrame:CGRectMake(SIDE_MARGIN, offsetY, self.view.frame.size.width - SIDE_MARGIN*2,30)];
    offsetY += self.input100CoinArea.frame.size.height +10;
    {
        [self.title100CoinLb setFrame:CGRectMake(0, 0, 265, self.input100CoinArea.frame.size.height )];
        [self.add100CoinBtn setFrame:CGRectMake(270, 0, 30, 30)];

    }
    [self.moneyControlArea setFrame:CGRectMake(SIDE_MARGIN, offsetY, self.view.frame.size.width - SIDE_MARGIN*2,30)];
    offsetY += self.moneyControlArea.frame.size.height +10;
    {
        [self.moneyTitleLb setFrame:CGRectMake(0, 0, 61, 30)];
        [self.remainMoneyShowTF setFrame:CGRectMake(63, 0, 200, 30)];
        [self.moneyChangeBtn setFrame:CGRectMake(270, 0, 35, 30)];
        

    }
    [self.displayView setFrame:CGRectMake(SIDE_MARGIN, offsetY, self.view.frame.size.width - SIDE_MARGIN*2,145)];
    offsetY += self.displayView.frame.size.height ;

}

//action
-(void)didSelecteCustomButton:(nullable CustomButton *)customBtn
{
    DrinkObject *drinkObj = [self.traybox.drinkinds objectAtIndex:customBtn.tag];
    
    if ([self.casher buyDrink: drinkObj])
    {
        NSString *succesMsg =[NSString stringWithFormat:@"%@ 1개가 있습니다.\n",drinkObj.name];
        [self.displayView setText:[self .displayView.text stringByAppendingString:succesMsg]];
        [self.remainMoneyShowTF setText:[NSString stringWithFormat:@"%zd",(long)self.casher.inputMoney]];
    }else{
        [self.displayView setText:[self.displayView.text stringByAppendingString:@"잔액이 부족합니다.\n"]];
    }
}

-(void)onTouchupInsideAddCoin:(UIButton *)sender {
    NSInteger tag =sender.tag;
    if(tag ==100){
        [self.casher addCoinin100];
    }else if (tag == 500){
        [self.casher addCoinin500];
    }else{
    NSLog(@"tag 값이 잘못 되었습니다.");
    }
    
  
    [self.remainMoneyShowTF setText:[NSString stringWithFormat:@"%zd",self.casher.inputMoney]];
}
-(IBAction)onTouchupInsideMoneyChangeBtn:(UIButton*)sender{

    NSDictionary *coinDic =[self.casher changemoney];
    NSNumber *coin500Count = coinDic[@"500"];
    NSNumber *coin100Count = coinDic[@"100"];
    NSInteger changemoney = (500*coin500Count.integerValue)+(100*coin100Count.integerValue);
    //changemoney 가 오류라고 생각해서 고칠려고 했지만 고치면 느낌표가 뜨는데 이유를 모르겠어서 방치함.
    
    //남은돈 표시
    [self.remainMoneyShowTF setText:[NSString stringWithFormat:@"%zd",(long)self.casher.inputMoney]];
    
    NSString *changeMsg = [NSString stringWithFormat:@"거스름돈은 %ld 입니다.(500원 동전 %@개, 100원 동전 %@개)\n",changemoney,coin500Count,coin100Count];
    self.displayView.text = [self.displayView.text stringByAppendingString:changeMsg];
    
}
//문법확인하는 곳에는 msg의 m도 소문자로 쓰라고 되어있는데 그게 두개의 단어가 연결됬을때도 꼭 소문자로 써야하는지는 의문스러움



@end
