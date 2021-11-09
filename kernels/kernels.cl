


__kernel
void kernel_25600000_32_0_2(global float* restrict output, int n763, const global float* restrict e764){
local float x1074[16];

local float x1088[8];

local float x1051[4];

local float x1108[2];

local float x1028[1];

local float x1128[1];

local float x1005[2];

local float x1148[4];

local float x982[8];

local float x1168[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_1196 = get_group_id(0); wg_id_1196 < (n763 / 32); wg_id_1196 = wg_id_1196 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_1197 = get_local_id(0); l_id_1197 < 16; l_id_1197 = l_id_1197 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1181;
        x1181 = 0.0f;
        /* unrolling loop of 2 */
        x1181 = x1181 + e764[(2 * l_id_1197) + (32 * wg_id_1196)];
        x1181 = x1181 + e764[(1 + (2 * l_id_1197)) + (32 * wg_id_1196)];
        x1168[l_id_1197] = x1181;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1198 = get_local_id(0); l_id_1198 < 8; l_id_1198 = l_id_1198 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1161;
        x1161 = 0.0f;
        /* unrolling loop of 2 */
        x1161 = x1161 + x1168[2 * l_id_1198];
        x1161 = x1161 + x1168[1 + (2 * l_id_1198)];
        x1148[l_id_1198] = x1161;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1199 = get_local_id(0); l_id_1199 < 4; l_id_1199 = l_id_1199 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1141;
        x1141 = 0.0f;
        /* unrolling loop of 2 */
        x1141 = x1141 + x1148[2 * l_id_1199];
        x1141 = x1141 + x1148[1 + (2 * l_id_1199)];
        x1128[l_id_1199] = x1141;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1200 = get_local_id(0); l_id_1200 < 2; l_id_1200 = l_id_1200 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1121;
        x1121 = 0.0f;
        /* unrolling loop of 2 */
        x1121 = x1121 + x1128[2 * l_id_1200];
        x1121 = x1121 + x1128[1 + (2 * l_id_1200)];
        x1108[l_id_1200] = x1121;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1201 = get_local_id(0); l_id_1201 < 1; l_id_1201 = l_id_1201 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1101;
        x1101 = 0.0f;
        /* unrolling loop of 2 */
        x1101 = x1101 + x1108[2 * l_id_1201];
        x1101 = x1101 + x1108[1 + (2 * l_id_1201)];
        x1088[l_id_1201] = x1101;
      }
      
    }
    
    /* oclScanSeq */
    {
      float x1084;
      x1084 = 0.0f;
      /* unrolling loop of 0 */
      x1074[0] = x1084;
    }
    
    /* mapLocal */
    for (int l_id_1202 = get_local_id(0); l_id_1202 < 1; l_id_1202 = l_id_1202 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1064;
        x1064 = x1074[l_id_1202];
        /* unrolling loop of 1 */
        {
          int idxAcc1203 = (int)0;
          x1051[idxAcc1203 + (2 * l_id_1202)] = x1064;
        }
        
        {
          int idx1204 = (int)0;
          x1064 = x1108[idx1204 + (2 * l_id_1202)] + x1064;
        }
        
        x1051[1 + (2 * l_id_1202)] = x1064;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1205 = get_local_id(0); l_id_1205 < 2; l_id_1205 = l_id_1205 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1041;
        x1041 = x1051[l_id_1205];
        /* unrolling loop of 1 */
        {
          int idxAcc1206 = (int)0;
          x1028[idxAcc1206 + (2 * l_id_1205)] = x1041;
        }
        
        {
          int idx1207 = (int)0;
          x1041 = x1128[idx1207 + (2 * l_id_1205)] + x1041;
        }
        
        x1028[1 + (2 * l_id_1205)] = x1041;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1208 = get_local_id(0); l_id_1208 < 4; l_id_1208 = l_id_1208 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1018;
        x1018 = x1028[l_id_1208];
        /* unrolling loop of 1 */
        {
          int idxAcc1209 = (int)0;
          x1005[idxAcc1209 + (2 * l_id_1208)] = x1018;
        }
        
        {
          int idx1210 = (int)0;
          x1018 = x1148[idx1210 + (2 * l_id_1208)] + x1018;
        }
        
        x1005[1 + (2 * l_id_1208)] = x1018;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1211 = get_local_id(0); l_id_1211 < 8; l_id_1211 = l_id_1211 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x995;
        x995 = x1005[l_id_1211];
        /* unrolling loop of 1 */
        {
          int idxAcc1212 = (int)0;
          x982[idxAcc1212 + (2 * l_id_1211)] = x995;
        }
        
        {
          int idx1213 = (int)0;
          x995 = x1168[idx1213 + (2 * l_id_1211)] + x995;
        }
        
        x982[1 + (2 * l_id_1211)] = x995;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_1214 = get_local_id(0); l_id_1214 < 16; l_id_1214 = l_id_1214 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x972;
        x972 = x982[l_id_1214];
        /* unrolling loop of 1 */
        {
          int idxAcc1215 = (int)0;
          output[(idxAcc1215 + (2 * l_id_1214)) + (32 * wg_id_1196)] = x972;
        }
        
        {
          int idx1216 = (int)0;
          x972 = e764[(idx1216 + (2 * l_id_1214)) + (32 * wg_id_1196)] + x972;
        }
        
        output[(1 + (2 * l_id_1214)) + (32 * wg_id_1196)] = x972;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_32_1_2(global float* restrict output, int n1672, const global float* restrict e1673){
local float x1928[16];

local float x1942[8];

local float x1905[4];

local float x1962[2];

local float x1882[2];

local float x1982[4];

local float x1859[8];

local float x2002[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_2030 = get_group_id(0); wg_id_2030 < (n1672 / 32); wg_id_2030 = wg_id_2030 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_2031 = get_local_id(0); l_id_2031 < 16; l_id_2031 = l_id_2031 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x2015;
        x2015 = 0.0f;
        /* unrolling loop of 2 */
        x2015 = x2015 + e1673[(2 * l_id_2031) + (32 * wg_id_2030)];
        x2015 = x2015 + e1673[(1 + (2 * l_id_2031)) + (32 * wg_id_2030)];
        x2002[l_id_2031] = x2015;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2032 = get_local_id(0); l_id_2032 < 8; l_id_2032 = l_id_2032 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1995;
        x1995 = 0.0f;
        /* unrolling loop of 2 */
        x1995 = x1995 + x2002[2 * l_id_2032];
        x1995 = x1995 + x2002[1 + (2 * l_id_2032)];
        x1982[l_id_2032] = x1995;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2033 = get_local_id(0); l_id_2033 < 4; l_id_2033 = l_id_2033 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1975;
        x1975 = 0.0f;
        /* unrolling loop of 2 */
        x1975 = x1975 + x1982[2 * l_id_2033];
        x1975 = x1975 + x1982[1 + (2 * l_id_2033)];
        x1962[l_id_2033] = x1975;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2034 = get_local_id(0); l_id_2034 < 2; l_id_2034 = l_id_2034 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x1955;
        x1955 = 0.0f;
        /* unrolling loop of 2 */
        x1955 = x1955 + x1962[2 * l_id_2034];
        x1955 = x1955 + x1962[1 + (2 * l_id_2034)];
        x1942[l_id_2034] = x1955;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x1938;
      x1938 = 0.0f;
      /* unrolling loop of 1 */
      {
        int idxAcc2035 = (int)0;
        x1928[idxAcc2035] = x1938;
      }
      
      {
        int idx2036 = (int)0;
        x1938 = x1942[idx2036] + x1938;
      }
      
      x1928[1] = x1938;
    }
    
    /* mapLocal */
    for (int l_id_2037 = get_local_id(0); l_id_2037 < 2; l_id_2037 = l_id_2037 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1918;
        x1918 = x1928[l_id_2037];
        /* unrolling loop of 1 */
        {
          int idxAcc2038 = (int)0;
          x1905[idxAcc2038 + (2 * l_id_2037)] = x1918;
        }
        
        {
          int idx2039 = (int)0;
          x1918 = x1962[idx2039 + (2 * l_id_2037)] + x1918;
        }
        
        x1905[1 + (2 * l_id_2037)] = x1918;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2040 = get_local_id(0); l_id_2040 < 4; l_id_2040 = l_id_2040 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1895;
        x1895 = x1905[l_id_2040];
        /* unrolling loop of 1 */
        {
          int idxAcc2041 = (int)0;
          x1882[idxAcc2041 + (2 * l_id_2040)] = x1895;
        }
        
        {
          int idx2042 = (int)0;
          x1895 = x1982[idx2042 + (2 * l_id_2040)] + x1895;
        }
        
        x1882[1 + (2 * l_id_2040)] = x1895;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2043 = get_local_id(0); l_id_2043 < 8; l_id_2043 = l_id_2043 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1872;
        x1872 = x1882[l_id_2043];
        /* unrolling loop of 1 */
        {
          int idxAcc2044 = (int)0;
          x1859[idxAcc2044 + (2 * l_id_2043)] = x1872;
        }
        
        {
          int idx2045 = (int)0;
          x1872 = x2002[idx2045 + (2 * l_id_2043)] + x1872;
        }
        
        x1859[1 + (2 * l_id_2043)] = x1872;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2046 = get_local_id(0); l_id_2046 < 16; l_id_2046 = l_id_2046 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x1849;
        x1849 = x1859[l_id_2046];
        /* unrolling loop of 1 */
        {
          int idxAcc2047 = (int)0;
          output[(idxAcc2047 + (2 * l_id_2046)) + (32 * wg_id_2030)] = x1849;
        }
        
        {
          int idx2048 = (int)0;
          x1849 = e1673[(idx2048 + (2 * l_id_2046)) + (32 * wg_id_2030)] + x1849;
        }
        
        output[(1 + (2 * l_id_2046)) + (32 * wg_id_2030)] = x1849;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_32_2_2(global float* restrict output, int n2396, const global float* restrict e2397){
local float x2597[16];

local float x2611[8];

local float x2574[4];

local float x2631[4];

local float x2551[8];

local float x2651[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_2680 = get_group_id(0); wg_id_2680 < (n2396 / 32); wg_id_2680 = wg_id_2680 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_2681 = get_local_id(0); l_id_2681 < 16; l_id_2681 = l_id_2681 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x2664;
        x2664 = 0.0f;
        /* unrolling loop of 2 */
        x2664 = x2664 + e2397[(2 * l_id_2681) + (32 * wg_id_2680)];
        x2664 = x2664 + e2397[(1 + (2 * l_id_2681)) + (32 * wg_id_2680)];
        x2651[l_id_2681] = x2664;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2682 = get_local_id(0); l_id_2682 < 8; l_id_2682 = l_id_2682 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x2644;
        x2644 = 0.0f;
        /* unrolling loop of 2 */
        x2644 = x2644 + x2651[2 * l_id_2682];
        x2644 = x2644 + x2651[1 + (2 * l_id_2682)];
        x2631[l_id_2682] = x2644;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2683 = get_local_id(0); l_id_2683 < 4; l_id_2683 = l_id_2683 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x2624;
        x2624 = 0.0f;
        /* unrolling loop of 2 */
        x2624 = x2624 + x2631[2 * l_id_2683];
        x2624 = x2624 + x2631[1 + (2 * l_id_2683)];
        x2611[l_id_2683] = x2624;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x2607;
      x2607 = 0.0f;
      /* unrolling loop of 3 */
      {
        int idxAcc2684 = (int)0;
        x2597[idxAcc2684] = x2607;
      }
      
      {
        int idx2685 = (int)0;
        x2607 = x2611[idx2685] + x2607;
      }
      
      {
        int idxAcc2686 = (int)1;
        x2597[idxAcc2686] = x2607;
      }
      
      {
        int idx2687 = (int)1;
        x2607 = x2611[idx2687] + x2607;
      }
      
      {
        int idxAcc2688 = (int)2;
        x2597[idxAcc2688] = x2607;
      }
      
      {
        int idx2689 = (int)2;
        x2607 = x2611[idx2689] + x2607;
      }
      
      x2597[3] = x2607;
    }
    
    /* mapLocal */
    for (int l_id_2690 = get_local_id(0); l_id_2690 < 4; l_id_2690 = l_id_2690 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x2587;
        x2587 = x2597[l_id_2690];
        /* unrolling loop of 1 */
        {
          int idxAcc2691 = (int)0;
          x2574[idxAcc2691 + (2 * l_id_2690)] = x2587;
        }
        
        {
          int idx2692 = (int)0;
          x2587 = x2631[idx2692 + (2 * l_id_2690)] + x2587;
        }
        
        x2574[1 + (2 * l_id_2690)] = x2587;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2693 = get_local_id(0); l_id_2693 < 8; l_id_2693 = l_id_2693 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x2564;
        x2564 = x2574[l_id_2693];
        /* unrolling loop of 1 */
        {
          int idxAcc2694 = (int)0;
          x2551[idxAcc2694 + (2 * l_id_2693)] = x2564;
        }
        
        {
          int idx2695 = (int)0;
          x2564 = x2651[idx2695 + (2 * l_id_2693)] + x2564;
        }
        
        x2551[1 + (2 * l_id_2693)] = x2564;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_2696 = get_local_id(0); l_id_2696 < 16; l_id_2696 = l_id_2696 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x2541;
        x2541 = x2551[l_id_2696];
        /* unrolling loop of 1 */
        {
          int idxAcc2697 = (int)0;
          output[(idxAcc2697 + (2 * l_id_2696)) + (32 * wg_id_2680)] = x2541;
        }
        
        {
          int idx2698 = (int)0;
          x2541 = e2397[(idx2698 + (2 * l_id_2696)) + (32 * wg_id_2680)] + x2541;
        }
        
        output[(1 + (2 * l_id_2696)) + (32 * wg_id_2680)] = x2541;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_32_3_2(global float* restrict output, int n2938, const global float* restrict e2939){
local float x3084[16];

local float x3098[8];

local float x3061[8];

local float x3118[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_3150 = get_group_id(0); wg_id_3150 < (n2938 / 32); wg_id_3150 = wg_id_3150 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_3151 = get_local_id(0); l_id_3151 < 16; l_id_3151 = l_id_3151 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x3131;
        x3131 = 0.0f;
        /* unrolling loop of 2 */
        x3131 = x3131 + e2939[(2 * l_id_3151) + (32 * wg_id_3150)];
        x3131 = x3131 + e2939[(1 + (2 * l_id_3151)) + (32 * wg_id_3150)];
        x3118[l_id_3151] = x3131;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_3152 = get_local_id(0); l_id_3152 < 8; l_id_3152 = l_id_3152 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x3111;
        x3111 = 0.0f;
        /* unrolling loop of 2 */
        x3111 = x3111 + x3118[2 * l_id_3152];
        x3111 = x3111 + x3118[1 + (2 * l_id_3152)];
        x3098[l_id_3152] = x3111;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x3094;
      x3094 = 0.0f;
      /* unrolling loop of 7 */
      {
        int idxAcc3153 = (int)0;
        x3084[idxAcc3153] = x3094;
      }
      
      {
        int idx3154 = (int)0;
        x3094 = x3098[idx3154] + x3094;
      }
      
      {
        int idxAcc3155 = (int)1;
        x3084[idxAcc3155] = x3094;
      }
      
      {
        int idx3156 = (int)1;
        x3094 = x3098[idx3156] + x3094;
      }
      
      {
        int idxAcc3157 = (int)2;
        x3084[idxAcc3157] = x3094;
      }
      
      {
        int idx3158 = (int)2;
        x3094 = x3098[idx3158] + x3094;
      }
      
      {
        int idxAcc3159 = (int)3;
        x3084[idxAcc3159] = x3094;
      }
      
      {
        int idx3160 = (int)3;
        x3094 = x3098[idx3160] + x3094;
      }
      
      {
        int idxAcc3161 = (int)4;
        x3084[idxAcc3161] = x3094;
      }
      
      {
        int idx3162 = (int)4;
        x3094 = x3098[idx3162] + x3094;
      }
      
      {
        int idxAcc3163 = (int)5;
        x3084[idxAcc3163] = x3094;
      }
      
      {
        int idx3164 = (int)5;
        x3094 = x3098[idx3164] + x3094;
      }
      
      {
        int idxAcc3165 = (int)6;
        x3084[idxAcc3165] = x3094;
      }
      
      {
        int idx3166 = (int)6;
        x3094 = x3098[idx3166] + x3094;
      }
      
      x3084[7] = x3094;
    }
    
    /* mapLocal */
    for (int l_id_3167 = get_local_id(0); l_id_3167 < 8; l_id_3167 = l_id_3167 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x3074;
        x3074 = x3084[l_id_3167];
        /* unrolling loop of 1 */
        {
          int idxAcc3168 = (int)0;
          x3061[idxAcc3168 + (2 * l_id_3167)] = x3074;
        }
        
        {
          int idx3169 = (int)0;
          x3074 = x3118[idx3169 + (2 * l_id_3167)] + x3074;
        }
        
        x3061[1 + (2 * l_id_3167)] = x3074;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_3170 = get_local_id(0); l_id_3170 < 16; l_id_3170 = l_id_3170 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x3051;
        x3051 = x3061[l_id_3170];
        /* unrolling loop of 1 */
        {
          int idxAcc3171 = (int)0;
          output[(idxAcc3171 + (2 * l_id_3170)) + (32 * wg_id_3150)] = x3051;
        }
        
        {
          int idx3172 = (int)0;
          x3051 = e2939[(idx3172 + (2 * l_id_3170)) + (32 * wg_id_3150)] + x3051;
        }
        
        output[(1 + (2 * l_id_3170)) + (32 * wg_id_3150)] = x3051;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_32_4_2(global float* restrict output, int n3304, const global float* restrict e3305){
local float x3395[16];

local float x3409[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_3448 = get_group_id(0); wg_id_3448 < (n3304 / 32); wg_id_3448 = wg_id_3448 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_3449 = get_local_id(0); l_id_3449 < 16; l_id_3449 = l_id_3449 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x3422;
        x3422 = 0.0f;
        /* unrolling loop of 2 */
        x3422 = x3422 + e3305[(2 * l_id_3449) + (32 * wg_id_3448)];
        x3422 = x3422 + e3305[(1 + (2 * l_id_3449)) + (32 * wg_id_3448)];
        x3409[l_id_3449] = x3422;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x3405;
      x3405 = 0.0f;
      /* unrolling loop of 15 */
      {
        int idxAcc3450 = (int)0;
        x3395[idxAcc3450] = x3405;
      }
      
      {
        int idx3451 = (int)0;
        x3405 = x3409[idx3451] + x3405;
      }
      
      {
        int idxAcc3452 = (int)1;
        x3395[idxAcc3452] = x3405;
      }
      
      {
        int idx3453 = (int)1;
        x3405 = x3409[idx3453] + x3405;
      }
      
      {
        int idxAcc3454 = (int)2;
        x3395[idxAcc3454] = x3405;
      }
      
      {
        int idx3455 = (int)2;
        x3405 = x3409[idx3455] + x3405;
      }
      
      {
        int idxAcc3456 = (int)3;
        x3395[idxAcc3456] = x3405;
      }
      
      {
        int idx3457 = (int)3;
        x3405 = x3409[idx3457] + x3405;
      }
      
      {
        int idxAcc3458 = (int)4;
        x3395[idxAcc3458] = x3405;
      }
      
      {
        int idx3459 = (int)4;
        x3405 = x3409[idx3459] + x3405;
      }
      
      {
        int idxAcc3460 = (int)5;
        x3395[idxAcc3460] = x3405;
      }
      
      {
        int idx3461 = (int)5;
        x3405 = x3409[idx3461] + x3405;
      }
      
      {
        int idxAcc3462 = (int)6;
        x3395[idxAcc3462] = x3405;
      }
      
      {
        int idx3463 = (int)6;
        x3405 = x3409[idx3463] + x3405;
      }
      
      {
        int idxAcc3464 = (int)7;
        x3395[idxAcc3464] = x3405;
      }
      
      {
        int idx3465 = (int)7;
        x3405 = x3409[idx3465] + x3405;
      }
      
      {
        int idxAcc3466 = (int)8;
        x3395[idxAcc3466] = x3405;
      }
      
      {
        int idx3467 = (int)8;
        x3405 = x3409[idx3467] + x3405;
      }
      
      {
        int idxAcc3468 = (int)9;
        x3395[idxAcc3468] = x3405;
      }
      
      {
        int idx3469 = (int)9;
        x3405 = x3409[idx3469] + x3405;
      }
      
      {
        int idxAcc3470 = (int)10;
        x3395[idxAcc3470] = x3405;
      }
      
      {
        int idx3471 = (int)10;
        x3405 = x3409[idx3471] + x3405;
      }
      
      {
        int idxAcc3472 = (int)11;
        x3395[idxAcc3472] = x3405;
      }
      
      {
        int idx3473 = (int)11;
        x3405 = x3409[idx3473] + x3405;
      }
      
      {
        int idxAcc3474 = (int)12;
        x3395[idxAcc3474] = x3405;
      }
      
      {
        int idx3475 = (int)12;
        x3405 = x3409[idx3475] + x3405;
      }
      
      {
        int idxAcc3476 = (int)13;
        x3395[idxAcc3476] = x3405;
      }
      
      {
        int idx3477 = (int)13;
        x3405 = x3409[idx3477] + x3405;
      }
      
      {
        int idxAcc3478 = (int)14;
        x3395[idxAcc3478] = x3405;
      }
      
      {
        int idx3479 = (int)14;
        x3405 = x3409[idx3479] + x3405;
      }
      
      x3395[15] = x3405;
    }
    
    /* mapLocal */
    for (int l_id_3480 = get_local_id(0); l_id_3480 < 16; l_id_3480 = l_id_3480 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x3385;
        x3385 = x3395[l_id_3480];
        /* unrolling loop of 1 */
        {
          int idxAcc3481 = (int)0;
          output[(idxAcc3481 + (2 * l_id_3480)) + (32 * wg_id_3448)] = x3385;
        }
        
        {
          int idx3482 = (int)0;
          x3385 = e3305[(idx3482 + (2 * l_id_3480)) + (32 * wg_id_3448)] + x3385;
        }
        
        output[(1 + (2 * l_id_3480)) + (32 * wg_id_3448)] = x3385;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_64_0_2(global float* restrict output, int n4154, const global float* restrict e4155){
local float x4520[32];

local float x4534[16];

local float x4497[8];

local float x4554[4];

local float x4474[2];

local float x4574[1];

local float x4451[1];

local float x4594[2];

local float x4428[4];

local float x4614[8];

local float x4405[16];

local float x4634[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_4663 = get_group_id(0); wg_id_4663 < (n4154 / 64); wg_id_4663 = wg_id_4663 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_4664 = get_local_id(0); l_id_4664 < 32; l_id_4664 = l_id_4664 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x4647;
        x4647 = 0.0f;
        /* unrolling loop of 2 */
        x4647 = x4647 + e4155[(2 * l_id_4664) + (64 * wg_id_4663)];
        x4647 = x4647 + e4155[(1 + (2 * l_id_4664)) + (64 * wg_id_4663)];
        x4634[l_id_4664] = x4647;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4665 = get_local_id(0); l_id_4665 < 16; l_id_4665 = l_id_4665 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x4627;
        x4627 = 0.0f;
        /* unrolling loop of 2 */
        x4627 = x4627 + x4634[2 * l_id_4665];
        x4627 = x4627 + x4634[1 + (2 * l_id_4665)];
        x4614[l_id_4665] = x4627;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4666 = get_local_id(0); l_id_4666 < 8; l_id_4666 = l_id_4666 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x4607;
        x4607 = 0.0f;
        /* unrolling loop of 2 */
        x4607 = x4607 + x4614[2 * l_id_4666];
        x4607 = x4607 + x4614[1 + (2 * l_id_4666)];
        x4594[l_id_4666] = x4607;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4667 = get_local_id(0); l_id_4667 < 4; l_id_4667 = l_id_4667 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x4587;
        x4587 = 0.0f;
        /* unrolling loop of 2 */
        x4587 = x4587 + x4594[2 * l_id_4667];
        x4587 = x4587 + x4594[1 + (2 * l_id_4667)];
        x4574[l_id_4667] = x4587;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4668 = get_local_id(0); l_id_4668 < 2; l_id_4668 = l_id_4668 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x4567;
        x4567 = 0.0f;
        /* unrolling loop of 2 */
        x4567 = x4567 + x4574[2 * l_id_4668];
        x4567 = x4567 + x4574[1 + (2 * l_id_4668)];
        x4554[l_id_4668] = x4567;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4669 = get_local_id(0); l_id_4669 < 1; l_id_4669 = l_id_4669 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x4547;
        x4547 = 0.0f;
        /* unrolling loop of 2 */
        x4547 = x4547 + x4554[2 * l_id_4669];
        x4547 = x4547 + x4554[1 + (2 * l_id_4669)];
        x4534[l_id_4669] = x4547;
      }
      
    }
    
    /* oclScanSeq */
    {
      float x4530;
      x4530 = 0.0f;
      /* unrolling loop of 0 */
      x4520[0] = x4530;
    }
    
    /* mapLocal */
    for (int l_id_4670 = get_local_id(0); l_id_4670 < 1; l_id_4670 = l_id_4670 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x4510;
        x4510 = x4520[l_id_4670];
        /* unrolling loop of 1 */
        {
          int idxAcc4671 = (int)0;
          x4497[idxAcc4671 + (2 * l_id_4670)] = x4510;
        }
        
        {
          int idx4672 = (int)0;
          x4510 = x4554[idx4672 + (2 * l_id_4670)] + x4510;
        }
        
        x4497[1 + (2 * l_id_4670)] = x4510;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4673 = get_local_id(0); l_id_4673 < 2; l_id_4673 = l_id_4673 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x4487;
        x4487 = x4497[l_id_4673];
        /* unrolling loop of 1 */
        {
          int idxAcc4674 = (int)0;
          x4474[idxAcc4674 + (2 * l_id_4673)] = x4487;
        }
        
        {
          int idx4675 = (int)0;
          x4487 = x4574[idx4675 + (2 * l_id_4673)] + x4487;
        }
        
        x4474[1 + (2 * l_id_4673)] = x4487;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4676 = get_local_id(0); l_id_4676 < 4; l_id_4676 = l_id_4676 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x4464;
        x4464 = x4474[l_id_4676];
        /* unrolling loop of 1 */
        {
          int idxAcc4677 = (int)0;
          x4451[idxAcc4677 + (2 * l_id_4676)] = x4464;
        }
        
        {
          int idx4678 = (int)0;
          x4464 = x4594[idx4678 + (2 * l_id_4676)] + x4464;
        }
        
        x4451[1 + (2 * l_id_4676)] = x4464;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4679 = get_local_id(0); l_id_4679 < 8; l_id_4679 = l_id_4679 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x4441;
        x4441 = x4451[l_id_4679];
        /* unrolling loop of 1 */
        {
          int idxAcc4680 = (int)0;
          x4428[idxAcc4680 + (2 * l_id_4679)] = x4441;
        }
        
        {
          int idx4681 = (int)0;
          x4441 = x4614[idx4681 + (2 * l_id_4679)] + x4441;
        }
        
        x4428[1 + (2 * l_id_4679)] = x4441;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4682 = get_local_id(0); l_id_4682 < 16; l_id_4682 = l_id_4682 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x4418;
        x4418 = x4428[l_id_4682];
        /* unrolling loop of 1 */
        {
          int idxAcc4683 = (int)0;
          x4405[idxAcc4683 + (2 * l_id_4682)] = x4418;
        }
        
        {
          int idx4684 = (int)0;
          x4418 = x4634[idx4684 + (2 * l_id_4682)] + x4418;
        }
        
        x4405[1 + (2 * l_id_4682)] = x4418;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_4685 = get_local_id(0); l_id_4685 < 32; l_id_4685 = l_id_4685 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x4395;
        x4395 = x4405[l_id_4685];
        /* unrolling loop of 1 */
        {
          int idxAcc4686 = (int)0;
          output[(idxAcc4686 + (2 * l_id_4685)) + (64 * wg_id_4663)] = x4395;
        }
        
        {
          int idx4687 = (int)0;
          x4395 = e4155[(idx4687 + (2 * l_id_4685)) + (64 * wg_id_4663)] + x4395;
        }
        
        output[(1 + (2 * l_id_4685)) + (64 * wg_id_4663)] = x4395;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_64_1_2(global float* restrict output, int n5251, const global float* restrict e5252){
local float x5562[32];

local float x5576[16];

local float x5539[8];

local float x5596[4];

local float x5516[2];

local float x5616[2];

local float x5493[4];

local float x5636[8];

local float x5470[16];

local float x5656[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_5685 = get_group_id(0); wg_id_5685 < (n5251 / 64); wg_id_5685 = wg_id_5685 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_5686 = get_local_id(0); l_id_5686 < 32; l_id_5686 = l_id_5686 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x5669;
        x5669 = 0.0f;
        /* unrolling loop of 2 */
        x5669 = x5669 + e5252[(2 * l_id_5686) + (64 * wg_id_5685)];
        x5669 = x5669 + e5252[(1 + (2 * l_id_5686)) + (64 * wg_id_5685)];
        x5656[l_id_5686] = x5669;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5687 = get_local_id(0); l_id_5687 < 16; l_id_5687 = l_id_5687 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x5649;
        x5649 = 0.0f;
        /* unrolling loop of 2 */
        x5649 = x5649 + x5656[2 * l_id_5687];
        x5649 = x5649 + x5656[1 + (2 * l_id_5687)];
        x5636[l_id_5687] = x5649;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5688 = get_local_id(0); l_id_5688 < 8; l_id_5688 = l_id_5688 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x5629;
        x5629 = 0.0f;
        /* unrolling loop of 2 */
        x5629 = x5629 + x5636[2 * l_id_5688];
        x5629 = x5629 + x5636[1 + (2 * l_id_5688)];
        x5616[l_id_5688] = x5629;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5689 = get_local_id(0); l_id_5689 < 4; l_id_5689 = l_id_5689 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x5609;
        x5609 = 0.0f;
        /* unrolling loop of 2 */
        x5609 = x5609 + x5616[2 * l_id_5689];
        x5609 = x5609 + x5616[1 + (2 * l_id_5689)];
        x5596[l_id_5689] = x5609;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5690 = get_local_id(0); l_id_5690 < 2; l_id_5690 = l_id_5690 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x5589;
        x5589 = 0.0f;
        /* unrolling loop of 2 */
        x5589 = x5589 + x5596[2 * l_id_5690];
        x5589 = x5589 + x5596[1 + (2 * l_id_5690)];
        x5576[l_id_5690] = x5589;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x5572;
      x5572 = 0.0f;
      /* unrolling loop of 1 */
      {
        int idxAcc5691 = (int)0;
        x5562[idxAcc5691] = x5572;
      }
      
      {
        int idx5692 = (int)0;
        x5572 = x5576[idx5692] + x5572;
      }
      
      x5562[1] = x5572;
    }
    
    /* mapLocal */
    for (int l_id_5693 = get_local_id(0); l_id_5693 < 2; l_id_5693 = l_id_5693 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x5552;
        x5552 = x5562[l_id_5693];
        /* unrolling loop of 1 */
        {
          int idxAcc5694 = (int)0;
          x5539[idxAcc5694 + (2 * l_id_5693)] = x5552;
        }
        
        {
          int idx5695 = (int)0;
          x5552 = x5596[idx5695 + (2 * l_id_5693)] + x5552;
        }
        
        x5539[1 + (2 * l_id_5693)] = x5552;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5696 = get_local_id(0); l_id_5696 < 4; l_id_5696 = l_id_5696 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x5529;
        x5529 = x5539[l_id_5696];
        /* unrolling loop of 1 */
        {
          int idxAcc5697 = (int)0;
          x5516[idxAcc5697 + (2 * l_id_5696)] = x5529;
        }
        
        {
          int idx5698 = (int)0;
          x5529 = x5616[idx5698 + (2 * l_id_5696)] + x5529;
        }
        
        x5516[1 + (2 * l_id_5696)] = x5529;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5699 = get_local_id(0); l_id_5699 < 8; l_id_5699 = l_id_5699 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x5506;
        x5506 = x5516[l_id_5699];
        /* unrolling loop of 1 */
        {
          int idxAcc5700 = (int)0;
          x5493[idxAcc5700 + (2 * l_id_5699)] = x5506;
        }
        
        {
          int idx5701 = (int)0;
          x5506 = x5636[idx5701 + (2 * l_id_5699)] + x5506;
        }
        
        x5493[1 + (2 * l_id_5699)] = x5506;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5702 = get_local_id(0); l_id_5702 < 16; l_id_5702 = l_id_5702 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x5483;
        x5483 = x5493[l_id_5702];
        /* unrolling loop of 1 */
        {
          int idxAcc5703 = (int)0;
          x5470[idxAcc5703 + (2 * l_id_5702)] = x5483;
        }
        
        {
          int idx5704 = (int)0;
          x5483 = x5656[idx5704 + (2 * l_id_5702)] + x5483;
        }
        
        x5470[1 + (2 * l_id_5702)] = x5483;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_5705 = get_local_id(0); l_id_5705 < 32; l_id_5705 = l_id_5705 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x5460;
        x5460 = x5470[l_id_5705];
        /* unrolling loop of 1 */
        {
          int idxAcc5706 = (int)0;
          output[(idxAcc5706 + (2 * l_id_5705)) + (64 * wg_id_5685)] = x5460;
        }
        
        {
          int idx5707 = (int)0;
          x5460 = e5252[(idx5707 + (2 * l_id_5705)) + (64 * wg_id_5685)] + x5460;
        }
        
        output[(1 + (2 * l_id_5705)) + (64 * wg_id_5685)] = x5460;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_64_2_2(global float* restrict output, int n6163, const global float* restrict e6164){
local float x6419[32];

local float x6433[16];

local float x6396[8];

local float x6453[4];

local float x6373[4];

local float x6473[8];

local float x6350[16];

local float x6493[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_6523 = get_group_id(0); wg_id_6523 < (n6163 / 64); wg_id_6523 = wg_id_6523 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_6524 = get_local_id(0); l_id_6524 < 32; l_id_6524 = l_id_6524 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x6506;
        x6506 = 0.0f;
        /* unrolling loop of 2 */
        x6506 = x6506 + e6164[(2 * l_id_6524) + (64 * wg_id_6523)];
        x6506 = x6506 + e6164[(1 + (2 * l_id_6524)) + (64 * wg_id_6523)];
        x6493[l_id_6524] = x6506;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_6525 = get_local_id(0); l_id_6525 < 16; l_id_6525 = l_id_6525 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x6486;
        x6486 = 0.0f;
        /* unrolling loop of 2 */
        x6486 = x6486 + x6493[2 * l_id_6525];
        x6486 = x6486 + x6493[1 + (2 * l_id_6525)];
        x6473[l_id_6525] = x6486;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_6526 = get_local_id(0); l_id_6526 < 8; l_id_6526 = l_id_6526 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x6466;
        x6466 = 0.0f;
        /* unrolling loop of 2 */
        x6466 = x6466 + x6473[2 * l_id_6526];
        x6466 = x6466 + x6473[1 + (2 * l_id_6526)];
        x6453[l_id_6526] = x6466;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_6527 = get_local_id(0); l_id_6527 < 4; l_id_6527 = l_id_6527 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x6446;
        x6446 = 0.0f;
        /* unrolling loop of 2 */
        x6446 = x6446 + x6453[2 * l_id_6527];
        x6446 = x6446 + x6453[1 + (2 * l_id_6527)];
        x6433[l_id_6527] = x6446;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x6429;
      x6429 = 0.0f;
      /* unrolling loop of 3 */
      {
        int idxAcc6528 = (int)0;
        x6419[idxAcc6528] = x6429;
      }
      
      {
        int idx6529 = (int)0;
        x6429 = x6433[idx6529] + x6429;
      }
      
      {
        int idxAcc6530 = (int)1;
        x6419[idxAcc6530] = x6429;
      }
      
      {
        int idx6531 = (int)1;
        x6429 = x6433[idx6531] + x6429;
      }
      
      {
        int idxAcc6532 = (int)2;
        x6419[idxAcc6532] = x6429;
      }
      
      {
        int idx6533 = (int)2;
        x6429 = x6433[idx6533] + x6429;
      }
      
      x6419[3] = x6429;
    }
    
    /* mapLocal */
    for (int l_id_6534 = get_local_id(0); l_id_6534 < 4; l_id_6534 = l_id_6534 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x6409;
        x6409 = x6419[l_id_6534];
        /* unrolling loop of 1 */
        {
          int idxAcc6535 = (int)0;
          x6396[idxAcc6535 + (2 * l_id_6534)] = x6409;
        }
        
        {
          int idx6536 = (int)0;
          x6409 = x6453[idx6536 + (2 * l_id_6534)] + x6409;
        }
        
        x6396[1 + (2 * l_id_6534)] = x6409;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_6537 = get_local_id(0); l_id_6537 < 8; l_id_6537 = l_id_6537 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x6386;
        x6386 = x6396[l_id_6537];
        /* unrolling loop of 1 */
        {
          int idxAcc6538 = (int)0;
          x6373[idxAcc6538 + (2 * l_id_6537)] = x6386;
        }
        
        {
          int idx6539 = (int)0;
          x6386 = x6473[idx6539 + (2 * l_id_6537)] + x6386;
        }
        
        x6373[1 + (2 * l_id_6537)] = x6386;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_6540 = get_local_id(0); l_id_6540 < 16; l_id_6540 = l_id_6540 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x6363;
        x6363 = x6373[l_id_6540];
        /* unrolling loop of 1 */
        {
          int idxAcc6541 = (int)0;
          x6350[idxAcc6541 + (2 * l_id_6540)] = x6363;
        }
        
        {
          int idx6542 = (int)0;
          x6363 = x6493[idx6542 + (2 * l_id_6540)] + x6363;
        }
        
        x6350[1 + (2 * l_id_6540)] = x6363;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_6543 = get_local_id(0); l_id_6543 < 32; l_id_6543 = l_id_6543 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x6340;
        x6340 = x6350[l_id_6543];
        /* unrolling loop of 1 */
        {
          int idxAcc6544 = (int)0;
          output[(idxAcc6544 + (2 * l_id_6543)) + (64 * wg_id_6523)] = x6340;
        }
        
        {
          int idx6545 = (int)0;
          x6340 = e6164[(idx6545 + (2 * l_id_6543)) + (64 * wg_id_6523)] + x6340;
        }
        
        output[(1 + (2 * l_id_6543)) + (64 * wg_id_6523)] = x6340;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_64_3_2(global float* restrict output, int n6893, const global float* restrict e6894){
local float x7094[32];

local float x7108[16];

local float x7071[8];

local float x7128[8];

local float x7048[16];

local float x7148[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_7181 = get_group_id(0); wg_id_7181 < (n6893 / 64); wg_id_7181 = wg_id_7181 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_7182 = get_local_id(0); l_id_7182 < 32; l_id_7182 = l_id_7182 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x7161;
        x7161 = 0.0f;
        /* unrolling loop of 2 */
        x7161 = x7161 + e6894[(2 * l_id_7182) + (64 * wg_id_7181)];
        x7161 = x7161 + e6894[(1 + (2 * l_id_7182)) + (64 * wg_id_7181)];
        x7148[l_id_7182] = x7161;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_7183 = get_local_id(0); l_id_7183 < 16; l_id_7183 = l_id_7183 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x7141;
        x7141 = 0.0f;
        /* unrolling loop of 2 */
        x7141 = x7141 + x7148[2 * l_id_7183];
        x7141 = x7141 + x7148[1 + (2 * l_id_7183)];
        x7128[l_id_7183] = x7141;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_7184 = get_local_id(0); l_id_7184 < 8; l_id_7184 = l_id_7184 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x7121;
        x7121 = 0.0f;
        /* unrolling loop of 2 */
        x7121 = x7121 + x7128[2 * l_id_7184];
        x7121 = x7121 + x7128[1 + (2 * l_id_7184)];
        x7108[l_id_7184] = x7121;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x7104;
      x7104 = 0.0f;
      /* unrolling loop of 7 */
      {
        int idxAcc7185 = (int)0;
        x7094[idxAcc7185] = x7104;
      }
      
      {
        int idx7186 = (int)0;
        x7104 = x7108[idx7186] + x7104;
      }
      
      {
        int idxAcc7187 = (int)1;
        x7094[idxAcc7187] = x7104;
      }
      
      {
        int idx7188 = (int)1;
        x7104 = x7108[idx7188] + x7104;
      }
      
      {
        int idxAcc7189 = (int)2;
        x7094[idxAcc7189] = x7104;
      }
      
      {
        int idx7190 = (int)2;
        x7104 = x7108[idx7190] + x7104;
      }
      
      {
        int idxAcc7191 = (int)3;
        x7094[idxAcc7191] = x7104;
      }
      
      {
        int idx7192 = (int)3;
        x7104 = x7108[idx7192] + x7104;
      }
      
      {
        int idxAcc7193 = (int)4;
        x7094[idxAcc7193] = x7104;
      }
      
      {
        int idx7194 = (int)4;
        x7104 = x7108[idx7194] + x7104;
      }
      
      {
        int idxAcc7195 = (int)5;
        x7094[idxAcc7195] = x7104;
      }
      
      {
        int idx7196 = (int)5;
        x7104 = x7108[idx7196] + x7104;
      }
      
      {
        int idxAcc7197 = (int)6;
        x7094[idxAcc7197] = x7104;
      }
      
      {
        int idx7198 = (int)6;
        x7104 = x7108[idx7198] + x7104;
      }
      
      x7094[7] = x7104;
    }
    
    /* mapLocal */
    for (int l_id_7199 = get_local_id(0); l_id_7199 < 8; l_id_7199 = l_id_7199 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x7084;
        x7084 = x7094[l_id_7199];
        /* unrolling loop of 1 */
        {
          int idxAcc7200 = (int)0;
          x7071[idxAcc7200 + (2 * l_id_7199)] = x7084;
        }
        
        {
          int idx7201 = (int)0;
          x7084 = x7128[idx7201 + (2 * l_id_7199)] + x7084;
        }
        
        x7071[1 + (2 * l_id_7199)] = x7084;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_7202 = get_local_id(0); l_id_7202 < 16; l_id_7202 = l_id_7202 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x7061;
        x7061 = x7071[l_id_7202];
        /* unrolling loop of 1 */
        {
          int idxAcc7203 = (int)0;
          x7048[idxAcc7203 + (2 * l_id_7202)] = x7061;
        }
        
        {
          int idx7204 = (int)0;
          x7061 = x7148[idx7204 + (2 * l_id_7202)] + x7061;
        }
        
        x7048[1 + (2 * l_id_7202)] = x7061;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_7205 = get_local_id(0); l_id_7205 < 32; l_id_7205 = l_id_7205 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x7038;
        x7038 = x7048[l_id_7205];
        /* unrolling loop of 1 */
        {
          int idxAcc7206 = (int)0;
          output[(idxAcc7206 + (2 * l_id_7205)) + (64 * wg_id_7181)] = x7038;
        }
        
        {
          int idx7207 = (int)0;
          x7038 = e6894[(idx7207 + (2 * l_id_7205)) + (64 * wg_id_7181)] + x7038;
        }
        
        output[(1 + (2 * l_id_7205)) + (64 * wg_id_7181)] = x7038;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_64_4_2(global float* restrict output, int n7447, const global float* restrict e7448){
local float x7593[32];

local float x7607[16];

local float x7570[16];

local float x7627[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_7667 = get_group_id(0); wg_id_7667 < (n7447 / 64); wg_id_7667 = wg_id_7667 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_7668 = get_local_id(0); l_id_7668 < 32; l_id_7668 = l_id_7668 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x7640;
        x7640 = 0.0f;
        /* unrolling loop of 2 */
        x7640 = x7640 + e7448[(2 * l_id_7668) + (64 * wg_id_7667)];
        x7640 = x7640 + e7448[(1 + (2 * l_id_7668)) + (64 * wg_id_7667)];
        x7627[l_id_7668] = x7640;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_7669 = get_local_id(0); l_id_7669 < 16; l_id_7669 = l_id_7669 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x7620;
        x7620 = 0.0f;
        /* unrolling loop of 2 */
        x7620 = x7620 + x7627[2 * l_id_7669];
        x7620 = x7620 + x7627[1 + (2 * l_id_7669)];
        x7607[l_id_7669] = x7620;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x7603;
      x7603 = 0.0f;
      /* unrolling loop of 15 */
      {
        int idxAcc7670 = (int)0;
        x7593[idxAcc7670] = x7603;
      }
      
      {
        int idx7671 = (int)0;
        x7603 = x7607[idx7671] + x7603;
      }
      
      {
        int idxAcc7672 = (int)1;
        x7593[idxAcc7672] = x7603;
      }
      
      {
        int idx7673 = (int)1;
        x7603 = x7607[idx7673] + x7603;
      }
      
      {
        int idxAcc7674 = (int)2;
        x7593[idxAcc7674] = x7603;
      }
      
      {
        int idx7675 = (int)2;
        x7603 = x7607[idx7675] + x7603;
      }
      
      {
        int idxAcc7676 = (int)3;
        x7593[idxAcc7676] = x7603;
      }
      
      {
        int idx7677 = (int)3;
        x7603 = x7607[idx7677] + x7603;
      }
      
      {
        int idxAcc7678 = (int)4;
        x7593[idxAcc7678] = x7603;
      }
      
      {
        int idx7679 = (int)4;
        x7603 = x7607[idx7679] + x7603;
      }
      
      {
        int idxAcc7680 = (int)5;
        x7593[idxAcc7680] = x7603;
      }
      
      {
        int idx7681 = (int)5;
        x7603 = x7607[idx7681] + x7603;
      }
      
      {
        int idxAcc7682 = (int)6;
        x7593[idxAcc7682] = x7603;
      }
      
      {
        int idx7683 = (int)6;
        x7603 = x7607[idx7683] + x7603;
      }
      
      {
        int idxAcc7684 = (int)7;
        x7593[idxAcc7684] = x7603;
      }
      
      {
        int idx7685 = (int)7;
        x7603 = x7607[idx7685] + x7603;
      }
      
      {
        int idxAcc7686 = (int)8;
        x7593[idxAcc7686] = x7603;
      }
      
      {
        int idx7687 = (int)8;
        x7603 = x7607[idx7687] + x7603;
      }
      
      {
        int idxAcc7688 = (int)9;
        x7593[idxAcc7688] = x7603;
      }
      
      {
        int idx7689 = (int)9;
        x7603 = x7607[idx7689] + x7603;
      }
      
      {
        int idxAcc7690 = (int)10;
        x7593[idxAcc7690] = x7603;
      }
      
      {
        int idx7691 = (int)10;
        x7603 = x7607[idx7691] + x7603;
      }
      
      {
        int idxAcc7692 = (int)11;
        x7593[idxAcc7692] = x7603;
      }
      
      {
        int idx7693 = (int)11;
        x7603 = x7607[idx7693] + x7603;
      }
      
      {
        int idxAcc7694 = (int)12;
        x7593[idxAcc7694] = x7603;
      }
      
      {
        int idx7695 = (int)12;
        x7603 = x7607[idx7695] + x7603;
      }
      
      {
        int idxAcc7696 = (int)13;
        x7593[idxAcc7696] = x7603;
      }
      
      {
        int idx7697 = (int)13;
        x7603 = x7607[idx7697] + x7603;
      }
      
      {
        int idxAcc7698 = (int)14;
        x7593[idxAcc7698] = x7603;
      }
      
      {
        int idx7699 = (int)14;
        x7603 = x7607[idx7699] + x7603;
      }
      
      x7593[15] = x7603;
    }
    
    /* mapLocal */
    for (int l_id_7700 = get_local_id(0); l_id_7700 < 16; l_id_7700 = l_id_7700 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x7583;
        x7583 = x7593[l_id_7700];
        /* unrolling loop of 1 */
        {
          int idxAcc7701 = (int)0;
          x7570[idxAcc7701 + (2 * l_id_7700)] = x7583;
        }
        
        {
          int idx7702 = (int)0;
          x7583 = x7627[idx7702 + (2 * l_id_7700)] + x7583;
        }
        
        x7570[1 + (2 * l_id_7700)] = x7583;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_7703 = get_local_id(0); l_id_7703 < 32; l_id_7703 = l_id_7703 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x7560;
        x7560 = x7570[l_id_7703];
        /* unrolling loop of 1 */
        {
          int idxAcc7704 = (int)0;
          output[(idxAcc7704 + (2 * l_id_7703)) + (64 * wg_id_7667)] = x7560;
        }
        
        {
          int idx7705 = (int)0;
          x7560 = e7448[(idx7705 + (2 * l_id_7703)) + (64 * wg_id_7667)] + x7560;
        }
        
        output[(1 + (2 * l_id_7703)) + (64 * wg_id_7667)] = x7560;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_128_0_2(global float* restrict output, int n8485, const global float* restrict e8486){
local float x8906[64];

local float x8920[32];

local float x8883[16];

local float x8940[8];

local float x8860[4];

local float x8960[2];

local float x8837[1];

local float x8980[1];

local float x8814[2];

local float x9000[4];

local float x8791[8];

local float x9020[16];

local float x8768[32];

local float x9040[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_9070 = get_group_id(0); wg_id_9070 < (n8485 / 128); wg_id_9070 = wg_id_9070 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_9071 = get_local_id(0); l_id_9071 < 64; l_id_9071 = l_id_9071 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x9053;
        x9053 = 0.0f;
        /* unrolling loop of 2 */
        x9053 = x9053 + e8486[(2 * l_id_9071) + (128 * wg_id_9070)];
        x9053 = x9053 + e8486[(1 + (2 * l_id_9071)) + (128 * wg_id_9070)];
        x9040[l_id_9071] = x9053;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9072 = get_local_id(0); l_id_9072 < 32; l_id_9072 = l_id_9072 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x9033;
        x9033 = 0.0f;
        /* unrolling loop of 2 */
        x9033 = x9033 + x9040[2 * l_id_9072];
        x9033 = x9033 + x9040[1 + (2 * l_id_9072)];
        x9020[l_id_9072] = x9033;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9073 = get_local_id(0); l_id_9073 < 16; l_id_9073 = l_id_9073 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x9013;
        x9013 = 0.0f;
        /* unrolling loop of 2 */
        x9013 = x9013 + x9020[2 * l_id_9073];
        x9013 = x9013 + x9020[1 + (2 * l_id_9073)];
        x9000[l_id_9073] = x9013;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9074 = get_local_id(0); l_id_9074 < 8; l_id_9074 = l_id_9074 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x8993;
        x8993 = 0.0f;
        /* unrolling loop of 2 */
        x8993 = x8993 + x9000[2 * l_id_9074];
        x8993 = x8993 + x9000[1 + (2 * l_id_9074)];
        x8980[l_id_9074] = x8993;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9075 = get_local_id(0); l_id_9075 < 4; l_id_9075 = l_id_9075 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x8973;
        x8973 = 0.0f;
        /* unrolling loop of 2 */
        x8973 = x8973 + x8980[2 * l_id_9075];
        x8973 = x8973 + x8980[1 + (2 * l_id_9075)];
        x8960[l_id_9075] = x8973;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9076 = get_local_id(0); l_id_9076 < 2; l_id_9076 = l_id_9076 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x8953;
        x8953 = 0.0f;
        /* unrolling loop of 2 */
        x8953 = x8953 + x8960[2 * l_id_9076];
        x8953 = x8953 + x8960[1 + (2 * l_id_9076)];
        x8940[l_id_9076] = x8953;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9077 = get_local_id(0); l_id_9077 < 1; l_id_9077 = l_id_9077 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x8933;
        x8933 = 0.0f;
        /* unrolling loop of 2 */
        x8933 = x8933 + x8940[2 * l_id_9077];
        x8933 = x8933 + x8940[1 + (2 * l_id_9077)];
        x8920[l_id_9077] = x8933;
      }
      
    }
    
    /* oclScanSeq */
    {
      float x8916;
      x8916 = 0.0f;
      /* unrolling loop of 0 */
      x8906[0] = x8916;
    }
    
    /* mapLocal */
    for (int l_id_9078 = get_local_id(0); l_id_9078 < 1; l_id_9078 = l_id_9078 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8896;
        x8896 = x8906[l_id_9078];
        /* unrolling loop of 1 */
        {
          int idxAcc9079 = (int)0;
          x8883[idxAcc9079 + (2 * l_id_9078)] = x8896;
        }
        
        {
          int idx9080 = (int)0;
          x8896 = x8940[idx9080 + (2 * l_id_9078)] + x8896;
        }
        
        x8883[1 + (2 * l_id_9078)] = x8896;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9081 = get_local_id(0); l_id_9081 < 2; l_id_9081 = l_id_9081 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8873;
        x8873 = x8883[l_id_9081];
        /* unrolling loop of 1 */
        {
          int idxAcc9082 = (int)0;
          x8860[idxAcc9082 + (2 * l_id_9081)] = x8873;
        }
        
        {
          int idx9083 = (int)0;
          x8873 = x8960[idx9083 + (2 * l_id_9081)] + x8873;
        }
        
        x8860[1 + (2 * l_id_9081)] = x8873;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9084 = get_local_id(0); l_id_9084 < 4; l_id_9084 = l_id_9084 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8850;
        x8850 = x8860[l_id_9084];
        /* unrolling loop of 1 */
        {
          int idxAcc9085 = (int)0;
          x8837[idxAcc9085 + (2 * l_id_9084)] = x8850;
        }
        
        {
          int idx9086 = (int)0;
          x8850 = x8980[idx9086 + (2 * l_id_9084)] + x8850;
        }
        
        x8837[1 + (2 * l_id_9084)] = x8850;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9087 = get_local_id(0); l_id_9087 < 8; l_id_9087 = l_id_9087 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8827;
        x8827 = x8837[l_id_9087];
        /* unrolling loop of 1 */
        {
          int idxAcc9088 = (int)0;
          x8814[idxAcc9088 + (2 * l_id_9087)] = x8827;
        }
        
        {
          int idx9089 = (int)0;
          x8827 = x9000[idx9089 + (2 * l_id_9087)] + x8827;
        }
        
        x8814[1 + (2 * l_id_9087)] = x8827;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9090 = get_local_id(0); l_id_9090 < 16; l_id_9090 = l_id_9090 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8804;
        x8804 = x8814[l_id_9090];
        /* unrolling loop of 1 */
        {
          int idxAcc9091 = (int)0;
          x8791[idxAcc9091 + (2 * l_id_9090)] = x8804;
        }
        
        {
          int idx9092 = (int)0;
          x8804 = x9020[idx9092 + (2 * l_id_9090)] + x8804;
        }
        
        x8791[1 + (2 * l_id_9090)] = x8804;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9093 = get_local_id(0); l_id_9093 < 32; l_id_9093 = l_id_9093 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8781;
        x8781 = x8791[l_id_9093];
        /* unrolling loop of 1 */
        {
          int idxAcc9094 = (int)0;
          x8768[idxAcc9094 + (2 * l_id_9093)] = x8781;
        }
        
        {
          int idx9095 = (int)0;
          x8781 = x9040[idx9095 + (2 * l_id_9093)] + x8781;
        }
        
        x8768[1 + (2 * l_id_9093)] = x8781;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_9096 = get_local_id(0); l_id_9096 < 64; l_id_9096 = l_id_9096 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x8758;
        x8758 = x8768[l_id_9096];
        /* unrolling loop of 1 */
        {
          int idxAcc9097 = (int)0;
          output[(idxAcc9097 + (2 * l_id_9096)) + (128 * wg_id_9070)] = x8758;
        }
        
        {
          int idx9098 = (int)0;
          x8758 = e8486[(idx9098 + (2 * l_id_9096)) + (128 * wg_id_9070)] + x8758;
        }
        
        output[(1 + (2 * l_id_9096)) + (128 * wg_id_9070)] = x8758;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_128_1_2(global float* restrict output, int n9770, const global float* restrict e9771){
local float x10136[64];

local float x10150[32];

local float x10113[16];

local float x10170[8];

local float x10090[4];

local float x10190[2];

local float x10067[2];

local float x10210[4];

local float x10044[8];

local float x10230[16];

local float x10021[32];

local float x10250[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_10280 = get_group_id(0); wg_id_10280 < (n9770 / 128); wg_id_10280 = wg_id_10280 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_10281 = get_local_id(0); l_id_10281 < 64; l_id_10281 = l_id_10281 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x10263;
        x10263 = 0.0f;
        /* unrolling loop of 2 */
        x10263 = x10263 + e9771[(2 * l_id_10281) + (128 * wg_id_10280)];
        x10263 = x10263 + e9771[(1 + (2 * l_id_10281)) + (128 * wg_id_10280)];
        x10250[l_id_10281] = x10263;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10282 = get_local_id(0); l_id_10282 < 32; l_id_10282 = l_id_10282 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x10243;
        x10243 = 0.0f;
        /* unrolling loop of 2 */
        x10243 = x10243 + x10250[2 * l_id_10282];
        x10243 = x10243 + x10250[1 + (2 * l_id_10282)];
        x10230[l_id_10282] = x10243;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10283 = get_local_id(0); l_id_10283 < 16; l_id_10283 = l_id_10283 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x10223;
        x10223 = 0.0f;
        /* unrolling loop of 2 */
        x10223 = x10223 + x10230[2 * l_id_10283];
        x10223 = x10223 + x10230[1 + (2 * l_id_10283)];
        x10210[l_id_10283] = x10223;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10284 = get_local_id(0); l_id_10284 < 8; l_id_10284 = l_id_10284 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x10203;
        x10203 = 0.0f;
        /* unrolling loop of 2 */
        x10203 = x10203 + x10210[2 * l_id_10284];
        x10203 = x10203 + x10210[1 + (2 * l_id_10284)];
        x10190[l_id_10284] = x10203;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10285 = get_local_id(0); l_id_10285 < 4; l_id_10285 = l_id_10285 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x10183;
        x10183 = 0.0f;
        /* unrolling loop of 2 */
        x10183 = x10183 + x10190[2 * l_id_10285];
        x10183 = x10183 + x10190[1 + (2 * l_id_10285)];
        x10170[l_id_10285] = x10183;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10286 = get_local_id(0); l_id_10286 < 2; l_id_10286 = l_id_10286 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x10163;
        x10163 = 0.0f;
        /* unrolling loop of 2 */
        x10163 = x10163 + x10170[2 * l_id_10286];
        x10163 = x10163 + x10170[1 + (2 * l_id_10286)];
        x10150[l_id_10286] = x10163;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x10146;
      x10146 = 0.0f;
      /* unrolling loop of 1 */
      {
        int idxAcc10287 = (int)0;
        x10136[idxAcc10287] = x10146;
      }
      
      {
        int idx10288 = (int)0;
        x10146 = x10150[idx10288] + x10146;
      }
      
      x10136[1] = x10146;
    }
    
    /* mapLocal */
    for (int l_id_10289 = get_local_id(0); l_id_10289 < 2; l_id_10289 = l_id_10289 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x10126;
        x10126 = x10136[l_id_10289];
        /* unrolling loop of 1 */
        {
          int idxAcc10290 = (int)0;
          x10113[idxAcc10290 + (2 * l_id_10289)] = x10126;
        }
        
        {
          int idx10291 = (int)0;
          x10126 = x10170[idx10291 + (2 * l_id_10289)] + x10126;
        }
        
        x10113[1 + (2 * l_id_10289)] = x10126;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10292 = get_local_id(0); l_id_10292 < 4; l_id_10292 = l_id_10292 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x10103;
        x10103 = x10113[l_id_10292];
        /* unrolling loop of 1 */
        {
          int idxAcc10293 = (int)0;
          x10090[idxAcc10293 + (2 * l_id_10292)] = x10103;
        }
        
        {
          int idx10294 = (int)0;
          x10103 = x10190[idx10294 + (2 * l_id_10292)] + x10103;
        }
        
        x10090[1 + (2 * l_id_10292)] = x10103;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10295 = get_local_id(0); l_id_10295 < 8; l_id_10295 = l_id_10295 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x10080;
        x10080 = x10090[l_id_10295];
        /* unrolling loop of 1 */
        {
          int idxAcc10296 = (int)0;
          x10067[idxAcc10296 + (2 * l_id_10295)] = x10080;
        }
        
        {
          int idx10297 = (int)0;
          x10080 = x10210[idx10297 + (2 * l_id_10295)] + x10080;
        }
        
        x10067[1 + (2 * l_id_10295)] = x10080;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10298 = get_local_id(0); l_id_10298 < 16; l_id_10298 = l_id_10298 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x10057;
        x10057 = x10067[l_id_10298];
        /* unrolling loop of 1 */
        {
          int idxAcc10299 = (int)0;
          x10044[idxAcc10299 + (2 * l_id_10298)] = x10057;
        }
        
        {
          int idx10300 = (int)0;
          x10057 = x10230[idx10300 + (2 * l_id_10298)] + x10057;
        }
        
        x10044[1 + (2 * l_id_10298)] = x10057;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10301 = get_local_id(0); l_id_10301 < 32; l_id_10301 = l_id_10301 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x10034;
        x10034 = x10044[l_id_10301];
        /* unrolling loop of 1 */
        {
          int idxAcc10302 = (int)0;
          x10021[idxAcc10302 + (2 * l_id_10301)] = x10034;
        }
        
        {
          int idx10303 = (int)0;
          x10034 = x10250[idx10303 + (2 * l_id_10301)] + x10034;
        }
        
        x10021[1 + (2 * l_id_10301)] = x10034;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_10304 = get_local_id(0); l_id_10304 < 64; l_id_10304 = l_id_10304 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x10011;
        x10011 = x10021[l_id_10304];
        /* unrolling loop of 1 */
        {
          int idxAcc10305 = (int)0;
          output[(idxAcc10305 + (2 * l_id_10304)) + (128 * wg_id_10280)] = x10011;
        }
        
        {
          int idx10306 = (int)0;
          x10011 = e9771[(idx10306 + (2 * l_id_10304)) + (128 * wg_id_10280)] + x10011;
        }
        
        output[(1 + (2 * l_id_10304)) + (128 * wg_id_10280)] = x10011;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_128_2_2(global float* restrict output, int n10870, const global float* restrict e10871){
local float x11181[64];

local float x11195[32];

local float x11158[16];

local float x11215[8];

local float x11135[4];

local float x11235[4];

local float x11112[8];

local float x11255[16];

local float x11089[32];

local float x11275[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_11306 = get_group_id(0); wg_id_11306 < (n10870 / 128); wg_id_11306 = wg_id_11306 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_11307 = get_local_id(0); l_id_11307 < 64; l_id_11307 = l_id_11307 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x11288;
        x11288 = 0.0f;
        /* unrolling loop of 2 */
        x11288 = x11288 + e10871[(2 * l_id_11307) + (128 * wg_id_11306)];
        x11288 = x11288 + e10871[(1 + (2 * l_id_11307)) + (128 * wg_id_11306)];
        x11275[l_id_11307] = x11288;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11308 = get_local_id(0); l_id_11308 < 32; l_id_11308 = l_id_11308 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x11268;
        x11268 = 0.0f;
        /* unrolling loop of 2 */
        x11268 = x11268 + x11275[2 * l_id_11308];
        x11268 = x11268 + x11275[1 + (2 * l_id_11308)];
        x11255[l_id_11308] = x11268;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11309 = get_local_id(0); l_id_11309 < 16; l_id_11309 = l_id_11309 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x11248;
        x11248 = 0.0f;
        /* unrolling loop of 2 */
        x11248 = x11248 + x11255[2 * l_id_11309];
        x11248 = x11248 + x11255[1 + (2 * l_id_11309)];
        x11235[l_id_11309] = x11248;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11310 = get_local_id(0); l_id_11310 < 8; l_id_11310 = l_id_11310 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x11228;
        x11228 = 0.0f;
        /* unrolling loop of 2 */
        x11228 = x11228 + x11235[2 * l_id_11310];
        x11228 = x11228 + x11235[1 + (2 * l_id_11310)];
        x11215[l_id_11310] = x11228;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11311 = get_local_id(0); l_id_11311 < 4; l_id_11311 = l_id_11311 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x11208;
        x11208 = 0.0f;
        /* unrolling loop of 2 */
        x11208 = x11208 + x11215[2 * l_id_11311];
        x11208 = x11208 + x11215[1 + (2 * l_id_11311)];
        x11195[l_id_11311] = x11208;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x11191;
      x11191 = 0.0f;
      /* unrolling loop of 3 */
      {
        int idxAcc11312 = (int)0;
        x11181[idxAcc11312] = x11191;
      }
      
      {
        int idx11313 = (int)0;
        x11191 = x11195[idx11313] + x11191;
      }
      
      {
        int idxAcc11314 = (int)1;
        x11181[idxAcc11314] = x11191;
      }
      
      {
        int idx11315 = (int)1;
        x11191 = x11195[idx11315] + x11191;
      }
      
      {
        int idxAcc11316 = (int)2;
        x11181[idxAcc11316] = x11191;
      }
      
      {
        int idx11317 = (int)2;
        x11191 = x11195[idx11317] + x11191;
      }
      
      x11181[3] = x11191;
    }
    
    /* mapLocal */
    for (int l_id_11318 = get_local_id(0); l_id_11318 < 4; l_id_11318 = l_id_11318 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11171;
        x11171 = x11181[l_id_11318];
        /* unrolling loop of 1 */
        {
          int idxAcc11319 = (int)0;
          x11158[idxAcc11319 + (2 * l_id_11318)] = x11171;
        }
        
        {
          int idx11320 = (int)0;
          x11171 = x11215[idx11320 + (2 * l_id_11318)] + x11171;
        }
        
        x11158[1 + (2 * l_id_11318)] = x11171;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11321 = get_local_id(0); l_id_11321 < 8; l_id_11321 = l_id_11321 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11148;
        x11148 = x11158[l_id_11321];
        /* unrolling loop of 1 */
        {
          int idxAcc11322 = (int)0;
          x11135[idxAcc11322 + (2 * l_id_11321)] = x11148;
        }
        
        {
          int idx11323 = (int)0;
          x11148 = x11235[idx11323 + (2 * l_id_11321)] + x11148;
        }
        
        x11135[1 + (2 * l_id_11321)] = x11148;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11324 = get_local_id(0); l_id_11324 < 16; l_id_11324 = l_id_11324 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11125;
        x11125 = x11135[l_id_11324];
        /* unrolling loop of 1 */
        {
          int idxAcc11325 = (int)0;
          x11112[idxAcc11325 + (2 * l_id_11324)] = x11125;
        }
        
        {
          int idx11326 = (int)0;
          x11125 = x11255[idx11326 + (2 * l_id_11324)] + x11125;
        }
        
        x11112[1 + (2 * l_id_11324)] = x11125;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11327 = get_local_id(0); l_id_11327 < 32; l_id_11327 = l_id_11327 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11102;
        x11102 = x11112[l_id_11327];
        /* unrolling loop of 1 */
        {
          int idxAcc11328 = (int)0;
          x11089[idxAcc11328 + (2 * l_id_11327)] = x11102;
        }
        
        {
          int idx11329 = (int)0;
          x11102 = x11275[idx11329 + (2 * l_id_11327)] + x11102;
        }
        
        x11089[1 + (2 * l_id_11327)] = x11102;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_11330 = get_local_id(0); l_id_11330 < 64; l_id_11330 = l_id_11330 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11079;
        x11079 = x11089[l_id_11330];
        /* unrolling loop of 1 */
        {
          int idxAcc11331 = (int)0;
          output[(idxAcc11331 + (2 * l_id_11330)) + (128 * wg_id_11306)] = x11079;
        }
        
        {
          int idx11332 = (int)0;
          x11079 = e10871[(idx11332 + (2 * l_id_11330)) + (128 * wg_id_11306)] + x11079;
        }
        
        output[(1 + (2 * l_id_11330)) + (128 * wg_id_11306)] = x11079;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_128_3_2(global float* restrict output, int n11788, const global float* restrict e11789){
local float x12044[64];

local float x12058[32];

local float x12021[16];

local float x12078[8];

local float x11998[8];

local float x12098[16];

local float x11975[32];

local float x12118[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_12152 = get_group_id(0); wg_id_12152 < (n11788 / 128); wg_id_12152 = wg_id_12152 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_12153 = get_local_id(0); l_id_12153 < 64; l_id_12153 = l_id_12153 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12131;
        x12131 = 0.0f;
        /* unrolling loop of 2 */
        x12131 = x12131 + e11789[(2 * l_id_12153) + (128 * wg_id_12152)];
        x12131 = x12131 + e11789[(1 + (2 * l_id_12153)) + (128 * wg_id_12152)];
        x12118[l_id_12153] = x12131;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12154 = get_local_id(0); l_id_12154 < 32; l_id_12154 = l_id_12154 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12111;
        x12111 = 0.0f;
        /* unrolling loop of 2 */
        x12111 = x12111 + x12118[2 * l_id_12154];
        x12111 = x12111 + x12118[1 + (2 * l_id_12154)];
        x12098[l_id_12154] = x12111;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12155 = get_local_id(0); l_id_12155 < 16; l_id_12155 = l_id_12155 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12091;
        x12091 = 0.0f;
        /* unrolling loop of 2 */
        x12091 = x12091 + x12098[2 * l_id_12155];
        x12091 = x12091 + x12098[1 + (2 * l_id_12155)];
        x12078[l_id_12155] = x12091;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12156 = get_local_id(0); l_id_12156 < 8; l_id_12156 = l_id_12156 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12071;
        x12071 = 0.0f;
        /* unrolling loop of 2 */
        x12071 = x12071 + x12078[2 * l_id_12156];
        x12071 = x12071 + x12078[1 + (2 * l_id_12156)];
        x12058[l_id_12156] = x12071;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x12054;
      x12054 = 0.0f;
      /* unrolling loop of 7 */
      {
        int idxAcc12157 = (int)0;
        x12044[idxAcc12157] = x12054;
      }
      
      {
        int idx12158 = (int)0;
        x12054 = x12058[idx12158] + x12054;
      }
      
      {
        int idxAcc12159 = (int)1;
        x12044[idxAcc12159] = x12054;
      }
      
      {
        int idx12160 = (int)1;
        x12054 = x12058[idx12160] + x12054;
      }
      
      {
        int idxAcc12161 = (int)2;
        x12044[idxAcc12161] = x12054;
      }
      
      {
        int idx12162 = (int)2;
        x12054 = x12058[idx12162] + x12054;
      }
      
      {
        int idxAcc12163 = (int)3;
        x12044[idxAcc12163] = x12054;
      }
      
      {
        int idx12164 = (int)3;
        x12054 = x12058[idx12164] + x12054;
      }
      
      {
        int idxAcc12165 = (int)4;
        x12044[idxAcc12165] = x12054;
      }
      
      {
        int idx12166 = (int)4;
        x12054 = x12058[idx12166] + x12054;
      }
      
      {
        int idxAcc12167 = (int)5;
        x12044[idxAcc12167] = x12054;
      }
      
      {
        int idx12168 = (int)5;
        x12054 = x12058[idx12168] + x12054;
      }
      
      {
        int idxAcc12169 = (int)6;
        x12044[idxAcc12169] = x12054;
      }
      
      {
        int idx12170 = (int)6;
        x12054 = x12058[idx12170] + x12054;
      }
      
      x12044[7] = x12054;
    }
    
    /* mapLocal */
    for (int l_id_12171 = get_local_id(0); l_id_12171 < 8; l_id_12171 = l_id_12171 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x12034;
        x12034 = x12044[l_id_12171];
        /* unrolling loop of 1 */
        {
          int idxAcc12172 = (int)0;
          x12021[idxAcc12172 + (2 * l_id_12171)] = x12034;
        }
        
        {
          int idx12173 = (int)0;
          x12034 = x12078[idx12173 + (2 * l_id_12171)] + x12034;
        }
        
        x12021[1 + (2 * l_id_12171)] = x12034;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12174 = get_local_id(0); l_id_12174 < 16; l_id_12174 = l_id_12174 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x12011;
        x12011 = x12021[l_id_12174];
        /* unrolling loop of 1 */
        {
          int idxAcc12175 = (int)0;
          x11998[idxAcc12175 + (2 * l_id_12174)] = x12011;
        }
        
        {
          int idx12176 = (int)0;
          x12011 = x12098[idx12176 + (2 * l_id_12174)] + x12011;
        }
        
        x11998[1 + (2 * l_id_12174)] = x12011;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12177 = get_local_id(0); l_id_12177 < 32; l_id_12177 = l_id_12177 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11988;
        x11988 = x11998[l_id_12177];
        /* unrolling loop of 1 */
        {
          int idxAcc12178 = (int)0;
          x11975[idxAcc12178 + (2 * l_id_12177)] = x11988;
        }
        
        {
          int idx12179 = (int)0;
          x11988 = x12118[idx12179 + (2 * l_id_12177)] + x11988;
        }
        
        x11975[1 + (2 * l_id_12177)] = x11988;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12180 = get_local_id(0); l_id_12180 < 64; l_id_12180 = l_id_12180 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x11965;
        x11965 = x11975[l_id_12180];
        /* unrolling loop of 1 */
        {
          int idxAcc12181 = (int)0;
          output[(idxAcc12181 + (2 * l_id_12180)) + (128 * wg_id_12152)] = x11965;
        }
        
        {
          int idx12182 = (int)0;
          x11965 = e11789[(idx12182 + (2 * l_id_12180)) + (128 * wg_id_12152)] + x11965;
        }
        
        output[(1 + (2 * l_id_12180)) + (128 * wg_id_12152)] = x11965;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_128_4_2(global float* restrict output, int n12530, const global float* restrict e12531){
local float x12731[64];

local float x12745[32];

local float x12708[16];

local float x12765[16];

local float x12685[32];

local float x12785[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_12826 = get_group_id(0); wg_id_12826 < (n12530 / 128); wg_id_12826 = wg_id_12826 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_12827 = get_local_id(0); l_id_12827 < 64; l_id_12827 = l_id_12827 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12798;
        x12798 = 0.0f;
        /* unrolling loop of 2 */
        x12798 = x12798 + e12531[(2 * l_id_12827) + (128 * wg_id_12826)];
        x12798 = x12798 + e12531[(1 + (2 * l_id_12827)) + (128 * wg_id_12826)];
        x12785[l_id_12827] = x12798;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12828 = get_local_id(0); l_id_12828 < 32; l_id_12828 = l_id_12828 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12778;
        x12778 = 0.0f;
        /* unrolling loop of 2 */
        x12778 = x12778 + x12785[2 * l_id_12828];
        x12778 = x12778 + x12785[1 + (2 * l_id_12828)];
        x12765[l_id_12828] = x12778;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12829 = get_local_id(0); l_id_12829 < 16; l_id_12829 = l_id_12829 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x12758;
        x12758 = 0.0f;
        /* unrolling loop of 2 */
        x12758 = x12758 + x12765[2 * l_id_12829];
        x12758 = x12758 + x12765[1 + (2 * l_id_12829)];
        x12745[l_id_12829] = x12758;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x12741;
      x12741 = 0.0f;
      /* unrolling loop of 15 */
      {
        int idxAcc12830 = (int)0;
        x12731[idxAcc12830] = x12741;
      }
      
      {
        int idx12831 = (int)0;
        x12741 = x12745[idx12831] + x12741;
      }
      
      {
        int idxAcc12832 = (int)1;
        x12731[idxAcc12832] = x12741;
      }
      
      {
        int idx12833 = (int)1;
        x12741 = x12745[idx12833] + x12741;
      }
      
      {
        int idxAcc12834 = (int)2;
        x12731[idxAcc12834] = x12741;
      }
      
      {
        int idx12835 = (int)2;
        x12741 = x12745[idx12835] + x12741;
      }
      
      {
        int idxAcc12836 = (int)3;
        x12731[idxAcc12836] = x12741;
      }
      
      {
        int idx12837 = (int)3;
        x12741 = x12745[idx12837] + x12741;
      }
      
      {
        int idxAcc12838 = (int)4;
        x12731[idxAcc12838] = x12741;
      }
      
      {
        int idx12839 = (int)4;
        x12741 = x12745[idx12839] + x12741;
      }
      
      {
        int idxAcc12840 = (int)5;
        x12731[idxAcc12840] = x12741;
      }
      
      {
        int idx12841 = (int)5;
        x12741 = x12745[idx12841] + x12741;
      }
      
      {
        int idxAcc12842 = (int)6;
        x12731[idxAcc12842] = x12741;
      }
      
      {
        int idx12843 = (int)6;
        x12741 = x12745[idx12843] + x12741;
      }
      
      {
        int idxAcc12844 = (int)7;
        x12731[idxAcc12844] = x12741;
      }
      
      {
        int idx12845 = (int)7;
        x12741 = x12745[idx12845] + x12741;
      }
      
      {
        int idxAcc12846 = (int)8;
        x12731[idxAcc12846] = x12741;
      }
      
      {
        int idx12847 = (int)8;
        x12741 = x12745[idx12847] + x12741;
      }
      
      {
        int idxAcc12848 = (int)9;
        x12731[idxAcc12848] = x12741;
      }
      
      {
        int idx12849 = (int)9;
        x12741 = x12745[idx12849] + x12741;
      }
      
      {
        int idxAcc12850 = (int)10;
        x12731[idxAcc12850] = x12741;
      }
      
      {
        int idx12851 = (int)10;
        x12741 = x12745[idx12851] + x12741;
      }
      
      {
        int idxAcc12852 = (int)11;
        x12731[idxAcc12852] = x12741;
      }
      
      {
        int idx12853 = (int)11;
        x12741 = x12745[idx12853] + x12741;
      }
      
      {
        int idxAcc12854 = (int)12;
        x12731[idxAcc12854] = x12741;
      }
      
      {
        int idx12855 = (int)12;
        x12741 = x12745[idx12855] + x12741;
      }
      
      {
        int idxAcc12856 = (int)13;
        x12731[idxAcc12856] = x12741;
      }
      
      {
        int idx12857 = (int)13;
        x12741 = x12745[idx12857] + x12741;
      }
      
      {
        int idxAcc12858 = (int)14;
        x12731[idxAcc12858] = x12741;
      }
      
      {
        int idx12859 = (int)14;
        x12741 = x12745[idx12859] + x12741;
      }
      
      x12731[15] = x12741;
    }
    
    /* mapLocal */
    for (int l_id_12860 = get_local_id(0); l_id_12860 < 16; l_id_12860 = l_id_12860 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x12721;
        x12721 = x12731[l_id_12860];
        /* unrolling loop of 1 */
        {
          int idxAcc12861 = (int)0;
          x12708[idxAcc12861 + (2 * l_id_12860)] = x12721;
        }
        
        {
          int idx12862 = (int)0;
          x12721 = x12765[idx12862 + (2 * l_id_12860)] + x12721;
        }
        
        x12708[1 + (2 * l_id_12860)] = x12721;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12863 = get_local_id(0); l_id_12863 < 32; l_id_12863 = l_id_12863 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x12698;
        x12698 = x12708[l_id_12863];
        /* unrolling loop of 1 */
        {
          int idxAcc12864 = (int)0;
          x12685[idxAcc12864 + (2 * l_id_12863)] = x12698;
        }
        
        {
          int idx12865 = (int)0;
          x12698 = x12785[idx12865 + (2 * l_id_12863)] + x12698;
        }
        
        x12685[1 + (2 * l_id_12863)] = x12698;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_12866 = get_local_id(0); l_id_12866 < 64; l_id_12866 = l_id_12866 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x12675;
        x12675 = x12685[l_id_12866];
        /* unrolling loop of 1 */
        {
          int idxAcc12867 = (int)0;
          output[(idxAcc12867 + (2 * l_id_12866)) + (128 * wg_id_12826)] = x12675;
        }
        
        {
          int idx12868 = (int)0;
          x12675 = e12531[(idx12868 + (2 * l_id_12866)) + (128 * wg_id_12826)] + x12675;
        }
        
        output[(1 + (2 * l_id_12866)) + (128 * wg_id_12826)] = x12675;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_256_0_2(global float* restrict output, int n13756, const global float* restrict e13757){
local float x14232[128];

local float x14246[64];

local float x14209[32];

local float x14266[16];

local float x14186[8];

local float x14286[4];

local float x14163[2];

local float x14306[1];

local float x14140[1];

local float x14326[2];

local float x14117[4];

local float x14346[8];

local float x14094[16];

local float x14366[32];

local float x14071[64];

local float x14386[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_14417 = get_group_id(0); wg_id_14417 < (n13756 / 256); wg_id_14417 = wg_id_14417 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_14418 = get_local_id(0); l_id_14418 < 128; l_id_14418 = l_id_14418 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14399;
        x14399 = 0.0f;
        /* unrolling loop of 2 */
        x14399 = x14399 + e13757[(2 * l_id_14418) + (256 * wg_id_14417)];
        x14399 = x14399 + e13757[(1 + (2 * l_id_14418)) + (256 * wg_id_14417)];
        x14386[l_id_14418] = x14399;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14419 = get_local_id(0); l_id_14419 < 64; l_id_14419 = l_id_14419 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14379;
        x14379 = 0.0f;
        /* unrolling loop of 2 */
        x14379 = x14379 + x14386[2 * l_id_14419];
        x14379 = x14379 + x14386[1 + (2 * l_id_14419)];
        x14366[l_id_14419] = x14379;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14420 = get_local_id(0); l_id_14420 < 32; l_id_14420 = l_id_14420 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14359;
        x14359 = 0.0f;
        /* unrolling loop of 2 */
        x14359 = x14359 + x14366[2 * l_id_14420];
        x14359 = x14359 + x14366[1 + (2 * l_id_14420)];
        x14346[l_id_14420] = x14359;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14421 = get_local_id(0); l_id_14421 < 16; l_id_14421 = l_id_14421 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14339;
        x14339 = 0.0f;
        /* unrolling loop of 2 */
        x14339 = x14339 + x14346[2 * l_id_14421];
        x14339 = x14339 + x14346[1 + (2 * l_id_14421)];
        x14326[l_id_14421] = x14339;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14422 = get_local_id(0); l_id_14422 < 8; l_id_14422 = l_id_14422 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14319;
        x14319 = 0.0f;
        /* unrolling loop of 2 */
        x14319 = x14319 + x14326[2 * l_id_14422];
        x14319 = x14319 + x14326[1 + (2 * l_id_14422)];
        x14306[l_id_14422] = x14319;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14423 = get_local_id(0); l_id_14423 < 4; l_id_14423 = l_id_14423 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14299;
        x14299 = 0.0f;
        /* unrolling loop of 2 */
        x14299 = x14299 + x14306[2 * l_id_14423];
        x14299 = x14299 + x14306[1 + (2 * l_id_14423)];
        x14286[l_id_14423] = x14299;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14424 = get_local_id(0); l_id_14424 < 2; l_id_14424 = l_id_14424 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14279;
        x14279 = 0.0f;
        /* unrolling loop of 2 */
        x14279 = x14279 + x14286[2 * l_id_14424];
        x14279 = x14279 + x14286[1 + (2 * l_id_14424)];
        x14266[l_id_14424] = x14279;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14425 = get_local_id(0); l_id_14425 < 1; l_id_14425 = l_id_14425 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x14259;
        x14259 = 0.0f;
        /* unrolling loop of 2 */
        x14259 = x14259 + x14266[2 * l_id_14425];
        x14259 = x14259 + x14266[1 + (2 * l_id_14425)];
        x14246[l_id_14425] = x14259;
      }
      
    }
    
    /* oclScanSeq */
    {
      float x14242;
      x14242 = 0.0f;
      /* unrolling loop of 0 */
      x14232[0] = x14242;
    }
    
    /* mapLocal */
    for (int l_id_14426 = get_local_id(0); l_id_14426 < 1; l_id_14426 = l_id_14426 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14222;
        x14222 = x14232[l_id_14426];
        /* unrolling loop of 1 */
        {
          int idxAcc14427 = (int)0;
          x14209[idxAcc14427 + (2 * l_id_14426)] = x14222;
        }
        
        {
          int idx14428 = (int)0;
          x14222 = x14266[idx14428 + (2 * l_id_14426)] + x14222;
        }
        
        x14209[1 + (2 * l_id_14426)] = x14222;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14429 = get_local_id(0); l_id_14429 < 2; l_id_14429 = l_id_14429 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14199;
        x14199 = x14209[l_id_14429];
        /* unrolling loop of 1 */
        {
          int idxAcc14430 = (int)0;
          x14186[idxAcc14430 + (2 * l_id_14429)] = x14199;
        }
        
        {
          int idx14431 = (int)0;
          x14199 = x14286[idx14431 + (2 * l_id_14429)] + x14199;
        }
        
        x14186[1 + (2 * l_id_14429)] = x14199;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14432 = get_local_id(0); l_id_14432 < 4; l_id_14432 = l_id_14432 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14176;
        x14176 = x14186[l_id_14432];
        /* unrolling loop of 1 */
        {
          int idxAcc14433 = (int)0;
          x14163[idxAcc14433 + (2 * l_id_14432)] = x14176;
        }
        
        {
          int idx14434 = (int)0;
          x14176 = x14306[idx14434 + (2 * l_id_14432)] + x14176;
        }
        
        x14163[1 + (2 * l_id_14432)] = x14176;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14435 = get_local_id(0); l_id_14435 < 8; l_id_14435 = l_id_14435 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14153;
        x14153 = x14163[l_id_14435];
        /* unrolling loop of 1 */
        {
          int idxAcc14436 = (int)0;
          x14140[idxAcc14436 + (2 * l_id_14435)] = x14153;
        }
        
        {
          int idx14437 = (int)0;
          x14153 = x14326[idx14437 + (2 * l_id_14435)] + x14153;
        }
        
        x14140[1 + (2 * l_id_14435)] = x14153;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14438 = get_local_id(0); l_id_14438 < 16; l_id_14438 = l_id_14438 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14130;
        x14130 = x14140[l_id_14438];
        /* unrolling loop of 1 */
        {
          int idxAcc14439 = (int)0;
          x14117[idxAcc14439 + (2 * l_id_14438)] = x14130;
        }
        
        {
          int idx14440 = (int)0;
          x14130 = x14346[idx14440 + (2 * l_id_14438)] + x14130;
        }
        
        x14117[1 + (2 * l_id_14438)] = x14130;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14441 = get_local_id(0); l_id_14441 < 32; l_id_14441 = l_id_14441 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14107;
        x14107 = x14117[l_id_14441];
        /* unrolling loop of 1 */
        {
          int idxAcc14442 = (int)0;
          x14094[idxAcc14442 + (2 * l_id_14441)] = x14107;
        }
        
        {
          int idx14443 = (int)0;
          x14107 = x14366[idx14443 + (2 * l_id_14441)] + x14107;
        }
        
        x14094[1 + (2 * l_id_14441)] = x14107;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14444 = get_local_id(0); l_id_14444 < 64; l_id_14444 = l_id_14444 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14084;
        x14084 = x14094[l_id_14444];
        /* unrolling loop of 1 */
        {
          int idxAcc14445 = (int)0;
          x14071[idxAcc14445 + (2 * l_id_14444)] = x14084;
        }
        
        {
          int idx14446 = (int)0;
          x14084 = x14386[idx14446 + (2 * l_id_14444)] + x14084;
        }
        
        x14071[1 + (2 * l_id_14444)] = x14084;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_14447 = get_local_id(0); l_id_14447 < 128; l_id_14447 = l_id_14447 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x14061;
        x14061 = x14071[l_id_14447];
        /* unrolling loop of 1 */
        {
          int idxAcc14448 = (int)0;
          output[(idxAcc14448 + (2 * l_id_14447)) + (256 * wg_id_14417)] = x14061;
        }
        
        {
          int idx14449 = (int)0;
          x14061 = e13757[(idx14449 + (2 * l_id_14447)) + (256 * wg_id_14417)] + x14061;
        }
        
        output[(1 + (2 * l_id_14447)) + (256 * wg_id_14417)] = x14061;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_256_1_2(global float* restrict output, int n15229, const global float* restrict e15230){
local float x15650[128];

local float x15664[64];

local float x15627[32];

local float x15684[16];

local float x15604[8];

local float x15704[4];

local float x15581[2];

local float x15724[2];

local float x15558[4];

local float x15744[8];

local float x15535[16];

local float x15764[32];

local float x15512[64];

local float x15784[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_15815 = get_group_id(0); wg_id_15815 < (n15229 / 256); wg_id_15815 = wg_id_15815 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_15816 = get_local_id(0); l_id_15816 < 128; l_id_15816 = l_id_15816 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15797;
        x15797 = 0.0f;
        /* unrolling loop of 2 */
        x15797 = x15797 + e15230[(2 * l_id_15816) + (256 * wg_id_15815)];
        x15797 = x15797 + e15230[(1 + (2 * l_id_15816)) + (256 * wg_id_15815)];
        x15784[l_id_15816] = x15797;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15817 = get_local_id(0); l_id_15817 < 64; l_id_15817 = l_id_15817 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15777;
        x15777 = 0.0f;
        /* unrolling loop of 2 */
        x15777 = x15777 + x15784[2 * l_id_15817];
        x15777 = x15777 + x15784[1 + (2 * l_id_15817)];
        x15764[l_id_15817] = x15777;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15818 = get_local_id(0); l_id_15818 < 32; l_id_15818 = l_id_15818 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15757;
        x15757 = 0.0f;
        /* unrolling loop of 2 */
        x15757 = x15757 + x15764[2 * l_id_15818];
        x15757 = x15757 + x15764[1 + (2 * l_id_15818)];
        x15744[l_id_15818] = x15757;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15819 = get_local_id(0); l_id_15819 < 16; l_id_15819 = l_id_15819 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15737;
        x15737 = 0.0f;
        /* unrolling loop of 2 */
        x15737 = x15737 + x15744[2 * l_id_15819];
        x15737 = x15737 + x15744[1 + (2 * l_id_15819)];
        x15724[l_id_15819] = x15737;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15820 = get_local_id(0); l_id_15820 < 8; l_id_15820 = l_id_15820 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15717;
        x15717 = 0.0f;
        /* unrolling loop of 2 */
        x15717 = x15717 + x15724[2 * l_id_15820];
        x15717 = x15717 + x15724[1 + (2 * l_id_15820)];
        x15704[l_id_15820] = x15717;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15821 = get_local_id(0); l_id_15821 < 4; l_id_15821 = l_id_15821 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15697;
        x15697 = 0.0f;
        /* unrolling loop of 2 */
        x15697 = x15697 + x15704[2 * l_id_15821];
        x15697 = x15697 + x15704[1 + (2 * l_id_15821)];
        x15684[l_id_15821] = x15697;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15822 = get_local_id(0); l_id_15822 < 2; l_id_15822 = l_id_15822 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x15677;
        x15677 = 0.0f;
        /* unrolling loop of 2 */
        x15677 = x15677 + x15684[2 * l_id_15822];
        x15677 = x15677 + x15684[1 + (2 * l_id_15822)];
        x15664[l_id_15822] = x15677;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x15660;
      x15660 = 0.0f;
      /* unrolling loop of 1 */
      {
        int idxAcc15823 = (int)0;
        x15650[idxAcc15823] = x15660;
      }
      
      {
        int idx15824 = (int)0;
        x15660 = x15664[idx15824] + x15660;
      }
      
      x15650[1] = x15660;
    }
    
    /* mapLocal */
    for (int l_id_15825 = get_local_id(0); l_id_15825 < 2; l_id_15825 = l_id_15825 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15640;
        x15640 = x15650[l_id_15825];
        /* unrolling loop of 1 */
        {
          int idxAcc15826 = (int)0;
          x15627[idxAcc15826 + (2 * l_id_15825)] = x15640;
        }
        
        {
          int idx15827 = (int)0;
          x15640 = x15684[idx15827 + (2 * l_id_15825)] + x15640;
        }
        
        x15627[1 + (2 * l_id_15825)] = x15640;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15828 = get_local_id(0); l_id_15828 < 4; l_id_15828 = l_id_15828 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15617;
        x15617 = x15627[l_id_15828];
        /* unrolling loop of 1 */
        {
          int idxAcc15829 = (int)0;
          x15604[idxAcc15829 + (2 * l_id_15828)] = x15617;
        }
        
        {
          int idx15830 = (int)0;
          x15617 = x15704[idx15830 + (2 * l_id_15828)] + x15617;
        }
        
        x15604[1 + (2 * l_id_15828)] = x15617;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15831 = get_local_id(0); l_id_15831 < 8; l_id_15831 = l_id_15831 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15594;
        x15594 = x15604[l_id_15831];
        /* unrolling loop of 1 */
        {
          int idxAcc15832 = (int)0;
          x15581[idxAcc15832 + (2 * l_id_15831)] = x15594;
        }
        
        {
          int idx15833 = (int)0;
          x15594 = x15724[idx15833 + (2 * l_id_15831)] + x15594;
        }
        
        x15581[1 + (2 * l_id_15831)] = x15594;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15834 = get_local_id(0); l_id_15834 < 16; l_id_15834 = l_id_15834 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15571;
        x15571 = x15581[l_id_15834];
        /* unrolling loop of 1 */
        {
          int idxAcc15835 = (int)0;
          x15558[idxAcc15835 + (2 * l_id_15834)] = x15571;
        }
        
        {
          int idx15836 = (int)0;
          x15571 = x15744[idx15836 + (2 * l_id_15834)] + x15571;
        }
        
        x15558[1 + (2 * l_id_15834)] = x15571;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15837 = get_local_id(0); l_id_15837 < 32; l_id_15837 = l_id_15837 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15548;
        x15548 = x15558[l_id_15837];
        /* unrolling loop of 1 */
        {
          int idxAcc15838 = (int)0;
          x15535[idxAcc15838 + (2 * l_id_15837)] = x15548;
        }
        
        {
          int idx15839 = (int)0;
          x15548 = x15764[idx15839 + (2 * l_id_15837)] + x15548;
        }
        
        x15535[1 + (2 * l_id_15837)] = x15548;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15840 = get_local_id(0); l_id_15840 < 64; l_id_15840 = l_id_15840 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15525;
        x15525 = x15535[l_id_15840];
        /* unrolling loop of 1 */
        {
          int idxAcc15841 = (int)0;
          x15512[idxAcc15841 + (2 * l_id_15840)] = x15525;
        }
        
        {
          int idx15842 = (int)0;
          x15525 = x15784[idx15842 + (2 * l_id_15840)] + x15525;
        }
        
        x15512[1 + (2 * l_id_15840)] = x15525;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_15843 = get_local_id(0); l_id_15843 < 128; l_id_15843 = l_id_15843 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x15502;
        x15502 = x15512[l_id_15843];
        /* unrolling loop of 1 */
        {
          int idxAcc15844 = (int)0;
          output[(idxAcc15844 + (2 * l_id_15843)) + (256 * wg_id_15815)] = x15502;
        }
        
        {
          int idx15845 = (int)0;
          x15502 = e15230[(idx15845 + (2 * l_id_15843)) + (256 * wg_id_15815)] + x15502;
        }
        
        output[(1 + (2 * l_id_15843)) + (256 * wg_id_15815)] = x15502;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_256_2_2(global float* restrict output, int n16517, const global float* restrict e16518){
local float x16883[128];

local float x16897[64];

local float x16860[32];

local float x16917[16];

local float x16837[8];

local float x16937[4];

local float x16814[4];

local float x16957[8];

local float x16791[16];

local float x16977[32];

local float x16768[64];

local float x16997[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_17029 = get_group_id(0); wg_id_17029 < (n16517 / 256); wg_id_17029 = wg_id_17029 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_17030 = get_local_id(0); l_id_17030 < 128; l_id_17030 = l_id_17030 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x17010;
        x17010 = 0.0f;
        /* unrolling loop of 2 */
        x17010 = x17010 + e16518[(2 * l_id_17030) + (256 * wg_id_17029)];
        x17010 = x17010 + e16518[(1 + (2 * l_id_17030)) + (256 * wg_id_17029)];
        x16997[l_id_17030] = x17010;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17031 = get_local_id(0); l_id_17031 < 64; l_id_17031 = l_id_17031 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x16990;
        x16990 = 0.0f;
        /* unrolling loop of 2 */
        x16990 = x16990 + x16997[2 * l_id_17031];
        x16990 = x16990 + x16997[1 + (2 * l_id_17031)];
        x16977[l_id_17031] = x16990;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17032 = get_local_id(0); l_id_17032 < 32; l_id_17032 = l_id_17032 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x16970;
        x16970 = 0.0f;
        /* unrolling loop of 2 */
        x16970 = x16970 + x16977[2 * l_id_17032];
        x16970 = x16970 + x16977[1 + (2 * l_id_17032)];
        x16957[l_id_17032] = x16970;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17033 = get_local_id(0); l_id_17033 < 16; l_id_17033 = l_id_17033 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x16950;
        x16950 = 0.0f;
        /* unrolling loop of 2 */
        x16950 = x16950 + x16957[2 * l_id_17033];
        x16950 = x16950 + x16957[1 + (2 * l_id_17033)];
        x16937[l_id_17033] = x16950;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17034 = get_local_id(0); l_id_17034 < 8; l_id_17034 = l_id_17034 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x16930;
        x16930 = 0.0f;
        /* unrolling loop of 2 */
        x16930 = x16930 + x16937[2 * l_id_17034];
        x16930 = x16930 + x16937[1 + (2 * l_id_17034)];
        x16917[l_id_17034] = x16930;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17035 = get_local_id(0); l_id_17035 < 4; l_id_17035 = l_id_17035 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x16910;
        x16910 = 0.0f;
        /* unrolling loop of 2 */
        x16910 = x16910 + x16917[2 * l_id_17035];
        x16910 = x16910 + x16917[1 + (2 * l_id_17035)];
        x16897[l_id_17035] = x16910;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x16893;
      x16893 = 0.0f;
      /* unrolling loop of 3 */
      {
        int idxAcc17036 = (int)0;
        x16883[idxAcc17036] = x16893;
      }
      
      {
        int idx17037 = (int)0;
        x16893 = x16897[idx17037] + x16893;
      }
      
      {
        int idxAcc17038 = (int)1;
        x16883[idxAcc17038] = x16893;
      }
      
      {
        int idx17039 = (int)1;
        x16893 = x16897[idx17039] + x16893;
      }
      
      {
        int idxAcc17040 = (int)2;
        x16883[idxAcc17040] = x16893;
      }
      
      {
        int idx17041 = (int)2;
        x16893 = x16897[idx17041] + x16893;
      }
      
      x16883[3] = x16893;
    }
    
    /* mapLocal */
    for (int l_id_17042 = get_local_id(0); l_id_17042 < 4; l_id_17042 = l_id_17042 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x16873;
        x16873 = x16883[l_id_17042];
        /* unrolling loop of 1 */
        {
          int idxAcc17043 = (int)0;
          x16860[idxAcc17043 + (2 * l_id_17042)] = x16873;
        }
        
        {
          int idx17044 = (int)0;
          x16873 = x16917[idx17044 + (2 * l_id_17042)] + x16873;
        }
        
        x16860[1 + (2 * l_id_17042)] = x16873;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17045 = get_local_id(0); l_id_17045 < 8; l_id_17045 = l_id_17045 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x16850;
        x16850 = x16860[l_id_17045];
        /* unrolling loop of 1 */
        {
          int idxAcc17046 = (int)0;
          x16837[idxAcc17046 + (2 * l_id_17045)] = x16850;
        }
        
        {
          int idx17047 = (int)0;
          x16850 = x16937[idx17047 + (2 * l_id_17045)] + x16850;
        }
        
        x16837[1 + (2 * l_id_17045)] = x16850;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17048 = get_local_id(0); l_id_17048 < 16; l_id_17048 = l_id_17048 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x16827;
        x16827 = x16837[l_id_17048];
        /* unrolling loop of 1 */
        {
          int idxAcc17049 = (int)0;
          x16814[idxAcc17049 + (2 * l_id_17048)] = x16827;
        }
        
        {
          int idx17050 = (int)0;
          x16827 = x16957[idx17050 + (2 * l_id_17048)] + x16827;
        }
        
        x16814[1 + (2 * l_id_17048)] = x16827;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17051 = get_local_id(0); l_id_17051 < 32; l_id_17051 = l_id_17051 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x16804;
        x16804 = x16814[l_id_17051];
        /* unrolling loop of 1 */
        {
          int idxAcc17052 = (int)0;
          x16791[idxAcc17052 + (2 * l_id_17051)] = x16804;
        }
        
        {
          int idx17053 = (int)0;
          x16804 = x16977[idx17053 + (2 * l_id_17051)] + x16804;
        }
        
        x16791[1 + (2 * l_id_17051)] = x16804;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17054 = get_local_id(0); l_id_17054 < 64; l_id_17054 = l_id_17054 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x16781;
        x16781 = x16791[l_id_17054];
        /* unrolling loop of 1 */
        {
          int idxAcc17055 = (int)0;
          x16768[idxAcc17055 + (2 * l_id_17054)] = x16781;
        }
        
        {
          int idx17056 = (int)0;
          x16781 = x16997[idx17056 + (2 * l_id_17054)] + x16781;
        }
        
        x16768[1 + (2 * l_id_17054)] = x16781;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_17057 = get_local_id(0); l_id_17057 < 128; l_id_17057 = l_id_17057 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x16758;
        x16758 = x16768[l_id_17057];
        /* unrolling loop of 1 */
        {
          int idxAcc17058 = (int)0;
          output[(idxAcc17058 + (2 * l_id_17057)) + (256 * wg_id_17029)] = x16758;
        }
        
        {
          int idx17059 = (int)0;
          x16758 = e16518[(idx17059 + (2 * l_id_17057)) + (256 * wg_id_17029)] + x16758;
        }
        
        output[(1 + (2 * l_id_17057)) + (256 * wg_id_17029)] = x16758;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_256_3_2(global float* restrict output, int n17623, const global float* restrict e17624){
local float x17934[128];

local float x17948[64];

local float x17911[32];

local float x17968[16];

local float x17888[8];

local float x17988[8];

local float x17865[16];

local float x18008[32];

local float x17842[64];

local float x18028[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_18063 = get_group_id(0); wg_id_18063 < (n17623 / 256); wg_id_18063 = wg_id_18063 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_18064 = get_local_id(0); l_id_18064 < 128; l_id_18064 = l_id_18064 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x18041;
        x18041 = 0.0f;
        /* unrolling loop of 2 */
        x18041 = x18041 + e17624[(2 * l_id_18064) + (256 * wg_id_18063)];
        x18041 = x18041 + e17624[(1 + (2 * l_id_18064)) + (256 * wg_id_18063)];
        x18028[l_id_18064] = x18041;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18065 = get_local_id(0); l_id_18065 < 64; l_id_18065 = l_id_18065 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x18021;
        x18021 = 0.0f;
        /* unrolling loop of 2 */
        x18021 = x18021 + x18028[2 * l_id_18065];
        x18021 = x18021 + x18028[1 + (2 * l_id_18065)];
        x18008[l_id_18065] = x18021;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18066 = get_local_id(0); l_id_18066 < 32; l_id_18066 = l_id_18066 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x18001;
        x18001 = 0.0f;
        /* unrolling loop of 2 */
        x18001 = x18001 + x18008[2 * l_id_18066];
        x18001 = x18001 + x18008[1 + (2 * l_id_18066)];
        x17988[l_id_18066] = x18001;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18067 = get_local_id(0); l_id_18067 < 16; l_id_18067 = l_id_18067 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x17981;
        x17981 = 0.0f;
        /* unrolling loop of 2 */
        x17981 = x17981 + x17988[2 * l_id_18067];
        x17981 = x17981 + x17988[1 + (2 * l_id_18067)];
        x17968[l_id_18067] = x17981;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18068 = get_local_id(0); l_id_18068 < 8; l_id_18068 = l_id_18068 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x17961;
        x17961 = 0.0f;
        /* unrolling loop of 2 */
        x17961 = x17961 + x17968[2 * l_id_18068];
        x17961 = x17961 + x17968[1 + (2 * l_id_18068)];
        x17948[l_id_18068] = x17961;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x17944;
      x17944 = 0.0f;
      /* unrolling loop of 7 */
      {
        int idxAcc18069 = (int)0;
        x17934[idxAcc18069] = x17944;
      }
      
      {
        int idx18070 = (int)0;
        x17944 = x17948[idx18070] + x17944;
      }
      
      {
        int idxAcc18071 = (int)1;
        x17934[idxAcc18071] = x17944;
      }
      
      {
        int idx18072 = (int)1;
        x17944 = x17948[idx18072] + x17944;
      }
      
      {
        int idxAcc18073 = (int)2;
        x17934[idxAcc18073] = x17944;
      }
      
      {
        int idx18074 = (int)2;
        x17944 = x17948[idx18074] + x17944;
      }
      
      {
        int idxAcc18075 = (int)3;
        x17934[idxAcc18075] = x17944;
      }
      
      {
        int idx18076 = (int)3;
        x17944 = x17948[idx18076] + x17944;
      }
      
      {
        int idxAcc18077 = (int)4;
        x17934[idxAcc18077] = x17944;
      }
      
      {
        int idx18078 = (int)4;
        x17944 = x17948[idx18078] + x17944;
      }
      
      {
        int idxAcc18079 = (int)5;
        x17934[idxAcc18079] = x17944;
      }
      
      {
        int idx18080 = (int)5;
        x17944 = x17948[idx18080] + x17944;
      }
      
      {
        int idxAcc18081 = (int)6;
        x17934[idxAcc18081] = x17944;
      }
      
      {
        int idx18082 = (int)6;
        x17944 = x17948[idx18082] + x17944;
      }
      
      x17934[7] = x17944;
    }
    
    /* mapLocal */
    for (int l_id_18083 = get_local_id(0); l_id_18083 < 8; l_id_18083 = l_id_18083 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x17924;
        x17924 = x17934[l_id_18083];
        /* unrolling loop of 1 */
        {
          int idxAcc18084 = (int)0;
          x17911[idxAcc18084 + (2 * l_id_18083)] = x17924;
        }
        
        {
          int idx18085 = (int)0;
          x17924 = x17968[idx18085 + (2 * l_id_18083)] + x17924;
        }
        
        x17911[1 + (2 * l_id_18083)] = x17924;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18086 = get_local_id(0); l_id_18086 < 16; l_id_18086 = l_id_18086 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x17901;
        x17901 = x17911[l_id_18086];
        /* unrolling loop of 1 */
        {
          int idxAcc18087 = (int)0;
          x17888[idxAcc18087 + (2 * l_id_18086)] = x17901;
        }
        
        {
          int idx18088 = (int)0;
          x17901 = x17988[idx18088 + (2 * l_id_18086)] + x17901;
        }
        
        x17888[1 + (2 * l_id_18086)] = x17901;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18089 = get_local_id(0); l_id_18089 < 32; l_id_18089 = l_id_18089 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x17878;
        x17878 = x17888[l_id_18089];
        /* unrolling loop of 1 */
        {
          int idxAcc18090 = (int)0;
          x17865[idxAcc18090 + (2 * l_id_18089)] = x17878;
        }
        
        {
          int idx18091 = (int)0;
          x17878 = x18008[idx18091 + (2 * l_id_18089)] + x17878;
        }
        
        x17865[1 + (2 * l_id_18089)] = x17878;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18092 = get_local_id(0); l_id_18092 < 64; l_id_18092 = l_id_18092 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x17855;
        x17855 = x17865[l_id_18092];
        /* unrolling loop of 1 */
        {
          int idxAcc18093 = (int)0;
          x17842[idxAcc18093 + (2 * l_id_18092)] = x17855;
        }
        
        {
          int idx18094 = (int)0;
          x17855 = x18028[idx18094 + (2 * l_id_18092)] + x17855;
        }
        
        x17842[1 + (2 * l_id_18092)] = x17855;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18095 = get_local_id(0); l_id_18095 < 128; l_id_18095 = l_id_18095 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x17832;
        x17832 = x17842[l_id_18095];
        /* unrolling loop of 1 */
        {
          int idxAcc18096 = (int)0;
          output[(idxAcc18096 + (2 * l_id_18095)) + (256 * wg_id_18063)] = x17832;
        }
        
        {
          int idx18097 = (int)0;
          x17832 = e17624[(idx18097 + (2 * l_id_18095)) + (256 * wg_id_18063)] + x17832;
        }
        
        output[(1 + (2 * l_id_18095)) + (256 * wg_id_18063)] = x17832;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_256_4_2(global float* restrict output, int n18553, const global float* restrict e18554){
local float x18809[128];

local float x18823[64];

local float x18786[32];

local float x18843[16];

local float x18763[16];

local float x18863[32];

local float x18740[64];

local float x18883[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_18925 = get_group_id(0); wg_id_18925 < (n18553 / 256); wg_id_18925 = wg_id_18925 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_18926 = get_local_id(0); l_id_18926 < 128; l_id_18926 = l_id_18926 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x18896;
        x18896 = 0.0f;
        /* unrolling loop of 2 */
        x18896 = x18896 + e18554[(2 * l_id_18926) + (256 * wg_id_18925)];
        x18896 = x18896 + e18554[(1 + (2 * l_id_18926)) + (256 * wg_id_18925)];
        x18883[l_id_18926] = x18896;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18927 = get_local_id(0); l_id_18927 < 64; l_id_18927 = l_id_18927 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x18876;
        x18876 = 0.0f;
        /* unrolling loop of 2 */
        x18876 = x18876 + x18883[2 * l_id_18927];
        x18876 = x18876 + x18883[1 + (2 * l_id_18927)];
        x18863[l_id_18927] = x18876;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18928 = get_local_id(0); l_id_18928 < 32; l_id_18928 = l_id_18928 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x18856;
        x18856 = 0.0f;
        /* unrolling loop of 2 */
        x18856 = x18856 + x18863[2 * l_id_18928];
        x18856 = x18856 + x18863[1 + (2 * l_id_18928)];
        x18843[l_id_18928] = x18856;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18929 = get_local_id(0); l_id_18929 < 16; l_id_18929 = l_id_18929 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x18836;
        x18836 = 0.0f;
        /* unrolling loop of 2 */
        x18836 = x18836 + x18843[2 * l_id_18929];
        x18836 = x18836 + x18843[1 + (2 * l_id_18929)];
        x18823[l_id_18929] = x18836;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x18819;
      x18819 = 0.0f;
      /* unrolling loop of 15 */
      {
        int idxAcc18930 = (int)0;
        x18809[idxAcc18930] = x18819;
      }
      
      {
        int idx18931 = (int)0;
        x18819 = x18823[idx18931] + x18819;
      }
      
      {
        int idxAcc18932 = (int)1;
        x18809[idxAcc18932] = x18819;
      }
      
      {
        int idx18933 = (int)1;
        x18819 = x18823[idx18933] + x18819;
      }
      
      {
        int idxAcc18934 = (int)2;
        x18809[idxAcc18934] = x18819;
      }
      
      {
        int idx18935 = (int)2;
        x18819 = x18823[idx18935] + x18819;
      }
      
      {
        int idxAcc18936 = (int)3;
        x18809[idxAcc18936] = x18819;
      }
      
      {
        int idx18937 = (int)3;
        x18819 = x18823[idx18937] + x18819;
      }
      
      {
        int idxAcc18938 = (int)4;
        x18809[idxAcc18938] = x18819;
      }
      
      {
        int idx18939 = (int)4;
        x18819 = x18823[idx18939] + x18819;
      }
      
      {
        int idxAcc18940 = (int)5;
        x18809[idxAcc18940] = x18819;
      }
      
      {
        int idx18941 = (int)5;
        x18819 = x18823[idx18941] + x18819;
      }
      
      {
        int idxAcc18942 = (int)6;
        x18809[idxAcc18942] = x18819;
      }
      
      {
        int idx18943 = (int)6;
        x18819 = x18823[idx18943] + x18819;
      }
      
      {
        int idxAcc18944 = (int)7;
        x18809[idxAcc18944] = x18819;
      }
      
      {
        int idx18945 = (int)7;
        x18819 = x18823[idx18945] + x18819;
      }
      
      {
        int idxAcc18946 = (int)8;
        x18809[idxAcc18946] = x18819;
      }
      
      {
        int idx18947 = (int)8;
        x18819 = x18823[idx18947] + x18819;
      }
      
      {
        int idxAcc18948 = (int)9;
        x18809[idxAcc18948] = x18819;
      }
      
      {
        int idx18949 = (int)9;
        x18819 = x18823[idx18949] + x18819;
      }
      
      {
        int idxAcc18950 = (int)10;
        x18809[idxAcc18950] = x18819;
      }
      
      {
        int idx18951 = (int)10;
        x18819 = x18823[idx18951] + x18819;
      }
      
      {
        int idxAcc18952 = (int)11;
        x18809[idxAcc18952] = x18819;
      }
      
      {
        int idx18953 = (int)11;
        x18819 = x18823[idx18953] + x18819;
      }
      
      {
        int idxAcc18954 = (int)12;
        x18809[idxAcc18954] = x18819;
      }
      
      {
        int idx18955 = (int)12;
        x18819 = x18823[idx18955] + x18819;
      }
      
      {
        int idxAcc18956 = (int)13;
        x18809[idxAcc18956] = x18819;
      }
      
      {
        int idx18957 = (int)13;
        x18819 = x18823[idx18957] + x18819;
      }
      
      {
        int idxAcc18958 = (int)14;
        x18809[idxAcc18958] = x18819;
      }
      
      {
        int idx18959 = (int)14;
        x18819 = x18823[idx18959] + x18819;
      }
      
      x18809[15] = x18819;
    }
    
    /* mapLocal */
    for (int l_id_18960 = get_local_id(0); l_id_18960 < 16; l_id_18960 = l_id_18960 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x18799;
        x18799 = x18809[l_id_18960];
        /* unrolling loop of 1 */
        {
          int idxAcc18961 = (int)0;
          x18786[idxAcc18961 + (2 * l_id_18960)] = x18799;
        }
        
        {
          int idx18962 = (int)0;
          x18799 = x18843[idx18962 + (2 * l_id_18960)] + x18799;
        }
        
        x18786[1 + (2 * l_id_18960)] = x18799;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18963 = get_local_id(0); l_id_18963 < 32; l_id_18963 = l_id_18963 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x18776;
        x18776 = x18786[l_id_18963];
        /* unrolling loop of 1 */
        {
          int idxAcc18964 = (int)0;
          x18763[idxAcc18964 + (2 * l_id_18963)] = x18776;
        }
        
        {
          int idx18965 = (int)0;
          x18776 = x18863[idx18965 + (2 * l_id_18963)] + x18776;
        }
        
        x18763[1 + (2 * l_id_18963)] = x18776;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18966 = get_local_id(0); l_id_18966 < 64; l_id_18966 = l_id_18966 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x18753;
        x18753 = x18763[l_id_18966];
        /* unrolling loop of 1 */
        {
          int idxAcc18967 = (int)0;
          x18740[idxAcc18967 + (2 * l_id_18966)] = x18753;
        }
        
        {
          int idx18968 = (int)0;
          x18753 = x18883[idx18968 + (2 * l_id_18966)] + x18753;
        }
        
        x18740[1 + (2 * l_id_18966)] = x18753;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_18969 = get_local_id(0); l_id_18969 < 128; l_id_18969 = l_id_18969 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x18730;
        x18730 = x18740[l_id_18969];
        /* unrolling loop of 1 */
        {
          int idxAcc18970 = (int)0;
          output[(idxAcc18970 + (2 * l_id_18969)) + (256 * wg_id_18925)] = x18730;
        }
        
        {
          int idx18971 = (int)0;
          x18730 = e18554[(idx18971 + (2 * l_id_18969)) + (256 * wg_id_18925)] + x18730;
        }
        
        output[(1 + (2 * l_id_18969)) + (256 * wg_id_18925)] = x18730;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_512_0_2(global float* restrict output, int n19967, const global float* restrict e19968){
local float x20498[256];

local float x20512[128];

local float x20475[64];

local float x20532[32];

local float x20452[16];

local float x20552[8];

local float x20429[4];

local float x20572[2];

local float x20406[1];

local float x20592[1];

local float x20383[2];

local float x20612[4];

local float x20360[8];

local float x20632[16];

local float x20337[32];

local float x20652[64];

local float x20314[128];

local float x20672[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_20704 = get_group_id(0); wg_id_20704 < (n19967 / 512); wg_id_20704 = wg_id_20704 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_20705 = get_local_id(0); l_id_20705 < 256; l_id_20705 = l_id_20705 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20685;
        x20685 = 0.0f;
        /* unrolling loop of 2 */
        x20685 = x20685 + e19968[(2 * l_id_20705) + (512 * wg_id_20704)];
        x20685 = x20685 + e19968[(1 + (2 * l_id_20705)) + (512 * wg_id_20704)];
        x20672[l_id_20705] = x20685;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20706 = get_local_id(0); l_id_20706 < 128; l_id_20706 = l_id_20706 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20665;
        x20665 = 0.0f;
        /* unrolling loop of 2 */
        x20665 = x20665 + x20672[2 * l_id_20706];
        x20665 = x20665 + x20672[1 + (2 * l_id_20706)];
        x20652[l_id_20706] = x20665;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20707 = get_local_id(0); l_id_20707 < 64; l_id_20707 = l_id_20707 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20645;
        x20645 = 0.0f;
        /* unrolling loop of 2 */
        x20645 = x20645 + x20652[2 * l_id_20707];
        x20645 = x20645 + x20652[1 + (2 * l_id_20707)];
        x20632[l_id_20707] = x20645;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20708 = get_local_id(0); l_id_20708 < 32; l_id_20708 = l_id_20708 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20625;
        x20625 = 0.0f;
        /* unrolling loop of 2 */
        x20625 = x20625 + x20632[2 * l_id_20708];
        x20625 = x20625 + x20632[1 + (2 * l_id_20708)];
        x20612[l_id_20708] = x20625;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20709 = get_local_id(0); l_id_20709 < 16; l_id_20709 = l_id_20709 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20605;
        x20605 = 0.0f;
        /* unrolling loop of 2 */
        x20605 = x20605 + x20612[2 * l_id_20709];
        x20605 = x20605 + x20612[1 + (2 * l_id_20709)];
        x20592[l_id_20709] = x20605;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20710 = get_local_id(0); l_id_20710 < 8; l_id_20710 = l_id_20710 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20585;
        x20585 = 0.0f;
        /* unrolling loop of 2 */
        x20585 = x20585 + x20592[2 * l_id_20710];
        x20585 = x20585 + x20592[1 + (2 * l_id_20710)];
        x20572[l_id_20710] = x20585;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20711 = get_local_id(0); l_id_20711 < 4; l_id_20711 = l_id_20711 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20565;
        x20565 = 0.0f;
        /* unrolling loop of 2 */
        x20565 = x20565 + x20572[2 * l_id_20711];
        x20565 = x20565 + x20572[1 + (2 * l_id_20711)];
        x20552[l_id_20711] = x20565;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20712 = get_local_id(0); l_id_20712 < 2; l_id_20712 = l_id_20712 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20545;
        x20545 = 0.0f;
        /* unrolling loop of 2 */
        x20545 = x20545 + x20552[2 * l_id_20712];
        x20545 = x20545 + x20552[1 + (2 * l_id_20712)];
        x20532[l_id_20712] = x20545;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20713 = get_local_id(0); l_id_20713 < 1; l_id_20713 = l_id_20713 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x20525;
        x20525 = 0.0f;
        /* unrolling loop of 2 */
        x20525 = x20525 + x20532[2 * l_id_20713];
        x20525 = x20525 + x20532[1 + (2 * l_id_20713)];
        x20512[l_id_20713] = x20525;
      }
      
    }
    
    /* oclScanSeq */
    {
      float x20508;
      x20508 = 0.0f;
      /* unrolling loop of 0 */
      x20498[0] = x20508;
    }
    
    /* mapLocal */
    for (int l_id_20714 = get_local_id(0); l_id_20714 < 1; l_id_20714 = l_id_20714 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20488;
        x20488 = x20498[l_id_20714];
        /* unrolling loop of 1 */
        {
          int idxAcc20715 = (int)0;
          x20475[idxAcc20715 + (2 * l_id_20714)] = x20488;
        }
        
        {
          int idx20716 = (int)0;
          x20488 = x20532[idx20716 + (2 * l_id_20714)] + x20488;
        }
        
        x20475[1 + (2 * l_id_20714)] = x20488;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20717 = get_local_id(0); l_id_20717 < 2; l_id_20717 = l_id_20717 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20465;
        x20465 = x20475[l_id_20717];
        /* unrolling loop of 1 */
        {
          int idxAcc20718 = (int)0;
          x20452[idxAcc20718 + (2 * l_id_20717)] = x20465;
        }
        
        {
          int idx20719 = (int)0;
          x20465 = x20552[idx20719 + (2 * l_id_20717)] + x20465;
        }
        
        x20452[1 + (2 * l_id_20717)] = x20465;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20720 = get_local_id(0); l_id_20720 < 4; l_id_20720 = l_id_20720 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20442;
        x20442 = x20452[l_id_20720];
        /* unrolling loop of 1 */
        {
          int idxAcc20721 = (int)0;
          x20429[idxAcc20721 + (2 * l_id_20720)] = x20442;
        }
        
        {
          int idx20722 = (int)0;
          x20442 = x20572[idx20722 + (2 * l_id_20720)] + x20442;
        }
        
        x20429[1 + (2 * l_id_20720)] = x20442;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20723 = get_local_id(0); l_id_20723 < 8; l_id_20723 = l_id_20723 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20419;
        x20419 = x20429[l_id_20723];
        /* unrolling loop of 1 */
        {
          int idxAcc20724 = (int)0;
          x20406[idxAcc20724 + (2 * l_id_20723)] = x20419;
        }
        
        {
          int idx20725 = (int)0;
          x20419 = x20592[idx20725 + (2 * l_id_20723)] + x20419;
        }
        
        x20406[1 + (2 * l_id_20723)] = x20419;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20726 = get_local_id(0); l_id_20726 < 16; l_id_20726 = l_id_20726 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20396;
        x20396 = x20406[l_id_20726];
        /* unrolling loop of 1 */
        {
          int idxAcc20727 = (int)0;
          x20383[idxAcc20727 + (2 * l_id_20726)] = x20396;
        }
        
        {
          int idx20728 = (int)0;
          x20396 = x20612[idx20728 + (2 * l_id_20726)] + x20396;
        }
        
        x20383[1 + (2 * l_id_20726)] = x20396;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20729 = get_local_id(0); l_id_20729 < 32; l_id_20729 = l_id_20729 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20373;
        x20373 = x20383[l_id_20729];
        /* unrolling loop of 1 */
        {
          int idxAcc20730 = (int)0;
          x20360[idxAcc20730 + (2 * l_id_20729)] = x20373;
        }
        
        {
          int idx20731 = (int)0;
          x20373 = x20632[idx20731 + (2 * l_id_20729)] + x20373;
        }
        
        x20360[1 + (2 * l_id_20729)] = x20373;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20732 = get_local_id(0); l_id_20732 < 64; l_id_20732 = l_id_20732 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20350;
        x20350 = x20360[l_id_20732];
        /* unrolling loop of 1 */
        {
          int idxAcc20733 = (int)0;
          x20337[idxAcc20733 + (2 * l_id_20732)] = x20350;
        }
        
        {
          int idx20734 = (int)0;
          x20350 = x20652[idx20734 + (2 * l_id_20732)] + x20350;
        }
        
        x20337[1 + (2 * l_id_20732)] = x20350;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20735 = get_local_id(0); l_id_20735 < 128; l_id_20735 = l_id_20735 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20327;
        x20327 = x20337[l_id_20735];
        /* unrolling loop of 1 */
        {
          int idxAcc20736 = (int)0;
          x20314[idxAcc20736 + (2 * l_id_20735)] = x20327;
        }
        
        {
          int idx20737 = (int)0;
          x20327 = x20672[idx20737 + (2 * l_id_20735)] + x20327;
        }
        
        x20314[1 + (2 * l_id_20735)] = x20327;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_20738 = get_local_id(0); l_id_20738 < 256; l_id_20738 = l_id_20738 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x20304;
        x20304 = x20314[l_id_20738];
        /* unrolling loop of 1 */
        {
          int idxAcc20739 = (int)0;
          output[(idxAcc20739 + (2 * l_id_20738)) + (512 * wg_id_20704)] = x20304;
        }
        
        {
          int idx20740 = (int)0;
          x20304 = e19968[(idx20740 + (2 * l_id_20738)) + (512 * wg_id_20704)] + x20304;
        }
        
        output[(1 + (2 * l_id_20738)) + (512 * wg_id_20704)] = x20304;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_512_1_2(global float* restrict output, int n21628, const global float* restrict e21629){
local float x22104[256];

local float x22118[128];

local float x22081[64];

local float x22138[32];

local float x22058[16];

local float x22158[8];

local float x22035[4];

local float x22178[2];

local float x22012[2];

local float x22198[4];

local float x21989[8];

local float x22218[16];

local float x21966[32];

local float x22238[64];

local float x21943[128];

local float x22258[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_22290 = get_group_id(0); wg_id_22290 < (n21628 / 512); wg_id_22290 = wg_id_22290 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_22291 = get_local_id(0); l_id_22291 < 256; l_id_22291 = l_id_22291 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22271;
        x22271 = 0.0f;
        /* unrolling loop of 2 */
        x22271 = x22271 + e21629[(2 * l_id_22291) + (512 * wg_id_22290)];
        x22271 = x22271 + e21629[(1 + (2 * l_id_22291)) + (512 * wg_id_22290)];
        x22258[l_id_22291] = x22271;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22292 = get_local_id(0); l_id_22292 < 128; l_id_22292 = l_id_22292 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22251;
        x22251 = 0.0f;
        /* unrolling loop of 2 */
        x22251 = x22251 + x22258[2 * l_id_22292];
        x22251 = x22251 + x22258[1 + (2 * l_id_22292)];
        x22238[l_id_22292] = x22251;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22293 = get_local_id(0); l_id_22293 < 64; l_id_22293 = l_id_22293 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22231;
        x22231 = 0.0f;
        /* unrolling loop of 2 */
        x22231 = x22231 + x22238[2 * l_id_22293];
        x22231 = x22231 + x22238[1 + (2 * l_id_22293)];
        x22218[l_id_22293] = x22231;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22294 = get_local_id(0); l_id_22294 < 32; l_id_22294 = l_id_22294 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22211;
        x22211 = 0.0f;
        /* unrolling loop of 2 */
        x22211 = x22211 + x22218[2 * l_id_22294];
        x22211 = x22211 + x22218[1 + (2 * l_id_22294)];
        x22198[l_id_22294] = x22211;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22295 = get_local_id(0); l_id_22295 < 16; l_id_22295 = l_id_22295 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22191;
        x22191 = 0.0f;
        /* unrolling loop of 2 */
        x22191 = x22191 + x22198[2 * l_id_22295];
        x22191 = x22191 + x22198[1 + (2 * l_id_22295)];
        x22178[l_id_22295] = x22191;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22296 = get_local_id(0); l_id_22296 < 8; l_id_22296 = l_id_22296 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22171;
        x22171 = 0.0f;
        /* unrolling loop of 2 */
        x22171 = x22171 + x22178[2 * l_id_22296];
        x22171 = x22171 + x22178[1 + (2 * l_id_22296)];
        x22158[l_id_22296] = x22171;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22297 = get_local_id(0); l_id_22297 < 4; l_id_22297 = l_id_22297 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22151;
        x22151 = 0.0f;
        /* unrolling loop of 2 */
        x22151 = x22151 + x22158[2 * l_id_22297];
        x22151 = x22151 + x22158[1 + (2 * l_id_22297)];
        x22138[l_id_22297] = x22151;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22298 = get_local_id(0); l_id_22298 < 2; l_id_22298 = l_id_22298 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x22131;
        x22131 = 0.0f;
        /* unrolling loop of 2 */
        x22131 = x22131 + x22138[2 * l_id_22298];
        x22131 = x22131 + x22138[1 + (2 * l_id_22298)];
        x22118[l_id_22298] = x22131;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x22114;
      x22114 = 0.0f;
      /* unrolling loop of 1 */
      {
        int idxAcc22299 = (int)0;
        x22104[idxAcc22299] = x22114;
      }
      
      {
        int idx22300 = (int)0;
        x22114 = x22118[idx22300] + x22114;
      }
      
      x22104[1] = x22114;
    }
    
    /* mapLocal */
    for (int l_id_22301 = get_local_id(0); l_id_22301 < 2; l_id_22301 = l_id_22301 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x22094;
        x22094 = x22104[l_id_22301];
        /* unrolling loop of 1 */
        {
          int idxAcc22302 = (int)0;
          x22081[idxAcc22302 + (2 * l_id_22301)] = x22094;
        }
        
        {
          int idx22303 = (int)0;
          x22094 = x22138[idx22303 + (2 * l_id_22301)] + x22094;
        }
        
        x22081[1 + (2 * l_id_22301)] = x22094;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22304 = get_local_id(0); l_id_22304 < 4; l_id_22304 = l_id_22304 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x22071;
        x22071 = x22081[l_id_22304];
        /* unrolling loop of 1 */
        {
          int idxAcc22305 = (int)0;
          x22058[idxAcc22305 + (2 * l_id_22304)] = x22071;
        }
        
        {
          int idx22306 = (int)0;
          x22071 = x22158[idx22306 + (2 * l_id_22304)] + x22071;
        }
        
        x22058[1 + (2 * l_id_22304)] = x22071;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22307 = get_local_id(0); l_id_22307 < 8; l_id_22307 = l_id_22307 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x22048;
        x22048 = x22058[l_id_22307];
        /* unrolling loop of 1 */
        {
          int idxAcc22308 = (int)0;
          x22035[idxAcc22308 + (2 * l_id_22307)] = x22048;
        }
        
        {
          int idx22309 = (int)0;
          x22048 = x22178[idx22309 + (2 * l_id_22307)] + x22048;
        }
        
        x22035[1 + (2 * l_id_22307)] = x22048;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22310 = get_local_id(0); l_id_22310 < 16; l_id_22310 = l_id_22310 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x22025;
        x22025 = x22035[l_id_22310];
        /* unrolling loop of 1 */
        {
          int idxAcc22311 = (int)0;
          x22012[idxAcc22311 + (2 * l_id_22310)] = x22025;
        }
        
        {
          int idx22312 = (int)0;
          x22025 = x22198[idx22312 + (2 * l_id_22310)] + x22025;
        }
        
        x22012[1 + (2 * l_id_22310)] = x22025;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22313 = get_local_id(0); l_id_22313 < 32; l_id_22313 = l_id_22313 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x22002;
        x22002 = x22012[l_id_22313];
        /* unrolling loop of 1 */
        {
          int idxAcc22314 = (int)0;
          x21989[idxAcc22314 + (2 * l_id_22313)] = x22002;
        }
        
        {
          int idx22315 = (int)0;
          x22002 = x22218[idx22315 + (2 * l_id_22313)] + x22002;
        }
        
        x21989[1 + (2 * l_id_22313)] = x22002;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22316 = get_local_id(0); l_id_22316 < 64; l_id_22316 = l_id_22316 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x21979;
        x21979 = x21989[l_id_22316];
        /* unrolling loop of 1 */
        {
          int idxAcc22317 = (int)0;
          x21966[idxAcc22317 + (2 * l_id_22316)] = x21979;
        }
        
        {
          int idx22318 = (int)0;
          x21979 = x22238[idx22318 + (2 * l_id_22316)] + x21979;
        }
        
        x21966[1 + (2 * l_id_22316)] = x21979;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22319 = get_local_id(0); l_id_22319 < 128; l_id_22319 = l_id_22319 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x21956;
        x21956 = x21966[l_id_22319];
        /* unrolling loop of 1 */
        {
          int idxAcc22320 = (int)0;
          x21943[idxAcc22320 + (2 * l_id_22319)] = x21956;
        }
        
        {
          int idx22321 = (int)0;
          x21956 = x22258[idx22321 + (2 * l_id_22319)] + x21956;
        }
        
        x21943[1 + (2 * l_id_22319)] = x21956;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_22322 = get_local_id(0); l_id_22322 < 256; l_id_22322 = l_id_22322 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x21933;
        x21933 = x21943[l_id_22322];
        /* unrolling loop of 1 */
        {
          int idxAcc22323 = (int)0;
          output[(idxAcc22323 + (2 * l_id_22322)) + (512 * wg_id_22290)] = x21933;
        }
        
        {
          int idx22324 = (int)0;
          x21933 = e21629[(idx22324 + (2 * l_id_22322)) + (512 * wg_id_22290)] + x21933;
        }
        
        output[(1 + (2 * l_id_22322)) + (512 * wg_id_22290)] = x21933;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_512_2_2(global float* restrict output, int n23104, const global float* restrict e23105){
local float x23525[256];

local float x23539[128];

local float x23502[64];

local float x23559[32];

local float x23479[16];

local float x23579[8];

local float x23456[4];

local float x23599[4];

local float x23433[8];

local float x23619[16];

local float x23410[32];

local float x23639[64];

local float x23387[128];

local float x23659[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_23692 = get_group_id(0); wg_id_23692 < (n23104 / 512); wg_id_23692 = wg_id_23692 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_23693 = get_local_id(0); l_id_23693 < 256; l_id_23693 = l_id_23693 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23672;
        x23672 = 0.0f;
        /* unrolling loop of 2 */
        x23672 = x23672 + e23105[(2 * l_id_23693) + (512 * wg_id_23692)];
        x23672 = x23672 + e23105[(1 + (2 * l_id_23693)) + (512 * wg_id_23692)];
        x23659[l_id_23693] = x23672;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23694 = get_local_id(0); l_id_23694 < 128; l_id_23694 = l_id_23694 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23652;
        x23652 = 0.0f;
        /* unrolling loop of 2 */
        x23652 = x23652 + x23659[2 * l_id_23694];
        x23652 = x23652 + x23659[1 + (2 * l_id_23694)];
        x23639[l_id_23694] = x23652;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23695 = get_local_id(0); l_id_23695 < 64; l_id_23695 = l_id_23695 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23632;
        x23632 = 0.0f;
        /* unrolling loop of 2 */
        x23632 = x23632 + x23639[2 * l_id_23695];
        x23632 = x23632 + x23639[1 + (2 * l_id_23695)];
        x23619[l_id_23695] = x23632;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23696 = get_local_id(0); l_id_23696 < 32; l_id_23696 = l_id_23696 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23612;
        x23612 = 0.0f;
        /* unrolling loop of 2 */
        x23612 = x23612 + x23619[2 * l_id_23696];
        x23612 = x23612 + x23619[1 + (2 * l_id_23696)];
        x23599[l_id_23696] = x23612;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23697 = get_local_id(0); l_id_23697 < 16; l_id_23697 = l_id_23697 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23592;
        x23592 = 0.0f;
        /* unrolling loop of 2 */
        x23592 = x23592 + x23599[2 * l_id_23697];
        x23592 = x23592 + x23599[1 + (2 * l_id_23697)];
        x23579[l_id_23697] = x23592;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23698 = get_local_id(0); l_id_23698 < 8; l_id_23698 = l_id_23698 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23572;
        x23572 = 0.0f;
        /* unrolling loop of 2 */
        x23572 = x23572 + x23579[2 * l_id_23698];
        x23572 = x23572 + x23579[1 + (2 * l_id_23698)];
        x23559[l_id_23698] = x23572;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23699 = get_local_id(0); l_id_23699 < 4; l_id_23699 = l_id_23699 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x23552;
        x23552 = 0.0f;
        /* unrolling loop of 2 */
        x23552 = x23552 + x23559[2 * l_id_23699];
        x23552 = x23552 + x23559[1 + (2 * l_id_23699)];
        x23539[l_id_23699] = x23552;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x23535;
      x23535 = 0.0f;
      /* unrolling loop of 3 */
      {
        int idxAcc23700 = (int)0;
        x23525[idxAcc23700] = x23535;
      }
      
      {
        int idx23701 = (int)0;
        x23535 = x23539[idx23701] + x23535;
      }
      
      {
        int idxAcc23702 = (int)1;
        x23525[idxAcc23702] = x23535;
      }
      
      {
        int idx23703 = (int)1;
        x23535 = x23539[idx23703] + x23535;
      }
      
      {
        int idxAcc23704 = (int)2;
        x23525[idxAcc23704] = x23535;
      }
      
      {
        int idx23705 = (int)2;
        x23535 = x23539[idx23705] + x23535;
      }
      
      x23525[3] = x23535;
    }
    
    /* mapLocal */
    for (int l_id_23706 = get_local_id(0); l_id_23706 < 4; l_id_23706 = l_id_23706 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23515;
        x23515 = x23525[l_id_23706];
        /* unrolling loop of 1 */
        {
          int idxAcc23707 = (int)0;
          x23502[idxAcc23707 + (2 * l_id_23706)] = x23515;
        }
        
        {
          int idx23708 = (int)0;
          x23515 = x23559[idx23708 + (2 * l_id_23706)] + x23515;
        }
        
        x23502[1 + (2 * l_id_23706)] = x23515;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23709 = get_local_id(0); l_id_23709 < 8; l_id_23709 = l_id_23709 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23492;
        x23492 = x23502[l_id_23709];
        /* unrolling loop of 1 */
        {
          int idxAcc23710 = (int)0;
          x23479[idxAcc23710 + (2 * l_id_23709)] = x23492;
        }
        
        {
          int idx23711 = (int)0;
          x23492 = x23579[idx23711 + (2 * l_id_23709)] + x23492;
        }
        
        x23479[1 + (2 * l_id_23709)] = x23492;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23712 = get_local_id(0); l_id_23712 < 16; l_id_23712 = l_id_23712 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23469;
        x23469 = x23479[l_id_23712];
        /* unrolling loop of 1 */
        {
          int idxAcc23713 = (int)0;
          x23456[idxAcc23713 + (2 * l_id_23712)] = x23469;
        }
        
        {
          int idx23714 = (int)0;
          x23469 = x23599[idx23714 + (2 * l_id_23712)] + x23469;
        }
        
        x23456[1 + (2 * l_id_23712)] = x23469;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23715 = get_local_id(0); l_id_23715 < 32; l_id_23715 = l_id_23715 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23446;
        x23446 = x23456[l_id_23715];
        /* unrolling loop of 1 */
        {
          int idxAcc23716 = (int)0;
          x23433[idxAcc23716 + (2 * l_id_23715)] = x23446;
        }
        
        {
          int idx23717 = (int)0;
          x23446 = x23619[idx23717 + (2 * l_id_23715)] + x23446;
        }
        
        x23433[1 + (2 * l_id_23715)] = x23446;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23718 = get_local_id(0); l_id_23718 < 64; l_id_23718 = l_id_23718 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23423;
        x23423 = x23433[l_id_23718];
        /* unrolling loop of 1 */
        {
          int idxAcc23719 = (int)0;
          x23410[idxAcc23719 + (2 * l_id_23718)] = x23423;
        }
        
        {
          int idx23720 = (int)0;
          x23423 = x23639[idx23720 + (2 * l_id_23718)] + x23423;
        }
        
        x23410[1 + (2 * l_id_23718)] = x23423;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23721 = get_local_id(0); l_id_23721 < 128; l_id_23721 = l_id_23721 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23400;
        x23400 = x23410[l_id_23721];
        /* unrolling loop of 1 */
        {
          int idxAcc23722 = (int)0;
          x23387[idxAcc23722 + (2 * l_id_23721)] = x23400;
        }
        
        {
          int idx23723 = (int)0;
          x23400 = x23659[idx23723 + (2 * l_id_23721)] + x23400;
        }
        
        x23387[1 + (2 * l_id_23721)] = x23400;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_23724 = get_local_id(0); l_id_23724 < 256; l_id_23724 = l_id_23724 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x23377;
        x23377 = x23387[l_id_23724];
        /* unrolling loop of 1 */
        {
          int idxAcc23725 = (int)0;
          output[(idxAcc23725 + (2 * l_id_23724)) + (512 * wg_id_23692)] = x23377;
        }
        
        {
          int idx23726 = (int)0;
          x23377 = e23105[(idx23726 + (2 * l_id_23724)) + (512 * wg_id_23692)] + x23377;
        }
        
        output[(1 + (2 * l_id_23724)) + (512 * wg_id_23692)] = x23377;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_512_3_2(global float* restrict output, int n24398, const global float* restrict e24399){
local float x24764[256];

local float x24778[128];

local float x24741[64];

local float x24798[32];

local float x24718[16];

local float x24818[8];

local float x24695[8];

local float x24838[16];

local float x24672[32];

local float x24858[64];

local float x24649[128];

local float x24878[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_24914 = get_group_id(0); wg_id_24914 < (n24398 / 512); wg_id_24914 = wg_id_24914 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_24915 = get_local_id(0); l_id_24915 < 256; l_id_24915 = l_id_24915 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x24891;
        x24891 = 0.0f;
        /* unrolling loop of 2 */
        x24891 = x24891 + e24399[(2 * l_id_24915) + (512 * wg_id_24914)];
        x24891 = x24891 + e24399[(1 + (2 * l_id_24915)) + (512 * wg_id_24914)];
        x24878[l_id_24915] = x24891;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24916 = get_local_id(0); l_id_24916 < 128; l_id_24916 = l_id_24916 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x24871;
        x24871 = 0.0f;
        /* unrolling loop of 2 */
        x24871 = x24871 + x24878[2 * l_id_24916];
        x24871 = x24871 + x24878[1 + (2 * l_id_24916)];
        x24858[l_id_24916] = x24871;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24917 = get_local_id(0); l_id_24917 < 64; l_id_24917 = l_id_24917 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x24851;
        x24851 = 0.0f;
        /* unrolling loop of 2 */
        x24851 = x24851 + x24858[2 * l_id_24917];
        x24851 = x24851 + x24858[1 + (2 * l_id_24917)];
        x24838[l_id_24917] = x24851;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24918 = get_local_id(0); l_id_24918 < 32; l_id_24918 = l_id_24918 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x24831;
        x24831 = 0.0f;
        /* unrolling loop of 2 */
        x24831 = x24831 + x24838[2 * l_id_24918];
        x24831 = x24831 + x24838[1 + (2 * l_id_24918)];
        x24818[l_id_24918] = x24831;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24919 = get_local_id(0); l_id_24919 < 16; l_id_24919 = l_id_24919 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x24811;
        x24811 = 0.0f;
        /* unrolling loop of 2 */
        x24811 = x24811 + x24818[2 * l_id_24919];
        x24811 = x24811 + x24818[1 + (2 * l_id_24919)];
        x24798[l_id_24919] = x24811;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24920 = get_local_id(0); l_id_24920 < 8; l_id_24920 = l_id_24920 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x24791;
        x24791 = 0.0f;
        /* unrolling loop of 2 */
        x24791 = x24791 + x24798[2 * l_id_24920];
        x24791 = x24791 + x24798[1 + (2 * l_id_24920)];
        x24778[l_id_24920] = x24791;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x24774;
      x24774 = 0.0f;
      /* unrolling loop of 7 */
      {
        int idxAcc24921 = (int)0;
        x24764[idxAcc24921] = x24774;
      }
      
      {
        int idx24922 = (int)0;
        x24774 = x24778[idx24922] + x24774;
      }
      
      {
        int idxAcc24923 = (int)1;
        x24764[idxAcc24923] = x24774;
      }
      
      {
        int idx24924 = (int)1;
        x24774 = x24778[idx24924] + x24774;
      }
      
      {
        int idxAcc24925 = (int)2;
        x24764[idxAcc24925] = x24774;
      }
      
      {
        int idx24926 = (int)2;
        x24774 = x24778[idx24926] + x24774;
      }
      
      {
        int idxAcc24927 = (int)3;
        x24764[idxAcc24927] = x24774;
      }
      
      {
        int idx24928 = (int)3;
        x24774 = x24778[idx24928] + x24774;
      }
      
      {
        int idxAcc24929 = (int)4;
        x24764[idxAcc24929] = x24774;
      }
      
      {
        int idx24930 = (int)4;
        x24774 = x24778[idx24930] + x24774;
      }
      
      {
        int idxAcc24931 = (int)5;
        x24764[idxAcc24931] = x24774;
      }
      
      {
        int idx24932 = (int)5;
        x24774 = x24778[idx24932] + x24774;
      }
      
      {
        int idxAcc24933 = (int)6;
        x24764[idxAcc24933] = x24774;
      }
      
      {
        int idx24934 = (int)6;
        x24774 = x24778[idx24934] + x24774;
      }
      
      x24764[7] = x24774;
    }
    
    /* mapLocal */
    for (int l_id_24935 = get_local_id(0); l_id_24935 < 8; l_id_24935 = l_id_24935 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x24754;
        x24754 = x24764[l_id_24935];
        /* unrolling loop of 1 */
        {
          int idxAcc24936 = (int)0;
          x24741[idxAcc24936 + (2 * l_id_24935)] = x24754;
        }
        
        {
          int idx24937 = (int)0;
          x24754 = x24798[idx24937 + (2 * l_id_24935)] + x24754;
        }
        
        x24741[1 + (2 * l_id_24935)] = x24754;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24938 = get_local_id(0); l_id_24938 < 16; l_id_24938 = l_id_24938 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x24731;
        x24731 = x24741[l_id_24938];
        /* unrolling loop of 1 */
        {
          int idxAcc24939 = (int)0;
          x24718[idxAcc24939 + (2 * l_id_24938)] = x24731;
        }
        
        {
          int idx24940 = (int)0;
          x24731 = x24818[idx24940 + (2 * l_id_24938)] + x24731;
        }
        
        x24718[1 + (2 * l_id_24938)] = x24731;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24941 = get_local_id(0); l_id_24941 < 32; l_id_24941 = l_id_24941 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x24708;
        x24708 = x24718[l_id_24941];
        /* unrolling loop of 1 */
        {
          int idxAcc24942 = (int)0;
          x24695[idxAcc24942 + (2 * l_id_24941)] = x24708;
        }
        
        {
          int idx24943 = (int)0;
          x24708 = x24838[idx24943 + (2 * l_id_24941)] + x24708;
        }
        
        x24695[1 + (2 * l_id_24941)] = x24708;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24944 = get_local_id(0); l_id_24944 < 64; l_id_24944 = l_id_24944 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x24685;
        x24685 = x24695[l_id_24944];
        /* unrolling loop of 1 */
        {
          int idxAcc24945 = (int)0;
          x24672[idxAcc24945 + (2 * l_id_24944)] = x24685;
        }
        
        {
          int idx24946 = (int)0;
          x24685 = x24858[idx24946 + (2 * l_id_24944)] + x24685;
        }
        
        x24672[1 + (2 * l_id_24944)] = x24685;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24947 = get_local_id(0); l_id_24947 < 128; l_id_24947 = l_id_24947 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x24662;
        x24662 = x24672[l_id_24947];
        /* unrolling loop of 1 */
        {
          int idxAcc24948 = (int)0;
          x24649[idxAcc24948 + (2 * l_id_24947)] = x24662;
        }
        
        {
          int idx24949 = (int)0;
          x24662 = x24878[idx24949 + (2 * l_id_24947)] + x24662;
        }
        
        x24649[1 + (2 * l_id_24947)] = x24662;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_24950 = get_local_id(0); l_id_24950 < 256; l_id_24950 = l_id_24950 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x24639;
        x24639 = x24649[l_id_24950];
        /* unrolling loop of 1 */
        {
          int idxAcc24951 = (int)0;
          output[(idxAcc24951 + (2 * l_id_24950)) + (512 * wg_id_24914)] = x24639;
        }
        
        {
          int idx24952 = (int)0;
          x24639 = e24399[(idx24952 + (2 * l_id_24950)) + (512 * wg_id_24914)] + x24639;
        }
        
        output[(1 + (2 * l_id_24950)) + (512 * wg_id_24914)] = x24639;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}






__kernel
void kernel_25600000_512_4_2(global float* restrict output, int n25516, const global float* restrict e25517){
local float x25827[256];

local float x25841[128];

local float x25804[64];

local float x25861[32];

local float x25781[16];

local float x25881[16];

local float x25758[32];

local float x25901[64];

local float x25735[128];

local float x25921[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapWorkGroup */
  for (int wg_id_25964 = get_group_id(0); wg_id_25964 < (n25516 / 512); wg_id_25964 = wg_id_25964 + get_num_groups(0)) {
    /* mapLocal */
    for (int l_id_25965 = get_local_id(0); l_id_25965 < 256; l_id_25965 = l_id_25965 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x25934;
        x25934 = 0.0f;
        /* unrolling loop of 2 */
        x25934 = x25934 + e25517[(2 * l_id_25965) + (512 * wg_id_25964)];
        x25934 = x25934 + e25517[(1 + (2 * l_id_25965)) + (512 * wg_id_25964)];
        x25921[l_id_25965] = x25934;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_25966 = get_local_id(0); l_id_25966 < 128; l_id_25966 = l_id_25966 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x25914;
        x25914 = 0.0f;
        /* unrolling loop of 2 */
        x25914 = x25914 + x25921[2 * l_id_25966];
        x25914 = x25914 + x25921[1 + (2 * l_id_25966)];
        x25901[l_id_25966] = x25914;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_25967 = get_local_id(0); l_id_25967 < 64; l_id_25967 = l_id_25967 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x25894;
        x25894 = 0.0f;
        /* unrolling loop of 2 */
        x25894 = x25894 + x25901[2 * l_id_25967];
        x25894 = x25894 + x25901[1 + (2 * l_id_25967)];
        x25881[l_id_25967] = x25894;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_25968 = get_local_id(0); l_id_25968 < 32; l_id_25968 = l_id_25968 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x25874;
        x25874 = 0.0f;
        /* unrolling loop of 2 */
        x25874 = x25874 + x25881[2 * l_id_25968];
        x25874 = x25874 + x25881[1 + (2 * l_id_25968)];
        x25861[l_id_25968] = x25874;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_25969 = get_local_id(0); l_id_25969 < 16; l_id_25969 = l_id_25969 + get_local_size(0)) {
      /* oclReduceSeq */
      {
        float x25854;
        x25854 = 0.0f;
        /* unrolling loop of 2 */
        x25854 = x25854 + x25861[2 * l_id_25969];
        x25854 = x25854 + x25861[1 + (2 * l_id_25969)];
        x25841[l_id_25969] = x25854;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* oclScanSeq */
    {
      float x25837;
      x25837 = 0.0f;
      /* unrolling loop of 15 */
      {
        int idxAcc25970 = (int)0;
        x25827[idxAcc25970] = x25837;
      }
      
      {
        int idx25971 = (int)0;
        x25837 = x25841[idx25971] + x25837;
      }
      
      {
        int idxAcc25972 = (int)1;
        x25827[idxAcc25972] = x25837;
      }
      
      {
        int idx25973 = (int)1;
        x25837 = x25841[idx25973] + x25837;
      }
      
      {
        int idxAcc25974 = (int)2;
        x25827[idxAcc25974] = x25837;
      }
      
      {
        int idx25975 = (int)2;
        x25837 = x25841[idx25975] + x25837;
      }
      
      {
        int idxAcc25976 = (int)3;
        x25827[idxAcc25976] = x25837;
      }
      
      {
        int idx25977 = (int)3;
        x25837 = x25841[idx25977] + x25837;
      }
      
      {
        int idxAcc25978 = (int)4;
        x25827[idxAcc25978] = x25837;
      }
      
      {
        int idx25979 = (int)4;
        x25837 = x25841[idx25979] + x25837;
      }
      
      {
        int idxAcc25980 = (int)5;
        x25827[idxAcc25980] = x25837;
      }
      
      {
        int idx25981 = (int)5;
        x25837 = x25841[idx25981] + x25837;
      }
      
      {
        int idxAcc25982 = (int)6;
        x25827[idxAcc25982] = x25837;
      }
      
      {
        int idx25983 = (int)6;
        x25837 = x25841[idx25983] + x25837;
      }
      
      {
        int idxAcc25984 = (int)7;
        x25827[idxAcc25984] = x25837;
      }
      
      {
        int idx25985 = (int)7;
        x25837 = x25841[idx25985] + x25837;
      }
      
      {
        int idxAcc25986 = (int)8;
        x25827[idxAcc25986] = x25837;
      }
      
      {
        int idx25987 = (int)8;
        x25837 = x25841[idx25987] + x25837;
      }
      
      {
        int idxAcc25988 = (int)9;
        x25827[idxAcc25988] = x25837;
      }
      
      {
        int idx25989 = (int)9;
        x25837 = x25841[idx25989] + x25837;
      }
      
      {
        int idxAcc25990 = (int)10;
        x25827[idxAcc25990] = x25837;
      }
      
      {
        int idx25991 = (int)10;
        x25837 = x25841[idx25991] + x25837;
      }
      
      {
        int idxAcc25992 = (int)11;
        x25827[idxAcc25992] = x25837;
      }
      
      {
        int idx25993 = (int)11;
        x25837 = x25841[idx25993] + x25837;
      }
      
      {
        int idxAcc25994 = (int)12;
        x25827[idxAcc25994] = x25837;
      }
      
      {
        int idx25995 = (int)12;
        x25837 = x25841[idx25995] + x25837;
      }
      
      {
        int idxAcc25996 = (int)13;
        x25827[idxAcc25996] = x25837;
      }
      
      {
        int idx25997 = (int)13;
        x25837 = x25841[idx25997] + x25837;
      }
      
      {
        int idxAcc25998 = (int)14;
        x25827[idxAcc25998] = x25837;
      }
      
      {
        int idx25999 = (int)14;
        x25837 = x25841[idx25999] + x25837;
      }
      
      x25827[15] = x25837;
    }
    
    /* mapLocal */
    for (int l_id_26000 = get_local_id(0); l_id_26000 < 16; l_id_26000 = l_id_26000 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x25817;
        x25817 = x25827[l_id_26000];
        /* unrolling loop of 1 */
        {
          int idxAcc26001 = (int)0;
          x25804[idxAcc26001 + (2 * l_id_26000)] = x25817;
        }
        
        {
          int idx26002 = (int)0;
          x25817 = x25861[idx26002 + (2 * l_id_26000)] + x25817;
        }
        
        x25804[1 + (2 * l_id_26000)] = x25817;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_26003 = get_local_id(0); l_id_26003 < 32; l_id_26003 = l_id_26003 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x25794;
        x25794 = x25804[l_id_26003];
        /* unrolling loop of 1 */
        {
          int idxAcc26004 = (int)0;
          x25781[idxAcc26004 + (2 * l_id_26003)] = x25794;
        }
        
        {
          int idx26005 = (int)0;
          x25794 = x25881[idx26005 + (2 * l_id_26003)] + x25794;
        }
        
        x25781[1 + (2 * l_id_26003)] = x25794;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_26006 = get_local_id(0); l_id_26006 < 64; l_id_26006 = l_id_26006 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x25771;
        x25771 = x25781[l_id_26006];
        /* unrolling loop of 1 */
        {
          int idxAcc26007 = (int)0;
          x25758[idxAcc26007 + (2 * l_id_26006)] = x25771;
        }
        
        {
          int idx26008 = (int)0;
          x25771 = x25901[idx26008 + (2 * l_id_26006)] + x25771;
        }
        
        x25758[1 + (2 * l_id_26006)] = x25771;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_26009 = get_local_id(0); l_id_26009 < 128; l_id_26009 = l_id_26009 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x25748;
        x25748 = x25758[l_id_26009];
        /* unrolling loop of 1 */
        {
          int idxAcc26010 = (int)0;
          x25735[idxAcc26010 + (2 * l_id_26009)] = x25748;
        }
        
        {
          int idx26011 = (int)0;
          x25748 = x25921[idx26011 + (2 * l_id_26009)] + x25748;
        }
        
        x25735[1 + (2 * l_id_26009)] = x25748;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
    /* mapLocal */
    for (int l_id_26012 = get_local_id(0); l_id_26012 < 256; l_id_26012 = l_id_26012 + get_local_size(0)) {
      /* oclScanSeq */
      {
        float x25725;
        x25725 = x25735[l_id_26012];
        /* unrolling loop of 1 */
        {
          int idxAcc26013 = (int)0;
          output[(idxAcc26013 + (2 * l_id_26012)) + (512 * wg_id_25964)] = x25725;
        }
        
        {
          int idx26014 = (int)0;
          x25725 = e25517[(idx26014 + (2 * l_id_26012)) + (512 * wg_id_25964)] + x25725;
        }
        
        output[(1 + (2 * l_id_26012)) + (512 * wg_id_25964)] = x25725;
      }
      
    }
    
    barrier(CLK_LOCAL_MEM_FENCE);
  }
  
}



