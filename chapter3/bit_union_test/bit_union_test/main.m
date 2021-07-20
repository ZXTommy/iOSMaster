//
//  main.m
//  bit_union_test
//
//  Created by zx on 2021/7/13.
//

#import <Foundation/Foundation.h>

/**
 * 不带位域的结构体
 */
struct ZXStruct1{
    BOOL c1;
    BOOL c2;
    BOOL c3;
    BOOL c4;
};

/**
 * 带位域的结构体
 */
struct ZXStruct2{
    BOOL c1:1;
    BOOL c2:1;
    BOOL c3:1;
    BOOL c4:1;
};

/**
 * 普通结构体
 */
struct ZXStruct3{
    char *name;
    char *nikeName;
    int      age;
    double   height;
};

/**
 * 联合体
 */
union ZXStruct4{
    char *name;
    char *nikeName;
    int      age;
    double   height;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
//        struct ZXStruct3 zx3;
//        printf("ZXStruct3占用 %lu 字节 \n",sizeof(zx3));
//        printf("ZXStruct3占用 name=%s nikeName=%s age=%d height=%f \n",zx3.name,zx3.nikeName,zx3.age,zx3.height);
//        zx3.name = "zhaoxin";
//        printf("ZXStruct3占用 name=%s nikeName=%s age=%d height=%f \n",zx3.name,zx3.nikeName,zx3.age,zx3.height);
//        zx3.nikeName = "Tommy";
//        printf("ZXStruct3占用 name=%s nikeName=%s age=%d height=%f \n",zx3.name,zx3.nikeName,zx3.age,zx3.height);
//        zx3.age = 20;
//        printf("ZXStruct3占用 name=%s nikeName=%s age=%d height=%f \n",zx3.name,zx3.nikeName,zx3.age,zx3.height);
//        zx3.height = 179.2;
//        printf("ZXStruct3占用 name=%s nikeName=%s age=%d height=%f \n",zx3.name,zx3.nikeName,zx3.age,zx3.height);
//        printf("-------------------------------------------------------------------------\n");
//        
       
        union ZXStruct4  zx4;
        printf("ZXStruct4占用 %lu 字节 \n",sizeof(zx4));
        printf("ZXStruct4占用 name=%s nikeName=%s age=%d height=%f \n",zx4.name,zx4.nikeName,zx4.age,zx4.height);
        zx4.name = "zhaoxin";
//        printf("zx4.name = %hX \n",zx4.name);
        printf("ZXStruct4占用 name=%s nikeName=%s age=%d height=%f \n",zx4.name,zx4.nikeName,zx4.age,zx4.height);
        zx4.nikeName = "Tommy";
        printf("ZXStruct4占用 name=%s nikeName=%s age=%d height=%f \n",zx4.name,zx4.nikeName,zx4.age,zx4.height);
        zx4.age = 20;
        printf("ZXStruct4占用 name=%s nikeName=%s age=%d height=%f \n",zx4.name,zx4.nikeName,zx4.age,zx4.height);
        zx4.height = 179.2;
        printf("ZXStruct4占用 name=%s nikeName=%s age=%d height=%f \n",(NULL==zx4.name),(NULL==zx4.nikeName),zx4.age,zx4.height);
        printf("-------------------------------------------------------------------------\n");
        
//        NSLog(@"ZXStruct3占用 %@ ",(struct)zx3);
//        NSLog(@"ZXStruct4占用 %@ ",zx4);
        
//        struct ZXStruct1 zx1;
//        struct ZXStruct2 zx2;
//
//        NSLog(@"ZXStruct1占用 %lu 字节",sizeof(zx1));
//        NSLog(@"ZXStruct2占用 %lu 字节",sizeof(zx2));
        
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
