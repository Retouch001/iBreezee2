//
//  MIRColorCenter.h
//  iBreezee2
//
//  Created by MIRACLE on 2017/8/9.
//  Copyright © 2017年 miracle. All rights reserved.
//

#ifndef MIRColorCenter_h
#define MIRColorCenter_h



#define MIRColorHex(Hex) [UIColor colorWithRed:((float)((Hex & 0xFF0000) >> 16))/255.0 green:((float)((Hex & 0xFF00) >> 8))/255.0 blue:((float)(Hex & 0xFF))/255.0 alpha:1.0]

#define MIRWhiteColor                        MIRColorHex(0xFFFFFF)
#define MIRBlackColor                        MIRColorHex(0x000000)

#define MIRThemeColor                        MIRColorHex(0xFF2856)



#endif /* MIRColorCenter_h */
