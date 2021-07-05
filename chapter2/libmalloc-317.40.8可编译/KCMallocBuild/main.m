//
//  main.m
//  KCMallocBuild
//
//  Created by cooci on 2021/4/25.
//


#import <Foundation/Foundation.h>
#import <malloc/malloc.h>
#import "ZXPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

		void *p = calloc(1, 40);
		NSLog(@"%lu",malloc_size(p));
	
		
		
		
		
		
		
		
		
		ZXPerson *zxp = [ZXPerson alloc];
		zxp.zxName      = @"zhaoxin";
		zxp.zxAge       = 30;
		zxp.zxSex       = 1;
		zxp.zxHieght    = 180.0;
		zxp.zxNikeName  = @"Tommy";
		
    }
    return 0;
}









// 堆 对象的内存 16字节对齐
// 成员变量 8字节对齐 结构内部
// 对象 对象 16字节

// 野指针 内存访问
