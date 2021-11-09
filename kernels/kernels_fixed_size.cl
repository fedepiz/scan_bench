

__kernel
void kernel_25600000_32_0_2(global float* restrict output, const global float* restrict e763){
local float x1073[16];

local float x1087[8];

local float x1050[4];

local float x1107[2];

local float x1027[1];

local float x1127[1];

local float x1004[2];

local float x1147[4];

local float x981[8];

local float x1167[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_1195 = get_group_id(0); wg_id_1195 < 800000; wg_id_1195 = wg_id_1195 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_1196 = get_local_id(0); l_id_1196 < 16; l_id_1196 = l_id_1196 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1180;
        x1180 = 0.0f;
        /* unrolling loop of 2 */
        x1180 = x1180 + e763[(2 * l_id_1196) + (32 * wg_id_1195)];
        x1180 = x1180 + e763[(1 + (2 * l_id_1196)) + (32 * wg_id_1195)];
        x1167[l_id_1196] = x1180;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1197 = get_local_id(0); l_id_1197 < 8; l_id_1197 = l_id_1197 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1160;
        x1160 = 0.0f;
        /* unrolling loop of 2 */
        x1160 = x1160 + x1167[2 * l_id_1197];
        x1160 = x1160 + x1167[1 + (2 * l_id_1197)];
        x1147[l_id_1197] = x1160;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1198 = get_local_id(0); l_id_1198 < 4; l_id_1198 = l_id_1198 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1140;
        x1140 = 0.0f;
        /* unrolling loop of 2 */
        x1140 = x1140 + x1147[2 * l_id_1198];
        x1140 = x1140 + x1147[1 + (2 * l_id_1198)];
        x1127[l_id_1198] = x1140;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1199 = get_local_id(0); l_id_1199 < 2; l_id_1199 = l_id_1199 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1120;
        x1120 = 0.0f;
        /* unrolling loop of 2 */
        x1120 = x1120 + x1127[2 * l_id_1199];
        x1120 = x1120 + x1127[1 + (2 * l_id_1199)];
        x1107[l_id_1199] = x1120;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1200 = get_local_id(0); l_id_1200 < 1; l_id_1200 = l_id_1200 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1100;
        x1100 = 0.0f;
        /* unrolling loop of 2 */
        x1100 = x1100 + x1107[2 * l_id_1200];
        x1100 = x1100 + x1107[1 + (2 * l_id_1200)];
        x1087[l_id_1200] = x1100;
      }
      
    }
    
    /* oclScanSeq */
    {
      float x1083;
      x1083 = 0.0f;
      /* unrolling loop of 0 */
      x1073[0] = x1083;
    }
    
    /* mapLocal */
    for (int l_id_1201 = get_local_id(0); l_id_1201 < 1; l_id_1201 = l_id_1201 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1063;
        x1063 = x1073[l_id_1201];
        /* unrolling loop of 1 */
        {
          int idxAcc1202 = (int)0;
          x1050[idxAcc1202 + (2 * l_id_1201)] = x1063;
        }
        
        {
          int idx1203 = (int)0;
          x1063 = x1107[idx1203 + (2 * l_id_1201)] + x1063;
        }
        
        x1050[1 + (2 * l_id_1201)] = x1063;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1204 = get_local_id(0); l_id_1204 < 2; l_id_1204 = l_id_1204 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1040;
        x1040 = x1050[l_id_1204];
        /* unrolling loop of 1 */
        {
          int idxAcc1205 = (int)0;
          x1027[idxAcc1205 + (2 * l_id_1204)] = x1040;
        }
        
        {
          int idx1206 = (int)0;
          x1040 = x1127[idx1206 + (2 * l_id_1204)] + x1040;
        }
        
        x1027[1 + (2 * l_id_1204)] = x1040;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1207 = get_local_id(0); l_id_1207 < 4; l_id_1207 = l_id_1207 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1017;
        x1017 = x1027[l_id_1207];
        /* unrolling loop of 1 */
        {
          int idxAcc1208 = (int)0;
          x1004[idxAcc1208 + (2 * l_id_1207)] = x1017;
        }
        
        {
          int idx1209 = (int)0;
          x1017 = x1147[idx1209 + (2 * l_id_1207)] + x1017;
        }
        
        x1004[1 + (2 * l_id_1207)] = x1017;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1210 = get_local_id(0); l_id_1210 < 8; l_id_1210 = l_id_1210 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x994;
        x994 = x1004[l_id_1210];
        /* unrolling loop of 1 */
        {
          int idxAcc1211 = (int)0;
          x981[idxAcc1211 + (2 * l_id_1210)] = x994;
        }
        
        {
          int idx1212 = (int)0;
          x994 = x1167[idx1212 + (2 * l_id_1210)] + x994;
        }
        
        x981[1 + (2 * l_id_1210)] = x994;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1213 = get_local_id(0); l_id_1213 < 16; l_id_1213 = l_id_1213 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x971;
        x971 = x981[l_id_1213];
        /* unrolling loop of 1 */
        {
          int idxAcc1214 = (int)0;
          output[(idxAcc1214 + (2 * l_id_1213)) + (32 * wg_id_1195)] = x971;
        }
        
        {
          int idx1215 = (int)0;
          x971 = e763[(idx1215 + (2 * l_id_1213)) + (32 * wg_id_1195)] + x971;
        }
        
        output[(1 + (2 * l_id_1213)) + (32 * wg_id_1195)] = x971;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_32_1_2(global float* restrict output, const global float* restrict e1671){
local float x1926[16];

local float x1940[8];

local float x1903[4];

local float x1960[2];

local float x1880[2];

local float x1980[4];

local float x1857[8];

local float x2000[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_2028 = get_group_id(0); wg_id_2028 < 800000; wg_id_2028 = wg_id_2028 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_2029 = get_local_id(0); l_id_2029 < 16; l_id_2029 = l_id_2029 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x2013;
        x2013 = 0.0f;
        /* unrolling loop of 2 */
        x2013 = x2013 + e1671[(2 * l_id_2029) + (32 * wg_id_2028)];
        x2013 = x2013 + e1671[(1 + (2 * l_id_2029)) + (32 * wg_id_2028)];
        x2000[l_id_2029] = x2013;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2030 = get_local_id(0); l_id_2030 < 8; l_id_2030 = l_id_2030 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1993;
        x1993 = 0.0f;
        /* unrolling loop of 2 */
        x1993 = x1993 + x2000[2 * l_id_2030];
        x1993 = x1993 + x2000[1 + (2 * l_id_2030)];
        x1980[l_id_2030] = x1993;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2031 = get_local_id(0); l_id_2031 < 4; l_id_2031 = l_id_2031 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1973;
        x1973 = 0.0f;
        /* unrolling loop of 2 */
        x1973 = x1973 + x1980[2 * l_id_2031];
        x1973 = x1973 + x1980[1 + (2 * l_id_2031)];
        x1960[l_id_2031] = x1973;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2032 = get_local_id(0); l_id_2032 < 2; l_id_2032 = l_id_2032 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1953;
        x1953 = 0.0f;
        /* unrolling loop of 2 */
        x1953 = x1953 + x1960[2 * l_id_2032];
        x1953 = x1953 + x1960[1 + (2 * l_id_2032)];
        x1940[l_id_2032] = x1953;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x1936;
      x1936 = 0.0f;
      /* unrolling loop of 1 */
      {
        int idxAcc2033 = (int)0;
        x1926[idxAcc2033] = x1936;
      }
      
      {
        int idx2034 = (int)0;
        x1936 = x1940[idx2034] + x1936;
      }
      
      x1926[1] = x1936;
    }
    
    /* mapLocal */
    for (int l_id_2035 = get_local_id(0); l_id_2035 < 2; l_id_2035 = l_id_2035 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1916;
        x1916 = x1926[l_id_2035];
        /* unrolling loop of 1 */
        {
          int idxAcc2036 = (int)0;
          x1903[idxAcc2036 + (2 * l_id_2035)] = x1916;
        }
        
        {
          int idx2037 = (int)0;
          x1916 = x1960[idx2037 + (2 * l_id_2035)] + x1916;
        }
        
        x1903[1 + (2 * l_id_2035)] = x1916;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2038 = get_local_id(0); l_id_2038 < 4; l_id_2038 = l_id_2038 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1893;
        x1893 = x1903[l_id_2038];
        /* unrolling loop of 1 */
        {
          int idxAcc2039 = (int)0;
          x1880[idxAcc2039 + (2 * l_id_2038)] = x1893;
        }
        
        {
          int idx2040 = (int)0;
          x1893 = x1980[idx2040 + (2 * l_id_2038)] + x1893;
        }
        
        x1880[1 + (2 * l_id_2038)] = x1893;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2041 = get_local_id(0); l_id_2041 < 8; l_id_2041 = l_id_2041 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1870;
        x1870 = x1880[l_id_2041];
        /* unrolling loop of 1 */
        {
          int idxAcc2042 = (int)0;
          x1857[idxAcc2042 + (2 * l_id_2041)] = x1870;
        }
        
        {
          int idx2043 = (int)0;
          x1870 = x2000[idx2043 + (2 * l_id_2041)] + x1870;
        }
        
        x1857[1 + (2 * l_id_2041)] = x1870;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2044 = get_local_id(0); l_id_2044 < 16; l_id_2044 = l_id_2044 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1847;
        x1847 = x1857[l_id_2044];
        /* unrolling loop of 1 */
        {
          int idxAcc2045 = (int)0;
          output[(idxAcc2045 + (2 * l_id_2044)) + (32 * wg_id_2028)] = x1847;
        }
        
        {
          int idx2046 = (int)0;
          x1847 = e1671[(idx2046 + (2 * l_id_2044)) + (32 * wg_id_2028)] + x1847;
        }
        
        output[(1 + (2 * l_id_2044)) + (32 * wg_id_2028)] = x1847;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_32_2_2(global float* restrict output, const global float* restrict e2394){
local float x2594[16];

local float x2608[8];

local float x2571[4];

local float x2628[4];

local float x2548[8];

local float x2648[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_2677 = get_group_id(0); wg_id_2677 < 800000; wg_id_2677 = wg_id_2677 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_2678 = get_local_id(0); l_id_2678 < 16; l_id_2678 = l_id_2678 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x2661;
        x2661 = 0.0f;
        /* unrolling loop of 2 */
        x2661 = x2661 + e2394[(2 * l_id_2678) + (32 * wg_id_2677)];
        x2661 = x2661 + e2394[(1 + (2 * l_id_2678)) + (32 * wg_id_2677)];
        x2648[l_id_2678] = x2661;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2679 = get_local_id(0); l_id_2679 < 8; l_id_2679 = l_id_2679 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x2641;
        x2641 = 0.0f;
        /* unrolling loop of 2 */
        x2641 = x2641 + x2648[2 * l_id_2679];
        x2641 = x2641 + x2648[1 + (2 * l_id_2679)];
        x2628[l_id_2679] = x2641;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2680 = get_local_id(0); l_id_2680 < 4; l_id_2680 = l_id_2680 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x2621;
        x2621 = 0.0f;
        /* unrolling loop of 2 */
        x2621 = x2621 + x2628[2 * l_id_2680];
        x2621 = x2621 + x2628[1 + (2 * l_id_2680)];
        x2608[l_id_2680] = x2621;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x2604;
      x2604 = 0.0f;
      /* unrolling loop of 3 */
      {
        int idxAcc2681 = (int)0;
        x2594[idxAcc2681] = x2604;
      }
      
      {
        int idx2682 = (int)0;
        x2604 = x2608[idx2682] + x2604;
      }
      
      {
        int idxAcc2683 = (int)1;
        x2594[idxAcc2683] = x2604;
      }
      
      {
        int idx2684 = (int)1;
        x2604 = x2608[idx2684] + x2604;
      }
      
      {
        int idxAcc2685 = (int)2;
        x2594[idxAcc2685] = x2604;
      }
      
      {
        int idx2686 = (int)2;
        x2604 = x2608[idx2686] + x2604;
      }
      
      x2594[3] = x2604;
    }
    
    /* mapLocal */
    for (int l_id_2687 = get_local_id(0); l_id_2687 < 4; l_id_2687 = l_id_2687 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x2584;
        x2584 = x2594[l_id_2687];
        /* unrolling loop of 1 */
        {
          int idxAcc2688 = (int)0;
          x2571[idxAcc2688 + (2 * l_id_2687)] = x2584;
        }
        
        {
          int idx2689 = (int)0;
          x2584 = x2628[idx2689 + (2 * l_id_2687)] + x2584;
        }
        
        x2571[1 + (2 * l_id_2687)] = x2584;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2690 = get_local_id(0); l_id_2690 < 8; l_id_2690 = l_id_2690 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x2561;
        x2561 = x2571[l_id_2690];
        /* unrolling loop of 1 */
        {
          int idxAcc2691 = (int)0;
          x2548[idxAcc2691 + (2 * l_id_2690)] = x2561;
        }
        
        {
          int idx2692 = (int)0;
          x2561 = x2648[idx2692 + (2 * l_id_2690)] + x2561;
        }
        
        x2548[1 + (2 * l_id_2690)] = x2561;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2693 = get_local_id(0); l_id_2693 < 16; l_id_2693 = l_id_2693 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x2538;
        x2538 = x2548[l_id_2693];
        /* unrolling loop of 1 */
        {
          int idxAcc2694 = (int)0;
          output[(idxAcc2694 + (2 * l_id_2693)) + (32 * wg_id_2677)] = x2538;
        }
        
        {
          int idx2695 = (int)0;
          x2538 = e2394[(idx2695 + (2 * l_id_2693)) + (32 * wg_id_2677)] + x2538;
        }
        
        output[(1 + (2 * l_id_2693)) + (32 * wg_id_2677)] = x2538;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_32_3_2(global float* restrict output, const global float* restrict e2935){
local float x3080[16];

local float x3094[8];

local float x3057[8];

local float x3114[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_3146 = get_group_id(0); wg_id_3146 < 800000; wg_id_3146 = wg_id_3146 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_3147 = get_local_id(0); l_id_3147 < 16; l_id_3147 = l_id_3147 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x3127;
        x3127 = 0.0f;
        /* unrolling loop of 2 */
        x3127 = x3127 + e2935[(2 * l_id_3147) + (32 * wg_id_3146)];
        x3127 = x3127 + e2935[(1 + (2 * l_id_3147)) + (32 * wg_id_3146)];
        x3114[l_id_3147] = x3127;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_3148 = get_local_id(0); l_id_3148 < 8; l_id_3148 = l_id_3148 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x3107;
        x3107 = 0.0f;
        /* unrolling loop of 2 */
        x3107 = x3107 + x3114[2 * l_id_3148];
        x3107 = x3107 + x3114[1 + (2 * l_id_3148)];
        x3094[l_id_3148] = x3107;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x3090;
      x3090 = 0.0f;
      /* unrolling loop of 7 */
      {
        int idxAcc3149 = (int)0;
        x3080[idxAcc3149] = x3090;
      }
      
      {
        int idx3150 = (int)0;
        x3090 = x3094[idx3150] + x3090;
      }
      
      {
        int idxAcc3151 = (int)1;
        x3080[idxAcc3151] = x3090;
      }
      
      {
        int idx3152 = (int)1;
        x3090 = x3094[idx3152] + x3090;
      }
      
      {
        int idxAcc3153 = (int)2;
        x3080[idxAcc3153] = x3090;
      }
      
      {
        int idx3154 = (int)2;
        x3090 = x3094[idx3154] + x3090;
      }
      
      {
        int idxAcc3155 = (int)3;
        x3080[idxAcc3155] = x3090;
      }
      
      {
        int idx3156 = (int)3;
        x3090 = x3094[idx3156] + x3090;
      }
      
      {
        int idxAcc3157 = (int)4;
        x3080[idxAcc3157] = x3090;
      }
      
      {
        int idx3158 = (int)4;
        x3090 = x3094[idx3158] + x3090;
      }
      
      {
        int idxAcc3159 = (int)5;
        x3080[idxAcc3159] = x3090;
      }
      
      {
        int idx3160 = (int)5;
        x3090 = x3094[idx3160] + x3090;
      }
      
      {
        int idxAcc3161 = (int)6;
        x3080[idxAcc3161] = x3090;
      }
      
      {
        int idx3162 = (int)6;
        x3090 = x3094[idx3162] + x3090;
      }
      
      x3080[7] = x3090;
    }
    
    /* mapLocal */
    for (int l_id_3163 = get_local_id(0); l_id_3163 < 8; l_id_3163 = l_id_3163 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x3070;
        x3070 = x3080[l_id_3163];
        /* unrolling loop of 1 */
        {
          int idxAcc3164 = (int)0;
          x3057[idxAcc3164 + (2 * l_id_3163)] = x3070;
        }
        
        {
          int idx3165 = (int)0;
          x3070 = x3114[idx3165 + (2 * l_id_3163)] + x3070;
        }
        
        x3057[1 + (2 * l_id_3163)] = x3070;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_3166 = get_local_id(0); l_id_3166 < 16; l_id_3166 = l_id_3166 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x3047;
        x3047 = x3057[l_id_3166];
        /* unrolling loop of 1 */
        {
          int idxAcc3167 = (int)0;
          output[(idxAcc3167 + (2 * l_id_3166)) + (32 * wg_id_3146)] = x3047;
        }
        
        {
          int idx3168 = (int)0;
          x3047 = e2935[(idx3168 + (2 * l_id_3166)) + (32 * wg_id_3146)] + x3047;
        }
        
        output[(1 + (2 * l_id_3166)) + (32 * wg_id_3146)] = x3047;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_32_4_2(global float* restrict output, const global float* restrict e3300){
local float x3390[16];

local float x3404[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_3443 = get_group_id(0); wg_id_3443 < 800000; wg_id_3443 = wg_id_3443 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_3444 = get_local_id(0); l_id_3444 < 16; l_id_3444 = l_id_3444 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x3417;
        x3417 = 0.0f;
        /* unrolling loop of 2 */
        x3417 = x3417 + e3300[(2 * l_id_3444) + (32 * wg_id_3443)];
        x3417 = x3417 + e3300[(1 + (2 * l_id_3444)) + (32 * wg_id_3443)];
        x3404[l_id_3444] = x3417;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x3400;
      x3400 = 0.0f;
      /* unrolling loop of 15 */
      {
        int idxAcc3445 = (int)0;
        x3390[idxAcc3445] = x3400;
      }
      
      {
        int idx3446 = (int)0;
        x3400 = x3404[idx3446] + x3400;
      }
      
      {
        int idxAcc3447 = (int)1;
        x3390[idxAcc3447] = x3400;
      }
      
      {
        int idx3448 = (int)1;
        x3400 = x3404[idx3448] + x3400;
      }
      
      {
        int idxAcc3449 = (int)2;
        x3390[idxAcc3449] = x3400;
      }
      
      {
        int idx3450 = (int)2;
        x3400 = x3404[idx3450] + x3400;
      }
      
      {
        int idxAcc3451 = (int)3;
        x3390[idxAcc3451] = x3400;
      }
      
      {
        int idx3452 = (int)3;
        x3400 = x3404[idx3452] + x3400;
      }
      
      {
        int idxAcc3453 = (int)4;
        x3390[idxAcc3453] = x3400;
      }
      
      {
        int idx3454 = (int)4;
        x3400 = x3404[idx3454] + x3400;
      }
      
      {
        int idxAcc3455 = (int)5;
        x3390[idxAcc3455] = x3400;
      }
      
      {
        int idx3456 = (int)5;
        x3400 = x3404[idx3456] + x3400;
      }
      
      {
        int idxAcc3457 = (int)6;
        x3390[idxAcc3457] = x3400;
      }
      
      {
        int idx3458 = (int)6;
        x3400 = x3404[idx3458] + x3400;
      }
      
      {
        int idxAcc3459 = (int)7;
        x3390[idxAcc3459] = x3400;
      }
      
      {
        int idx3460 = (int)7;
        x3400 = x3404[idx3460] + x3400;
      }
      
      {
        int idxAcc3461 = (int)8;
        x3390[idxAcc3461] = x3400;
      }
      
      {
        int idx3462 = (int)8;
        x3400 = x3404[idx3462] + x3400;
      }
      
      {
        int idxAcc3463 = (int)9;
        x3390[idxAcc3463] = x3400;
      }
      
      {
        int idx3464 = (int)9;
        x3400 = x3404[idx3464] + x3400;
      }
      
      {
        int idxAcc3465 = (int)10;
        x3390[idxAcc3465] = x3400;
      }
      
      {
        int idx3466 = (int)10;
        x3400 = x3404[idx3466] + x3400;
      }
      
      {
        int idxAcc3467 = (int)11;
        x3390[idxAcc3467] = x3400;
      }
      
      {
        int idx3468 = (int)11;
        x3400 = x3404[idx3468] + x3400;
      }
      
      {
        int idxAcc3469 = (int)12;
        x3390[idxAcc3469] = x3400;
      }
      
      {
        int idx3470 = (int)12;
        x3400 = x3404[idx3470] + x3400;
      }
      
      {
        int idxAcc3471 = (int)13;
        x3390[idxAcc3471] = x3400;
      }
      
      {
        int idx3472 = (int)13;
        x3400 = x3404[idx3472] + x3400;
      }
      
      {
        int idxAcc3473 = (int)14;
        x3390[idxAcc3473] = x3400;
      }
      
      {
        int idx3474 = (int)14;
        x3400 = x3404[idx3474] + x3400;
      }
      
      x3390[15] = x3400;
    }
    
    /* mapLocal */
    for (int l_id_3475 = get_local_id(0); l_id_3475 < 16; l_id_3475 = l_id_3475 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x3380;
        x3380 = x3390[l_id_3475];
        /* unrolling loop of 1 */
        {
          int idxAcc3476 = (int)0;
          output[(idxAcc3476 + (2 * l_id_3475)) + (32 * wg_id_3443)] = x3380;
        }
        
        {
          int idx3477 = (int)0;
          x3380 = e3300[(idx3477 + (2 * l_id_3475)) + (32 * wg_id_3443)] + x3380;
        }
        
        output[(1 + (2 * l_id_3475)) + (32 * wg_id_3443)] = x3380;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_64_0_2(global float* restrict output, const global float* restrict e4149){
local float x4514[32];

local float x4528[16];

local float x4491[8];

local float x4548[4];

local float x4468[2];

local float x4568[1];

local float x4445[1];

local float x4588[2];

local float x4422[4];

local float x4608[8];

local float x4399[16];

local float x4628[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_4657 = get_group_id(0); wg_id_4657 < 400000; wg_id_4657 = wg_id_4657 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_4658 = get_local_id(0); l_id_4658 < 32; l_id_4658 = l_id_4658 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x4641;
        x4641 = 0.0f;
        /* unrolling loop of 2 */
        x4641 = x4641 + e4149[(2 * l_id_4658) + (64 * wg_id_4657)];
        x4641 = x4641 + e4149[(1 + (2 * l_id_4658)) + (64 * wg_id_4657)];
        x4628[l_id_4658] = x4641;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4659 = get_local_id(0); l_id_4659 < 16; l_id_4659 = l_id_4659 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x4621;
        x4621 = 0.0f;
        /* unrolling loop of 2 */
        x4621 = x4621 + x4628[2 * l_id_4659];
        x4621 = x4621 + x4628[1 + (2 * l_id_4659)];
        x4608[l_id_4659] = x4621;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4660 = get_local_id(0); l_id_4660 < 8; l_id_4660 = l_id_4660 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x4601;
        x4601 = 0.0f;
        /* unrolling loop of 2 */
        x4601 = x4601 + x4608[2 * l_id_4660];
        x4601 = x4601 + x4608[1 + (2 * l_id_4660)];
        x4588[l_id_4660] = x4601;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4661 = get_local_id(0); l_id_4661 < 4; l_id_4661 = l_id_4661 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x4581;
        x4581 = 0.0f;
        /* unrolling loop of 2 */
        x4581 = x4581 + x4588[2 * l_id_4661];
        x4581 = x4581 + x4588[1 + (2 * l_id_4661)];
        x4568[l_id_4661] = x4581;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4662 = get_local_id(0); l_id_4662 < 2; l_id_4662 = l_id_4662 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x4561;
        x4561 = 0.0f;
        /* unrolling loop of 2 */
        x4561 = x4561 + x4568[2 * l_id_4662];
        x4561 = x4561 + x4568[1 + (2 * l_id_4662)];
        x4548[l_id_4662] = x4561;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4663 = get_local_id(0); l_id_4663 < 1; l_id_4663 = l_id_4663 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x4541;
        x4541 = 0.0f;
        /* unrolling loop of 2 */
        x4541 = x4541 + x4548[2 * l_id_4663];
        x4541 = x4541 + x4548[1 + (2 * l_id_4663)];
        x4528[l_id_4663] = x4541;
      }
      
    }
    
    /* oclScanSeq */
    {
      float x4524;
      x4524 = 0.0f;
      /* unrolling loop of 0 */
      x4514[0] = x4524;
    }
    
    /* mapLocal */
    for (int l_id_4664 = get_local_id(0); l_id_4664 < 1; l_id_4664 = l_id_4664 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x4504;
        x4504 = x4514[l_id_4664];
        /* unrolling loop of 1 */
        {
          int idxAcc4665 = (int)0;
          x4491[idxAcc4665 + (2 * l_id_4664)] = x4504;
        }
        
        {
          int idx4666 = (int)0;
          x4504 = x4548[idx4666 + (2 * l_id_4664)] + x4504;
        }
        
        x4491[1 + (2 * l_id_4664)] = x4504;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4667 = get_local_id(0); l_id_4667 < 2; l_id_4667 = l_id_4667 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x4481;
        x4481 = x4491[l_id_4667];
        /* unrolling loop of 1 */
        {
          int idxAcc4668 = (int)0;
          x4468[idxAcc4668 + (2 * l_id_4667)] = x4481;
        }
        
        {
          int idx4669 = (int)0;
          x4481 = x4568[idx4669 + (2 * l_id_4667)] + x4481;
        }
        
        x4468[1 + (2 * l_id_4667)] = x4481;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4670 = get_local_id(0); l_id_4670 < 4; l_id_4670 = l_id_4670 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x4458;
        x4458 = x4468[l_id_4670];
        /* unrolling loop of 1 */
        {
          int idxAcc4671 = (int)0;
          x4445[idxAcc4671 + (2 * l_id_4670)] = x4458;
        }
        
        {
          int idx4672 = (int)0;
          x4458 = x4588[idx4672 + (2 * l_id_4670)] + x4458;
        }
        
        x4445[1 + (2 * l_id_4670)] = x4458;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4673 = get_local_id(0); l_id_4673 < 8; l_id_4673 = l_id_4673 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x4435;
        x4435 = x4445[l_id_4673];
        /* unrolling loop of 1 */
        {
          int idxAcc4674 = (int)0;
          x4422[idxAcc4674 + (2 * l_id_4673)] = x4435;
        }
        
        {
          int idx4675 = (int)0;
          x4435 = x4608[idx4675 + (2 * l_id_4673)] + x4435;
        }
        
        x4422[1 + (2 * l_id_4673)] = x4435;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4676 = get_local_id(0); l_id_4676 < 16; l_id_4676 = l_id_4676 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x4412;
        x4412 = x4422[l_id_4676];
        /* unrolling loop of 1 */
        {
          int idxAcc4677 = (int)0;
          x4399[idxAcc4677 + (2 * l_id_4676)] = x4412;
        }
        
        {
          int idx4678 = (int)0;
          x4412 = x4628[idx4678 + (2 * l_id_4676)] + x4412;
        }
        
        x4399[1 + (2 * l_id_4676)] = x4412;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4679 = get_local_id(0); l_id_4679 < 32; l_id_4679 = l_id_4679 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x4389;
        x4389 = x4399[l_id_4679];
        /* unrolling loop of 1 */
        {
          int idxAcc4680 = (int)0;
          output[(idxAcc4680 + (2 * l_id_4679)) + (64 * wg_id_4657)] = x4389;
        }
        
        {
          int idx4681 = (int)0;
          x4389 = e4149[(idx4681 + (2 * l_id_4679)) + (64 * wg_id_4657)] + x4389;
        }
        
        output[(1 + (2 * l_id_4679)) + (64 * wg_id_4657)] = x4389;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_64_1_2(global float* restrict output, const global float* restrict e5245){
local float x5555[32];

local float x5569[16];

local float x5532[8];

local float x5589[4];

local float x5509[2];

local float x5609[2];

local float x5486[4];

local float x5629[8];

local float x5463[16];

local float x5649[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_5678 = get_group_id(0); wg_id_5678 < 400000; wg_id_5678 = wg_id_5678 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_5679 = get_local_id(0); l_id_5679 < 32; l_id_5679 = l_id_5679 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x5662;
        x5662 = 0.0f;
        /* unrolling loop of 2 */
        x5662 = x5662 + e5245[(2 * l_id_5679) + (64 * wg_id_5678)];
        x5662 = x5662 + e5245[(1 + (2 * l_id_5679)) + (64 * wg_id_5678)];
        x5649[l_id_5679] = x5662;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5680 = get_local_id(0); l_id_5680 < 16; l_id_5680 = l_id_5680 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x5642;
        x5642 = 0.0f;
        /* unrolling loop of 2 */
        x5642 = x5642 + x5649[2 * l_id_5680];
        x5642 = x5642 + x5649[1 + (2 * l_id_5680)];
        x5629[l_id_5680] = x5642;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5681 = get_local_id(0); l_id_5681 < 8; l_id_5681 = l_id_5681 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x5622;
        x5622 = 0.0f;
        /* unrolling loop of 2 */
        x5622 = x5622 + x5629[2 * l_id_5681];
        x5622 = x5622 + x5629[1 + (2 * l_id_5681)];
        x5609[l_id_5681] = x5622;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5682 = get_local_id(0); l_id_5682 < 4; l_id_5682 = l_id_5682 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x5602;
        x5602 = 0.0f;
        /* unrolling loop of 2 */
        x5602 = x5602 + x5609[2 * l_id_5682];
        x5602 = x5602 + x5609[1 + (2 * l_id_5682)];
        x5589[l_id_5682] = x5602;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5683 = get_local_id(0); l_id_5683 < 2; l_id_5683 = l_id_5683 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x5582;
        x5582 = 0.0f;
        /* unrolling loop of 2 */
        x5582 = x5582 + x5589[2 * l_id_5683];
        x5582 = x5582 + x5589[1 + (2 * l_id_5683)];
        x5569[l_id_5683] = x5582;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x5565;
      x5565 = 0.0f;
      /* unrolling loop of 1 */
      {
        int idxAcc5684 = (int)0;
        x5555[idxAcc5684] = x5565;
      }
      
      {
        int idx5685 = (int)0;
        x5565 = x5569[idx5685] + x5565;
      }
      
      x5555[1] = x5565;
    }
    
    /* mapLocal */
    for (int l_id_5686 = get_local_id(0); l_id_5686 < 2; l_id_5686 = l_id_5686 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x5545;
        x5545 = x5555[l_id_5686];
        /* unrolling loop of 1 */
        {
          int idxAcc5687 = (int)0;
          x5532[idxAcc5687 + (2 * l_id_5686)] = x5545;
        }
        
        {
          int idx5688 = (int)0;
          x5545 = x5589[idx5688 + (2 * l_id_5686)] + x5545;
        }
        
        x5532[1 + (2 * l_id_5686)] = x5545;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5689 = get_local_id(0); l_id_5689 < 4; l_id_5689 = l_id_5689 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x5522;
        x5522 = x5532[l_id_5689];
        /* unrolling loop of 1 */
        {
          int idxAcc5690 = (int)0;
          x5509[idxAcc5690 + (2 * l_id_5689)] = x5522;
        }
        
        {
          int idx5691 = (int)0;
          x5522 = x5609[idx5691 + (2 * l_id_5689)] + x5522;
        }
        
        x5509[1 + (2 * l_id_5689)] = x5522;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5692 = get_local_id(0); l_id_5692 < 8; l_id_5692 = l_id_5692 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x5499;
        x5499 = x5509[l_id_5692];
        /* unrolling loop of 1 */
        {
          int idxAcc5693 = (int)0;
          x5486[idxAcc5693 + (2 * l_id_5692)] = x5499;
        }
        
        {
          int idx5694 = (int)0;
          x5499 = x5629[idx5694 + (2 * l_id_5692)] + x5499;
        }
        
        x5486[1 + (2 * l_id_5692)] = x5499;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5695 = get_local_id(0); l_id_5695 < 16; l_id_5695 = l_id_5695 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x5476;
        x5476 = x5486[l_id_5695];
        /* unrolling loop of 1 */
        {
          int idxAcc5696 = (int)0;
          x5463[idxAcc5696 + (2 * l_id_5695)] = x5476;
        }
        
        {
          int idx5697 = (int)0;
          x5476 = x5649[idx5697 + (2 * l_id_5695)] + x5476;
        }
        
        x5463[1 + (2 * l_id_5695)] = x5476;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5698 = get_local_id(0); l_id_5698 < 32; l_id_5698 = l_id_5698 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x5453;
        x5453 = x5463[l_id_5698];
        /* unrolling loop of 1 */
        {
          int idxAcc5699 = (int)0;
          output[(idxAcc5699 + (2 * l_id_5698)) + (64 * wg_id_5678)] = x5453;
        }
        
        {
          int idx5700 = (int)0;
          x5453 = e5245[(idx5700 + (2 * l_id_5698)) + (64 * wg_id_5678)] + x5453;
        }
        
        output[(1 + (2 * l_id_5698)) + (64 * wg_id_5678)] = x5453;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_64_2_2(global float* restrict output, const global float* restrict e6156){
local float x6411[32];

local float x6425[16];

local float x6388[8];

local float x6445[4];

local float x6365[4];

local float x6465[8];

local float x6342[16];

local float x6485[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_6515 = get_group_id(0); wg_id_6515 < 400000; wg_id_6515 = wg_id_6515 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_6516 = get_local_id(0); l_id_6516 < 32; l_id_6516 = l_id_6516 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x6498;
        x6498 = 0.0f;
        /* unrolling loop of 2 */
        x6498 = x6498 + e6156[(2 * l_id_6516) + (64 * wg_id_6515)];
        x6498 = x6498 + e6156[(1 + (2 * l_id_6516)) + (64 * wg_id_6515)];
        x6485[l_id_6516] = x6498;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_6517 = get_local_id(0); l_id_6517 < 16; l_id_6517 = l_id_6517 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x6478;
        x6478 = 0.0f;
        /* unrolling loop of 2 */
        x6478 = x6478 + x6485[2 * l_id_6517];
        x6478 = x6478 + x6485[1 + (2 * l_id_6517)];
        x6465[l_id_6517] = x6478;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_6518 = get_local_id(0); l_id_6518 < 8; l_id_6518 = l_id_6518 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x6458;
        x6458 = 0.0f;
        /* unrolling loop of 2 */
        x6458 = x6458 + x6465[2 * l_id_6518];
        x6458 = x6458 + x6465[1 + (2 * l_id_6518)];
        x6445[l_id_6518] = x6458;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_6519 = get_local_id(0); l_id_6519 < 4; l_id_6519 = l_id_6519 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x6438;
        x6438 = 0.0f;
        /* unrolling loop of 2 */
        x6438 = x6438 + x6445[2 * l_id_6519];
        x6438 = x6438 + x6445[1 + (2 * l_id_6519)];
        x6425[l_id_6519] = x6438;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x6421;
      x6421 = 0.0f;
      /* unrolling loop of 3 */
      {
        int idxAcc6520 = (int)0;
        x6411[idxAcc6520] = x6421;
      }
      
      {
        int idx6521 = (int)0;
        x6421 = x6425[idx6521] + x6421;
      }
      
      {
        int idxAcc6522 = (int)1;
        x6411[idxAcc6522] = x6421;
      }
      
      {
        int idx6523 = (int)1;
        x6421 = x6425[idx6523] + x6421;
      }
      
      {
        int idxAcc6524 = (int)2;
        x6411[idxAcc6524] = x6421;
      }
      
      {
        int idx6525 = (int)2;
        x6421 = x6425[idx6525] + x6421;
      }
      
      x6411[3] = x6421;
    }
    
    /* mapLocal */
    for (int l_id_6526 = get_local_id(0); l_id_6526 < 4; l_id_6526 = l_id_6526 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x6401;
        x6401 = x6411[l_id_6526];
        /* unrolling loop of 1 */
        {
          int idxAcc6527 = (int)0;
          x6388[idxAcc6527 + (2 * l_id_6526)] = x6401;
        }
        
        {
          int idx6528 = (int)0;
          x6401 = x6445[idx6528 + (2 * l_id_6526)] + x6401;
        }
        
        x6388[1 + (2 * l_id_6526)] = x6401;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_6529 = get_local_id(0); l_id_6529 < 8; l_id_6529 = l_id_6529 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x6378;
        x6378 = x6388[l_id_6529];
        /* unrolling loop of 1 */
        {
          int idxAcc6530 = (int)0;
          x6365[idxAcc6530 + (2 * l_id_6529)] = x6378;
        }
        
        {
          int idx6531 = (int)0;
          x6378 = x6465[idx6531 + (2 * l_id_6529)] + x6378;
        }
        
        x6365[1 + (2 * l_id_6529)] = x6378;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_6532 = get_local_id(0); l_id_6532 < 16; l_id_6532 = l_id_6532 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x6355;
        x6355 = x6365[l_id_6532];
        /* unrolling loop of 1 */
        {
          int idxAcc6533 = (int)0;
          x6342[idxAcc6533 + (2 * l_id_6532)] = x6355;
        }
        
        {
          int idx6534 = (int)0;
          x6355 = x6485[idx6534 + (2 * l_id_6532)] + x6355;
        }
        
        x6342[1 + (2 * l_id_6532)] = x6355;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_6535 = get_local_id(0); l_id_6535 < 32; l_id_6535 = l_id_6535 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x6332;
        x6332 = x6342[l_id_6535];
        /* unrolling loop of 1 */
        {
          int idxAcc6536 = (int)0;
          output[(idxAcc6536 + (2 * l_id_6535)) + (64 * wg_id_6515)] = x6332;
        }
        
        {
          int idx6537 = (int)0;
          x6332 = e6156[(idx6537 + (2 * l_id_6535)) + (64 * wg_id_6515)] + x6332;
        }
        
        output[(1 + (2 * l_id_6535)) + (64 * wg_id_6515)] = x6332;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_64_3_2(global float* restrict output, const global float* restrict e6885){
local float x7085[32];

local float x7099[16];

local float x7062[8];

local float x7119[8];

local float x7039[16];

local float x7139[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_7172 = get_group_id(0); wg_id_7172 < 400000; wg_id_7172 = wg_id_7172 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_7173 = get_local_id(0); l_id_7173 < 32; l_id_7173 = l_id_7173 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x7152;
        x7152 = 0.0f;
        /* unrolling loop of 2 */
        x7152 = x7152 + e6885[(2 * l_id_7173) + (64 * wg_id_7172)];
        x7152 = x7152 + e6885[(1 + (2 * l_id_7173)) + (64 * wg_id_7172)];
        x7139[l_id_7173] = x7152;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_7174 = get_local_id(0); l_id_7174 < 16; l_id_7174 = l_id_7174 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x7132;
        x7132 = 0.0f;
        /* unrolling loop of 2 */
        x7132 = x7132 + x7139[2 * l_id_7174];
        x7132 = x7132 + x7139[1 + (2 * l_id_7174)];
        x7119[l_id_7174] = x7132;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_7175 = get_local_id(0); l_id_7175 < 8; l_id_7175 = l_id_7175 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x7112;
        x7112 = 0.0f;
        /* unrolling loop of 2 */
        x7112 = x7112 + x7119[2 * l_id_7175];
        x7112 = x7112 + x7119[1 + (2 * l_id_7175)];
        x7099[l_id_7175] = x7112;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x7095;
      x7095 = 0.0f;
      /* unrolling loop of 7 */
      {
        int idxAcc7176 = (int)0;
        x7085[idxAcc7176] = x7095;
      }
      
      {
        int idx7177 = (int)0;
        x7095 = x7099[idx7177] + x7095;
      }
      
      {
        int idxAcc7178 = (int)1;
        x7085[idxAcc7178] = x7095;
      }
      
      {
        int idx7179 = (int)1;
        x7095 = x7099[idx7179] + x7095;
      }
      
      {
        int idxAcc7180 = (int)2;
        x7085[idxAcc7180] = x7095;
      }
      
      {
        int idx7181 = (int)2;
        x7095 = x7099[idx7181] + x7095;
      }
      
      {
        int idxAcc7182 = (int)3;
        x7085[idxAcc7182] = x7095;
      }
      
      {
        int idx7183 = (int)3;
        x7095 = x7099[idx7183] + x7095;
      }
      
      {
        int idxAcc7184 = (int)4;
        x7085[idxAcc7184] = x7095;
      }
      
      {
        int idx7185 = (int)4;
        x7095 = x7099[idx7185] + x7095;
      }
      
      {
        int idxAcc7186 = (int)5;
        x7085[idxAcc7186] = x7095;
      }
      
      {
        int idx7187 = (int)5;
        x7095 = x7099[idx7187] + x7095;
      }
      
      {
        int idxAcc7188 = (int)6;
        x7085[idxAcc7188] = x7095;
      }
      
      {
        int idx7189 = (int)6;
        x7095 = x7099[idx7189] + x7095;
      }
      
      x7085[7] = x7095;
    }
    
    /* mapLocal */
    for (int l_id_7190 = get_local_id(0); l_id_7190 < 8; l_id_7190 = l_id_7190 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x7075;
        x7075 = x7085[l_id_7190];
        /* unrolling loop of 1 */
        {
          int idxAcc7191 = (int)0;
          x7062[idxAcc7191 + (2 * l_id_7190)] = x7075;
        }
        
        {
          int idx7192 = (int)0;
          x7075 = x7119[idx7192 + (2 * l_id_7190)] + x7075;
        }
        
        x7062[1 + (2 * l_id_7190)] = x7075;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_7193 = get_local_id(0); l_id_7193 < 16; l_id_7193 = l_id_7193 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x7052;
        x7052 = x7062[l_id_7193];
        /* unrolling loop of 1 */
        {
          int idxAcc7194 = (int)0;
          x7039[idxAcc7194 + (2 * l_id_7193)] = x7052;
        }
        
        {
          int idx7195 = (int)0;
          x7052 = x7139[idx7195 + (2 * l_id_7193)] + x7052;
        }
        
        x7039[1 + (2 * l_id_7193)] = x7052;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_7196 = get_local_id(0); l_id_7196 < 32; l_id_7196 = l_id_7196 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x7029;
        x7029 = x7039[l_id_7196];
        /* unrolling loop of 1 */
        {
          int idxAcc7197 = (int)0;
          output[(idxAcc7197 + (2 * l_id_7196)) + (64 * wg_id_7172)] = x7029;
        }
        
        {
          int idx7198 = (int)0;
          x7029 = e6885[(idx7198 + (2 * l_id_7196)) + (64 * wg_id_7172)] + x7029;
        }
        
        output[(1 + (2 * l_id_7196)) + (64 * wg_id_7172)] = x7029;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_64_4_2(global float* restrict output, const global float* restrict e7438){
local float x7583[32];

local float x7597[16];

local float x7560[16];

local float x7617[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_7657 = get_group_id(0); wg_id_7657 < 400000; wg_id_7657 = wg_id_7657 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_7658 = get_local_id(0); l_id_7658 < 32; l_id_7658 = l_id_7658 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x7630;
        x7630 = 0.0f;
        /* unrolling loop of 2 */
        x7630 = x7630 + e7438[(2 * l_id_7658) + (64 * wg_id_7657)];
        x7630 = x7630 + e7438[(1 + (2 * l_id_7658)) + (64 * wg_id_7657)];
        x7617[l_id_7658] = x7630;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_7659 = get_local_id(0); l_id_7659 < 16; l_id_7659 = l_id_7659 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x7610;
        x7610 = 0.0f;
        /* unrolling loop of 2 */
        x7610 = x7610 + x7617[2 * l_id_7659];
        x7610 = x7610 + x7617[1 + (2 * l_id_7659)];
        x7597[l_id_7659] = x7610;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x7593;
      x7593 = 0.0f;
      /* unrolling loop of 15 */
      {
        int idxAcc7660 = (int)0;
        x7583[idxAcc7660] = x7593;
      }
      
      {
        int idx7661 = (int)0;
        x7593 = x7597[idx7661] + x7593;
      }
      
      {
        int idxAcc7662 = (int)1;
        x7583[idxAcc7662] = x7593;
      }
      
      {
        int idx7663 = (int)1;
        x7593 = x7597[idx7663] + x7593;
      }
      
      {
        int idxAcc7664 = (int)2;
        x7583[idxAcc7664] = x7593;
      }
      
      {
        int idx7665 = (int)2;
        x7593 = x7597[idx7665] + x7593;
      }
      
      {
        int idxAcc7666 = (int)3;
        x7583[idxAcc7666] = x7593;
      }
      
      {
        int idx7667 = (int)3;
        x7593 = x7597[idx7667] + x7593;
      }
      
      {
        int idxAcc7668 = (int)4;
        x7583[idxAcc7668] = x7593;
      }
      
      {
        int idx7669 = (int)4;
        x7593 = x7597[idx7669] + x7593;
      }
      
      {
        int idxAcc7670 = (int)5;
        x7583[idxAcc7670] = x7593;
      }
      
      {
        int idx7671 = (int)5;
        x7593 = x7597[idx7671] + x7593;
      }
      
      {
        int idxAcc7672 = (int)6;
        x7583[idxAcc7672] = x7593;
      }
      
      {
        int idx7673 = (int)6;
        x7593 = x7597[idx7673] + x7593;
      }
      
      {
        int idxAcc7674 = (int)7;
        x7583[idxAcc7674] = x7593;
      }
      
      {
        int idx7675 = (int)7;
        x7593 = x7597[idx7675] + x7593;
      }
      
      {
        int idxAcc7676 = (int)8;
        x7583[idxAcc7676] = x7593;
      }
      
      {
        int idx7677 = (int)8;
        x7593 = x7597[idx7677] + x7593;
      }
      
      {
        int idxAcc7678 = (int)9;
        x7583[idxAcc7678] = x7593;
      }
      
      {
        int idx7679 = (int)9;
        x7593 = x7597[idx7679] + x7593;
      }
      
      {
        int idxAcc7680 = (int)10;
        x7583[idxAcc7680] = x7593;
      }
      
      {
        int idx7681 = (int)10;
        x7593 = x7597[idx7681] + x7593;
      }
      
      {
        int idxAcc7682 = (int)11;
        x7583[idxAcc7682] = x7593;
      }
      
      {
        int idx7683 = (int)11;
        x7593 = x7597[idx7683] + x7593;
      }
      
      {
        int idxAcc7684 = (int)12;
        x7583[idxAcc7684] = x7593;
      }
      
      {
        int idx7685 = (int)12;
        x7593 = x7597[idx7685] + x7593;
      }
      
      {
        int idxAcc7686 = (int)13;
        x7583[idxAcc7686] = x7593;
      }
      
      {
        int idx7687 = (int)13;
        x7593 = x7597[idx7687] + x7593;
      }
      
      {
        int idxAcc7688 = (int)14;
        x7583[idxAcc7688] = x7593;
      }
      
      {
        int idx7689 = (int)14;
        x7593 = x7597[idx7689] + x7593;
      }
      
      x7583[15] = x7593;
    }
    
    /* mapLocal */
    for (int l_id_7690 = get_local_id(0); l_id_7690 < 16; l_id_7690 = l_id_7690 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x7573;
        x7573 = x7583[l_id_7690];
        /* unrolling loop of 1 */
        {
          int idxAcc7691 = (int)0;
          x7560[idxAcc7691 + (2 * l_id_7690)] = x7573;
        }
        
        {
          int idx7692 = (int)0;
          x7573 = x7617[idx7692 + (2 * l_id_7690)] + x7573;
        }
        
        x7560[1 + (2 * l_id_7690)] = x7573;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_7693 = get_local_id(0); l_id_7693 < 32; l_id_7693 = l_id_7693 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x7550;
        x7550 = x7560[l_id_7693];
        /* unrolling loop of 1 */
        {
          int idxAcc7694 = (int)0;
          output[(idxAcc7694 + (2 * l_id_7693)) + (64 * wg_id_7657)] = x7550;
        }
        
        {
          int idx7695 = (int)0;
          x7550 = e7438[(idx7695 + (2 * l_id_7693)) + (64 * wg_id_7657)] + x7550;
        }
        
        output[(1 + (2 * l_id_7693)) + (64 * wg_id_7657)] = x7550;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_128_0_2(global float* restrict output, const global float* restrict e8475){
local float x8895[64];

local float x8909[32];

local float x8872[16];

local float x8929[8];

local float x8849[4];

local float x8949[2];

local float x8826[1];

local float x8969[1];

local float x8803[2];

local float x8989[4];

local float x8780[8];

local float x9009[16];

local float x8757[32];

local float x9029[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_9059 = get_group_id(0); wg_id_9059 < 200000; wg_id_9059 = wg_id_9059 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_9060 = get_local_id(0); l_id_9060 < 64; l_id_9060 = l_id_9060 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x9042;
        x9042 = 0.0f;
        /* unrolling loop of 2 */
        x9042 = x9042 + e8475[(2 * l_id_9060) + (128 * wg_id_9059)];
        x9042 = x9042 + e8475[(1 + (2 * l_id_9060)) + (128 * wg_id_9059)];
        x9029[l_id_9060] = x9042;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9061 = get_local_id(0); l_id_9061 < 32; l_id_9061 = l_id_9061 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x9022;
        x9022 = 0.0f;
        /* unrolling loop of 2 */
        x9022 = x9022 + x9029[2 * l_id_9061];
        x9022 = x9022 + x9029[1 + (2 * l_id_9061)];
        x9009[l_id_9061] = x9022;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9062 = get_local_id(0); l_id_9062 < 16; l_id_9062 = l_id_9062 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x9002;
        x9002 = 0.0f;
        /* unrolling loop of 2 */
        x9002 = x9002 + x9009[2 * l_id_9062];
        x9002 = x9002 + x9009[1 + (2 * l_id_9062)];
        x8989[l_id_9062] = x9002;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9063 = get_local_id(0); l_id_9063 < 8; l_id_9063 = l_id_9063 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x8982;
        x8982 = 0.0f;
        /* unrolling loop of 2 */
        x8982 = x8982 + x8989[2 * l_id_9063];
        x8982 = x8982 + x8989[1 + (2 * l_id_9063)];
        x8969[l_id_9063] = x8982;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9064 = get_local_id(0); l_id_9064 < 4; l_id_9064 = l_id_9064 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x8962;
        x8962 = 0.0f;
        /* unrolling loop of 2 */
        x8962 = x8962 + x8969[2 * l_id_9064];
        x8962 = x8962 + x8969[1 + (2 * l_id_9064)];
        x8949[l_id_9064] = x8962;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9065 = get_local_id(0); l_id_9065 < 2; l_id_9065 = l_id_9065 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x8942;
        x8942 = 0.0f;
        /* unrolling loop of 2 */
        x8942 = x8942 + x8949[2 * l_id_9065];
        x8942 = x8942 + x8949[1 + (2 * l_id_9065)];
        x8929[l_id_9065] = x8942;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9066 = get_local_id(0); l_id_9066 < 1; l_id_9066 = l_id_9066 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x8922;
        x8922 = 0.0f;
        /* unrolling loop of 2 */
        x8922 = x8922 + x8929[2 * l_id_9066];
        x8922 = x8922 + x8929[1 + (2 * l_id_9066)];
        x8909[l_id_9066] = x8922;
      }
      
    }
    
    /* oclScanSeq */
    {
      float x8905;
      x8905 = 0.0f;
      /* unrolling loop of 0 */
      x8895[0] = x8905;
    }
    
    /* mapLocal */
    for (int l_id_9067 = get_local_id(0); l_id_9067 < 1; l_id_9067 = l_id_9067 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8885;
        x8885 = x8895[l_id_9067];
        /* unrolling loop of 1 */
        {
          int idxAcc9068 = (int)0;
          x8872[idxAcc9068 + (2 * l_id_9067)] = x8885;
        }
        
        {
          int idx9069 = (int)0;
          x8885 = x8929[idx9069 + (2 * l_id_9067)] + x8885;
        }
        
        x8872[1 + (2 * l_id_9067)] = x8885;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9070 = get_local_id(0); l_id_9070 < 2; l_id_9070 = l_id_9070 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8862;
        x8862 = x8872[l_id_9070];
        /* unrolling loop of 1 */
        {
          int idxAcc9071 = (int)0;
          x8849[idxAcc9071 + (2 * l_id_9070)] = x8862;
        }
        
        {
          int idx9072 = (int)0;
          x8862 = x8949[idx9072 + (2 * l_id_9070)] + x8862;
        }
        
        x8849[1 + (2 * l_id_9070)] = x8862;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9073 = get_local_id(0); l_id_9073 < 4; l_id_9073 = l_id_9073 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8839;
        x8839 = x8849[l_id_9073];
        /* unrolling loop of 1 */
        {
          int idxAcc9074 = (int)0;
          x8826[idxAcc9074 + (2 * l_id_9073)] = x8839;
        }
        
        {
          int idx9075 = (int)0;
          x8839 = x8969[idx9075 + (2 * l_id_9073)] + x8839;
        }
        
        x8826[1 + (2 * l_id_9073)] = x8839;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9076 = get_local_id(0); l_id_9076 < 8; l_id_9076 = l_id_9076 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8816;
        x8816 = x8826[l_id_9076];
        /* unrolling loop of 1 */
        {
          int idxAcc9077 = (int)0;
          x8803[idxAcc9077 + (2 * l_id_9076)] = x8816;
        }
        
        {
          int idx9078 = (int)0;
          x8816 = x8989[idx9078 + (2 * l_id_9076)] + x8816;
        }
        
        x8803[1 + (2 * l_id_9076)] = x8816;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9079 = get_local_id(0); l_id_9079 < 16; l_id_9079 = l_id_9079 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8793;
        x8793 = x8803[l_id_9079];
        /* unrolling loop of 1 */
        {
          int idxAcc9080 = (int)0;
          x8780[idxAcc9080 + (2 * l_id_9079)] = x8793;
        }
        
        {
          int idx9081 = (int)0;
          x8793 = x9009[idx9081 + (2 * l_id_9079)] + x8793;
        }
        
        x8780[1 + (2 * l_id_9079)] = x8793;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9082 = get_local_id(0); l_id_9082 < 32; l_id_9082 = l_id_9082 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8770;
        x8770 = x8780[l_id_9082];
        /* unrolling loop of 1 */
        {
          int idxAcc9083 = (int)0;
          x8757[idxAcc9083 + (2 * l_id_9082)] = x8770;
        }
        
        {
          int idx9084 = (int)0;
          x8770 = x9029[idx9084 + (2 * l_id_9082)] + x8770;
        }
        
        x8757[1 + (2 * l_id_9082)] = x8770;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9085 = get_local_id(0); l_id_9085 < 64; l_id_9085 = l_id_9085 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8747;
        x8747 = x8757[l_id_9085];
        /* unrolling loop of 1 */
        {
          int idxAcc9086 = (int)0;
          output[(idxAcc9086 + (2 * l_id_9085)) + (128 * wg_id_9059)] = x8747;
        }
        
        {
          int idx9087 = (int)0;
          x8747 = e8475[(idx9087 + (2 * l_id_9085)) + (128 * wg_id_9059)] + x8747;
        }
        
        output[(1 + (2 * l_id_9085)) + (128 * wg_id_9059)] = x8747;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_128_1_2(global float* restrict output, const global float* restrict e9759){
local float x10124[64];

local float x10138[32];

local float x10101[16];

local float x10158[8];

local float x10078[4];

local float x10178[2];

local float x10055[2];

local float x10198[4];

local float x10032[8];

local float x10218[16];

local float x10009[32];

local float x10238[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_10268 = get_group_id(0); wg_id_10268 < 200000; wg_id_10268 = wg_id_10268 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_10269 = get_local_id(0); l_id_10269 < 64; l_id_10269 = l_id_10269 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x10251;
        x10251 = 0.0f;
        /* unrolling loop of 2 */
        x10251 = x10251 + e9759[(2 * l_id_10269) + (128 * wg_id_10268)];
        x10251 = x10251 + e9759[(1 + (2 * l_id_10269)) + (128 * wg_id_10268)];
        x10238[l_id_10269] = x10251;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10270 = get_local_id(0); l_id_10270 < 32; l_id_10270 = l_id_10270 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x10231;
        x10231 = 0.0f;
        /* unrolling loop of 2 */
        x10231 = x10231 + x10238[2 * l_id_10270];
        x10231 = x10231 + x10238[1 + (2 * l_id_10270)];
        x10218[l_id_10270] = x10231;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10271 = get_local_id(0); l_id_10271 < 16; l_id_10271 = l_id_10271 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x10211;
        x10211 = 0.0f;
        /* unrolling loop of 2 */
        x10211 = x10211 + x10218[2 * l_id_10271];
        x10211 = x10211 + x10218[1 + (2 * l_id_10271)];
        x10198[l_id_10271] = x10211;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10272 = get_local_id(0); l_id_10272 < 8; l_id_10272 = l_id_10272 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x10191;
        x10191 = 0.0f;
        /* unrolling loop of 2 */
        x10191 = x10191 + x10198[2 * l_id_10272];
        x10191 = x10191 + x10198[1 + (2 * l_id_10272)];
        x10178[l_id_10272] = x10191;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10273 = get_local_id(0); l_id_10273 < 4; l_id_10273 = l_id_10273 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x10171;
        x10171 = 0.0f;
        /* unrolling loop of 2 */
        x10171 = x10171 + x10178[2 * l_id_10273];
        x10171 = x10171 + x10178[1 + (2 * l_id_10273)];
        x10158[l_id_10273] = x10171;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10274 = get_local_id(0); l_id_10274 < 2; l_id_10274 = l_id_10274 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x10151;
        x10151 = 0.0f;
        /* unrolling loop of 2 */
        x10151 = x10151 + x10158[2 * l_id_10274];
        x10151 = x10151 + x10158[1 + (2 * l_id_10274)];
        x10138[l_id_10274] = x10151;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x10134;
      x10134 = 0.0f;
      /* unrolling loop of 1 */
      {
        int idxAcc10275 = (int)0;
        x10124[idxAcc10275] = x10134;
      }
      
      {
        int idx10276 = (int)0;
        x10134 = x10138[idx10276] + x10134;
      }
      
      x10124[1] = x10134;
    }
    
    /* mapLocal */
    for (int l_id_10277 = get_local_id(0); l_id_10277 < 2; l_id_10277 = l_id_10277 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x10114;
        x10114 = x10124[l_id_10277];
        /* unrolling loop of 1 */
        {
          int idxAcc10278 = (int)0;
          x10101[idxAcc10278 + (2 * l_id_10277)] = x10114;
        }
        
        {
          int idx10279 = (int)0;
          x10114 = x10158[idx10279 + (2 * l_id_10277)] + x10114;
        }
        
        x10101[1 + (2 * l_id_10277)] = x10114;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10280 = get_local_id(0); l_id_10280 < 4; l_id_10280 = l_id_10280 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x10091;
        x10091 = x10101[l_id_10280];
        /* unrolling loop of 1 */
        {
          int idxAcc10281 = (int)0;
          x10078[idxAcc10281 + (2 * l_id_10280)] = x10091;
        }
        
        {
          int idx10282 = (int)0;
          x10091 = x10178[idx10282 + (2 * l_id_10280)] + x10091;
        }
        
        x10078[1 + (2 * l_id_10280)] = x10091;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10283 = get_local_id(0); l_id_10283 < 8; l_id_10283 = l_id_10283 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x10068;
        x10068 = x10078[l_id_10283];
        /* unrolling loop of 1 */
        {
          int idxAcc10284 = (int)0;
          x10055[idxAcc10284 + (2 * l_id_10283)] = x10068;
        }
        
        {
          int idx10285 = (int)0;
          x10068 = x10198[idx10285 + (2 * l_id_10283)] + x10068;
        }
        
        x10055[1 + (2 * l_id_10283)] = x10068;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10286 = get_local_id(0); l_id_10286 < 16; l_id_10286 = l_id_10286 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x10045;
        x10045 = x10055[l_id_10286];
        /* unrolling loop of 1 */
        {
          int idxAcc10287 = (int)0;
          x10032[idxAcc10287 + (2 * l_id_10286)] = x10045;
        }
        
        {
          int idx10288 = (int)0;
          x10045 = x10218[idx10288 + (2 * l_id_10286)] + x10045;
        }
        
        x10032[1 + (2 * l_id_10286)] = x10045;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10289 = get_local_id(0); l_id_10289 < 32; l_id_10289 = l_id_10289 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x10022;
        x10022 = x10032[l_id_10289];
        /* unrolling loop of 1 */
        {
          int idxAcc10290 = (int)0;
          x10009[idxAcc10290 + (2 * l_id_10289)] = x10022;
        }
        
        {
          int idx10291 = (int)0;
          x10022 = x10238[idx10291 + (2 * l_id_10289)] + x10022;
        }
        
        x10009[1 + (2 * l_id_10289)] = x10022;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10292 = get_local_id(0); l_id_10292 < 64; l_id_10292 = l_id_10292 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x9999;
        x9999 = x10009[l_id_10292];
        /* unrolling loop of 1 */
        {
          int idxAcc10293 = (int)0;
          output[(idxAcc10293 + (2 * l_id_10292)) + (128 * wg_id_10268)] = x9999;
        }
        
        {
          int idx10294 = (int)0;
          x9999 = e9759[(idx10294 + (2 * l_id_10292)) + (128 * wg_id_10268)] + x9999;
        }
        
        output[(1 + (2 * l_id_10292)) + (128 * wg_id_10268)] = x9999;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_128_2_2(global float* restrict output, const global float* restrict e10858){
local float x11168[64];

local float x11182[32];

local float x11145[16];

local float x11202[8];

local float x11122[4];

local float x11222[4];

local float x11099[8];

local float x11242[16];

local float x11076[32];

local float x11262[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_11293 = get_group_id(0); wg_id_11293 < 200000; wg_id_11293 = wg_id_11293 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_11294 = get_local_id(0); l_id_11294 < 64; l_id_11294 = l_id_11294 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x11275;
        x11275 = 0.0f;
        /* unrolling loop of 2 */
        x11275 = x11275 + e10858[(2 * l_id_11294) + (128 * wg_id_11293)];
        x11275 = x11275 + e10858[(1 + (2 * l_id_11294)) + (128 * wg_id_11293)];
        x11262[l_id_11294] = x11275;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11295 = get_local_id(0); l_id_11295 < 32; l_id_11295 = l_id_11295 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x11255;
        x11255 = 0.0f;
        /* unrolling loop of 2 */
        x11255 = x11255 + x11262[2 * l_id_11295];
        x11255 = x11255 + x11262[1 + (2 * l_id_11295)];
        x11242[l_id_11295] = x11255;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11296 = get_local_id(0); l_id_11296 < 16; l_id_11296 = l_id_11296 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x11235;
        x11235 = 0.0f;
        /* unrolling loop of 2 */
        x11235 = x11235 + x11242[2 * l_id_11296];
        x11235 = x11235 + x11242[1 + (2 * l_id_11296)];
        x11222[l_id_11296] = x11235;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11297 = get_local_id(0); l_id_11297 < 8; l_id_11297 = l_id_11297 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x11215;
        x11215 = 0.0f;
        /* unrolling loop of 2 */
        x11215 = x11215 + x11222[2 * l_id_11297];
        x11215 = x11215 + x11222[1 + (2 * l_id_11297)];
        x11202[l_id_11297] = x11215;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11298 = get_local_id(0); l_id_11298 < 4; l_id_11298 = l_id_11298 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x11195;
        x11195 = 0.0f;
        /* unrolling loop of 2 */
        x11195 = x11195 + x11202[2 * l_id_11298];
        x11195 = x11195 + x11202[1 + (2 * l_id_11298)];
        x11182[l_id_11298] = x11195;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x11178;
      x11178 = 0.0f;
      /* unrolling loop of 3 */
      {
        int idxAcc11299 = (int)0;
        x11168[idxAcc11299] = x11178;
      }
      
      {
        int idx11300 = (int)0;
        x11178 = x11182[idx11300] + x11178;
      }
      
      {
        int idxAcc11301 = (int)1;
        x11168[idxAcc11301] = x11178;
      }
      
      {
        int idx11302 = (int)1;
        x11178 = x11182[idx11302] + x11178;
      }
      
      {
        int idxAcc11303 = (int)2;
        x11168[idxAcc11303] = x11178;
      }
      
      {
        int idx11304 = (int)2;
        x11178 = x11182[idx11304] + x11178;
      }
      
      x11168[3] = x11178;
    }
    
    /* mapLocal */
    for (int l_id_11305 = get_local_id(0); l_id_11305 < 4; l_id_11305 = l_id_11305 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11158;
        x11158 = x11168[l_id_11305];
        /* unrolling loop of 1 */
        {
          int idxAcc11306 = (int)0;
          x11145[idxAcc11306 + (2 * l_id_11305)] = x11158;
        }
        
        {
          int idx11307 = (int)0;
          x11158 = x11202[idx11307 + (2 * l_id_11305)] + x11158;
        }
        
        x11145[1 + (2 * l_id_11305)] = x11158;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11308 = get_local_id(0); l_id_11308 < 8; l_id_11308 = l_id_11308 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11135;
        x11135 = x11145[l_id_11308];
        /* unrolling loop of 1 */
        {
          int idxAcc11309 = (int)0;
          x11122[idxAcc11309 + (2 * l_id_11308)] = x11135;
        }
        
        {
          int idx11310 = (int)0;
          x11135 = x11222[idx11310 + (2 * l_id_11308)] + x11135;
        }
        
        x11122[1 + (2 * l_id_11308)] = x11135;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11311 = get_local_id(0); l_id_11311 < 16; l_id_11311 = l_id_11311 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11112;
        x11112 = x11122[l_id_11311];
        /* unrolling loop of 1 */
        {
          int idxAcc11312 = (int)0;
          x11099[idxAcc11312 + (2 * l_id_11311)] = x11112;
        }
        
        {
          int idx11313 = (int)0;
          x11112 = x11242[idx11313 + (2 * l_id_11311)] + x11112;
        }
        
        x11099[1 + (2 * l_id_11311)] = x11112;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11314 = get_local_id(0); l_id_11314 < 32; l_id_11314 = l_id_11314 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11089;
        x11089 = x11099[l_id_11314];
        /* unrolling loop of 1 */
        {
          int idxAcc11315 = (int)0;
          x11076[idxAcc11315 + (2 * l_id_11314)] = x11089;
        }
        
        {
          int idx11316 = (int)0;
          x11089 = x11262[idx11316 + (2 * l_id_11314)] + x11089;
        }
        
        x11076[1 + (2 * l_id_11314)] = x11089;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11317 = get_local_id(0); l_id_11317 < 64; l_id_11317 = l_id_11317 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11066;
        x11066 = x11076[l_id_11317];
        /* unrolling loop of 1 */
        {
          int idxAcc11318 = (int)0;
          output[(idxAcc11318 + (2 * l_id_11317)) + (128 * wg_id_11293)] = x11066;
        }
        
        {
          int idx11319 = (int)0;
          x11066 = e10858[(idx11319 + (2 * l_id_11317)) + (128 * wg_id_11293)] + x11066;
        }
        
        output[(1 + (2 * l_id_11317)) + (128 * wg_id_11293)] = x11066;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_128_3_2(global float* restrict output, const global float* restrict e11775){
local float x12030[64];

local float x12044[32];

local float x12007[16];

local float x12064[8];

local float x11984[8];

local float x12084[16];

local float x11961[32];

local float x12104[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_12138 = get_group_id(0); wg_id_12138 < 200000; wg_id_12138 = wg_id_12138 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_12139 = get_local_id(0); l_id_12139 < 64; l_id_12139 = l_id_12139 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12117;
        x12117 = 0.0f;
        /* unrolling loop of 2 */
        x12117 = x12117 + e11775[(2 * l_id_12139) + (128 * wg_id_12138)];
        x12117 = x12117 + e11775[(1 + (2 * l_id_12139)) + (128 * wg_id_12138)];
        x12104[l_id_12139] = x12117;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12140 = get_local_id(0); l_id_12140 < 32; l_id_12140 = l_id_12140 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12097;
        x12097 = 0.0f;
        /* unrolling loop of 2 */
        x12097 = x12097 + x12104[2 * l_id_12140];
        x12097 = x12097 + x12104[1 + (2 * l_id_12140)];
        x12084[l_id_12140] = x12097;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12141 = get_local_id(0); l_id_12141 < 16; l_id_12141 = l_id_12141 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12077;
        x12077 = 0.0f;
        /* unrolling loop of 2 */
        x12077 = x12077 + x12084[2 * l_id_12141];
        x12077 = x12077 + x12084[1 + (2 * l_id_12141)];
        x12064[l_id_12141] = x12077;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12142 = get_local_id(0); l_id_12142 < 8; l_id_12142 = l_id_12142 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12057;
        x12057 = 0.0f;
        /* unrolling loop of 2 */
        x12057 = x12057 + x12064[2 * l_id_12142];
        x12057 = x12057 + x12064[1 + (2 * l_id_12142)];
        x12044[l_id_12142] = x12057;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x12040;
      x12040 = 0.0f;
      /* unrolling loop of 7 */
      {
        int idxAcc12143 = (int)0;
        x12030[idxAcc12143] = x12040;
      }
      
      {
        int idx12144 = (int)0;
        x12040 = x12044[idx12144] + x12040;
      }
      
      {
        int idxAcc12145 = (int)1;
        x12030[idxAcc12145] = x12040;
      }
      
      {
        int idx12146 = (int)1;
        x12040 = x12044[idx12146] + x12040;
      }
      
      {
        int idxAcc12147 = (int)2;
        x12030[idxAcc12147] = x12040;
      }
      
      {
        int idx12148 = (int)2;
        x12040 = x12044[idx12148] + x12040;
      }
      
      {
        int idxAcc12149 = (int)3;
        x12030[idxAcc12149] = x12040;
      }
      
      {
        int idx12150 = (int)3;
        x12040 = x12044[idx12150] + x12040;
      }
      
      {
        int idxAcc12151 = (int)4;
        x12030[idxAcc12151] = x12040;
      }
      
      {
        int idx12152 = (int)4;
        x12040 = x12044[idx12152] + x12040;
      }
      
      {
        int idxAcc12153 = (int)5;
        x12030[idxAcc12153] = x12040;
      }
      
      {
        int idx12154 = (int)5;
        x12040 = x12044[idx12154] + x12040;
      }
      
      {
        int idxAcc12155 = (int)6;
        x12030[idxAcc12155] = x12040;
      }
      
      {
        int idx12156 = (int)6;
        x12040 = x12044[idx12156] + x12040;
      }
      
      x12030[7] = x12040;
    }
    
    /* mapLocal */
    for (int l_id_12157 = get_local_id(0); l_id_12157 < 8; l_id_12157 = l_id_12157 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x12020;
        x12020 = x12030[l_id_12157];
        /* unrolling loop of 1 */
        {
          int idxAcc12158 = (int)0;
          x12007[idxAcc12158 + (2 * l_id_12157)] = x12020;
        }
        
        {
          int idx12159 = (int)0;
          x12020 = x12064[idx12159 + (2 * l_id_12157)] + x12020;
        }
        
        x12007[1 + (2 * l_id_12157)] = x12020;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12160 = get_local_id(0); l_id_12160 < 16; l_id_12160 = l_id_12160 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11997;
        x11997 = x12007[l_id_12160];
        /* unrolling loop of 1 */
        {
          int idxAcc12161 = (int)0;
          x11984[idxAcc12161 + (2 * l_id_12160)] = x11997;
        }
        
        {
          int idx12162 = (int)0;
          x11997 = x12084[idx12162 + (2 * l_id_12160)] + x11997;
        }
        
        x11984[1 + (2 * l_id_12160)] = x11997;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12163 = get_local_id(0); l_id_12163 < 32; l_id_12163 = l_id_12163 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11974;
        x11974 = x11984[l_id_12163];
        /* unrolling loop of 1 */
        {
          int idxAcc12164 = (int)0;
          x11961[idxAcc12164 + (2 * l_id_12163)] = x11974;
        }
        
        {
          int idx12165 = (int)0;
          x11974 = x12104[idx12165 + (2 * l_id_12163)] + x11974;
        }
        
        x11961[1 + (2 * l_id_12163)] = x11974;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12166 = get_local_id(0); l_id_12166 < 64; l_id_12166 = l_id_12166 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11951;
        x11951 = x11961[l_id_12166];
        /* unrolling loop of 1 */
        {
          int idxAcc12167 = (int)0;
          output[(idxAcc12167 + (2 * l_id_12166)) + (128 * wg_id_12138)] = x11951;
        }
        
        {
          int idx12168 = (int)0;
          x11951 = e11775[(idx12168 + (2 * l_id_12166)) + (128 * wg_id_12138)] + x11951;
        }
        
        output[(1 + (2 * l_id_12166)) + (128 * wg_id_12138)] = x11951;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_128_4_2(global float* restrict output, const global float* restrict e12516){
local float x12716[64];

local float x12730[32];

local float x12693[16];

local float x12750[16];

local float x12670[32];

local float x12770[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_12811 = get_group_id(0); wg_id_12811 < 200000; wg_id_12811 = wg_id_12811 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_12812 = get_local_id(0); l_id_12812 < 64; l_id_12812 = l_id_12812 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12783;
        x12783 = 0.0f;
        /* unrolling loop of 2 */
        x12783 = x12783 + e12516[(2 * l_id_12812) + (128 * wg_id_12811)];
        x12783 = x12783 + e12516[(1 + (2 * l_id_12812)) + (128 * wg_id_12811)];
        x12770[l_id_12812] = x12783;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12813 = get_local_id(0); l_id_12813 < 32; l_id_12813 = l_id_12813 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12763;
        x12763 = 0.0f;
        /* unrolling loop of 2 */
        x12763 = x12763 + x12770[2 * l_id_12813];
        x12763 = x12763 + x12770[1 + (2 * l_id_12813)];
        x12750[l_id_12813] = x12763;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12814 = get_local_id(0); l_id_12814 < 16; l_id_12814 = l_id_12814 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12743;
        x12743 = 0.0f;
        /* unrolling loop of 2 */
        x12743 = x12743 + x12750[2 * l_id_12814];
        x12743 = x12743 + x12750[1 + (2 * l_id_12814)];
        x12730[l_id_12814] = x12743;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x12726;
      x12726 = 0.0f;
      /* unrolling loop of 15 */
      {
        int idxAcc12815 = (int)0;
        x12716[idxAcc12815] = x12726;
      }
      
      {
        int idx12816 = (int)0;
        x12726 = x12730[idx12816] + x12726;
      }
      
      {
        int idxAcc12817 = (int)1;
        x12716[idxAcc12817] = x12726;
      }
      
      {
        int idx12818 = (int)1;
        x12726 = x12730[idx12818] + x12726;
      }
      
      {
        int idxAcc12819 = (int)2;
        x12716[idxAcc12819] = x12726;
      }
      
      {
        int idx12820 = (int)2;
        x12726 = x12730[idx12820] + x12726;
      }
      
      {
        int idxAcc12821 = (int)3;
        x12716[idxAcc12821] = x12726;
      }
      
      {
        int idx12822 = (int)3;
        x12726 = x12730[idx12822] + x12726;
      }
      
      {
        int idxAcc12823 = (int)4;
        x12716[idxAcc12823] = x12726;
      }
      
      {
        int idx12824 = (int)4;
        x12726 = x12730[idx12824] + x12726;
      }
      
      {
        int idxAcc12825 = (int)5;
        x12716[idxAcc12825] = x12726;
      }
      
      {
        int idx12826 = (int)5;
        x12726 = x12730[idx12826] + x12726;
      }
      
      {
        int idxAcc12827 = (int)6;
        x12716[idxAcc12827] = x12726;
      }
      
      {
        int idx12828 = (int)6;
        x12726 = x12730[idx12828] + x12726;
      }
      
      {
        int idxAcc12829 = (int)7;
        x12716[idxAcc12829] = x12726;
      }
      
      {
        int idx12830 = (int)7;
        x12726 = x12730[idx12830] + x12726;
      }
      
      {
        int idxAcc12831 = (int)8;
        x12716[idxAcc12831] = x12726;
      }
      
      {
        int idx12832 = (int)8;
        x12726 = x12730[idx12832] + x12726;
      }
      
      {
        int idxAcc12833 = (int)9;
        x12716[idxAcc12833] = x12726;
      }
      
      {
        int idx12834 = (int)9;
        x12726 = x12730[idx12834] + x12726;
      }
      
      {
        int idxAcc12835 = (int)10;
        x12716[idxAcc12835] = x12726;
      }
      
      {
        int idx12836 = (int)10;
        x12726 = x12730[idx12836] + x12726;
      }
      
      {
        int idxAcc12837 = (int)11;
        x12716[idxAcc12837] = x12726;
      }
      
      {
        int idx12838 = (int)11;
        x12726 = x12730[idx12838] + x12726;
      }
      
      {
        int idxAcc12839 = (int)12;
        x12716[idxAcc12839] = x12726;
      }
      
      {
        int idx12840 = (int)12;
        x12726 = x12730[idx12840] + x12726;
      }
      
      {
        int idxAcc12841 = (int)13;
        x12716[idxAcc12841] = x12726;
      }
      
      {
        int idx12842 = (int)13;
        x12726 = x12730[idx12842] + x12726;
      }
      
      {
        int idxAcc12843 = (int)14;
        x12716[idxAcc12843] = x12726;
      }
      
      {
        int idx12844 = (int)14;
        x12726 = x12730[idx12844] + x12726;
      }
      
      x12716[15] = x12726;
    }
    
    /* mapLocal */
    for (int l_id_12845 = get_local_id(0); l_id_12845 < 16; l_id_12845 = l_id_12845 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x12706;
        x12706 = x12716[l_id_12845];
        /* unrolling loop of 1 */
        {
          int idxAcc12846 = (int)0;
          x12693[idxAcc12846 + (2 * l_id_12845)] = x12706;
        }
        
        {
          int idx12847 = (int)0;
          x12706 = x12750[idx12847 + (2 * l_id_12845)] + x12706;
        }
        
        x12693[1 + (2 * l_id_12845)] = x12706;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12848 = get_local_id(0); l_id_12848 < 32; l_id_12848 = l_id_12848 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x12683;
        x12683 = x12693[l_id_12848];
        /* unrolling loop of 1 */
        {
          int idxAcc12849 = (int)0;
          x12670[idxAcc12849 + (2 * l_id_12848)] = x12683;
        }
        
        {
          int idx12850 = (int)0;
          x12683 = x12770[idx12850 + (2 * l_id_12848)] + x12683;
        }
        
        x12670[1 + (2 * l_id_12848)] = x12683;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12851 = get_local_id(0); l_id_12851 < 64; l_id_12851 = l_id_12851 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x12660;
        x12660 = x12670[l_id_12851];
        /* unrolling loop of 1 */
        {
          int idxAcc12852 = (int)0;
          output[(idxAcc12852 + (2 * l_id_12851)) + (128 * wg_id_12811)] = x12660;
        }
        
        {
          int idx12853 = (int)0;
          x12660 = e12516[(idx12853 + (2 * l_id_12851)) + (128 * wg_id_12811)] + x12660;
        }
        
        output[(1 + (2 * l_id_12851)) + (128 * wg_id_12811)] = x12660;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_256_0_2(global float* restrict output, const global float* restrict e13741){
local float x14216[128];

local float x14230[64];

local float x14193[32];

local float x14250[16];

local float x14170[8];

local float x14270[4];

local float x14147[2];

local float x14290[1];

local float x14124[1];

local float x14310[2];

local float x14101[4];

local float x14330[8];

local float x14078[16];

local float x14350[32];

local float x14055[64];

local float x14370[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_14401 = get_group_id(0); wg_id_14401 < 100000; wg_id_14401 = wg_id_14401 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_14402 = get_local_id(0); l_id_14402 < 128; l_id_14402 = l_id_14402 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14383;
        x14383 = 0.0f;
        /* unrolling loop of 2 */
        x14383 = x14383 + e13741[(2 * l_id_14402) + (256 * wg_id_14401)];
        x14383 = x14383 + e13741[(1 + (2 * l_id_14402)) + (256 * wg_id_14401)];
        x14370[l_id_14402] = x14383;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14403 = get_local_id(0); l_id_14403 < 64; l_id_14403 = l_id_14403 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14363;
        x14363 = 0.0f;
        /* unrolling loop of 2 */
        x14363 = x14363 + x14370[2 * l_id_14403];
        x14363 = x14363 + x14370[1 + (2 * l_id_14403)];
        x14350[l_id_14403] = x14363;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14404 = get_local_id(0); l_id_14404 < 32; l_id_14404 = l_id_14404 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14343;
        x14343 = 0.0f;
        /* unrolling loop of 2 */
        x14343 = x14343 + x14350[2 * l_id_14404];
        x14343 = x14343 + x14350[1 + (2 * l_id_14404)];
        x14330[l_id_14404] = x14343;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14405 = get_local_id(0); l_id_14405 < 16; l_id_14405 = l_id_14405 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14323;
        x14323 = 0.0f;
        /* unrolling loop of 2 */
        x14323 = x14323 + x14330[2 * l_id_14405];
        x14323 = x14323 + x14330[1 + (2 * l_id_14405)];
        x14310[l_id_14405] = x14323;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14406 = get_local_id(0); l_id_14406 < 8; l_id_14406 = l_id_14406 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14303;
        x14303 = 0.0f;
        /* unrolling loop of 2 */
        x14303 = x14303 + x14310[2 * l_id_14406];
        x14303 = x14303 + x14310[1 + (2 * l_id_14406)];
        x14290[l_id_14406] = x14303;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14407 = get_local_id(0); l_id_14407 < 4; l_id_14407 = l_id_14407 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14283;
        x14283 = 0.0f;
        /* unrolling loop of 2 */
        x14283 = x14283 + x14290[2 * l_id_14407];
        x14283 = x14283 + x14290[1 + (2 * l_id_14407)];
        x14270[l_id_14407] = x14283;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14408 = get_local_id(0); l_id_14408 < 2; l_id_14408 = l_id_14408 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14263;
        x14263 = 0.0f;
        /* unrolling loop of 2 */
        x14263 = x14263 + x14270[2 * l_id_14408];
        x14263 = x14263 + x14270[1 + (2 * l_id_14408)];
        x14250[l_id_14408] = x14263;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14409 = get_local_id(0); l_id_14409 < 1; l_id_14409 = l_id_14409 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14243;
        x14243 = 0.0f;
        /* unrolling loop of 2 */
        x14243 = x14243 + x14250[2 * l_id_14409];
        x14243 = x14243 + x14250[1 + (2 * l_id_14409)];
        x14230[l_id_14409] = x14243;
      }
      
    }
    
    /* oclScanSeq */
    {
      float x14226;
      x14226 = 0.0f;
      /* unrolling loop of 0 */
      x14216[0] = x14226;
    }
    
    /* mapLocal */
    for (int l_id_14410 = get_local_id(0); l_id_14410 < 1; l_id_14410 = l_id_14410 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14206;
        x14206 = x14216[l_id_14410];
        /* unrolling loop of 1 */
        {
          int idxAcc14411 = (int)0;
          x14193[idxAcc14411 + (2 * l_id_14410)] = x14206;
        }
        
        {
          int idx14412 = (int)0;
          x14206 = x14250[idx14412 + (2 * l_id_14410)] + x14206;
        }
        
        x14193[1 + (2 * l_id_14410)] = x14206;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14413 = get_local_id(0); l_id_14413 < 2; l_id_14413 = l_id_14413 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14183;
        x14183 = x14193[l_id_14413];
        /* unrolling loop of 1 */
        {
          int idxAcc14414 = (int)0;
          x14170[idxAcc14414 + (2 * l_id_14413)] = x14183;
        }
        
        {
          int idx14415 = (int)0;
          x14183 = x14270[idx14415 + (2 * l_id_14413)] + x14183;
        }
        
        x14170[1 + (2 * l_id_14413)] = x14183;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14416 = get_local_id(0); l_id_14416 < 4; l_id_14416 = l_id_14416 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14160;
        x14160 = x14170[l_id_14416];
        /* unrolling loop of 1 */
        {
          int idxAcc14417 = (int)0;
          x14147[idxAcc14417 + (2 * l_id_14416)] = x14160;
        }
        
        {
          int idx14418 = (int)0;
          x14160 = x14290[idx14418 + (2 * l_id_14416)] + x14160;
        }
        
        x14147[1 + (2 * l_id_14416)] = x14160;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14419 = get_local_id(0); l_id_14419 < 8; l_id_14419 = l_id_14419 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14137;
        x14137 = x14147[l_id_14419];
        /* unrolling loop of 1 */
        {
          int idxAcc14420 = (int)0;
          x14124[idxAcc14420 + (2 * l_id_14419)] = x14137;
        }
        
        {
          int idx14421 = (int)0;
          x14137 = x14310[idx14421 + (2 * l_id_14419)] + x14137;
        }
        
        x14124[1 + (2 * l_id_14419)] = x14137;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14422 = get_local_id(0); l_id_14422 < 16; l_id_14422 = l_id_14422 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14114;
        x14114 = x14124[l_id_14422];
        /* unrolling loop of 1 */
        {
          int idxAcc14423 = (int)0;
          x14101[idxAcc14423 + (2 * l_id_14422)] = x14114;
        }
        
        {
          int idx14424 = (int)0;
          x14114 = x14330[idx14424 + (2 * l_id_14422)] + x14114;
        }
        
        x14101[1 + (2 * l_id_14422)] = x14114;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14425 = get_local_id(0); l_id_14425 < 32; l_id_14425 = l_id_14425 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14091;
        x14091 = x14101[l_id_14425];
        /* unrolling loop of 1 */
        {
          int idxAcc14426 = (int)0;
          x14078[idxAcc14426 + (2 * l_id_14425)] = x14091;
        }
        
        {
          int idx14427 = (int)0;
          x14091 = x14350[idx14427 + (2 * l_id_14425)] + x14091;
        }
        
        x14078[1 + (2 * l_id_14425)] = x14091;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14428 = get_local_id(0); l_id_14428 < 64; l_id_14428 = l_id_14428 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14068;
        x14068 = x14078[l_id_14428];
        /* unrolling loop of 1 */
        {
          int idxAcc14429 = (int)0;
          x14055[idxAcc14429 + (2 * l_id_14428)] = x14068;
        }
        
        {
          int idx14430 = (int)0;
          x14068 = x14370[idx14430 + (2 * l_id_14428)] + x14068;
        }
        
        x14055[1 + (2 * l_id_14428)] = x14068;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14431 = get_local_id(0); l_id_14431 < 128; l_id_14431 = l_id_14431 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14045;
        x14045 = x14055[l_id_14431];
        /* unrolling loop of 1 */
        {
          int idxAcc14432 = (int)0;
          output[(idxAcc14432 + (2 * l_id_14431)) + (256 * wg_id_14401)] = x14045;
        }
        
        {
          int idx14433 = (int)0;
          x14045 = e13741[(idx14433 + (2 * l_id_14431)) + (256 * wg_id_14401)] + x14045;
        }
        
        output[(1 + (2 * l_id_14431)) + (256 * wg_id_14401)] = x14045;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_256_1_2(global float* restrict output, const global float* restrict e15213){
local float x15633[128];

local float x15647[64];

local float x15610[32];

local float x15667[16];

local float x15587[8];

local float x15687[4];

local float x15564[2];

local float x15707[2];

local float x15541[4];

local float x15727[8];

local float x15518[16];

local float x15747[32];

local float x15495[64];

local float x15767[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_15798 = get_group_id(0); wg_id_15798 < 100000; wg_id_15798 = wg_id_15798 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_15799 = get_local_id(0); l_id_15799 < 128; l_id_15799 = l_id_15799 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15780;
        x15780 = 0.0f;
        /* unrolling loop of 2 */
        x15780 = x15780 + e15213[(2 * l_id_15799) + (256 * wg_id_15798)];
        x15780 = x15780 + e15213[(1 + (2 * l_id_15799)) + (256 * wg_id_15798)];
        x15767[l_id_15799] = x15780;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15800 = get_local_id(0); l_id_15800 < 64; l_id_15800 = l_id_15800 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15760;
        x15760 = 0.0f;
        /* unrolling loop of 2 */
        x15760 = x15760 + x15767[2 * l_id_15800];
        x15760 = x15760 + x15767[1 + (2 * l_id_15800)];
        x15747[l_id_15800] = x15760;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15801 = get_local_id(0); l_id_15801 < 32; l_id_15801 = l_id_15801 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15740;
        x15740 = 0.0f;
        /* unrolling loop of 2 */
        x15740 = x15740 + x15747[2 * l_id_15801];
        x15740 = x15740 + x15747[1 + (2 * l_id_15801)];
        x15727[l_id_15801] = x15740;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15802 = get_local_id(0); l_id_15802 < 16; l_id_15802 = l_id_15802 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15720;
        x15720 = 0.0f;
        /* unrolling loop of 2 */
        x15720 = x15720 + x15727[2 * l_id_15802];
        x15720 = x15720 + x15727[1 + (2 * l_id_15802)];
        x15707[l_id_15802] = x15720;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15803 = get_local_id(0); l_id_15803 < 8; l_id_15803 = l_id_15803 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15700;
        x15700 = 0.0f;
        /* unrolling loop of 2 */
        x15700 = x15700 + x15707[2 * l_id_15803];
        x15700 = x15700 + x15707[1 + (2 * l_id_15803)];
        x15687[l_id_15803] = x15700;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15804 = get_local_id(0); l_id_15804 < 4; l_id_15804 = l_id_15804 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15680;
        x15680 = 0.0f;
        /* unrolling loop of 2 */
        x15680 = x15680 + x15687[2 * l_id_15804];
        x15680 = x15680 + x15687[1 + (2 * l_id_15804)];
        x15667[l_id_15804] = x15680;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15805 = get_local_id(0); l_id_15805 < 2; l_id_15805 = l_id_15805 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15660;
        x15660 = 0.0f;
        /* unrolling loop of 2 */
        x15660 = x15660 + x15667[2 * l_id_15805];
        x15660 = x15660 + x15667[1 + (2 * l_id_15805)];
        x15647[l_id_15805] = x15660;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x15643;
      x15643 = 0.0f;
      /* unrolling loop of 1 */
      {
        int idxAcc15806 = (int)0;
        x15633[idxAcc15806] = x15643;
      }
      
      {
        int idx15807 = (int)0;
        x15643 = x15647[idx15807] + x15643;
      }
      
      x15633[1] = x15643;
    }
    
    /* mapLocal */
    for (int l_id_15808 = get_local_id(0); l_id_15808 < 2; l_id_15808 = l_id_15808 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15623;
        x15623 = x15633[l_id_15808];
        /* unrolling loop of 1 */
        {
          int idxAcc15809 = (int)0;
          x15610[idxAcc15809 + (2 * l_id_15808)] = x15623;
        }
        
        {
          int idx15810 = (int)0;
          x15623 = x15667[idx15810 + (2 * l_id_15808)] + x15623;
        }
        
        x15610[1 + (2 * l_id_15808)] = x15623;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15811 = get_local_id(0); l_id_15811 < 4; l_id_15811 = l_id_15811 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15600;
        x15600 = x15610[l_id_15811];
        /* unrolling loop of 1 */
        {
          int idxAcc15812 = (int)0;
          x15587[idxAcc15812 + (2 * l_id_15811)] = x15600;
        }
        
        {
          int idx15813 = (int)0;
          x15600 = x15687[idx15813 + (2 * l_id_15811)] + x15600;
        }
        
        x15587[1 + (2 * l_id_15811)] = x15600;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15814 = get_local_id(0); l_id_15814 < 8; l_id_15814 = l_id_15814 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15577;
        x15577 = x15587[l_id_15814];
        /* unrolling loop of 1 */
        {
          int idxAcc15815 = (int)0;
          x15564[idxAcc15815 + (2 * l_id_15814)] = x15577;
        }
        
        {
          int idx15816 = (int)0;
          x15577 = x15707[idx15816 + (2 * l_id_15814)] + x15577;
        }
        
        x15564[1 + (2 * l_id_15814)] = x15577;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15817 = get_local_id(0); l_id_15817 < 16; l_id_15817 = l_id_15817 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15554;
        x15554 = x15564[l_id_15817];
        /* unrolling loop of 1 */
        {
          int idxAcc15818 = (int)0;
          x15541[idxAcc15818 + (2 * l_id_15817)] = x15554;
        }
        
        {
          int idx15819 = (int)0;
          x15554 = x15727[idx15819 + (2 * l_id_15817)] + x15554;
        }
        
        x15541[1 + (2 * l_id_15817)] = x15554;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15820 = get_local_id(0); l_id_15820 < 32; l_id_15820 = l_id_15820 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15531;
        x15531 = x15541[l_id_15820];
        /* unrolling loop of 1 */
        {
          int idxAcc15821 = (int)0;
          x15518[idxAcc15821 + (2 * l_id_15820)] = x15531;
        }
        
        {
          int idx15822 = (int)0;
          x15531 = x15747[idx15822 + (2 * l_id_15820)] + x15531;
        }
        
        x15518[1 + (2 * l_id_15820)] = x15531;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15823 = get_local_id(0); l_id_15823 < 64; l_id_15823 = l_id_15823 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15508;
        x15508 = x15518[l_id_15823];
        /* unrolling loop of 1 */
        {
          int idxAcc15824 = (int)0;
          x15495[idxAcc15824 + (2 * l_id_15823)] = x15508;
        }
        
        {
          int idx15825 = (int)0;
          x15508 = x15767[idx15825 + (2 * l_id_15823)] + x15508;
        }
        
        x15495[1 + (2 * l_id_15823)] = x15508;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15826 = get_local_id(0); l_id_15826 < 128; l_id_15826 = l_id_15826 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15485;
        x15485 = x15495[l_id_15826];
        /* unrolling loop of 1 */
        {
          int idxAcc15827 = (int)0;
          output[(idxAcc15827 + (2 * l_id_15826)) + (256 * wg_id_15798)] = x15485;
        }
        
        {
          int idx15828 = (int)0;
          x15485 = e15213[(idx15828 + (2 * l_id_15826)) + (256 * wg_id_15798)] + x15485;
        }
        
        output[(1 + (2 * l_id_15826)) + (256 * wg_id_15798)] = x15485;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_256_2_2(global float* restrict output, const global float* restrict e16500){
local float x16865[128];

local float x16879[64];

local float x16842[32];

local float x16899[16];

local float x16819[8];

local float x16919[4];

local float x16796[4];

local float x16939[8];

local float x16773[16];

local float x16959[32];

local float x16750[64];

local float x16979[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_17011 = get_group_id(0); wg_id_17011 < 100000; wg_id_17011 = wg_id_17011 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_17012 = get_local_id(0); l_id_17012 < 128; l_id_17012 = l_id_17012 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x16992;
        x16992 = 0.0f;
        /* unrolling loop of 2 */
        x16992 = x16992 + e16500[(2 * l_id_17012) + (256 * wg_id_17011)];
        x16992 = x16992 + e16500[(1 + (2 * l_id_17012)) + (256 * wg_id_17011)];
        x16979[l_id_17012] = x16992;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17013 = get_local_id(0); l_id_17013 < 64; l_id_17013 = l_id_17013 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x16972;
        x16972 = 0.0f;
        /* unrolling loop of 2 */
        x16972 = x16972 + x16979[2 * l_id_17013];
        x16972 = x16972 + x16979[1 + (2 * l_id_17013)];
        x16959[l_id_17013] = x16972;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17014 = get_local_id(0); l_id_17014 < 32; l_id_17014 = l_id_17014 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x16952;
        x16952 = 0.0f;
        /* unrolling loop of 2 */
        x16952 = x16952 + x16959[2 * l_id_17014];
        x16952 = x16952 + x16959[1 + (2 * l_id_17014)];
        x16939[l_id_17014] = x16952;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17015 = get_local_id(0); l_id_17015 < 16; l_id_17015 = l_id_17015 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x16932;
        x16932 = 0.0f;
        /* unrolling loop of 2 */
        x16932 = x16932 + x16939[2 * l_id_17015];
        x16932 = x16932 + x16939[1 + (2 * l_id_17015)];
        x16919[l_id_17015] = x16932;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17016 = get_local_id(0); l_id_17016 < 8; l_id_17016 = l_id_17016 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x16912;
        x16912 = 0.0f;
        /* unrolling loop of 2 */
        x16912 = x16912 + x16919[2 * l_id_17016];
        x16912 = x16912 + x16919[1 + (2 * l_id_17016)];
        x16899[l_id_17016] = x16912;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17017 = get_local_id(0); l_id_17017 < 4; l_id_17017 = l_id_17017 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x16892;
        x16892 = 0.0f;
        /* unrolling loop of 2 */
        x16892 = x16892 + x16899[2 * l_id_17017];
        x16892 = x16892 + x16899[1 + (2 * l_id_17017)];
        x16879[l_id_17017] = x16892;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x16875;
      x16875 = 0.0f;
      /* unrolling loop of 3 */
      {
        int idxAcc17018 = (int)0;
        x16865[idxAcc17018] = x16875;
      }
      
      {
        int idx17019 = (int)0;
        x16875 = x16879[idx17019] + x16875;
      }
      
      {
        int idxAcc17020 = (int)1;
        x16865[idxAcc17020] = x16875;
      }
      
      {
        int idx17021 = (int)1;
        x16875 = x16879[idx17021] + x16875;
      }
      
      {
        int idxAcc17022 = (int)2;
        x16865[idxAcc17022] = x16875;
      }
      
      {
        int idx17023 = (int)2;
        x16875 = x16879[idx17023] + x16875;
      }
      
      x16865[3] = x16875;
    }
    
    /* mapLocal */
    for (int l_id_17024 = get_local_id(0); l_id_17024 < 4; l_id_17024 = l_id_17024 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x16855;
        x16855 = x16865[l_id_17024];
        /* unrolling loop of 1 */
        {
          int idxAcc17025 = (int)0;
          x16842[idxAcc17025 + (2 * l_id_17024)] = x16855;
        }
        
        {
          int idx17026 = (int)0;
          x16855 = x16899[idx17026 + (2 * l_id_17024)] + x16855;
        }
        
        x16842[1 + (2 * l_id_17024)] = x16855;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17027 = get_local_id(0); l_id_17027 < 8; l_id_17027 = l_id_17027 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x16832;
        x16832 = x16842[l_id_17027];
        /* unrolling loop of 1 */
        {
          int idxAcc17028 = (int)0;
          x16819[idxAcc17028 + (2 * l_id_17027)] = x16832;
        }
        
        {
          int idx17029 = (int)0;
          x16832 = x16919[idx17029 + (2 * l_id_17027)] + x16832;
        }
        
        x16819[1 + (2 * l_id_17027)] = x16832;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17030 = get_local_id(0); l_id_17030 < 16; l_id_17030 = l_id_17030 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x16809;
        x16809 = x16819[l_id_17030];
        /* unrolling loop of 1 */
        {
          int idxAcc17031 = (int)0;
          x16796[idxAcc17031 + (2 * l_id_17030)] = x16809;
        }
        
        {
          int idx17032 = (int)0;
          x16809 = x16939[idx17032 + (2 * l_id_17030)] + x16809;
        }
        
        x16796[1 + (2 * l_id_17030)] = x16809;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17033 = get_local_id(0); l_id_17033 < 32; l_id_17033 = l_id_17033 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x16786;
        x16786 = x16796[l_id_17033];
        /* unrolling loop of 1 */
        {
          int idxAcc17034 = (int)0;
          x16773[idxAcc17034 + (2 * l_id_17033)] = x16786;
        }
        
        {
          int idx17035 = (int)0;
          x16786 = x16959[idx17035 + (2 * l_id_17033)] + x16786;
        }
        
        x16773[1 + (2 * l_id_17033)] = x16786;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17036 = get_local_id(0); l_id_17036 < 64; l_id_17036 = l_id_17036 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x16763;
        x16763 = x16773[l_id_17036];
        /* unrolling loop of 1 */
        {
          int idxAcc17037 = (int)0;
          x16750[idxAcc17037 + (2 * l_id_17036)] = x16763;
        }
        
        {
          int idx17038 = (int)0;
          x16763 = x16979[idx17038 + (2 * l_id_17036)] + x16763;
        }
        
        x16750[1 + (2 * l_id_17036)] = x16763;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17039 = get_local_id(0); l_id_17039 < 128; l_id_17039 = l_id_17039 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x16740;
        x16740 = x16750[l_id_17039];
        /* unrolling loop of 1 */
        {
          int idxAcc17040 = (int)0;
          output[(idxAcc17040 + (2 * l_id_17039)) + (256 * wg_id_17011)] = x16740;
        }
        
        {
          int idx17041 = (int)0;
          x16740 = e16500[(idx17041 + (2 * l_id_17039)) + (256 * wg_id_17011)] + x16740;
        }
        
        output[(1 + (2 * l_id_17039)) + (256 * wg_id_17011)] = x16740;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_256_3_2(global float* restrict output, const global float* restrict e17605){
local float x17915[128];

local float x17929[64];

local float x17892[32];

local float x17949[16];

local float x17869[8];

local float x17969[8];

local float x17846[16];

local float x17989[32];

local float x17823[64];

local float x18009[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_18044 = get_group_id(0); wg_id_18044 < 100000; wg_id_18044 = wg_id_18044 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_18045 = get_local_id(0); l_id_18045 < 128; l_id_18045 = l_id_18045 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x18022;
        x18022 = 0.0f;
        /* unrolling loop of 2 */
        x18022 = x18022 + e17605[(2 * l_id_18045) + (256 * wg_id_18044)];
        x18022 = x18022 + e17605[(1 + (2 * l_id_18045)) + (256 * wg_id_18044)];
        x18009[l_id_18045] = x18022;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18046 = get_local_id(0); l_id_18046 < 64; l_id_18046 = l_id_18046 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x18002;
        x18002 = 0.0f;
        /* unrolling loop of 2 */
        x18002 = x18002 + x18009[2 * l_id_18046];
        x18002 = x18002 + x18009[1 + (2 * l_id_18046)];
        x17989[l_id_18046] = x18002;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18047 = get_local_id(0); l_id_18047 < 32; l_id_18047 = l_id_18047 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x17982;
        x17982 = 0.0f;
        /* unrolling loop of 2 */
        x17982 = x17982 + x17989[2 * l_id_18047];
        x17982 = x17982 + x17989[1 + (2 * l_id_18047)];
        x17969[l_id_18047] = x17982;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18048 = get_local_id(0); l_id_18048 < 16; l_id_18048 = l_id_18048 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x17962;
        x17962 = 0.0f;
        /* unrolling loop of 2 */
        x17962 = x17962 + x17969[2 * l_id_18048];
        x17962 = x17962 + x17969[1 + (2 * l_id_18048)];
        x17949[l_id_18048] = x17962;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18049 = get_local_id(0); l_id_18049 < 8; l_id_18049 = l_id_18049 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x17942;
        x17942 = 0.0f;
        /* unrolling loop of 2 */
        x17942 = x17942 + x17949[2 * l_id_18049];
        x17942 = x17942 + x17949[1 + (2 * l_id_18049)];
        x17929[l_id_18049] = x17942;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x17925;
      x17925 = 0.0f;
      /* unrolling loop of 7 */
      {
        int idxAcc18050 = (int)0;
        x17915[idxAcc18050] = x17925;
      }
      
      {
        int idx18051 = (int)0;
        x17925 = x17929[idx18051] + x17925;
      }
      
      {
        int idxAcc18052 = (int)1;
        x17915[idxAcc18052] = x17925;
      }
      
      {
        int idx18053 = (int)1;
        x17925 = x17929[idx18053] + x17925;
      }
      
      {
        int idxAcc18054 = (int)2;
        x17915[idxAcc18054] = x17925;
      }
      
      {
        int idx18055 = (int)2;
        x17925 = x17929[idx18055] + x17925;
      }
      
      {
        int idxAcc18056 = (int)3;
        x17915[idxAcc18056] = x17925;
      }
      
      {
        int idx18057 = (int)3;
        x17925 = x17929[idx18057] + x17925;
      }
      
      {
        int idxAcc18058 = (int)4;
        x17915[idxAcc18058] = x17925;
      }
      
      {
        int idx18059 = (int)4;
        x17925 = x17929[idx18059] + x17925;
      }
      
      {
        int idxAcc18060 = (int)5;
        x17915[idxAcc18060] = x17925;
      }
      
      {
        int idx18061 = (int)5;
        x17925 = x17929[idx18061] + x17925;
      }
      
      {
        int idxAcc18062 = (int)6;
        x17915[idxAcc18062] = x17925;
      }
      
      {
        int idx18063 = (int)6;
        x17925 = x17929[idx18063] + x17925;
      }
      
      x17915[7] = x17925;
    }
    
    /* mapLocal */
    for (int l_id_18064 = get_local_id(0); l_id_18064 < 8; l_id_18064 = l_id_18064 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x17905;
        x17905 = x17915[l_id_18064];
        /* unrolling loop of 1 */
        {
          int idxAcc18065 = (int)0;
          x17892[idxAcc18065 + (2 * l_id_18064)] = x17905;
        }
        
        {
          int idx18066 = (int)0;
          x17905 = x17949[idx18066 + (2 * l_id_18064)] + x17905;
        }
        
        x17892[1 + (2 * l_id_18064)] = x17905;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18067 = get_local_id(0); l_id_18067 < 16; l_id_18067 = l_id_18067 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x17882;
        x17882 = x17892[l_id_18067];
        /* unrolling loop of 1 */
        {
          int idxAcc18068 = (int)0;
          x17869[idxAcc18068 + (2 * l_id_18067)] = x17882;
        }
        
        {
          int idx18069 = (int)0;
          x17882 = x17969[idx18069 + (2 * l_id_18067)] + x17882;
        }
        
        x17869[1 + (2 * l_id_18067)] = x17882;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18070 = get_local_id(0); l_id_18070 < 32; l_id_18070 = l_id_18070 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x17859;
        x17859 = x17869[l_id_18070];
        /* unrolling loop of 1 */
        {
          int idxAcc18071 = (int)0;
          x17846[idxAcc18071 + (2 * l_id_18070)] = x17859;
        }
        
        {
          int idx18072 = (int)0;
          x17859 = x17989[idx18072 + (2 * l_id_18070)] + x17859;
        }
        
        x17846[1 + (2 * l_id_18070)] = x17859;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18073 = get_local_id(0); l_id_18073 < 64; l_id_18073 = l_id_18073 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x17836;
        x17836 = x17846[l_id_18073];
        /* unrolling loop of 1 */
        {
          int idxAcc18074 = (int)0;
          x17823[idxAcc18074 + (2 * l_id_18073)] = x17836;
        }
        
        {
          int idx18075 = (int)0;
          x17836 = x18009[idx18075 + (2 * l_id_18073)] + x17836;
        }
        
        x17823[1 + (2 * l_id_18073)] = x17836;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18076 = get_local_id(0); l_id_18076 < 128; l_id_18076 = l_id_18076 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x17813;
        x17813 = x17823[l_id_18076];
        /* unrolling loop of 1 */
        {
          int idxAcc18077 = (int)0;
          output[(idxAcc18077 + (2 * l_id_18076)) + (256 * wg_id_18044)] = x17813;
        }
        
        {
          int idx18078 = (int)0;
          x17813 = e17605[(idx18078 + (2 * l_id_18076)) + (256 * wg_id_18044)] + x17813;
        }
        
        output[(1 + (2 * l_id_18076)) + (256 * wg_id_18044)] = x17813;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_256_4_2(global float* restrict output, const global float* restrict e18534){
local float x18789[128];

local float x18803[64];

local float x18766[32];

local float x18823[16];

local float x18743[16];

local float x18843[32];

local float x18720[64];

local float x18863[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_18905 = get_group_id(0); wg_id_18905 < 100000; wg_id_18905 = wg_id_18905 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_18906 = get_local_id(0); l_id_18906 < 128; l_id_18906 = l_id_18906 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x18876;
        x18876 = 0.0f;
        /* unrolling loop of 2 */
        x18876 = x18876 + e18534[(2 * l_id_18906) + (256 * wg_id_18905)];
        x18876 = x18876 + e18534[(1 + (2 * l_id_18906)) + (256 * wg_id_18905)];
        x18863[l_id_18906] = x18876;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18907 = get_local_id(0); l_id_18907 < 64; l_id_18907 = l_id_18907 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x18856;
        x18856 = 0.0f;
        /* unrolling loop of 2 */
        x18856 = x18856 + x18863[2 * l_id_18907];
        x18856 = x18856 + x18863[1 + (2 * l_id_18907)];
        x18843[l_id_18907] = x18856;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18908 = get_local_id(0); l_id_18908 < 32; l_id_18908 = l_id_18908 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x18836;
        x18836 = 0.0f;
        /* unrolling loop of 2 */
        x18836 = x18836 + x18843[2 * l_id_18908];
        x18836 = x18836 + x18843[1 + (2 * l_id_18908)];
        x18823[l_id_18908] = x18836;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18909 = get_local_id(0); l_id_18909 < 16; l_id_18909 = l_id_18909 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x18816;
        x18816 = 0.0f;
        /* unrolling loop of 2 */
        x18816 = x18816 + x18823[2 * l_id_18909];
        x18816 = x18816 + x18823[1 + (2 * l_id_18909)];
        x18803[l_id_18909] = x18816;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x18799;
      x18799 = 0.0f;
      /* unrolling loop of 15 */
      {
        int idxAcc18910 = (int)0;
        x18789[idxAcc18910] = x18799;
      }
      
      {
        int idx18911 = (int)0;
        x18799 = x18803[idx18911] + x18799;
      }
      
      {
        int idxAcc18912 = (int)1;
        x18789[idxAcc18912] = x18799;
      }
      
      {
        int idx18913 = (int)1;
        x18799 = x18803[idx18913] + x18799;
      }
      
      {
        int idxAcc18914 = (int)2;
        x18789[idxAcc18914] = x18799;
      }
      
      {
        int idx18915 = (int)2;
        x18799 = x18803[idx18915] + x18799;
      }
      
      {
        int idxAcc18916 = (int)3;
        x18789[idxAcc18916] = x18799;
      }
      
      {
        int idx18917 = (int)3;
        x18799 = x18803[idx18917] + x18799;
      }
      
      {
        int idxAcc18918 = (int)4;
        x18789[idxAcc18918] = x18799;
      }
      
      {
        int idx18919 = (int)4;
        x18799 = x18803[idx18919] + x18799;
      }
      
      {
        int idxAcc18920 = (int)5;
        x18789[idxAcc18920] = x18799;
      }
      
      {
        int idx18921 = (int)5;
        x18799 = x18803[idx18921] + x18799;
      }
      
      {
        int idxAcc18922 = (int)6;
        x18789[idxAcc18922] = x18799;
      }
      
      {
        int idx18923 = (int)6;
        x18799 = x18803[idx18923] + x18799;
      }
      
      {
        int idxAcc18924 = (int)7;
        x18789[idxAcc18924] = x18799;
      }
      
      {
        int idx18925 = (int)7;
        x18799 = x18803[idx18925] + x18799;
      }
      
      {
        int idxAcc18926 = (int)8;
        x18789[idxAcc18926] = x18799;
      }
      
      {
        int idx18927 = (int)8;
        x18799 = x18803[idx18927] + x18799;
      }
      
      {
        int idxAcc18928 = (int)9;
        x18789[idxAcc18928] = x18799;
      }
      
      {
        int idx18929 = (int)9;
        x18799 = x18803[idx18929] + x18799;
      }
      
      {
        int idxAcc18930 = (int)10;
        x18789[idxAcc18930] = x18799;
      }
      
      {
        int idx18931 = (int)10;
        x18799 = x18803[idx18931] + x18799;
      }
      
      {
        int idxAcc18932 = (int)11;
        x18789[idxAcc18932] = x18799;
      }
      
      {
        int idx18933 = (int)11;
        x18799 = x18803[idx18933] + x18799;
      }
      
      {
        int idxAcc18934 = (int)12;
        x18789[idxAcc18934] = x18799;
      }
      
      {
        int idx18935 = (int)12;
        x18799 = x18803[idx18935] + x18799;
      }
      
      {
        int idxAcc18936 = (int)13;
        x18789[idxAcc18936] = x18799;
      }
      
      {
        int idx18937 = (int)13;
        x18799 = x18803[idx18937] + x18799;
      }
      
      {
        int idxAcc18938 = (int)14;
        x18789[idxAcc18938] = x18799;
      }
      
      {
        int idx18939 = (int)14;
        x18799 = x18803[idx18939] + x18799;
      }
      
      x18789[15] = x18799;
    }
    
    /* mapLocal */
    for (int l_id_18940 = get_local_id(0); l_id_18940 < 16; l_id_18940 = l_id_18940 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x18779;
        x18779 = x18789[l_id_18940];
        /* unrolling loop of 1 */
        {
          int idxAcc18941 = (int)0;
          x18766[idxAcc18941 + (2 * l_id_18940)] = x18779;
        }
        
        {
          int idx18942 = (int)0;
          x18779 = x18823[idx18942 + (2 * l_id_18940)] + x18779;
        }
        
        x18766[1 + (2 * l_id_18940)] = x18779;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18943 = get_local_id(0); l_id_18943 < 32; l_id_18943 = l_id_18943 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x18756;
        x18756 = x18766[l_id_18943];
        /* unrolling loop of 1 */
        {
          int idxAcc18944 = (int)0;
          x18743[idxAcc18944 + (2 * l_id_18943)] = x18756;
        }
        
        {
          int idx18945 = (int)0;
          x18756 = x18843[idx18945 + (2 * l_id_18943)] + x18756;
        }
        
        x18743[1 + (2 * l_id_18943)] = x18756;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18946 = get_local_id(0); l_id_18946 < 64; l_id_18946 = l_id_18946 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x18733;
        x18733 = x18743[l_id_18946];
        /* unrolling loop of 1 */
        {
          int idxAcc18947 = (int)0;
          x18720[idxAcc18947 + (2 * l_id_18946)] = x18733;
        }
        
        {
          int idx18948 = (int)0;
          x18733 = x18863[idx18948 + (2 * l_id_18946)] + x18733;
        }
        
        x18720[1 + (2 * l_id_18946)] = x18733;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18949 = get_local_id(0); l_id_18949 < 128; l_id_18949 = l_id_18949 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x18710;
        x18710 = x18720[l_id_18949];
        /* unrolling loop of 1 */
        {
          int idxAcc18950 = (int)0;
          output[(idxAcc18950 + (2 * l_id_18949)) + (256 * wg_id_18905)] = x18710;
        }
        
        {
          int idx18951 = (int)0;
          x18710 = e18534[(idx18951 + (2 * l_id_18949)) + (256 * wg_id_18905)] + x18710;
        }
        
        output[(1 + (2 * l_id_18949)) + (256 * wg_id_18905)] = x18710;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_512_0_2(global float* restrict output, const global float* restrict e19947){
local float x20477[256];

local float x20491[128];

local float x20454[64];

local float x20511[32];

local float x20431[16];

local float x20531[8];

local float x20408[4];

local float x20551[2];

local float x20385[1];

local float x20571[1];

local float x20362[2];

local float x20591[4];

local float x20339[8];

local float x20611[16];

local float x20316[32];

local float x20631[64];

local float x20293[128];

local float x20651[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_20683 = get_group_id(0); wg_id_20683 < 50000; wg_id_20683 = wg_id_20683 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_20684 = get_local_id(0); l_id_20684 < 256; l_id_20684 = l_id_20684 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20664;
        x20664 = 0.0f;
        /* unrolling loop of 2 */
        x20664 = x20664 + e19947[(2 * l_id_20684) + (512 * wg_id_20683)];
        x20664 = x20664 + e19947[(1 + (2 * l_id_20684)) + (512 * wg_id_20683)];
        x20651[l_id_20684] = x20664;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20685 = get_local_id(0); l_id_20685 < 128; l_id_20685 = l_id_20685 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20644;
        x20644 = 0.0f;
        /* unrolling loop of 2 */
        x20644 = x20644 + x20651[2 * l_id_20685];
        x20644 = x20644 + x20651[1 + (2 * l_id_20685)];
        x20631[l_id_20685] = x20644;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20686 = get_local_id(0); l_id_20686 < 64; l_id_20686 = l_id_20686 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20624;
        x20624 = 0.0f;
        /* unrolling loop of 2 */
        x20624 = x20624 + x20631[2 * l_id_20686];
        x20624 = x20624 + x20631[1 + (2 * l_id_20686)];
        x20611[l_id_20686] = x20624;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20687 = get_local_id(0); l_id_20687 < 32; l_id_20687 = l_id_20687 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20604;
        x20604 = 0.0f;
        /* unrolling loop of 2 */
        x20604 = x20604 + x20611[2 * l_id_20687];
        x20604 = x20604 + x20611[1 + (2 * l_id_20687)];
        x20591[l_id_20687] = x20604;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20688 = get_local_id(0); l_id_20688 < 16; l_id_20688 = l_id_20688 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20584;
        x20584 = 0.0f;
        /* unrolling loop of 2 */
        x20584 = x20584 + x20591[2 * l_id_20688];
        x20584 = x20584 + x20591[1 + (2 * l_id_20688)];
        x20571[l_id_20688] = x20584;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20689 = get_local_id(0); l_id_20689 < 8; l_id_20689 = l_id_20689 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20564;
        x20564 = 0.0f;
        /* unrolling loop of 2 */
        x20564 = x20564 + x20571[2 * l_id_20689];
        x20564 = x20564 + x20571[1 + (2 * l_id_20689)];
        x20551[l_id_20689] = x20564;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20690 = get_local_id(0); l_id_20690 < 4; l_id_20690 = l_id_20690 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20544;
        x20544 = 0.0f;
        /* unrolling loop of 2 */
        x20544 = x20544 + x20551[2 * l_id_20690];
        x20544 = x20544 + x20551[1 + (2 * l_id_20690)];
        x20531[l_id_20690] = x20544;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20691 = get_local_id(0); l_id_20691 < 2; l_id_20691 = l_id_20691 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20524;
        x20524 = 0.0f;
        /* unrolling loop of 2 */
        x20524 = x20524 + x20531[2 * l_id_20691];
        x20524 = x20524 + x20531[1 + (2 * l_id_20691)];
        x20511[l_id_20691] = x20524;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20692 = get_local_id(0); l_id_20692 < 1; l_id_20692 = l_id_20692 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20504;
        x20504 = 0.0f;
        /* unrolling loop of 2 */
        x20504 = x20504 + x20511[2 * l_id_20692];
        x20504 = x20504 + x20511[1 + (2 * l_id_20692)];
        x20491[l_id_20692] = x20504;
      }
      
    }
    
    /* oclScanSeq */
    {
      float x20487;
      x20487 = 0.0f;
      /* unrolling loop of 0 */
      x20477[0] = x20487;
    }
    
    /* mapLocal */
    for (int l_id_20693 = get_local_id(0); l_id_20693 < 1; l_id_20693 = l_id_20693 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20467;
        x20467 = x20477[l_id_20693];
        /* unrolling loop of 1 */
        {
          int idxAcc20694 = (int)0;
          x20454[idxAcc20694 + (2 * l_id_20693)] = x20467;
        }
        
        {
          int idx20695 = (int)0;
          x20467 = x20511[idx20695 + (2 * l_id_20693)] + x20467;
        }
        
        x20454[1 + (2 * l_id_20693)] = x20467;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20696 = get_local_id(0); l_id_20696 < 2; l_id_20696 = l_id_20696 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20444;
        x20444 = x20454[l_id_20696];
        /* unrolling loop of 1 */
        {
          int idxAcc20697 = (int)0;
          x20431[idxAcc20697 + (2 * l_id_20696)] = x20444;
        }
        
        {
          int idx20698 = (int)0;
          x20444 = x20531[idx20698 + (2 * l_id_20696)] + x20444;
        }
        
        x20431[1 + (2 * l_id_20696)] = x20444;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20699 = get_local_id(0); l_id_20699 < 4; l_id_20699 = l_id_20699 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20421;
        x20421 = x20431[l_id_20699];
        /* unrolling loop of 1 */
        {
          int idxAcc20700 = (int)0;
          x20408[idxAcc20700 + (2 * l_id_20699)] = x20421;
        }
        
        {
          int idx20701 = (int)0;
          x20421 = x20551[idx20701 + (2 * l_id_20699)] + x20421;
        }
        
        x20408[1 + (2 * l_id_20699)] = x20421;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20702 = get_local_id(0); l_id_20702 < 8; l_id_20702 = l_id_20702 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20398;
        x20398 = x20408[l_id_20702];
        /* unrolling loop of 1 */
        {
          int idxAcc20703 = (int)0;
          x20385[idxAcc20703 + (2 * l_id_20702)] = x20398;
        }
        
        {
          int idx20704 = (int)0;
          x20398 = x20571[idx20704 + (2 * l_id_20702)] + x20398;
        }
        
        x20385[1 + (2 * l_id_20702)] = x20398;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20705 = get_local_id(0); l_id_20705 < 16; l_id_20705 = l_id_20705 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20375;
        x20375 = x20385[l_id_20705];
        /* unrolling loop of 1 */
        {
          int idxAcc20706 = (int)0;
          x20362[idxAcc20706 + (2 * l_id_20705)] = x20375;
        }
        
        {
          int idx20707 = (int)0;
          x20375 = x20591[idx20707 + (2 * l_id_20705)] + x20375;
        }
        
        x20362[1 + (2 * l_id_20705)] = x20375;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20708 = get_local_id(0); l_id_20708 < 32; l_id_20708 = l_id_20708 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20352;
        x20352 = x20362[l_id_20708];
        /* unrolling loop of 1 */
        {
          int idxAcc20709 = (int)0;
          x20339[idxAcc20709 + (2 * l_id_20708)] = x20352;
        }
        
        {
          int idx20710 = (int)0;
          x20352 = x20611[idx20710 + (2 * l_id_20708)] + x20352;
        }
        
        x20339[1 + (2 * l_id_20708)] = x20352;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20711 = get_local_id(0); l_id_20711 < 64; l_id_20711 = l_id_20711 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20329;
        x20329 = x20339[l_id_20711];
        /* unrolling loop of 1 */
        {
          int idxAcc20712 = (int)0;
          x20316[idxAcc20712 + (2 * l_id_20711)] = x20329;
        }
        
        {
          int idx20713 = (int)0;
          x20329 = x20631[idx20713 + (2 * l_id_20711)] + x20329;
        }
        
        x20316[1 + (2 * l_id_20711)] = x20329;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20714 = get_local_id(0); l_id_20714 < 128; l_id_20714 = l_id_20714 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20306;
        x20306 = x20316[l_id_20714];
        /* unrolling loop of 1 */
        {
          int idxAcc20715 = (int)0;
          x20293[idxAcc20715 + (2 * l_id_20714)] = x20306;
        }
        
        {
          int idx20716 = (int)0;
          x20306 = x20651[idx20716 + (2 * l_id_20714)] + x20306;
        }
        
        x20293[1 + (2 * l_id_20714)] = x20306;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20717 = get_local_id(0); l_id_20717 < 256; l_id_20717 = l_id_20717 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20283;
        x20283 = x20293[l_id_20717];
        /* unrolling loop of 1 */
        {
          int idxAcc20718 = (int)0;
          output[(idxAcc20718 + (2 * l_id_20717)) + (512 * wg_id_20683)] = x20283;
        }
        
        {
          int idx20719 = (int)0;
          x20283 = e19947[(idx20719 + (2 * l_id_20717)) + (512 * wg_id_20683)] + x20283;
        }
        
        output[(1 + (2 * l_id_20717)) + (512 * wg_id_20683)] = x20283;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_512_1_2(global float* restrict output, const global float* restrict e21607){
local float x22082[256];

local float x22096[128];

local float x22059[64];

local float x22116[32];

local float x22036[16];

local float x22136[8];

local float x22013[4];

local float x22156[2];

local float x21990[2];

local float x22176[4];

local float x21967[8];

local float x22196[16];

local float x21944[32];

local float x22216[64];

local float x21921[128];

local float x22236[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_22268 = get_group_id(0); wg_id_22268 < 50000; wg_id_22268 = wg_id_22268 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_22269 = get_local_id(0); l_id_22269 < 256; l_id_22269 = l_id_22269 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22249;
        x22249 = 0.0f;
        /* unrolling loop of 2 */
        x22249 = x22249 + e21607[(2 * l_id_22269) + (512 * wg_id_22268)];
        x22249 = x22249 + e21607[(1 + (2 * l_id_22269)) + (512 * wg_id_22268)];
        x22236[l_id_22269] = x22249;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22270 = get_local_id(0); l_id_22270 < 128; l_id_22270 = l_id_22270 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22229;
        x22229 = 0.0f;
        /* unrolling loop of 2 */
        x22229 = x22229 + x22236[2 * l_id_22270];
        x22229 = x22229 + x22236[1 + (2 * l_id_22270)];
        x22216[l_id_22270] = x22229;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22271 = get_local_id(0); l_id_22271 < 64; l_id_22271 = l_id_22271 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22209;
        x22209 = 0.0f;
        /* unrolling loop of 2 */
        x22209 = x22209 + x22216[2 * l_id_22271];
        x22209 = x22209 + x22216[1 + (2 * l_id_22271)];
        x22196[l_id_22271] = x22209;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22272 = get_local_id(0); l_id_22272 < 32; l_id_22272 = l_id_22272 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22189;
        x22189 = 0.0f;
        /* unrolling loop of 2 */
        x22189 = x22189 + x22196[2 * l_id_22272];
        x22189 = x22189 + x22196[1 + (2 * l_id_22272)];
        x22176[l_id_22272] = x22189;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22273 = get_local_id(0); l_id_22273 < 16; l_id_22273 = l_id_22273 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22169;
        x22169 = 0.0f;
        /* unrolling loop of 2 */
        x22169 = x22169 + x22176[2 * l_id_22273];
        x22169 = x22169 + x22176[1 + (2 * l_id_22273)];
        x22156[l_id_22273] = x22169;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22274 = get_local_id(0); l_id_22274 < 8; l_id_22274 = l_id_22274 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22149;
        x22149 = 0.0f;
        /* unrolling loop of 2 */
        x22149 = x22149 + x22156[2 * l_id_22274];
        x22149 = x22149 + x22156[1 + (2 * l_id_22274)];
        x22136[l_id_22274] = x22149;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22275 = get_local_id(0); l_id_22275 < 4; l_id_22275 = l_id_22275 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22129;
        x22129 = 0.0f;
        /* unrolling loop of 2 */
        x22129 = x22129 + x22136[2 * l_id_22275];
        x22129 = x22129 + x22136[1 + (2 * l_id_22275)];
        x22116[l_id_22275] = x22129;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22276 = get_local_id(0); l_id_22276 < 2; l_id_22276 = l_id_22276 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22109;
        x22109 = 0.0f;
        /* unrolling loop of 2 */
        x22109 = x22109 + x22116[2 * l_id_22276];
        x22109 = x22109 + x22116[1 + (2 * l_id_22276)];
        x22096[l_id_22276] = x22109;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x22092;
      x22092 = 0.0f;
      /* unrolling loop of 1 */
      {
        int idxAcc22277 = (int)0;
        x22082[idxAcc22277] = x22092;
      }
      
      {
        int idx22278 = (int)0;
        x22092 = x22096[idx22278] + x22092;
      }
      
      x22082[1] = x22092;
    }
    
    /* mapLocal */
    for (int l_id_22279 = get_local_id(0); l_id_22279 < 2; l_id_22279 = l_id_22279 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x22072;
        x22072 = x22082[l_id_22279];
        /* unrolling loop of 1 */
        {
          int idxAcc22280 = (int)0;
          x22059[idxAcc22280 + (2 * l_id_22279)] = x22072;
        }
        
        {
          int idx22281 = (int)0;
          x22072 = x22116[idx22281 + (2 * l_id_22279)] + x22072;
        }
        
        x22059[1 + (2 * l_id_22279)] = x22072;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22282 = get_local_id(0); l_id_22282 < 4; l_id_22282 = l_id_22282 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x22049;
        x22049 = x22059[l_id_22282];
        /* unrolling loop of 1 */
        {
          int idxAcc22283 = (int)0;
          x22036[idxAcc22283 + (2 * l_id_22282)] = x22049;
        }
        
        {
          int idx22284 = (int)0;
          x22049 = x22136[idx22284 + (2 * l_id_22282)] + x22049;
        }
        
        x22036[1 + (2 * l_id_22282)] = x22049;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22285 = get_local_id(0); l_id_22285 < 8; l_id_22285 = l_id_22285 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x22026;
        x22026 = x22036[l_id_22285];
        /* unrolling loop of 1 */
        {
          int idxAcc22286 = (int)0;
          x22013[idxAcc22286 + (2 * l_id_22285)] = x22026;
        }
        
        {
          int idx22287 = (int)0;
          x22026 = x22156[idx22287 + (2 * l_id_22285)] + x22026;
        }
        
        x22013[1 + (2 * l_id_22285)] = x22026;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22288 = get_local_id(0); l_id_22288 < 16; l_id_22288 = l_id_22288 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x22003;
        x22003 = x22013[l_id_22288];
        /* unrolling loop of 1 */
        {
          int idxAcc22289 = (int)0;
          x21990[idxAcc22289 + (2 * l_id_22288)] = x22003;
        }
        
        {
          int idx22290 = (int)0;
          x22003 = x22176[idx22290 + (2 * l_id_22288)] + x22003;
        }
        
        x21990[1 + (2 * l_id_22288)] = x22003;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22291 = get_local_id(0); l_id_22291 < 32; l_id_22291 = l_id_22291 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x21980;
        x21980 = x21990[l_id_22291];
        /* unrolling loop of 1 */
        {
          int idxAcc22292 = (int)0;
          x21967[idxAcc22292 + (2 * l_id_22291)] = x21980;
        }
        
        {
          int idx22293 = (int)0;
          x21980 = x22196[idx22293 + (2 * l_id_22291)] + x21980;
        }
        
        x21967[1 + (2 * l_id_22291)] = x21980;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22294 = get_local_id(0); l_id_22294 < 64; l_id_22294 = l_id_22294 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x21957;
        x21957 = x21967[l_id_22294];
        /* unrolling loop of 1 */
        {
          int idxAcc22295 = (int)0;
          x21944[idxAcc22295 + (2 * l_id_22294)] = x21957;
        }
        
        {
          int idx22296 = (int)0;
          x21957 = x22216[idx22296 + (2 * l_id_22294)] + x21957;
        }
        
        x21944[1 + (2 * l_id_22294)] = x21957;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22297 = get_local_id(0); l_id_22297 < 128; l_id_22297 = l_id_22297 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x21934;
        x21934 = x21944[l_id_22297];
        /* unrolling loop of 1 */
        {
          int idxAcc22298 = (int)0;
          x21921[idxAcc22298 + (2 * l_id_22297)] = x21934;
        }
        
        {
          int idx22299 = (int)0;
          x21934 = x22236[idx22299 + (2 * l_id_22297)] + x21934;
        }
        
        x21921[1 + (2 * l_id_22297)] = x21934;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22300 = get_local_id(0); l_id_22300 < 256; l_id_22300 = l_id_22300 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x21911;
        x21911 = x21921[l_id_22300];
        /* unrolling loop of 1 */
        {
          int idxAcc22301 = (int)0;
          output[(idxAcc22301 + (2 * l_id_22300)) + (512 * wg_id_22268)] = x21911;
        }
        
        {
          int idx22302 = (int)0;
          x21911 = e21607[(idx22302 + (2 * l_id_22300)) + (512 * wg_id_22268)] + x21911;
        }
        
        output[(1 + (2 * l_id_22300)) + (512 * wg_id_22268)] = x21911;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_512_2_2(global float* restrict output, const global float* restrict e23082){
local float x23502[256];

local float x23516[128];

local float x23479[64];

local float x23536[32];

local float x23456[16];

local float x23556[8];

local float x23433[4];

local float x23576[4];

local float x23410[8];

local float x23596[16];

local float x23387[32];

local float x23616[64];

local float x23364[128];

local float x23636[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_23669 = get_group_id(0); wg_id_23669 < 50000; wg_id_23669 = wg_id_23669 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_23670 = get_local_id(0); l_id_23670 < 256; l_id_23670 = l_id_23670 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23649;
        x23649 = 0.0f;
        /* unrolling loop of 2 */
        x23649 = x23649 + e23082[(2 * l_id_23670) + (512 * wg_id_23669)];
        x23649 = x23649 + e23082[(1 + (2 * l_id_23670)) + (512 * wg_id_23669)];
        x23636[l_id_23670] = x23649;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23671 = get_local_id(0); l_id_23671 < 128; l_id_23671 = l_id_23671 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23629;
        x23629 = 0.0f;
        /* unrolling loop of 2 */
        x23629 = x23629 + x23636[2 * l_id_23671];
        x23629 = x23629 + x23636[1 + (2 * l_id_23671)];
        x23616[l_id_23671] = x23629;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23672 = get_local_id(0); l_id_23672 < 64; l_id_23672 = l_id_23672 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23609;
        x23609 = 0.0f;
        /* unrolling loop of 2 */
        x23609 = x23609 + x23616[2 * l_id_23672];
        x23609 = x23609 + x23616[1 + (2 * l_id_23672)];
        x23596[l_id_23672] = x23609;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23673 = get_local_id(0); l_id_23673 < 32; l_id_23673 = l_id_23673 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23589;
        x23589 = 0.0f;
        /* unrolling loop of 2 */
        x23589 = x23589 + x23596[2 * l_id_23673];
        x23589 = x23589 + x23596[1 + (2 * l_id_23673)];
        x23576[l_id_23673] = x23589;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23674 = get_local_id(0); l_id_23674 < 16; l_id_23674 = l_id_23674 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23569;
        x23569 = 0.0f;
        /* unrolling loop of 2 */
        x23569 = x23569 + x23576[2 * l_id_23674];
        x23569 = x23569 + x23576[1 + (2 * l_id_23674)];
        x23556[l_id_23674] = x23569;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23675 = get_local_id(0); l_id_23675 < 8; l_id_23675 = l_id_23675 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23549;
        x23549 = 0.0f;
        /* unrolling loop of 2 */
        x23549 = x23549 + x23556[2 * l_id_23675];
        x23549 = x23549 + x23556[1 + (2 * l_id_23675)];
        x23536[l_id_23675] = x23549;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23676 = get_local_id(0); l_id_23676 < 4; l_id_23676 = l_id_23676 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23529;
        x23529 = 0.0f;
        /* unrolling loop of 2 */
        x23529 = x23529 + x23536[2 * l_id_23676];
        x23529 = x23529 + x23536[1 + (2 * l_id_23676)];
        x23516[l_id_23676] = x23529;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x23512;
      x23512 = 0.0f;
      /* unrolling loop of 3 */
      {
        int idxAcc23677 = (int)0;
        x23502[idxAcc23677] = x23512;
      }
      
      {
        int idx23678 = (int)0;
        x23512 = x23516[idx23678] + x23512;
      }
      
      {
        int idxAcc23679 = (int)1;
        x23502[idxAcc23679] = x23512;
      }
      
      {
        int idx23680 = (int)1;
        x23512 = x23516[idx23680] + x23512;
      }
      
      {
        int idxAcc23681 = (int)2;
        x23502[idxAcc23681] = x23512;
      }
      
      {
        int idx23682 = (int)2;
        x23512 = x23516[idx23682] + x23512;
      }
      
      x23502[3] = x23512;
    }
    
    /* mapLocal */
    for (int l_id_23683 = get_local_id(0); l_id_23683 < 4; l_id_23683 = l_id_23683 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23492;
        x23492 = x23502[l_id_23683];
        /* unrolling loop of 1 */
        {
          int idxAcc23684 = (int)0;
          x23479[idxAcc23684 + (2 * l_id_23683)] = x23492;
        }
        
        {
          int idx23685 = (int)0;
          x23492 = x23536[idx23685 + (2 * l_id_23683)] + x23492;
        }
        
        x23479[1 + (2 * l_id_23683)] = x23492;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23686 = get_local_id(0); l_id_23686 < 8; l_id_23686 = l_id_23686 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23469;
        x23469 = x23479[l_id_23686];
        /* unrolling loop of 1 */
        {
          int idxAcc23687 = (int)0;
          x23456[idxAcc23687 + (2 * l_id_23686)] = x23469;
        }
        
        {
          int idx23688 = (int)0;
          x23469 = x23556[idx23688 + (2 * l_id_23686)] + x23469;
        }
        
        x23456[1 + (2 * l_id_23686)] = x23469;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23689 = get_local_id(0); l_id_23689 < 16; l_id_23689 = l_id_23689 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23446;
        x23446 = x23456[l_id_23689];
        /* unrolling loop of 1 */
        {
          int idxAcc23690 = (int)0;
          x23433[idxAcc23690 + (2 * l_id_23689)] = x23446;
        }
        
        {
          int idx23691 = (int)0;
          x23446 = x23576[idx23691 + (2 * l_id_23689)] + x23446;
        }
        
        x23433[1 + (2 * l_id_23689)] = x23446;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23692 = get_local_id(0); l_id_23692 < 32; l_id_23692 = l_id_23692 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23423;
        x23423 = x23433[l_id_23692];
        /* unrolling loop of 1 */
        {
          int idxAcc23693 = (int)0;
          x23410[idxAcc23693 + (2 * l_id_23692)] = x23423;
        }
        
        {
          int idx23694 = (int)0;
          x23423 = x23596[idx23694 + (2 * l_id_23692)] + x23423;
        }
        
        x23410[1 + (2 * l_id_23692)] = x23423;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23695 = get_local_id(0); l_id_23695 < 64; l_id_23695 = l_id_23695 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23400;
        x23400 = x23410[l_id_23695];
        /* unrolling loop of 1 */
        {
          int idxAcc23696 = (int)0;
          x23387[idxAcc23696 + (2 * l_id_23695)] = x23400;
        }
        
        {
          int idx23697 = (int)0;
          x23400 = x23616[idx23697 + (2 * l_id_23695)] + x23400;
        }
        
        x23387[1 + (2 * l_id_23695)] = x23400;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23698 = get_local_id(0); l_id_23698 < 128; l_id_23698 = l_id_23698 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23377;
        x23377 = x23387[l_id_23698];
        /* unrolling loop of 1 */
        {
          int idxAcc23699 = (int)0;
          x23364[idxAcc23699 + (2 * l_id_23698)] = x23377;
        }
        
        {
          int idx23700 = (int)0;
          x23377 = x23636[idx23700 + (2 * l_id_23698)] + x23377;
        }
        
        x23364[1 + (2 * l_id_23698)] = x23377;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23701 = get_local_id(0); l_id_23701 < 256; l_id_23701 = l_id_23701 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23354;
        x23354 = x23364[l_id_23701];
        /* unrolling loop of 1 */
        {
          int idxAcc23702 = (int)0;
          output[(idxAcc23702 + (2 * l_id_23701)) + (512 * wg_id_23669)] = x23354;
        }
        
        {
          int idx23703 = (int)0;
          x23354 = e23082[(idx23703 + (2 * l_id_23701)) + (512 * wg_id_23669)] + x23354;
        }
        
        output[(1 + (2 * l_id_23701)) + (512 * wg_id_23669)] = x23354;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_512_3_2(global float* restrict output, const global float* restrict e24375){
local float x24740[256];

local float x24754[128];

local float x24717[64];

local float x24774[32];

local float x24694[16];

local float x24794[8];

local float x24671[8];

local float x24814[16];

local float x24648[32];

local float x24834[64];

local float x24625[128];

local float x24854[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_24890 = get_group_id(0); wg_id_24890 < 50000; wg_id_24890 = wg_id_24890 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_24891 = get_local_id(0); l_id_24891 < 256; l_id_24891 = l_id_24891 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x24867;
        x24867 = 0.0f;
        /* unrolling loop of 2 */
        x24867 = x24867 + e24375[(2 * l_id_24891) + (512 * wg_id_24890)];
        x24867 = x24867 + e24375[(1 + (2 * l_id_24891)) + (512 * wg_id_24890)];
        x24854[l_id_24891] = x24867;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24892 = get_local_id(0); l_id_24892 < 128; l_id_24892 = l_id_24892 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x24847;
        x24847 = 0.0f;
        /* unrolling loop of 2 */
        x24847 = x24847 + x24854[2 * l_id_24892];
        x24847 = x24847 + x24854[1 + (2 * l_id_24892)];
        x24834[l_id_24892] = x24847;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24893 = get_local_id(0); l_id_24893 < 64; l_id_24893 = l_id_24893 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x24827;
        x24827 = 0.0f;
        /* unrolling loop of 2 */
        x24827 = x24827 + x24834[2 * l_id_24893];
        x24827 = x24827 + x24834[1 + (2 * l_id_24893)];
        x24814[l_id_24893] = x24827;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24894 = get_local_id(0); l_id_24894 < 32; l_id_24894 = l_id_24894 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x24807;
        x24807 = 0.0f;
        /* unrolling loop of 2 */
        x24807 = x24807 + x24814[2 * l_id_24894];
        x24807 = x24807 + x24814[1 + (2 * l_id_24894)];
        x24794[l_id_24894] = x24807;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24895 = get_local_id(0); l_id_24895 < 16; l_id_24895 = l_id_24895 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x24787;
        x24787 = 0.0f;
        /* unrolling loop of 2 */
        x24787 = x24787 + x24794[2 * l_id_24895];
        x24787 = x24787 + x24794[1 + (2 * l_id_24895)];
        x24774[l_id_24895] = x24787;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24896 = get_local_id(0); l_id_24896 < 8; l_id_24896 = l_id_24896 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x24767;
        x24767 = 0.0f;
        /* unrolling loop of 2 */
        x24767 = x24767 + x24774[2 * l_id_24896];
        x24767 = x24767 + x24774[1 + (2 * l_id_24896)];
        x24754[l_id_24896] = x24767;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x24750;
      x24750 = 0.0f;
      /* unrolling loop of 7 */
      {
        int idxAcc24897 = (int)0;
        x24740[idxAcc24897] = x24750;
      }
      
      {
        int idx24898 = (int)0;
        x24750 = x24754[idx24898] + x24750;
      }
      
      {
        int idxAcc24899 = (int)1;
        x24740[idxAcc24899] = x24750;
      }
      
      {
        int idx24900 = (int)1;
        x24750 = x24754[idx24900] + x24750;
      }
      
      {
        int idxAcc24901 = (int)2;
        x24740[idxAcc24901] = x24750;
      }
      
      {
        int idx24902 = (int)2;
        x24750 = x24754[idx24902] + x24750;
      }
      
      {
        int idxAcc24903 = (int)3;
        x24740[idxAcc24903] = x24750;
      }
      
      {
        int idx24904 = (int)3;
        x24750 = x24754[idx24904] + x24750;
      }
      
      {
        int idxAcc24905 = (int)4;
        x24740[idxAcc24905] = x24750;
      }
      
      {
        int idx24906 = (int)4;
        x24750 = x24754[idx24906] + x24750;
      }
      
      {
        int idxAcc24907 = (int)5;
        x24740[idxAcc24907] = x24750;
      }
      
      {
        int idx24908 = (int)5;
        x24750 = x24754[idx24908] + x24750;
      }
      
      {
        int idxAcc24909 = (int)6;
        x24740[idxAcc24909] = x24750;
      }
      
      {
        int idx24910 = (int)6;
        x24750 = x24754[idx24910] + x24750;
      }
      
      x24740[7] = x24750;
    }
    
    /* mapLocal */
    for (int l_id_24911 = get_local_id(0); l_id_24911 < 8; l_id_24911 = l_id_24911 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x24730;
        x24730 = x24740[l_id_24911];
        /* unrolling loop of 1 */
        {
          int idxAcc24912 = (int)0;
          x24717[idxAcc24912 + (2 * l_id_24911)] = x24730;
        }
        
        {
          int idx24913 = (int)0;
          x24730 = x24774[idx24913 + (2 * l_id_24911)] + x24730;
        }
        
        x24717[1 + (2 * l_id_24911)] = x24730;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24914 = get_local_id(0); l_id_24914 < 16; l_id_24914 = l_id_24914 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x24707;
        x24707 = x24717[l_id_24914];
        /* unrolling loop of 1 */
        {
          int idxAcc24915 = (int)0;
          x24694[idxAcc24915 + (2 * l_id_24914)] = x24707;
        }
        
        {
          int idx24916 = (int)0;
          x24707 = x24794[idx24916 + (2 * l_id_24914)] + x24707;
        }
        
        x24694[1 + (2 * l_id_24914)] = x24707;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24917 = get_local_id(0); l_id_24917 < 32; l_id_24917 = l_id_24917 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x24684;
        x24684 = x24694[l_id_24917];
        /* unrolling loop of 1 */
        {
          int idxAcc24918 = (int)0;
          x24671[idxAcc24918 + (2 * l_id_24917)] = x24684;
        }
        
        {
          int idx24919 = (int)0;
          x24684 = x24814[idx24919 + (2 * l_id_24917)] + x24684;
        }
        
        x24671[1 + (2 * l_id_24917)] = x24684;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24920 = get_local_id(0); l_id_24920 < 64; l_id_24920 = l_id_24920 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x24661;
        x24661 = x24671[l_id_24920];
        /* unrolling loop of 1 */
        {
          int idxAcc24921 = (int)0;
          x24648[idxAcc24921 + (2 * l_id_24920)] = x24661;
        }
        
        {
          int idx24922 = (int)0;
          x24661 = x24834[idx24922 + (2 * l_id_24920)] + x24661;
        }
        
        x24648[1 + (2 * l_id_24920)] = x24661;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24923 = get_local_id(0); l_id_24923 < 128; l_id_24923 = l_id_24923 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x24638;
        x24638 = x24648[l_id_24923];
        /* unrolling loop of 1 */
        {
          int idxAcc24924 = (int)0;
          x24625[idxAcc24924 + (2 * l_id_24923)] = x24638;
        }
        
        {
          int idx24925 = (int)0;
          x24638 = x24854[idx24925 + (2 * l_id_24923)] + x24638;
        }
        
        x24625[1 + (2 * l_id_24923)] = x24638;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24926 = get_local_id(0); l_id_24926 < 256; l_id_24926 = l_id_24926 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x24615;
        x24615 = x24625[l_id_24926];
        /* unrolling loop of 1 */
        {
          int idxAcc24927 = (int)0;
          output[(idxAcc24927 + (2 * l_id_24926)) + (512 * wg_id_24890)] = x24615;
        }
        
        {
          int idx24928 = (int)0;
          x24615 = e24375[(idx24928 + (2 * l_id_24926)) + (512 * wg_id_24890)] + x24615;
        }
        
        output[(1 + (2 * l_id_24926)) + (512 * wg_id_24890)] = x24615;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_512_4_2(global float* restrict output, const global float* restrict e25492){
local float x25802[256];

local float x25816[128];

local float x25779[64];

local float x25836[32];

local float x25756[16];

local float x25856[16];

local float x25733[32];

local float x25876[64];

local float x25710[128];

local float x25896[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_25939 = get_group_id(0); wg_id_25939 < 50000; wg_id_25939 = wg_id_25939 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_25940 = get_local_id(0); l_id_25940 < 256; l_id_25940 = l_id_25940 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x25909;
        x25909 = 0.0f;
        /* unrolling loop of 2 */
        x25909 = x25909 + e25492[(2 * l_id_25940) + (512 * wg_id_25939)];
        x25909 = x25909 + e25492[(1 + (2 * l_id_25940)) + (512 * wg_id_25939)];
        x25896[l_id_25940] = x25909;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_25941 = get_local_id(0); l_id_25941 < 128; l_id_25941 = l_id_25941 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x25889;
        x25889 = 0.0f;
        /* unrolling loop of 2 */
        x25889 = x25889 + x25896[2 * l_id_25941];
        x25889 = x25889 + x25896[1 + (2 * l_id_25941)];
        x25876[l_id_25941] = x25889;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_25942 = get_local_id(0); l_id_25942 < 64; l_id_25942 = l_id_25942 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x25869;
        x25869 = 0.0f;
        /* unrolling loop of 2 */
        x25869 = x25869 + x25876[2 * l_id_25942];
        x25869 = x25869 + x25876[1 + (2 * l_id_25942)];
        x25856[l_id_25942] = x25869;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_25943 = get_local_id(0); l_id_25943 < 32; l_id_25943 = l_id_25943 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x25849;
        x25849 = 0.0f;
        /* unrolling loop of 2 */
        x25849 = x25849 + x25856[2 * l_id_25943];
        x25849 = x25849 + x25856[1 + (2 * l_id_25943)];
        x25836[l_id_25943] = x25849;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_25944 = get_local_id(0); l_id_25944 < 16; l_id_25944 = l_id_25944 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x25829;
        x25829 = 0.0f;
        /* unrolling loop of 2 */
        x25829 = x25829 + x25836[2 * l_id_25944];
        x25829 = x25829 + x25836[1 + (2 * l_id_25944)];
        x25816[l_id_25944] = x25829;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x25812;
      x25812 = 0.0f;
      /* unrolling loop of 15 */
      {
        int idxAcc25945 = (int)0;
        x25802[idxAcc25945] = x25812;
      }
      
      {
        int idx25946 = (int)0;
        x25812 = x25816[idx25946] + x25812;
      }
      
      {
        int idxAcc25947 = (int)1;
        x25802[idxAcc25947] = x25812;
      }
      
      {
        int idx25948 = (int)1;
        x25812 = x25816[idx25948] + x25812;
      }
      
      {
        int idxAcc25949 = (int)2;
        x25802[idxAcc25949] = x25812;
      }
      
      {
        int idx25950 = (int)2;
        x25812 = x25816[idx25950] + x25812;
      }
      
      {
        int idxAcc25951 = (int)3;
        x25802[idxAcc25951] = x25812;
      }
      
      {
        int idx25952 = (int)3;
        x25812 = x25816[idx25952] + x25812;
      }
      
      {
        int idxAcc25953 = (int)4;
        x25802[idxAcc25953] = x25812;
      }
      
      {
        int idx25954 = (int)4;
        x25812 = x25816[idx25954] + x25812;
      }
      
      {
        int idxAcc25955 = (int)5;
        x25802[idxAcc25955] = x25812;
      }
      
      {
        int idx25956 = (int)5;
        x25812 = x25816[idx25956] + x25812;
      }
      
      {
        int idxAcc25957 = (int)6;
        x25802[idxAcc25957] = x25812;
      }
      
      {
        int idx25958 = (int)6;
        x25812 = x25816[idx25958] + x25812;
      }
      
      {
        int idxAcc25959 = (int)7;
        x25802[idxAcc25959] = x25812;
      }
      
      {
        int idx25960 = (int)7;
        x25812 = x25816[idx25960] + x25812;
      }
      
      {
        int idxAcc25961 = (int)8;
        x25802[idxAcc25961] = x25812;
      }
      
      {
        int idx25962 = (int)8;
        x25812 = x25816[idx25962] + x25812;
      }
      
      {
        int idxAcc25963 = (int)9;
        x25802[idxAcc25963] = x25812;
      }
      
      {
        int idx25964 = (int)9;
        x25812 = x25816[idx25964] + x25812;
      }
      
      {
        int idxAcc25965 = (int)10;
        x25802[idxAcc25965] = x25812;
      }
      
      {
        int idx25966 = (int)10;
        x25812 = x25816[idx25966] + x25812;
      }
      
      {
        int idxAcc25967 = (int)11;
        x25802[idxAcc25967] = x25812;
      }
      
      {
        int idx25968 = (int)11;
        x25812 = x25816[idx25968] + x25812;
      }
      
      {
        int idxAcc25969 = (int)12;
        x25802[idxAcc25969] = x25812;
      }
      
      {
        int idx25970 = (int)12;
        x25812 = x25816[idx25970] + x25812;
      }
      
      {
        int idxAcc25971 = (int)13;
        x25802[idxAcc25971] = x25812;
      }
      
      {
        int idx25972 = (int)13;
        x25812 = x25816[idx25972] + x25812;
      }
      
      {
        int idxAcc25973 = (int)14;
        x25802[idxAcc25973] = x25812;
      }
      
      {
        int idx25974 = (int)14;
        x25812 = x25816[idx25974] + x25812;
      }
      
      x25802[15] = x25812;
    }
    
    /* mapLocal */
    for (int l_id_25975 = get_local_id(0); l_id_25975 < 16; l_id_25975 = l_id_25975 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x25792;
        x25792 = x25802[l_id_25975];
        /* unrolling loop of 1 */
        {
          int idxAcc25976 = (int)0;
          x25779[idxAcc25976 + (2 * l_id_25975)] = x25792;
        }
        
        {
          int idx25977 = (int)0;
          x25792 = x25836[idx25977 + (2 * l_id_25975)] + x25792;
        }
        
        x25779[1 + (2 * l_id_25975)] = x25792;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_25978 = get_local_id(0); l_id_25978 < 32; l_id_25978 = l_id_25978 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x25769;
        x25769 = x25779[l_id_25978];
        /* unrolling loop of 1 */
        {
          int idxAcc25979 = (int)0;
          x25756[idxAcc25979 + (2 * l_id_25978)] = x25769;
        }
        
        {
          int idx25980 = (int)0;
          x25769 = x25856[idx25980 + (2 * l_id_25978)] + x25769;
        }
        
        x25756[1 + (2 * l_id_25978)] = x25769;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_25981 = get_local_id(0); l_id_25981 < 64; l_id_25981 = l_id_25981 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x25746;
        x25746 = x25756[l_id_25981];
        /* unrolling loop of 1 */
        {
          int idxAcc25982 = (int)0;
          x25733[idxAcc25982 + (2 * l_id_25981)] = x25746;
        }
        
        {
          int idx25983 = (int)0;
          x25746 = x25876[idx25983 + (2 * l_id_25981)] + x25746;
        }
        
        x25733[1 + (2 * l_id_25981)] = x25746;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_25984 = get_local_id(0); l_id_25984 < 128; l_id_25984 = l_id_25984 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x25723;
        x25723 = x25733[l_id_25984];
        /* unrolling loop of 1 */
        {
          int idxAcc25985 = (int)0;
          x25710[idxAcc25985 + (2 * l_id_25984)] = x25723;
        }
        
        {
          int idx25986 = (int)0;
          x25723 = x25896[idx25986 + (2 * l_id_25984)] + x25723;
        }
        
        x25710[1 + (2 * l_id_25984)] = x25723;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_25987 = get_local_id(0); l_id_25987 < 256; l_id_25987 = l_id_25987 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x25700;
        x25700 = x25710[l_id_25987];
        /* unrolling loop of 1 */
        {
          int idxAcc25988 = (int)0;
          output[(idxAcc25988 + (2 * l_id_25987)) + (512 * wg_id_25939)] = x25700;
        }
        
        {
          int idx25989 = (int)0;
          x25700 = e25492[(idx25989 + (2 * l_id_25987)) + (512 * wg_id_25939)] + x25700;
        }
        
        output[(1 + (2 * l_id_25987)) + (512 * wg_id_25939)] = x25700;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}



