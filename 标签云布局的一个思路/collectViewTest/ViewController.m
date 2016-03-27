//
//  ViewController.m
//  collectViewTest
//
//  Created by Wangguibin on 16/3/27.
//  Copyright © 2016年 DDYS. All rights reserved.
//

#import "ViewController.h"
#import "MyCell.h"
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic,strong) NSArray *data;
@end



@implementation ViewController


- (NSArray *)data
{
    if (_data==nil) {

        _data =[[NSArray alloc]init];
    }

    return _data;
}


- (void)viewDidLoad {
    [super viewDidLoad];

//    测试数据
    NSArray *arr= @[@"世界经济",@"多岁的",@"八十八就是",@"干活",@"就是江苏省",@"合适的",@"咋地的"@"撒娇就啊是飒飒哈家啊啊",@"这个标签云布局"@"感觉还不错",@"是个不错的轮子",@"值得借鉴一下",@"###哈哈哈###"@"<#你想咋地#>",@"日了🐶了",@"二狗子",@"杀杀看啊就是解放洒家",@"二体育课刚回家看看(⊙o⊙)",@"嘻嘻嘻嘻嘻",@"都比逗逼陡壁斗笔逗比",@"无法可收拾的一对手.............",@"YES or NO",@"BOY",@"girl",@"SB",@"XIB"];
    self.data =arr ;



}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{

    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.data.count;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MyCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.myLabel.text=self.data[indexPath.row];

    return cell;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{

    return UIEdgeInsetsMake(5, 10, 5, 10);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 10;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{

    NSString *str = self.data[indexPath.row];
    CGSize detailSize = [str sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:25]}];

    return detailSize;
}



- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{

    NSString *str=self.data[indexPath.row];

    NSLog(@"%@",str);

}

-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}
@end
