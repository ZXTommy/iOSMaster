//
//  main.m
//  MemoryTranslation
//
//  Created by zx on 2021/8/20.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        //普通类型的内存地址
        int value  = 10;
        int a = value;
        int b = value;
        NSLog(@"\n value的值: %d value的地址：%p",value,&value);
        NSLog(@"\n a的值是：%d 地址是：%p \n b的值是：%d 地址是：%p",a,&a,b,&b);
        
        //指针类型的内存地址
        NSObject *aObjc = [[NSObject alloc]init];
        NSObject *bObjc = [[NSObject alloc]init];
        NSLog(@"\n aObjc的值是：%@ 地址是：%p \n aObjc的值是：%@ 地址是：%p",aObjc,&aObjc,bObjc,&bObjc);
        
        //数组类型的内存地址
        int array[10] = {1,2,3,4,5,6,7,8,9,10};
        //数组类型的地址就是数组首位元素的地址，通过找到首位地址后再平移找到其他元素
        NSLog(@"\n array的地址是：%p \n array首位的地址是：%p \n array第二位的地址是：%p",&array,&array[0],&array[1]);
        
        //内存平移测试
        int *point = array;
        for (int i=0; i<10; i++) {
            int value = *(point+i); //内存平移 +i相等于移动i个类型大小，即int类型占4个字节，i=1 则内存移动4个；
            NSLog(@"value[%d] = %d  地址：%p ",i,value,&(*(point+i)));
        }
    }
    return 0;
}
