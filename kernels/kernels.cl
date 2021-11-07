


__kernel __attribute__ ((reqd_work_group_size(16, 1, 1)))
void kernel_25600000_32_0_2(global float* restrict output, const global float* restrict e200,__global float* d_block_sums){
__local float x1042[16];

__local float x1056[8];

__local float x1019[4];

__local float x1076[2];

__local float x996[1];

__local float x1096[1];

__local float x973[2];

__local float x1116[4];

__local float x950[8];

__local float x1136[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_1161 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x1149;
    x1149 = 0.0f;
    for (int i_1162 = 0; i_1162 < 2; i_1162 = 1 + i_1162) {
      x1149 = x1149 + e200[i_1162 + (2 * l_id_1161)];
    }
    
    x1136[l_id_1161] = x1149;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_1163 = get_local_id(0); l_id_1163 < 8; l_id_1163 = 16 + l_id_1163) {
    /* oclReduceSeq */
    {
      float x1129;
      x1129 = 0.0f;
      for (int i_1164 = 0; i_1164 < 2; i_1164 = 1 + i_1164) {
        x1129 = x1129 + x1136[i_1164 + (2 * l_id_1163)];
      }
      
      x1116[l_id_1163] = x1129;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_1165 = get_local_id(0); l_id_1165 < 4; l_id_1165 = 16 + l_id_1165) {
    /* oclReduceSeq */
    {
      float x1109;
      x1109 = 0.0f;
      for (int i_1166 = 0; i_1166 < 2; i_1166 = 1 + i_1166) {
        x1109 = x1109 + x1116[i_1166 + (2 * l_id_1165)];
      }
      
      x1096[l_id_1165] = x1109;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_1167 = get_local_id(0); l_id_1167 < 2; l_id_1167 = 16 + l_id_1167) {
    /* oclReduceSeq */
    {
      float x1089;
      x1089 = 0.0f;
      for (int i_1168 = 0; i_1168 < 2; i_1168 = 1 + i_1168) {
        x1089 = x1089 + x1096[i_1168 + (2 * l_id_1167)];
      }
      
      x1076[l_id_1167] = x1089;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_1169 = get_local_id(0); l_id_1169 < 1; l_id_1169 = 16 + l_id_1169) {
    /* oclReduceSeq */
    {
      float x1069;
      x1069 = 0.0f;
      for (int i_1170 = 0; i_1170 < 2; i_1170 = 1 + i_1170) {
        x1069 = x1069 + x1076[i_1170 + (2 * l_id_1169)];
      }
      
      x1056[l_id_1169] = x1069;
    }
    
  }
  
  /* oclScanSeq */
  {
    float x1052;
    x1052 = 0.0f;
    /* unrolling loop of 0 */
    x1042[0] = x1052;
  }
  
  /* mapLocal */
  for (int l_id_1171 = get_local_id(0); l_id_1171 < 1; l_id_1171 = 16 + l_id_1171) {
    /* oclScanSeq */
    {
      float x1032;
      x1032 = x1042[l_id_1171];
      /* unrolling loop of 1 */
      {
        int idxAcc1172 = (int)0;
        x1019[idxAcc1172 + (2 * l_id_1171)] = x1032;
      }
      
      {
        int idx1173 = (int)0;
        x1032 = x1076[idx1173 + (2 * l_id_1171)] + x1032;
      }
      
      x1019[1 + (2 * l_id_1171)] = x1032;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_1174 = get_local_id(0); l_id_1174 < 2; l_id_1174 = 16 + l_id_1174) {
    /* oclScanSeq */
    {
      float x1009;
      x1009 = x1019[l_id_1174];
      /* unrolling loop of 1 */
      {
        int idxAcc1175 = (int)0;
        x996[idxAcc1175 + (2 * l_id_1174)] = x1009;
      }
      
      {
        int idx1176 = (int)0;
        x1009 = x1096[idx1176 + (2 * l_id_1174)] + x1009;
      }
      
      x996[1 + (2 * l_id_1174)] = x1009;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_1177 = get_local_id(0); l_id_1177 < 4; l_id_1177 = 16 + l_id_1177) {
    /* oclScanSeq */
    {
      float x986;
      x986 = x996[l_id_1177];
      /* unrolling loop of 1 */
      {
        int idxAcc1178 = (int)0;
        x973[idxAcc1178 + (2 * l_id_1177)] = x986;
      }
      
      {
        int idx1179 = (int)0;
        x986 = x1116[idx1179 + (2 * l_id_1177)] + x986;
      }
      
      x973[1 + (2 * l_id_1177)] = x986;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_1180 = get_local_id(0); l_id_1180 < 8; l_id_1180 = 16 + l_id_1180) {
    /* oclScanSeq */
    {
      float x963;
      x963 = x973[l_id_1180];
      /* unrolling loop of 1 */
      {
        int idxAcc1181 = (int)0;
        x950[idxAcc1181 + (2 * l_id_1180)] = x963;
      }
      
      {
        int idx1182 = (int)0;
        x963 = x1136[idx1182 + (2 * l_id_1180)] + x963;
      }
      
      x950[1 + (2 * l_id_1180)] = x963;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_1183 = get_local_id(0);
  /* oclScanSeq */
  {
    float x940;
    x940 = x950[l_id_1183];
    /* unrolling loop of 1 */
    {
      int idxAcc1184 = (int)0;
      output[idxAcc1184 + (2 * l_id_1183)] = x940;
    }
    
    {
      int idx1185 = (int)0;
      x940 = e200[idx1185 + (2 * l_id_1183)] + x940;
    }
    
    output[1 + (2 * l_id_1183)] = x940;
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(8, 1, 1)))
void kernel_25600000_32_1_2(global float* restrict output, const global float* restrict e1186,__global float* d_block_sums){
__local float x1865[16];

__local float x1879[8];

__local float x1842[4];

__local float x1899[2];

__local float x1819[2];

__local float x1919[4];

__local float x1796[8];

__local float x1939[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_1964 = get_local_id(0); l_id_1964 < 16; l_id_1964 = 8 + l_id_1964) {
    /* oclReduceSeq */
    {
      float x1952;
      x1952 = 0.0f;
      for (int i_1965 = 0; i_1965 < 2; i_1965 = 1 + i_1965) {
        x1952 = x1952 + e1186[i_1965 + (2 * l_id_1964)];
      }
      
      x1939[l_id_1964] = x1952;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_1966 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x1932;
    x1932 = 0.0f;
    for (int i_1967 = 0; i_1967 < 2; i_1967 = 1 + i_1967) {
      x1932 = x1932 + x1939[i_1967 + (2 * l_id_1966)];
    }
    
    x1919[l_id_1966] = x1932;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_1968 = get_local_id(0); l_id_1968 < 4; l_id_1968 = 8 + l_id_1968) {
    /* oclReduceSeq */
    {
      float x1912;
      x1912 = 0.0f;
      for (int i_1969 = 0; i_1969 < 2; i_1969 = 1 + i_1969) {
        x1912 = x1912 + x1919[i_1969 + (2 * l_id_1968)];
      }
      
      x1899[l_id_1968] = x1912;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_1970 = get_local_id(0); l_id_1970 < 2; l_id_1970 = 8 + l_id_1970) {
    /* oclReduceSeq */
    {
      float x1892;
      x1892 = 0.0f;
      for (int i_1971 = 0; i_1971 < 2; i_1971 = 1 + i_1971) {
        x1892 = x1892 + x1899[i_1971 + (2 * l_id_1970)];
      }
      
      x1879[l_id_1970] = x1892;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x1875;
    x1875 = 0.0f;
    /* unrolling loop of 1 */
    {
      int idxAcc1972 = (int)0;
      x1865[idxAcc1972] = x1875;
    }
    
    {
      int idx1973 = (int)0;
      x1875 = x1879[idx1973] + x1875;
    }
    
    x1865[1] = x1875;
  }
  
  /* mapLocal */
  for (int l_id_1974 = get_local_id(0); l_id_1974 < 2; l_id_1974 = 8 + l_id_1974) {
    /* oclScanSeq */
    {
      float x1855;
      x1855 = x1865[l_id_1974];
      /* unrolling loop of 1 */
      {
        int idxAcc1975 = (int)0;
        x1842[idxAcc1975 + (2 * l_id_1974)] = x1855;
      }
      
      {
        int idx1976 = (int)0;
        x1855 = x1899[idx1976 + (2 * l_id_1974)] + x1855;
      }
      
      x1842[1 + (2 * l_id_1974)] = x1855;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_1977 = get_local_id(0); l_id_1977 < 4; l_id_1977 = 8 + l_id_1977) {
    /* oclScanSeq */
    {
      float x1832;
      x1832 = x1842[l_id_1977];
      /* unrolling loop of 1 */
      {
        int idxAcc1978 = (int)0;
        x1819[idxAcc1978 + (2 * l_id_1977)] = x1832;
      }
      
      {
        int idx1979 = (int)0;
        x1832 = x1919[idx1979 + (2 * l_id_1977)] + x1832;
      }
      
      x1819[1 + (2 * l_id_1977)] = x1832;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_1980 = get_local_id(0);
  /* oclScanSeq */
  {
    float x1809;
    x1809 = x1819[l_id_1980];
    /* unrolling loop of 1 */
    {
      int idxAcc1981 = (int)0;
      x1796[idxAcc1981 + (2 * l_id_1980)] = x1809;
    }
    
    {
      int idx1982 = (int)0;
      x1809 = x1939[idx1982 + (2 * l_id_1980)] + x1809;
    }
    
    x1796[1 + (2 * l_id_1980)] = x1809;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_1983 = get_local_id(0); l_id_1983 < 16; l_id_1983 = 8 + l_id_1983) {
    /* oclScanSeq */
    {
      float x1786;
      x1786 = x1796[l_id_1983];
      /* unrolling loop of 1 */
      {
        int idxAcc1984 = (int)0;
        output[idxAcc1984 + (2 * l_id_1983)] = x1786;
      }
      
      {
        int idx1985 = (int)0;
        x1786 = e1186[idx1985 + (2 * l_id_1983)] + x1786;
      }
      
      output[1 + (2 * l_id_1983)] = x1786;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(4, 1, 1)))
void kernel_25600000_32_2_2(global float* restrict output, const global float* restrict e1986,__global float* d_block_sums){
__local float x2502[16];

__local float x2516[8];

__local float x2479[4];

__local float x2536[4];

__local float x2456[8];

__local float x2556[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_2582 = get_local_id(0); l_id_2582 < 16; l_id_2582 = 4 + l_id_2582) {
    /* oclReduceSeq */
    {
      float x2569;
      x2569 = 0.0f;
      for (int i_2583 = 0; i_2583 < 2; i_2583 = 1 + i_2583) {
        x2569 = x2569 + e1986[i_2583 + (2 * l_id_2582)];
      }
      
      x2556[l_id_2582] = x2569;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_2584 = get_local_id(0); l_id_2584 < 8; l_id_2584 = 4 + l_id_2584) {
    /* oclReduceSeq */
    {
      float x2549;
      x2549 = 0.0f;
      for (int i_2585 = 0; i_2585 < 2; i_2585 = 1 + i_2585) {
        x2549 = x2549 + x2556[i_2585 + (2 * l_id_2584)];
      }
      
      x2536[l_id_2584] = x2549;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_2586 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x2529;
    x2529 = 0.0f;
    for (int i_2587 = 0; i_2587 < 2; i_2587 = 1 + i_2587) {
      x2529 = x2529 + x2536[i_2587 + (2 * l_id_2586)];
    }
    
    x2516[l_id_2586] = x2529;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x2512;
    x2512 = 0.0f;
    /* unrolling loop of 3 */
    {
      int idxAcc2588 = (int)0;
      x2502[idxAcc2588] = x2512;
    }
    
    {
      int idx2589 = (int)0;
      x2512 = x2516[idx2589] + x2512;
    }
    
    {
      int idxAcc2590 = (int)1;
      x2502[idxAcc2590] = x2512;
    }
    
    {
      int idx2591 = (int)1;
      x2512 = x2516[idx2591] + x2512;
    }
    
    {
      int idxAcc2592 = (int)2;
      x2502[idxAcc2592] = x2512;
    }
    
    {
      int idx2593 = (int)2;
      x2512 = x2516[idx2593] + x2512;
    }
    
    x2502[3] = x2512;
  }
  
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_2594 = get_local_id(0);
  /* oclScanSeq */
  {
    float x2492;
    x2492 = x2502[l_id_2594];
    /* unrolling loop of 1 */
    {
      int idxAcc2595 = (int)0;
      x2479[idxAcc2595 + (2 * l_id_2594)] = x2492;
    }
    
    {
      int idx2596 = (int)0;
      x2492 = x2536[idx2596 + (2 * l_id_2594)] + x2492;
    }
    
    x2479[1 + (2 * l_id_2594)] = x2492;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_2597 = get_local_id(0); l_id_2597 < 8; l_id_2597 = 4 + l_id_2597) {
    /* oclScanSeq */
    {
      float x2469;
      x2469 = x2479[l_id_2597];
      /* unrolling loop of 1 */
      {
        int idxAcc2598 = (int)0;
        x2456[idxAcc2598 + (2 * l_id_2597)] = x2469;
      }
      
      {
        int idx2599 = (int)0;
        x2469 = x2556[idx2599 + (2 * l_id_2597)] + x2469;
      }
      
      x2456[1 + (2 * l_id_2597)] = x2469;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_2600 = get_local_id(0); l_id_2600 < 16; l_id_2600 = 4 + l_id_2600) {
    /* oclScanSeq */
    {
      float x2446;
      x2446 = x2456[l_id_2600];
      /* unrolling loop of 1 */
      {
        int idxAcc2601 = (int)0;
        output[idxAcc2601 + (2 * l_id_2600)] = x2446;
      }
      
      {
        int idx2602 = (int)0;
        x2446 = e1986[idx2602 + (2 * l_id_2600)] + x2446;
      }
      
      output[1 + (2 * l_id_2600)] = x2446;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(2, 1, 1)))
void kernel_25600000_32_3_2(global float* restrict output, const global float* restrict e2603,__global float* d_block_sums){
__local float x2956[16];

__local float x2970[8];

__local float x2933[8];

__local float x2990[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_3019 = get_local_id(0); l_id_3019 < 16; l_id_3019 = 2 + l_id_3019) {
    /* oclReduceSeq */
    {
      float x3003;
      x3003 = 0.0f;
      for (int i_3020 = 0; i_3020 < 2; i_3020 = 1 + i_3020) {
        x3003 = x3003 + e2603[i_3020 + (2 * l_id_3019)];
      }
      
      x2990[l_id_3019] = x3003;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_3021 = get_local_id(0); l_id_3021 < 8; l_id_3021 = 2 + l_id_3021) {
    /* oclReduceSeq */
    {
      float x2983;
      x2983 = 0.0f;
      for (int i_3022 = 0; i_3022 < 2; i_3022 = 1 + i_3022) {
        x2983 = x2983 + x2990[i_3022 + (2 * l_id_3021)];
      }
      
      x2970[l_id_3021] = x2983;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x2966;
    x2966 = 0.0f;
    /* unrolling loop of 7 */
    {
      int idxAcc3023 = (int)0;
      x2956[idxAcc3023] = x2966;
    }
    
    {
      int idx3024 = (int)0;
      x2966 = x2970[idx3024] + x2966;
    }
    
    {
      int idxAcc3025 = (int)1;
      x2956[idxAcc3025] = x2966;
    }
    
    {
      int idx3026 = (int)1;
      x2966 = x2970[idx3026] + x2966;
    }
    
    {
      int idxAcc3027 = (int)2;
      x2956[idxAcc3027] = x2966;
    }
    
    {
      int idx3028 = (int)2;
      x2966 = x2970[idx3028] + x2966;
    }
    
    {
      int idxAcc3029 = (int)3;
      x2956[idxAcc3029] = x2966;
    }
    
    {
      int idx3030 = (int)3;
      x2966 = x2970[idx3030] + x2966;
    }
    
    {
      int idxAcc3031 = (int)4;
      x2956[idxAcc3031] = x2966;
    }
    
    {
      int idx3032 = (int)4;
      x2966 = x2970[idx3032] + x2966;
    }
    
    {
      int idxAcc3033 = (int)5;
      x2956[idxAcc3033] = x2966;
    }
    
    {
      int idx3034 = (int)5;
      x2966 = x2970[idx3034] + x2966;
    }
    
    {
      int idxAcc3035 = (int)6;
      x2956[idxAcc3035] = x2966;
    }
    
    {
      int idx3036 = (int)6;
      x2966 = x2970[idx3036] + x2966;
    }
    
    x2956[7] = x2966;
  }
  
  /* mapLocal */
  for (int l_id_3037 = get_local_id(0); l_id_3037 < 8; l_id_3037 = 2 + l_id_3037) {
    /* oclScanSeq */
    {
      float x2946;
      x2946 = x2956[l_id_3037];
      /* unrolling loop of 1 */
      {
        int idxAcc3038 = (int)0;
        x2933[idxAcc3038 + (2 * l_id_3037)] = x2946;
      }
      
      {
        int idx3039 = (int)0;
        x2946 = x2990[idx3039 + (2 * l_id_3037)] + x2946;
      }
      
      x2933[1 + (2 * l_id_3037)] = x2946;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_3040 = get_local_id(0); l_id_3040 < 16; l_id_3040 = 2 + l_id_3040) {
    /* oclScanSeq */
    {
      float x2923;
      x2923 = x2933[l_id_3040];
      /* unrolling loop of 1 */
      {
        int idxAcc3041 = (int)0;
        output[idxAcc3041 + (2 * l_id_3040)] = x2923;
      }
      
      {
        int idx3042 = (int)0;
        x2923 = e2603[idx3042 + (2 * l_id_3040)] + x2923;
      }
      
      output[1 + (2 * l_id_3040)] = x2923;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(1, 1, 1)))
void kernel_25600000_32_4_2(global float* restrict output, const global float* restrict e3043,__global float* d_block_sums){
__local float x3233[16];

__local float x3247[16];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_3283 = get_local_id(0); l_id_3283 < 16; l_id_3283 = 1 + l_id_3283) {
    /* oclReduceSeq */
    {
      float x3260;
      x3260 = 0.0f;
      for (int i_3284 = 0; i_3284 < 2; i_3284 = 1 + i_3284) {
        x3260 = x3260 + e3043[i_3284 + (2 * l_id_3283)];
      }
      
      x3247[l_id_3283] = x3260;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x3243;
    x3243 = 0.0f;
    /* unrolling loop of 15 */
    {
      int idxAcc3285 = (int)0;
      x3233[idxAcc3285] = x3243;
    }
    
    {
      int idx3286 = (int)0;
      x3243 = x3247[idx3286] + x3243;
    }
    
    {
      int idxAcc3287 = (int)1;
      x3233[idxAcc3287] = x3243;
    }
    
    {
      int idx3288 = (int)1;
      x3243 = x3247[idx3288] + x3243;
    }
    
    {
      int idxAcc3289 = (int)2;
      x3233[idxAcc3289] = x3243;
    }
    
    {
      int idx3290 = (int)2;
      x3243 = x3247[idx3290] + x3243;
    }
    
    {
      int idxAcc3291 = (int)3;
      x3233[idxAcc3291] = x3243;
    }
    
    {
      int idx3292 = (int)3;
      x3243 = x3247[idx3292] + x3243;
    }
    
    {
      int idxAcc3293 = (int)4;
      x3233[idxAcc3293] = x3243;
    }
    
    {
      int idx3294 = (int)4;
      x3243 = x3247[idx3294] + x3243;
    }
    
    {
      int idxAcc3295 = (int)5;
      x3233[idxAcc3295] = x3243;
    }
    
    {
      int idx3296 = (int)5;
      x3243 = x3247[idx3296] + x3243;
    }
    
    {
      int idxAcc3297 = (int)6;
      x3233[idxAcc3297] = x3243;
    }
    
    {
      int idx3298 = (int)6;
      x3243 = x3247[idx3298] + x3243;
    }
    
    {
      int idxAcc3299 = (int)7;
      x3233[idxAcc3299] = x3243;
    }
    
    {
      int idx3300 = (int)7;
      x3243 = x3247[idx3300] + x3243;
    }
    
    {
      int idxAcc3301 = (int)8;
      x3233[idxAcc3301] = x3243;
    }
    
    {
      int idx3302 = (int)8;
      x3243 = x3247[idx3302] + x3243;
    }
    
    {
      int idxAcc3303 = (int)9;
      x3233[idxAcc3303] = x3243;
    }
    
    {
      int idx3304 = (int)9;
      x3243 = x3247[idx3304] + x3243;
    }
    
    {
      int idxAcc3305 = (int)10;
      x3233[idxAcc3305] = x3243;
    }
    
    {
      int idx3306 = (int)10;
      x3243 = x3247[idx3306] + x3243;
    }
    
    {
      int idxAcc3307 = (int)11;
      x3233[idxAcc3307] = x3243;
    }
    
    {
      int idx3308 = (int)11;
      x3243 = x3247[idx3308] + x3243;
    }
    
    {
      int idxAcc3309 = (int)12;
      x3233[idxAcc3309] = x3243;
    }
    
    {
      int idx3310 = (int)12;
      x3243 = x3247[idx3310] + x3243;
    }
    
    {
      int idxAcc3311 = (int)13;
      x3233[idxAcc3311] = x3243;
    }
    
    {
      int idx3312 = (int)13;
      x3243 = x3247[idx3312] + x3243;
    }
    
    {
      int idxAcc3313 = (int)14;
      x3233[idxAcc3313] = x3243;
    }
    
    {
      int idx3314 = (int)14;
      x3243 = x3247[idx3314] + x3243;
    }
    
    x3233[15] = x3243;
  }
  
  /* mapLocal */
  for (int l_id_3315 = get_local_id(0); l_id_3315 < 16; l_id_3315 = 1 + l_id_3315) {
    /* oclScanSeq */
    {
      float x3223;
      x3223 = x3233[l_id_3315];
      /* unrolling loop of 1 */
      {
        int idxAcc3316 = (int)0;
        output[idxAcc3316 + (2 * l_id_3315)] = x3223;
      }
      
      {
        int idx3317 = (int)0;
        x3223 = e3043[idx3317 + (2 * l_id_3315)] + x3223;
      }
      
      output[1 + (2 * l_id_3315)] = x3223;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(32, 1, 1)))
void kernel_25600000_64_0_2(global float* restrict output, const global float* restrict e3318,__global float* d_block_sums){
__local float x4323[32];

__local float x4337[16];

__local float x4300[8];

__local float x4357[4];

__local float x4277[2];

__local float x4377[1];

__local float x4254[1];

__local float x4397[2];

__local float x4231[4];

__local float x4417[8];

__local float x4208[16];

__local float x4437[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_4463 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x4450;
    x4450 = 0.0f;
    for (int i_4464 = 0; i_4464 < 2; i_4464 = 1 + i_4464) {
      x4450 = x4450 + e3318[i_4464 + (2 * l_id_4463)];
    }
    
    x4437[l_id_4463] = x4450;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_4465 = get_local_id(0); l_id_4465 < 16; l_id_4465 = 32 + l_id_4465) {
    /* oclReduceSeq */
    {
      float x4430;
      x4430 = 0.0f;
      for (int i_4466 = 0; i_4466 < 2; i_4466 = 1 + i_4466) {
        x4430 = x4430 + x4437[i_4466 + (2 * l_id_4465)];
      }
      
      x4417[l_id_4465] = x4430;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_4467 = get_local_id(0); l_id_4467 < 8; l_id_4467 = 32 + l_id_4467) {
    /* oclReduceSeq */
    {
      float x4410;
      x4410 = 0.0f;
      for (int i_4468 = 0; i_4468 < 2; i_4468 = 1 + i_4468) {
        x4410 = x4410 + x4417[i_4468 + (2 * l_id_4467)];
      }
      
      x4397[l_id_4467] = x4410;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_4469 = get_local_id(0); l_id_4469 < 4; l_id_4469 = 32 + l_id_4469) {
    /* oclReduceSeq */
    {
      float x4390;
      x4390 = 0.0f;
      for (int i_4470 = 0; i_4470 < 2; i_4470 = 1 + i_4470) {
        x4390 = x4390 + x4397[i_4470 + (2 * l_id_4469)];
      }
      
      x4377[l_id_4469] = x4390;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_4471 = get_local_id(0); l_id_4471 < 2; l_id_4471 = 32 + l_id_4471) {
    /* oclReduceSeq */
    {
      float x4370;
      x4370 = 0.0f;
      for (int i_4472 = 0; i_4472 < 2; i_4472 = 1 + i_4472) {
        x4370 = x4370 + x4377[i_4472 + (2 * l_id_4471)];
      }
      
      x4357[l_id_4471] = x4370;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_4473 = get_local_id(0); l_id_4473 < 1; l_id_4473 = 32 + l_id_4473) {
    /* oclReduceSeq */
    {
      float x4350;
      x4350 = 0.0f;
      for (int i_4474 = 0; i_4474 < 2; i_4474 = 1 + i_4474) {
        x4350 = x4350 + x4357[i_4474 + (2 * l_id_4473)];
      }
      
      x4337[l_id_4473] = x4350;
    }
    
  }
  
  /* oclScanSeq */
  {
    float x4333;
    x4333 = 0.0f;
    /* unrolling loop of 0 */
    x4323[0] = x4333;
  }
  
  /* mapLocal */
  for (int l_id_4475 = get_local_id(0); l_id_4475 < 1; l_id_4475 = 32 + l_id_4475) {
    /* oclScanSeq */
    {
      float x4313;
      x4313 = x4323[l_id_4475];
      /* unrolling loop of 1 */
      {
        int idxAcc4476 = (int)0;
        x4300[idxAcc4476 + (2 * l_id_4475)] = x4313;
      }
      
      {
        int idx4477 = (int)0;
        x4313 = x4357[idx4477 + (2 * l_id_4475)] + x4313;
      }
      
      x4300[1 + (2 * l_id_4475)] = x4313;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_4478 = get_local_id(0); l_id_4478 < 2; l_id_4478 = 32 + l_id_4478) {
    /* oclScanSeq */
    {
      float x4290;
      x4290 = x4300[l_id_4478];
      /* unrolling loop of 1 */
      {
        int idxAcc4479 = (int)0;
        x4277[idxAcc4479 + (2 * l_id_4478)] = x4290;
      }
      
      {
        int idx4480 = (int)0;
        x4290 = x4377[idx4480 + (2 * l_id_4478)] + x4290;
      }
      
      x4277[1 + (2 * l_id_4478)] = x4290;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_4481 = get_local_id(0); l_id_4481 < 4; l_id_4481 = 32 + l_id_4481) {
    /* oclScanSeq */
    {
      float x4267;
      x4267 = x4277[l_id_4481];
      /* unrolling loop of 1 */
      {
        int idxAcc4482 = (int)0;
        x4254[idxAcc4482 + (2 * l_id_4481)] = x4267;
      }
      
      {
        int idx4483 = (int)0;
        x4267 = x4397[idx4483 + (2 * l_id_4481)] + x4267;
      }
      
      x4254[1 + (2 * l_id_4481)] = x4267;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_4484 = get_local_id(0); l_id_4484 < 8; l_id_4484 = 32 + l_id_4484) {
    /* oclScanSeq */
    {
      float x4244;
      x4244 = x4254[l_id_4484];
      /* unrolling loop of 1 */
      {
        int idxAcc4485 = (int)0;
        x4231[idxAcc4485 + (2 * l_id_4484)] = x4244;
      }
      
      {
        int idx4486 = (int)0;
        x4244 = x4417[idx4486 + (2 * l_id_4484)] + x4244;
      }
      
      x4231[1 + (2 * l_id_4484)] = x4244;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_4487 = get_local_id(0); l_id_4487 < 16; l_id_4487 = 32 + l_id_4487) {
    /* oclScanSeq */
    {
      float x4221;
      x4221 = x4231[l_id_4487];
      /* unrolling loop of 1 */
      {
        int idxAcc4488 = (int)0;
        x4208[idxAcc4488 + (2 * l_id_4487)] = x4221;
      }
      
      {
        int idx4489 = (int)0;
        x4221 = x4437[idx4489 + (2 * l_id_4487)] + x4221;
      }
      
      x4208[1 + (2 * l_id_4487)] = x4221;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_4490 = get_local_id(0);
  /* oclScanSeq */
  {
    float x4198;
    x4198 = x4208[l_id_4490];
    /* unrolling loop of 1 */
    {
      int idxAcc4491 = (int)0;
      output[idxAcc4491 + (2 * l_id_4490)] = x4198;
    }
    
    {
      int idx4492 = (int)0;
      x4198 = e3318[idx4492 + (2 * l_id_4490)] + x4198;
    }
    
    output[1 + (2 * l_id_4490)] = x4198;
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(16, 1, 1)))
void kernel_25600000_64_1_2(global float* restrict output, const global float* restrict e4493,__global float* d_block_sums){
__local float x5335[32];

__local float x5349[16];

__local float x5312[8];

__local float x5369[4];

__local float x5289[2];

__local float x5389[2];

__local float x5266[4];

__local float x5409[8];

__local float x5243[16];

__local float x5429[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_5455 = get_local_id(0); l_id_5455 < 32; l_id_5455 = 16 + l_id_5455) {
    /* oclReduceSeq */
    {
      float x5442;
      x5442 = 0.0f;
      for (int i_5456 = 0; i_5456 < 2; i_5456 = 1 + i_5456) {
        x5442 = x5442 + e4493[i_5456 + (2 * l_id_5455)];
      }
      
      x5429[l_id_5455] = x5442;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_5457 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x5422;
    x5422 = 0.0f;
    for (int i_5458 = 0; i_5458 < 2; i_5458 = 1 + i_5458) {
      x5422 = x5422 + x5429[i_5458 + (2 * l_id_5457)];
    }
    
    x5409[l_id_5457] = x5422;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_5459 = get_local_id(0); l_id_5459 < 8; l_id_5459 = 16 + l_id_5459) {
    /* oclReduceSeq */
    {
      float x5402;
      x5402 = 0.0f;
      for (int i_5460 = 0; i_5460 < 2; i_5460 = 1 + i_5460) {
        x5402 = x5402 + x5409[i_5460 + (2 * l_id_5459)];
      }
      
      x5389[l_id_5459] = x5402;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_5461 = get_local_id(0); l_id_5461 < 4; l_id_5461 = 16 + l_id_5461) {
    /* oclReduceSeq */
    {
      float x5382;
      x5382 = 0.0f;
      for (int i_5462 = 0; i_5462 < 2; i_5462 = 1 + i_5462) {
        x5382 = x5382 + x5389[i_5462 + (2 * l_id_5461)];
      }
      
      x5369[l_id_5461] = x5382;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_5463 = get_local_id(0); l_id_5463 < 2; l_id_5463 = 16 + l_id_5463) {
    /* oclReduceSeq */
    {
      float x5362;
      x5362 = 0.0f;
      for (int i_5464 = 0; i_5464 < 2; i_5464 = 1 + i_5464) {
        x5362 = x5362 + x5369[i_5464 + (2 * l_id_5463)];
      }
      
      x5349[l_id_5463] = x5362;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x5345;
    x5345 = 0.0f;
    /* unrolling loop of 1 */
    {
      int idxAcc5465 = (int)0;
      x5335[idxAcc5465] = x5345;
    }
    
    {
      int idx5466 = (int)0;
      x5345 = x5349[idx5466] + x5345;
    }
    
    x5335[1] = x5345;
  }
  
  /* mapLocal */
  for (int l_id_5467 = get_local_id(0); l_id_5467 < 2; l_id_5467 = 16 + l_id_5467) {
    /* oclScanSeq */
    {
      float x5325;
      x5325 = x5335[l_id_5467];
      /* unrolling loop of 1 */
      {
        int idxAcc5468 = (int)0;
        x5312[idxAcc5468 + (2 * l_id_5467)] = x5325;
      }
      
      {
        int idx5469 = (int)0;
        x5325 = x5369[idx5469 + (2 * l_id_5467)] + x5325;
      }
      
      x5312[1 + (2 * l_id_5467)] = x5325;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_5470 = get_local_id(0); l_id_5470 < 4; l_id_5470 = 16 + l_id_5470) {
    /* oclScanSeq */
    {
      float x5302;
      x5302 = x5312[l_id_5470];
      /* unrolling loop of 1 */
      {
        int idxAcc5471 = (int)0;
        x5289[idxAcc5471 + (2 * l_id_5470)] = x5302;
      }
      
      {
        int idx5472 = (int)0;
        x5302 = x5389[idx5472 + (2 * l_id_5470)] + x5302;
      }
      
      x5289[1 + (2 * l_id_5470)] = x5302;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_5473 = get_local_id(0); l_id_5473 < 8; l_id_5473 = 16 + l_id_5473) {
    /* oclScanSeq */
    {
      float x5279;
      x5279 = x5289[l_id_5473];
      /* unrolling loop of 1 */
      {
        int idxAcc5474 = (int)0;
        x5266[idxAcc5474 + (2 * l_id_5473)] = x5279;
      }
      
      {
        int idx5475 = (int)0;
        x5279 = x5409[idx5475 + (2 * l_id_5473)] + x5279;
      }
      
      x5266[1 + (2 * l_id_5473)] = x5279;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_5476 = get_local_id(0);
  /* oclScanSeq */
  {
    float x5256;
    x5256 = x5266[l_id_5476];
    /* unrolling loop of 1 */
    {
      int idxAcc5477 = (int)0;
      x5243[idxAcc5477 + (2 * l_id_5476)] = x5256;
    }
    
    {
      int idx5478 = (int)0;
      x5256 = x5429[idx5478 + (2 * l_id_5476)] + x5256;
    }
    
    x5243[1 + (2 * l_id_5476)] = x5256;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_5479 = get_local_id(0); l_id_5479 < 32; l_id_5479 = 16 + l_id_5479) {
    /* oclScanSeq */
    {
      float x5233;
      x5233 = x5243[l_id_5479];
      /* unrolling loop of 1 */
      {
        int idxAcc5480 = (int)0;
        output[idxAcc5480 + (2 * l_id_5479)] = x5233;
      }
      
      {
        int idx5481 = (int)0;
        x5233 = e4493[idx5481 + (2 * l_id_5479)] + x5233;
      }
      
      output[1 + (2 * l_id_5479)] = x5233;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(8, 1, 1)))
void kernel_25600000_64_2_2(global float* restrict output, const global float* restrict e5482,__global float* d_block_sums){
__local float x6161[32];

__local float x6175[16];

__local float x6138[8];

__local float x6195[4];

__local float x6115[4];

__local float x6215[8];

__local float x6092[16];

__local float x6235[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_6262 = get_local_id(0); l_id_6262 < 32; l_id_6262 = 8 + l_id_6262) {
    /* oclReduceSeq */
    {
      float x6248;
      x6248 = 0.0f;
      for (int i_6263 = 0; i_6263 < 2; i_6263 = 1 + i_6263) {
        x6248 = x6248 + e5482[i_6263 + (2 * l_id_6262)];
      }
      
      x6235[l_id_6262] = x6248;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_6264 = get_local_id(0); l_id_6264 < 16; l_id_6264 = 8 + l_id_6264) {
    /* oclReduceSeq */
    {
      float x6228;
      x6228 = 0.0f;
      for (int i_6265 = 0; i_6265 < 2; i_6265 = 1 + i_6265) {
        x6228 = x6228 + x6235[i_6265 + (2 * l_id_6264)];
      }
      
      x6215[l_id_6264] = x6228;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_6266 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x6208;
    x6208 = 0.0f;
    for (int i_6267 = 0; i_6267 < 2; i_6267 = 1 + i_6267) {
      x6208 = x6208 + x6215[i_6267 + (2 * l_id_6266)];
    }
    
    x6195[l_id_6266] = x6208;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_6268 = get_local_id(0); l_id_6268 < 4; l_id_6268 = 8 + l_id_6268) {
    /* oclReduceSeq */
    {
      float x6188;
      x6188 = 0.0f;
      for (int i_6269 = 0; i_6269 < 2; i_6269 = 1 + i_6269) {
        x6188 = x6188 + x6195[i_6269 + (2 * l_id_6268)];
      }
      
      x6175[l_id_6268] = x6188;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x6171;
    x6171 = 0.0f;
    /* unrolling loop of 3 */
    {
      int idxAcc6270 = (int)0;
      x6161[idxAcc6270] = x6171;
    }
    
    {
      int idx6271 = (int)0;
      x6171 = x6175[idx6271] + x6171;
    }
    
    {
      int idxAcc6272 = (int)1;
      x6161[idxAcc6272] = x6171;
    }
    
    {
      int idx6273 = (int)1;
      x6171 = x6175[idx6273] + x6171;
    }
    
    {
      int idxAcc6274 = (int)2;
      x6161[idxAcc6274] = x6171;
    }
    
    {
      int idx6275 = (int)2;
      x6171 = x6175[idx6275] + x6171;
    }
    
    x6161[3] = x6171;
  }
  
  /* mapLocal */
  for (int l_id_6276 = get_local_id(0); l_id_6276 < 4; l_id_6276 = 8 + l_id_6276) {
    /* oclScanSeq */
    {
      float x6151;
      x6151 = x6161[l_id_6276];
      /* unrolling loop of 1 */
      {
        int idxAcc6277 = (int)0;
        x6138[idxAcc6277 + (2 * l_id_6276)] = x6151;
      }
      
      {
        int idx6278 = (int)0;
        x6151 = x6195[idx6278 + (2 * l_id_6276)] + x6151;
      }
      
      x6138[1 + (2 * l_id_6276)] = x6151;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_6279 = get_local_id(0);
  /* oclScanSeq */
  {
    float x6128;
    x6128 = x6138[l_id_6279];
    /* unrolling loop of 1 */
    {
      int idxAcc6280 = (int)0;
      x6115[idxAcc6280 + (2 * l_id_6279)] = x6128;
    }
    
    {
      int idx6281 = (int)0;
      x6128 = x6215[idx6281 + (2 * l_id_6279)] + x6128;
    }
    
    x6115[1 + (2 * l_id_6279)] = x6128;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_6282 = get_local_id(0); l_id_6282 < 16; l_id_6282 = 8 + l_id_6282) {
    /* oclScanSeq */
    {
      float x6105;
      x6105 = x6115[l_id_6282];
      /* unrolling loop of 1 */
      {
        int idxAcc6283 = (int)0;
        x6092[idxAcc6283 + (2 * l_id_6282)] = x6105;
      }
      
      {
        int idx6284 = (int)0;
        x6105 = x6235[idx6284 + (2 * l_id_6282)] + x6105;
      }
      
      x6092[1 + (2 * l_id_6282)] = x6105;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_6285 = get_local_id(0); l_id_6285 < 32; l_id_6285 = 8 + l_id_6285) {
    /* oclScanSeq */
    {
      float x6082;
      x6082 = x6092[l_id_6285];
      /* unrolling loop of 1 */
      {
        int idxAcc6286 = (int)0;
        output[idxAcc6286 + (2 * l_id_6285)] = x6082;
      }
      
      {
        int idx6287 = (int)0;
        x6082 = e5482[idx6287 + (2 * l_id_6285)] + x6082;
      }
      
      output[1 + (2 * l_id_6285)] = x6082;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(4, 1, 1)))
void kernel_25600000_64_3_2(global float* restrict output, const global float* restrict e6288,__global float* d_block_sums){
__local float x6804[32];

__local float x6818[16];

__local float x6781[8];

__local float x6838[8];

__local float x6758[16];

__local float x6858[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_6888 = get_local_id(0); l_id_6888 < 32; l_id_6888 = 4 + l_id_6888) {
    /* oclReduceSeq */
    {
      float x6871;
      x6871 = 0.0f;
      for (int i_6889 = 0; i_6889 < 2; i_6889 = 1 + i_6889) {
        x6871 = x6871 + e6288[i_6889 + (2 * l_id_6888)];
      }
      
      x6858[l_id_6888] = x6871;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_6890 = get_local_id(0); l_id_6890 < 16; l_id_6890 = 4 + l_id_6890) {
    /* oclReduceSeq */
    {
      float x6851;
      x6851 = 0.0f;
      for (int i_6891 = 0; i_6891 < 2; i_6891 = 1 + i_6891) {
        x6851 = x6851 + x6858[i_6891 + (2 * l_id_6890)];
      }
      
      x6838[l_id_6890] = x6851;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_6892 = get_local_id(0); l_id_6892 < 8; l_id_6892 = 4 + l_id_6892) {
    /* oclReduceSeq */
    {
      float x6831;
      x6831 = 0.0f;
      for (int i_6893 = 0; i_6893 < 2; i_6893 = 1 + i_6893) {
        x6831 = x6831 + x6838[i_6893 + (2 * l_id_6892)];
      }
      
      x6818[l_id_6892] = x6831;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x6814;
    x6814 = 0.0f;
    /* unrolling loop of 7 */
    {
      int idxAcc6894 = (int)0;
      x6804[idxAcc6894] = x6814;
    }
    
    {
      int idx6895 = (int)0;
      x6814 = x6818[idx6895] + x6814;
    }
    
    {
      int idxAcc6896 = (int)1;
      x6804[idxAcc6896] = x6814;
    }
    
    {
      int idx6897 = (int)1;
      x6814 = x6818[idx6897] + x6814;
    }
    
    {
      int idxAcc6898 = (int)2;
      x6804[idxAcc6898] = x6814;
    }
    
    {
      int idx6899 = (int)2;
      x6814 = x6818[idx6899] + x6814;
    }
    
    {
      int idxAcc6900 = (int)3;
      x6804[idxAcc6900] = x6814;
    }
    
    {
      int idx6901 = (int)3;
      x6814 = x6818[idx6901] + x6814;
    }
    
    {
      int idxAcc6902 = (int)4;
      x6804[idxAcc6902] = x6814;
    }
    
    {
      int idx6903 = (int)4;
      x6814 = x6818[idx6903] + x6814;
    }
    
    {
      int idxAcc6904 = (int)5;
      x6804[idxAcc6904] = x6814;
    }
    
    {
      int idx6905 = (int)5;
      x6814 = x6818[idx6905] + x6814;
    }
    
    {
      int idxAcc6906 = (int)6;
      x6804[idxAcc6906] = x6814;
    }
    
    {
      int idx6907 = (int)6;
      x6814 = x6818[idx6907] + x6814;
    }
    
    x6804[7] = x6814;
  }
  
  /* mapLocal */
  for (int l_id_6908 = get_local_id(0); l_id_6908 < 8; l_id_6908 = 4 + l_id_6908) {
    /* oclScanSeq */
    {
      float x6794;
      x6794 = x6804[l_id_6908];
      /* unrolling loop of 1 */
      {
        int idxAcc6909 = (int)0;
        x6781[idxAcc6909 + (2 * l_id_6908)] = x6794;
      }
      
      {
        int idx6910 = (int)0;
        x6794 = x6838[idx6910 + (2 * l_id_6908)] + x6794;
      }
      
      x6781[1 + (2 * l_id_6908)] = x6794;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_6911 = get_local_id(0); l_id_6911 < 16; l_id_6911 = 4 + l_id_6911) {
    /* oclScanSeq */
    {
      float x6771;
      x6771 = x6781[l_id_6911];
      /* unrolling loop of 1 */
      {
        int idxAcc6912 = (int)0;
        x6758[idxAcc6912 + (2 * l_id_6911)] = x6771;
      }
      
      {
        int idx6913 = (int)0;
        x6771 = x6858[idx6913 + (2 * l_id_6911)] + x6771;
      }
      
      x6758[1 + (2 * l_id_6911)] = x6771;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_6914 = get_local_id(0); l_id_6914 < 32; l_id_6914 = 4 + l_id_6914) {
    /* oclScanSeq */
    {
      float x6748;
      x6748 = x6758[l_id_6914];
      /* unrolling loop of 1 */
      {
        int idxAcc6915 = (int)0;
        output[idxAcc6915 + (2 * l_id_6914)] = x6748;
      }
      
      {
        int idx6916 = (int)0;
        x6748 = e6288[idx6916 + (2 * l_id_6914)] + x6748;
      }
      
      output[1 + (2 * l_id_6914)] = x6748;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(2, 1, 1)))
void kernel_25600000_64_4_2(global float* restrict output, const global float* restrict e6917,__global float* d_block_sums){
__local float x7270[32];

__local float x7284[16];

__local float x7247[16];

__local float x7304[32];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_7341 = get_local_id(0); l_id_7341 < 32; l_id_7341 = 2 + l_id_7341) {
    /* oclReduceSeq */
    {
      float x7317;
      x7317 = 0.0f;
      for (int i_7342 = 0; i_7342 < 2; i_7342 = 1 + i_7342) {
        x7317 = x7317 + e6917[i_7342 + (2 * l_id_7341)];
      }
      
      x7304[l_id_7341] = x7317;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_7343 = get_local_id(0); l_id_7343 < 16; l_id_7343 = 2 + l_id_7343) {
    /* oclReduceSeq */
    {
      float x7297;
      x7297 = 0.0f;
      for (int i_7344 = 0; i_7344 < 2; i_7344 = 1 + i_7344) {
        x7297 = x7297 + x7304[i_7344 + (2 * l_id_7343)];
      }
      
      x7284[l_id_7343] = x7297;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x7280;
    x7280 = 0.0f;
    /* unrolling loop of 15 */
    {
      int idxAcc7345 = (int)0;
      x7270[idxAcc7345] = x7280;
    }
    
    {
      int idx7346 = (int)0;
      x7280 = x7284[idx7346] + x7280;
    }
    
    {
      int idxAcc7347 = (int)1;
      x7270[idxAcc7347] = x7280;
    }
    
    {
      int idx7348 = (int)1;
      x7280 = x7284[idx7348] + x7280;
    }
    
    {
      int idxAcc7349 = (int)2;
      x7270[idxAcc7349] = x7280;
    }
    
    {
      int idx7350 = (int)2;
      x7280 = x7284[idx7350] + x7280;
    }
    
    {
      int idxAcc7351 = (int)3;
      x7270[idxAcc7351] = x7280;
    }
    
    {
      int idx7352 = (int)3;
      x7280 = x7284[idx7352] + x7280;
    }
    
    {
      int idxAcc7353 = (int)4;
      x7270[idxAcc7353] = x7280;
    }
    
    {
      int idx7354 = (int)4;
      x7280 = x7284[idx7354] + x7280;
    }
    
    {
      int idxAcc7355 = (int)5;
      x7270[idxAcc7355] = x7280;
    }
    
    {
      int idx7356 = (int)5;
      x7280 = x7284[idx7356] + x7280;
    }
    
    {
      int idxAcc7357 = (int)6;
      x7270[idxAcc7357] = x7280;
    }
    
    {
      int idx7358 = (int)6;
      x7280 = x7284[idx7358] + x7280;
    }
    
    {
      int idxAcc7359 = (int)7;
      x7270[idxAcc7359] = x7280;
    }
    
    {
      int idx7360 = (int)7;
      x7280 = x7284[idx7360] + x7280;
    }
    
    {
      int idxAcc7361 = (int)8;
      x7270[idxAcc7361] = x7280;
    }
    
    {
      int idx7362 = (int)8;
      x7280 = x7284[idx7362] + x7280;
    }
    
    {
      int idxAcc7363 = (int)9;
      x7270[idxAcc7363] = x7280;
    }
    
    {
      int idx7364 = (int)9;
      x7280 = x7284[idx7364] + x7280;
    }
    
    {
      int idxAcc7365 = (int)10;
      x7270[idxAcc7365] = x7280;
    }
    
    {
      int idx7366 = (int)10;
      x7280 = x7284[idx7366] + x7280;
    }
    
    {
      int idxAcc7367 = (int)11;
      x7270[idxAcc7367] = x7280;
    }
    
    {
      int idx7368 = (int)11;
      x7280 = x7284[idx7368] + x7280;
    }
    
    {
      int idxAcc7369 = (int)12;
      x7270[idxAcc7369] = x7280;
    }
    
    {
      int idx7370 = (int)12;
      x7280 = x7284[idx7370] + x7280;
    }
    
    {
      int idxAcc7371 = (int)13;
      x7270[idxAcc7371] = x7280;
    }
    
    {
      int idx7372 = (int)13;
      x7280 = x7284[idx7372] + x7280;
    }
    
    {
      int idxAcc7373 = (int)14;
      x7270[idxAcc7373] = x7280;
    }
    
    {
      int idx7374 = (int)14;
      x7280 = x7284[idx7374] + x7280;
    }
    
    x7270[15] = x7280;
  }
  
  /* mapLocal */
  for (int l_id_7375 = get_local_id(0); l_id_7375 < 16; l_id_7375 = 2 + l_id_7375) {
    /* oclScanSeq */
    {
      float x7260;
      x7260 = x7270[l_id_7375];
      /* unrolling loop of 1 */
      {
        int idxAcc7376 = (int)0;
        x7247[idxAcc7376 + (2 * l_id_7375)] = x7260;
      }
      
      {
        int idx7377 = (int)0;
        x7260 = x7304[idx7377 + (2 * l_id_7375)] + x7260;
      }
      
      x7247[1 + (2 * l_id_7375)] = x7260;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_7378 = get_local_id(0); l_id_7378 < 32; l_id_7378 = 2 + l_id_7378) {
    /* oclScanSeq */
    {
      float x7237;
      x7237 = x7247[l_id_7378];
      /* unrolling loop of 1 */
      {
        int idxAcc7379 = (int)0;
        output[idxAcc7379 + (2 * l_id_7378)] = x7237;
      }
      
      {
        int idx7380 = (int)0;
        x7237 = e6917[idx7380 + (2 * l_id_7378)] + x7237;
      }
      
      output[1 + (2 * l_id_7378)] = x7237;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(64, 1, 1)))
void kernel_25600000_128_0_2(global float* restrict output, const global float* restrict e7381,__global float* d_block_sums){
__local float x8549[64];

__local float x8563[32];

__local float x8526[16];

__local float x8583[8];

__local float x8503[4];

__local float x8603[2];

__local float x8480[1];

__local float x8623[1];

__local float x8457[2];

__local float x8643[4];

__local float x8434[8];

__local float x8663[16];

__local float x8411[32];

__local float x8683[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_8710 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x8696;
    x8696 = 0.0f;
    for (int i_8711 = 0; i_8711 < 2; i_8711 = 1 + i_8711) {
      x8696 = x8696 + e7381[i_8711 + (2 * l_id_8710)];
    }
    
    x8683[l_id_8710] = x8696;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_8712 = get_local_id(0); l_id_8712 < 32; l_id_8712 = 64 + l_id_8712) {
    /* oclReduceSeq */
    {
      float x8676;
      x8676 = 0.0f;
      for (int i_8713 = 0; i_8713 < 2; i_8713 = 1 + i_8713) {
        x8676 = x8676 + x8683[i_8713 + (2 * l_id_8712)];
      }
      
      x8663[l_id_8712] = x8676;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_8714 = get_local_id(0); l_id_8714 < 16; l_id_8714 = 64 + l_id_8714) {
    /* oclReduceSeq */
    {
      float x8656;
      x8656 = 0.0f;
      for (int i_8715 = 0; i_8715 < 2; i_8715 = 1 + i_8715) {
        x8656 = x8656 + x8663[i_8715 + (2 * l_id_8714)];
      }
      
      x8643[l_id_8714] = x8656;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_8716 = get_local_id(0); l_id_8716 < 8; l_id_8716 = 64 + l_id_8716) {
    /* oclReduceSeq */
    {
      float x8636;
      x8636 = 0.0f;
      for (int i_8717 = 0; i_8717 < 2; i_8717 = 1 + i_8717) {
        x8636 = x8636 + x8643[i_8717 + (2 * l_id_8716)];
      }
      
      x8623[l_id_8716] = x8636;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_8718 = get_local_id(0); l_id_8718 < 4; l_id_8718 = 64 + l_id_8718) {
    /* oclReduceSeq */
    {
      float x8616;
      x8616 = 0.0f;
      for (int i_8719 = 0; i_8719 < 2; i_8719 = 1 + i_8719) {
        x8616 = x8616 + x8623[i_8719 + (2 * l_id_8718)];
      }
      
      x8603[l_id_8718] = x8616;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_8720 = get_local_id(0); l_id_8720 < 2; l_id_8720 = 64 + l_id_8720) {
    /* oclReduceSeq */
    {
      float x8596;
      x8596 = 0.0f;
      for (int i_8721 = 0; i_8721 < 2; i_8721 = 1 + i_8721) {
        x8596 = x8596 + x8603[i_8721 + (2 * l_id_8720)];
      }
      
      x8583[l_id_8720] = x8596;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_8722 = get_local_id(0); l_id_8722 < 1; l_id_8722 = 64 + l_id_8722) {
    /* oclReduceSeq */
    {
      float x8576;
      x8576 = 0.0f;
      for (int i_8723 = 0; i_8723 < 2; i_8723 = 1 + i_8723) {
        x8576 = x8576 + x8583[i_8723 + (2 * l_id_8722)];
      }
      
      x8563[l_id_8722] = x8576;
    }
    
  }
  
  /* oclScanSeq */
  {
    float x8559;
    x8559 = 0.0f;
    /* unrolling loop of 0 */
    x8549[0] = x8559;
  }
  
  /* mapLocal */
  for (int l_id_8724 = get_local_id(0); l_id_8724 < 1; l_id_8724 = 64 + l_id_8724) {
    /* oclScanSeq */
    {
      float x8539;
      x8539 = x8549[l_id_8724];
      /* unrolling loop of 1 */
      {
        int idxAcc8725 = (int)0;
        x8526[idxAcc8725 + (2 * l_id_8724)] = x8539;
      }
      
      {
        int idx8726 = (int)0;
        x8539 = x8583[idx8726 + (2 * l_id_8724)] + x8539;
      }
      
      x8526[1 + (2 * l_id_8724)] = x8539;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_8727 = get_local_id(0); l_id_8727 < 2; l_id_8727 = 64 + l_id_8727) {
    /* oclScanSeq */
    {
      float x8516;
      x8516 = x8526[l_id_8727];
      /* unrolling loop of 1 */
      {
        int idxAcc8728 = (int)0;
        x8503[idxAcc8728 + (2 * l_id_8727)] = x8516;
      }
      
      {
        int idx8729 = (int)0;
        x8516 = x8603[idx8729 + (2 * l_id_8727)] + x8516;
      }
      
      x8503[1 + (2 * l_id_8727)] = x8516;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_8730 = get_local_id(0); l_id_8730 < 4; l_id_8730 = 64 + l_id_8730) {
    /* oclScanSeq */
    {
      float x8493;
      x8493 = x8503[l_id_8730];
      /* unrolling loop of 1 */
      {
        int idxAcc8731 = (int)0;
        x8480[idxAcc8731 + (2 * l_id_8730)] = x8493;
      }
      
      {
        int idx8732 = (int)0;
        x8493 = x8623[idx8732 + (2 * l_id_8730)] + x8493;
      }
      
      x8480[1 + (2 * l_id_8730)] = x8493;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_8733 = get_local_id(0); l_id_8733 < 8; l_id_8733 = 64 + l_id_8733) {
    /* oclScanSeq */
    {
      float x8470;
      x8470 = x8480[l_id_8733];
      /* unrolling loop of 1 */
      {
        int idxAcc8734 = (int)0;
        x8457[idxAcc8734 + (2 * l_id_8733)] = x8470;
      }
      
      {
        int idx8735 = (int)0;
        x8470 = x8643[idx8735 + (2 * l_id_8733)] + x8470;
      }
      
      x8457[1 + (2 * l_id_8733)] = x8470;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_8736 = get_local_id(0); l_id_8736 < 16; l_id_8736 = 64 + l_id_8736) {
    /* oclScanSeq */
    {
      float x8447;
      x8447 = x8457[l_id_8736];
      /* unrolling loop of 1 */
      {
        int idxAcc8737 = (int)0;
        x8434[idxAcc8737 + (2 * l_id_8736)] = x8447;
      }
      
      {
        int idx8738 = (int)0;
        x8447 = x8663[idx8738 + (2 * l_id_8736)] + x8447;
      }
      
      x8434[1 + (2 * l_id_8736)] = x8447;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_8739 = get_local_id(0); l_id_8739 < 32; l_id_8739 = 64 + l_id_8739) {
    /* oclScanSeq */
    {
      float x8424;
      x8424 = x8434[l_id_8739];
      /* unrolling loop of 1 */
      {
        int idxAcc8740 = (int)0;
        x8411[idxAcc8740 + (2 * l_id_8739)] = x8424;
      }
      
      {
        int idx8741 = (int)0;
        x8424 = x8683[idx8741 + (2 * l_id_8739)] + x8424;
      }
      
      x8411[1 + (2 * l_id_8739)] = x8424;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_8742 = get_local_id(0);
  /* oclScanSeq */
  {
    float x8401;
    x8401 = x8411[l_id_8742];
    /* unrolling loop of 1 */
    {
      int idxAcc8743 = (int)0;
      output[idxAcc8743 + (2 * l_id_8742)] = x8401;
    }
    
    {
      int idx8744 = (int)0;
      x8401 = e7381[idx8744 + (2 * l_id_8742)] + x8401;
    }
    
    output[1 + (2 * l_id_8742)] = x8401;
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(32, 1, 1)))
void kernel_25600000_128_1_2(global float* restrict output, const global float* restrict e8745,__global float* d_block_sums){
__local float x9750[64];

__local float x9764[32];

__local float x9727[16];

__local float x9784[8];

__local float x9704[4];

__local float x9804[2];

__local float x9681[2];

__local float x9824[4];

__local float x9658[8];

__local float x9844[16];

__local float x9635[32];

__local float x9864[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_9891 = get_local_id(0); l_id_9891 < 64; l_id_9891 = 32 + l_id_9891) {
    /* oclReduceSeq */
    {
      float x9877;
      x9877 = 0.0f;
      for (int i_9892 = 0; i_9892 < 2; i_9892 = 1 + i_9892) {
        x9877 = x9877 + e8745[i_9892 + (2 * l_id_9891)];
      }
      
      x9864[l_id_9891] = x9877;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_9893 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x9857;
    x9857 = 0.0f;
    for (int i_9894 = 0; i_9894 < 2; i_9894 = 1 + i_9894) {
      x9857 = x9857 + x9864[i_9894 + (2 * l_id_9893)];
    }
    
    x9844[l_id_9893] = x9857;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_9895 = get_local_id(0); l_id_9895 < 16; l_id_9895 = 32 + l_id_9895) {
    /* oclReduceSeq */
    {
      float x9837;
      x9837 = 0.0f;
      for (int i_9896 = 0; i_9896 < 2; i_9896 = 1 + i_9896) {
        x9837 = x9837 + x9844[i_9896 + (2 * l_id_9895)];
      }
      
      x9824[l_id_9895] = x9837;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_9897 = get_local_id(0); l_id_9897 < 8; l_id_9897 = 32 + l_id_9897) {
    /* oclReduceSeq */
    {
      float x9817;
      x9817 = 0.0f;
      for (int i_9898 = 0; i_9898 < 2; i_9898 = 1 + i_9898) {
        x9817 = x9817 + x9824[i_9898 + (2 * l_id_9897)];
      }
      
      x9804[l_id_9897] = x9817;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_9899 = get_local_id(0); l_id_9899 < 4; l_id_9899 = 32 + l_id_9899) {
    /* oclReduceSeq */
    {
      float x9797;
      x9797 = 0.0f;
      for (int i_9900 = 0; i_9900 < 2; i_9900 = 1 + i_9900) {
        x9797 = x9797 + x9804[i_9900 + (2 * l_id_9899)];
      }
      
      x9784[l_id_9899] = x9797;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_9901 = get_local_id(0); l_id_9901 < 2; l_id_9901 = 32 + l_id_9901) {
    /* oclReduceSeq */
    {
      float x9777;
      x9777 = 0.0f;
      for (int i_9902 = 0; i_9902 < 2; i_9902 = 1 + i_9902) {
        x9777 = x9777 + x9784[i_9902 + (2 * l_id_9901)];
      }
      
      x9764[l_id_9901] = x9777;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x9760;
    x9760 = 0.0f;
    /* unrolling loop of 1 */
    {
      int idxAcc9903 = (int)0;
      x9750[idxAcc9903] = x9760;
    }
    
    {
      int idx9904 = (int)0;
      x9760 = x9764[idx9904] + x9760;
    }
    
    x9750[1] = x9760;
  }
  
  /* mapLocal */
  for (int l_id_9905 = get_local_id(0); l_id_9905 < 2; l_id_9905 = 32 + l_id_9905) {
    /* oclScanSeq */
    {
      float x9740;
      x9740 = x9750[l_id_9905];
      /* unrolling loop of 1 */
      {
        int idxAcc9906 = (int)0;
        x9727[idxAcc9906 + (2 * l_id_9905)] = x9740;
      }
      
      {
        int idx9907 = (int)0;
        x9740 = x9784[idx9907 + (2 * l_id_9905)] + x9740;
      }
      
      x9727[1 + (2 * l_id_9905)] = x9740;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_9908 = get_local_id(0); l_id_9908 < 4; l_id_9908 = 32 + l_id_9908) {
    /* oclScanSeq */
    {
      float x9717;
      x9717 = x9727[l_id_9908];
      /* unrolling loop of 1 */
      {
        int idxAcc9909 = (int)0;
        x9704[idxAcc9909 + (2 * l_id_9908)] = x9717;
      }
      
      {
        int idx9910 = (int)0;
        x9717 = x9804[idx9910 + (2 * l_id_9908)] + x9717;
      }
      
      x9704[1 + (2 * l_id_9908)] = x9717;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_9911 = get_local_id(0); l_id_9911 < 8; l_id_9911 = 32 + l_id_9911) {
    /* oclScanSeq */
    {
      float x9694;
      x9694 = x9704[l_id_9911];
      /* unrolling loop of 1 */
      {
        int idxAcc9912 = (int)0;
        x9681[idxAcc9912 + (2 * l_id_9911)] = x9694;
      }
      
      {
        int idx9913 = (int)0;
        x9694 = x9824[idx9913 + (2 * l_id_9911)] + x9694;
      }
      
      x9681[1 + (2 * l_id_9911)] = x9694;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_9914 = get_local_id(0); l_id_9914 < 16; l_id_9914 = 32 + l_id_9914) {
    /* oclScanSeq */
    {
      float x9671;
      x9671 = x9681[l_id_9914];
      /* unrolling loop of 1 */
      {
        int idxAcc9915 = (int)0;
        x9658[idxAcc9915 + (2 * l_id_9914)] = x9671;
      }
      
      {
        int idx9916 = (int)0;
        x9671 = x9844[idx9916 + (2 * l_id_9914)] + x9671;
      }
      
      x9658[1 + (2 * l_id_9914)] = x9671;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_9917 = get_local_id(0);
  /* oclScanSeq */
  {
    float x9648;
    x9648 = x9658[l_id_9917];
    /* unrolling loop of 1 */
    {
      int idxAcc9918 = (int)0;
      x9635[idxAcc9918 + (2 * l_id_9917)] = x9648;
    }
    
    {
      int idx9919 = (int)0;
      x9648 = x9864[idx9919 + (2 * l_id_9917)] + x9648;
    }
    
    x9635[1 + (2 * l_id_9917)] = x9648;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_9920 = get_local_id(0); l_id_9920 < 64; l_id_9920 = 32 + l_id_9920) {
    /* oclScanSeq */
    {
      float x9625;
      x9625 = x9635[l_id_9920];
      /* unrolling loop of 1 */
      {
        int idxAcc9921 = (int)0;
        output[idxAcc9921 + (2 * l_id_9920)] = x9625;
      }
      
      {
        int idx9922 = (int)0;
        x9625 = e8745[idx9922 + (2 * l_id_9920)] + x9625;
      }
      
      output[1 + (2 * l_id_9920)] = x9625;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(16, 1, 1)))
void kernel_25600000_128_2_2(global float* restrict output, const global float* restrict e9923,__global float* d_block_sums){
__local float x10765[64];

__local float x10779[32];

__local float x10742[16];

__local float x10799[8];

__local float x10719[4];

__local float x10819[4];

__local float x10696[8];

__local float x10839[16];

__local float x10673[32];

__local float x10859[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_10887 = get_local_id(0); l_id_10887 < 64; l_id_10887 = 16 + l_id_10887) {
    /* oclReduceSeq */
    {
      float x10872;
      x10872 = 0.0f;
      for (int i_10888 = 0; i_10888 < 2; i_10888 = 1 + i_10888) {
        x10872 = x10872 + e9923[i_10888 + (2 * l_id_10887)];
      }
      
      x10859[l_id_10887] = x10872;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_10889 = get_local_id(0); l_id_10889 < 32; l_id_10889 = 16 + l_id_10889) {
    /* oclReduceSeq */
    {
      float x10852;
      x10852 = 0.0f;
      for (int i_10890 = 0; i_10890 < 2; i_10890 = 1 + i_10890) {
        x10852 = x10852 + x10859[i_10890 + (2 * l_id_10889)];
      }
      
      x10839[l_id_10889] = x10852;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_10891 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x10832;
    x10832 = 0.0f;
    for (int i_10892 = 0; i_10892 < 2; i_10892 = 1 + i_10892) {
      x10832 = x10832 + x10839[i_10892 + (2 * l_id_10891)];
    }
    
    x10819[l_id_10891] = x10832;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_10893 = get_local_id(0); l_id_10893 < 8; l_id_10893 = 16 + l_id_10893) {
    /* oclReduceSeq */
    {
      float x10812;
      x10812 = 0.0f;
      for (int i_10894 = 0; i_10894 < 2; i_10894 = 1 + i_10894) {
        x10812 = x10812 + x10819[i_10894 + (2 * l_id_10893)];
      }
      
      x10799[l_id_10893] = x10812;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_10895 = get_local_id(0); l_id_10895 < 4; l_id_10895 = 16 + l_id_10895) {
    /* oclReduceSeq */
    {
      float x10792;
      x10792 = 0.0f;
      for (int i_10896 = 0; i_10896 < 2; i_10896 = 1 + i_10896) {
        x10792 = x10792 + x10799[i_10896 + (2 * l_id_10895)];
      }
      
      x10779[l_id_10895] = x10792;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x10775;
    x10775 = 0.0f;
    /* unrolling loop of 3 */
    {
      int idxAcc10897 = (int)0;
      x10765[idxAcc10897] = x10775;
    }
    
    {
      int idx10898 = (int)0;
      x10775 = x10779[idx10898] + x10775;
    }
    
    {
      int idxAcc10899 = (int)1;
      x10765[idxAcc10899] = x10775;
    }
    
    {
      int idx10900 = (int)1;
      x10775 = x10779[idx10900] + x10775;
    }
    
    {
      int idxAcc10901 = (int)2;
      x10765[idxAcc10901] = x10775;
    }
    
    {
      int idx10902 = (int)2;
      x10775 = x10779[idx10902] + x10775;
    }
    
    x10765[3] = x10775;
  }
  
  /* mapLocal */
  for (int l_id_10903 = get_local_id(0); l_id_10903 < 4; l_id_10903 = 16 + l_id_10903) {
    /* oclScanSeq */
    {
      float x10755;
      x10755 = x10765[l_id_10903];
      /* unrolling loop of 1 */
      {
        int idxAcc10904 = (int)0;
        x10742[idxAcc10904 + (2 * l_id_10903)] = x10755;
      }
      
      {
        int idx10905 = (int)0;
        x10755 = x10799[idx10905 + (2 * l_id_10903)] + x10755;
      }
      
      x10742[1 + (2 * l_id_10903)] = x10755;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_10906 = get_local_id(0); l_id_10906 < 8; l_id_10906 = 16 + l_id_10906) {
    /* oclScanSeq */
    {
      float x10732;
      x10732 = x10742[l_id_10906];
      /* unrolling loop of 1 */
      {
        int idxAcc10907 = (int)0;
        x10719[idxAcc10907 + (2 * l_id_10906)] = x10732;
      }
      
      {
        int idx10908 = (int)0;
        x10732 = x10819[idx10908 + (2 * l_id_10906)] + x10732;
      }
      
      x10719[1 + (2 * l_id_10906)] = x10732;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_10909 = get_local_id(0);
  /* oclScanSeq */
  {
    float x10709;
    x10709 = x10719[l_id_10909];
    /* unrolling loop of 1 */
    {
      int idxAcc10910 = (int)0;
      x10696[idxAcc10910 + (2 * l_id_10909)] = x10709;
    }
    
    {
      int idx10911 = (int)0;
      x10709 = x10839[idx10911 + (2 * l_id_10909)] + x10709;
    }
    
    x10696[1 + (2 * l_id_10909)] = x10709;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_10912 = get_local_id(0); l_id_10912 < 32; l_id_10912 = 16 + l_id_10912) {
    /* oclScanSeq */
    {
      float x10686;
      x10686 = x10696[l_id_10912];
      /* unrolling loop of 1 */
      {
        int idxAcc10913 = (int)0;
        x10673[idxAcc10913 + (2 * l_id_10912)] = x10686;
      }
      
      {
        int idx10914 = (int)0;
        x10686 = x10859[idx10914 + (2 * l_id_10912)] + x10686;
      }
      
      x10673[1 + (2 * l_id_10912)] = x10686;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_10915 = get_local_id(0); l_id_10915 < 64; l_id_10915 = 16 + l_id_10915) {
    /* oclScanSeq */
    {
      float x10663;
      x10663 = x10673[l_id_10915];
      /* unrolling loop of 1 */
      {
        int idxAcc10916 = (int)0;
        output[idxAcc10916 + (2 * l_id_10915)] = x10663;
      }
      
      {
        int idx10917 = (int)0;
        x10663 = e9923[idx10917 + (2 * l_id_10915)] + x10663;
      }
      
      output[1 + (2 * l_id_10915)] = x10663;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(8, 1, 1)))
void kernel_25600000_128_3_2(global float* restrict output, const global float* restrict e10918,__global float* d_block_sums){
__local float x11597[64];

__local float x11611[32];

__local float x11574[16];

__local float x11631[8];

__local float x11551[8];

__local float x11651[16];

__local float x11528[32];

__local float x11671[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_11702 = get_local_id(0); l_id_11702 < 64; l_id_11702 = 8 + l_id_11702) {
    /* oclReduceSeq */
    {
      float x11684;
      x11684 = 0.0f;
      for (int i_11703 = 0; i_11703 < 2; i_11703 = 1 + i_11703) {
        x11684 = x11684 + e10918[i_11703 + (2 * l_id_11702)];
      }
      
      x11671[l_id_11702] = x11684;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_11704 = get_local_id(0); l_id_11704 < 32; l_id_11704 = 8 + l_id_11704) {
    /* oclReduceSeq */
    {
      float x11664;
      x11664 = 0.0f;
      for (int i_11705 = 0; i_11705 < 2; i_11705 = 1 + i_11705) {
        x11664 = x11664 + x11671[i_11705 + (2 * l_id_11704)];
      }
      
      x11651[l_id_11704] = x11664;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_11706 = get_local_id(0); l_id_11706 < 16; l_id_11706 = 8 + l_id_11706) {
    /* oclReduceSeq */
    {
      float x11644;
      x11644 = 0.0f;
      for (int i_11707 = 0; i_11707 < 2; i_11707 = 1 + i_11707) {
        x11644 = x11644 + x11651[i_11707 + (2 * l_id_11706)];
      }
      
      x11631[l_id_11706] = x11644;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_11708 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x11624;
    x11624 = 0.0f;
    for (int i_11709 = 0; i_11709 < 2; i_11709 = 1 + i_11709) {
      x11624 = x11624 + x11631[i_11709 + (2 * l_id_11708)];
    }
    
    x11611[l_id_11708] = x11624;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x11607;
    x11607 = 0.0f;
    /* unrolling loop of 7 */
    {
      int idxAcc11710 = (int)0;
      x11597[idxAcc11710] = x11607;
    }
    
    {
      int idx11711 = (int)0;
      x11607 = x11611[idx11711] + x11607;
    }
    
    {
      int idxAcc11712 = (int)1;
      x11597[idxAcc11712] = x11607;
    }
    
    {
      int idx11713 = (int)1;
      x11607 = x11611[idx11713] + x11607;
    }
    
    {
      int idxAcc11714 = (int)2;
      x11597[idxAcc11714] = x11607;
    }
    
    {
      int idx11715 = (int)2;
      x11607 = x11611[idx11715] + x11607;
    }
    
    {
      int idxAcc11716 = (int)3;
      x11597[idxAcc11716] = x11607;
    }
    
    {
      int idx11717 = (int)3;
      x11607 = x11611[idx11717] + x11607;
    }
    
    {
      int idxAcc11718 = (int)4;
      x11597[idxAcc11718] = x11607;
    }
    
    {
      int idx11719 = (int)4;
      x11607 = x11611[idx11719] + x11607;
    }
    
    {
      int idxAcc11720 = (int)5;
      x11597[idxAcc11720] = x11607;
    }
    
    {
      int idx11721 = (int)5;
      x11607 = x11611[idx11721] + x11607;
    }
    
    {
      int idxAcc11722 = (int)6;
      x11597[idxAcc11722] = x11607;
    }
    
    {
      int idx11723 = (int)6;
      x11607 = x11611[idx11723] + x11607;
    }
    
    x11597[7] = x11607;
  }
  
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_11724 = get_local_id(0);
  /* oclScanSeq */
  {
    float x11587;
    x11587 = x11597[l_id_11724];
    /* unrolling loop of 1 */
    {
      int idxAcc11725 = (int)0;
      x11574[idxAcc11725 + (2 * l_id_11724)] = x11587;
    }
    
    {
      int idx11726 = (int)0;
      x11587 = x11631[idx11726 + (2 * l_id_11724)] + x11587;
    }
    
    x11574[1 + (2 * l_id_11724)] = x11587;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_11727 = get_local_id(0); l_id_11727 < 16; l_id_11727 = 8 + l_id_11727) {
    /* oclScanSeq */
    {
      float x11564;
      x11564 = x11574[l_id_11727];
      /* unrolling loop of 1 */
      {
        int idxAcc11728 = (int)0;
        x11551[idxAcc11728 + (2 * l_id_11727)] = x11564;
      }
      
      {
        int idx11729 = (int)0;
        x11564 = x11651[idx11729 + (2 * l_id_11727)] + x11564;
      }
      
      x11551[1 + (2 * l_id_11727)] = x11564;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_11730 = get_local_id(0); l_id_11730 < 32; l_id_11730 = 8 + l_id_11730) {
    /* oclScanSeq */
    {
      float x11541;
      x11541 = x11551[l_id_11730];
      /* unrolling loop of 1 */
      {
        int idxAcc11731 = (int)0;
        x11528[idxAcc11731 + (2 * l_id_11730)] = x11541;
      }
      
      {
        int idx11732 = (int)0;
        x11541 = x11671[idx11732 + (2 * l_id_11730)] + x11541;
      }
      
      x11528[1 + (2 * l_id_11730)] = x11541;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_11733 = get_local_id(0); l_id_11733 < 64; l_id_11733 = 8 + l_id_11733) {
    /* oclScanSeq */
    {
      float x11518;
      x11518 = x11528[l_id_11733];
      /* unrolling loop of 1 */
      {
        int idxAcc11734 = (int)0;
        output[idxAcc11734 + (2 * l_id_11733)] = x11518;
      }
      
      {
        int idx11735 = (int)0;
        x11518 = e10918[idx11735 + (2 * l_id_11733)] + x11518;
      }
      
      output[1 + (2 * l_id_11733)] = x11518;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(4, 1, 1)))
void kernel_25600000_128_4_2(global float* restrict output, const global float* restrict e11736,__global float* d_block_sums){
__local float x12252[64];

__local float x12266[32];

__local float x12229[16];

__local float x12286[16];

__local float x12206[32];

__local float x12306[64];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_12344 = get_local_id(0); l_id_12344 < 64; l_id_12344 = 4 + l_id_12344) {
    /* oclReduceSeq */
    {
      float x12319;
      x12319 = 0.0f;
      for (int i_12345 = 0; i_12345 < 2; i_12345 = 1 + i_12345) {
        x12319 = x12319 + e11736[i_12345 + (2 * l_id_12344)];
      }
      
      x12306[l_id_12344] = x12319;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_12346 = get_local_id(0); l_id_12346 < 32; l_id_12346 = 4 + l_id_12346) {
    /* oclReduceSeq */
    {
      float x12299;
      x12299 = 0.0f;
      for (int i_12347 = 0; i_12347 < 2; i_12347 = 1 + i_12347) {
        x12299 = x12299 + x12306[i_12347 + (2 * l_id_12346)];
      }
      
      x12286[l_id_12346] = x12299;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_12348 = get_local_id(0); l_id_12348 < 16; l_id_12348 = 4 + l_id_12348) {
    /* oclReduceSeq */
    {
      float x12279;
      x12279 = 0.0f;
      for (int i_12349 = 0; i_12349 < 2; i_12349 = 1 + i_12349) {
        x12279 = x12279 + x12286[i_12349 + (2 * l_id_12348)];
      }
      
      x12266[l_id_12348] = x12279;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x12262;
    x12262 = 0.0f;
    /* unrolling loop of 15 */
    {
      int idxAcc12350 = (int)0;
      x12252[idxAcc12350] = x12262;
    }
    
    {
      int idx12351 = (int)0;
      x12262 = x12266[idx12351] + x12262;
    }
    
    {
      int idxAcc12352 = (int)1;
      x12252[idxAcc12352] = x12262;
    }
    
    {
      int idx12353 = (int)1;
      x12262 = x12266[idx12353] + x12262;
    }
    
    {
      int idxAcc12354 = (int)2;
      x12252[idxAcc12354] = x12262;
    }
    
    {
      int idx12355 = (int)2;
      x12262 = x12266[idx12355] + x12262;
    }
    
    {
      int idxAcc12356 = (int)3;
      x12252[idxAcc12356] = x12262;
    }
    
    {
      int idx12357 = (int)3;
      x12262 = x12266[idx12357] + x12262;
    }
    
    {
      int idxAcc12358 = (int)4;
      x12252[idxAcc12358] = x12262;
    }
    
    {
      int idx12359 = (int)4;
      x12262 = x12266[idx12359] + x12262;
    }
    
    {
      int idxAcc12360 = (int)5;
      x12252[idxAcc12360] = x12262;
    }
    
    {
      int idx12361 = (int)5;
      x12262 = x12266[idx12361] + x12262;
    }
    
    {
      int idxAcc12362 = (int)6;
      x12252[idxAcc12362] = x12262;
    }
    
    {
      int idx12363 = (int)6;
      x12262 = x12266[idx12363] + x12262;
    }
    
    {
      int idxAcc12364 = (int)7;
      x12252[idxAcc12364] = x12262;
    }
    
    {
      int idx12365 = (int)7;
      x12262 = x12266[idx12365] + x12262;
    }
    
    {
      int idxAcc12366 = (int)8;
      x12252[idxAcc12366] = x12262;
    }
    
    {
      int idx12367 = (int)8;
      x12262 = x12266[idx12367] + x12262;
    }
    
    {
      int idxAcc12368 = (int)9;
      x12252[idxAcc12368] = x12262;
    }
    
    {
      int idx12369 = (int)9;
      x12262 = x12266[idx12369] + x12262;
    }
    
    {
      int idxAcc12370 = (int)10;
      x12252[idxAcc12370] = x12262;
    }
    
    {
      int idx12371 = (int)10;
      x12262 = x12266[idx12371] + x12262;
    }
    
    {
      int idxAcc12372 = (int)11;
      x12252[idxAcc12372] = x12262;
    }
    
    {
      int idx12373 = (int)11;
      x12262 = x12266[idx12373] + x12262;
    }
    
    {
      int idxAcc12374 = (int)12;
      x12252[idxAcc12374] = x12262;
    }
    
    {
      int idx12375 = (int)12;
      x12262 = x12266[idx12375] + x12262;
    }
    
    {
      int idxAcc12376 = (int)13;
      x12252[idxAcc12376] = x12262;
    }
    
    {
      int idx12377 = (int)13;
      x12262 = x12266[idx12377] + x12262;
    }
    
    {
      int idxAcc12378 = (int)14;
      x12252[idxAcc12378] = x12262;
    }
    
    {
      int idx12379 = (int)14;
      x12262 = x12266[idx12379] + x12262;
    }
    
    x12252[15] = x12262;
  }
  
  /* mapLocal */
  for (int l_id_12380 = get_local_id(0); l_id_12380 < 16; l_id_12380 = 4 + l_id_12380) {
    /* oclScanSeq */
    {
      float x12242;
      x12242 = x12252[l_id_12380];
      /* unrolling loop of 1 */
      {
        int idxAcc12381 = (int)0;
        x12229[idxAcc12381 + (2 * l_id_12380)] = x12242;
      }
      
      {
        int idx12382 = (int)0;
        x12242 = x12286[idx12382 + (2 * l_id_12380)] + x12242;
      }
      
      x12229[1 + (2 * l_id_12380)] = x12242;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_12383 = get_local_id(0); l_id_12383 < 32; l_id_12383 = 4 + l_id_12383) {
    /* oclScanSeq */
    {
      float x12219;
      x12219 = x12229[l_id_12383];
      /* unrolling loop of 1 */
      {
        int idxAcc12384 = (int)0;
        x12206[idxAcc12384 + (2 * l_id_12383)] = x12219;
      }
      
      {
        int idx12385 = (int)0;
        x12219 = x12306[idx12385 + (2 * l_id_12383)] + x12219;
      }
      
      x12206[1 + (2 * l_id_12383)] = x12219;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_12386 = get_local_id(0); l_id_12386 < 64; l_id_12386 = 4 + l_id_12386) {
    /* oclScanSeq */
    {
      float x12196;
      x12196 = x12206[l_id_12386];
      /* unrolling loop of 1 */
      {
        int idxAcc12387 = (int)0;
        output[idxAcc12387 + (2 * l_id_12386)] = x12196;
      }
      
      {
        int idx12388 = (int)0;
        x12196 = e11736[idx12388 + (2 * l_id_12386)] + x12196;
      }
      
      output[1 + (2 * l_id_12386)] = x12196;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(128, 1, 1)))
void kernel_25600000_256_0_2(global float* restrict output, const global float* restrict e12389,__global float* d_block_sums){
__local float x13720[128];

__local float x13734[64];

__local float x13697[32];

__local float x13754[16];

__local float x13674[8];

__local float x13774[4];

__local float x13651[2];

__local float x13794[1];

__local float x13628[1];

__local float x13814[2];

__local float x13605[4];

__local float x13834[8];

__local float x13582[16];

__local float x13854[32];

__local float x13559[64];

__local float x13874[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_13902 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x13887;
    x13887 = 0.0f;
    for (int i_13903 = 0; i_13903 < 2; i_13903 = 1 + i_13903) {
      x13887 = x13887 + e12389[i_13903 + (2 * l_id_13902)];
    }
    
    x13874[l_id_13902] = x13887;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_13904 = get_local_id(0); l_id_13904 < 64; l_id_13904 = 128 + l_id_13904) {
    /* oclReduceSeq */
    {
      float x13867;
      x13867 = 0.0f;
      for (int i_13905 = 0; i_13905 < 2; i_13905 = 1 + i_13905) {
        x13867 = x13867 + x13874[i_13905 + (2 * l_id_13904)];
      }
      
      x13854[l_id_13904] = x13867;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_13906 = get_local_id(0); l_id_13906 < 32; l_id_13906 = 128 + l_id_13906) {
    /* oclReduceSeq */
    {
      float x13847;
      x13847 = 0.0f;
      for (int i_13907 = 0; i_13907 < 2; i_13907 = 1 + i_13907) {
        x13847 = x13847 + x13854[i_13907 + (2 * l_id_13906)];
      }
      
      x13834[l_id_13906] = x13847;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_13908 = get_local_id(0); l_id_13908 < 16; l_id_13908 = 128 + l_id_13908) {
    /* oclReduceSeq */
    {
      float x13827;
      x13827 = 0.0f;
      for (int i_13909 = 0; i_13909 < 2; i_13909 = 1 + i_13909) {
        x13827 = x13827 + x13834[i_13909 + (2 * l_id_13908)];
      }
      
      x13814[l_id_13908] = x13827;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_13910 = get_local_id(0); l_id_13910 < 8; l_id_13910 = 128 + l_id_13910) {
    /* oclReduceSeq */
    {
      float x13807;
      x13807 = 0.0f;
      for (int i_13911 = 0; i_13911 < 2; i_13911 = 1 + i_13911) {
        x13807 = x13807 + x13814[i_13911 + (2 * l_id_13910)];
      }
      
      x13794[l_id_13910] = x13807;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_13912 = get_local_id(0); l_id_13912 < 4; l_id_13912 = 128 + l_id_13912) {
    /* oclReduceSeq */
    {
      float x13787;
      x13787 = 0.0f;
      for (int i_13913 = 0; i_13913 < 2; i_13913 = 1 + i_13913) {
        x13787 = x13787 + x13794[i_13913 + (2 * l_id_13912)];
      }
      
      x13774[l_id_13912] = x13787;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_13914 = get_local_id(0); l_id_13914 < 2; l_id_13914 = 128 + l_id_13914) {
    /* oclReduceSeq */
    {
      float x13767;
      x13767 = 0.0f;
      for (int i_13915 = 0; i_13915 < 2; i_13915 = 1 + i_13915) {
        x13767 = x13767 + x13774[i_13915 + (2 * l_id_13914)];
      }
      
      x13754[l_id_13914] = x13767;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_13916 = get_local_id(0); l_id_13916 < 1; l_id_13916 = 128 + l_id_13916) {
    /* oclReduceSeq */
    {
      float x13747;
      x13747 = 0.0f;
      for (int i_13917 = 0; i_13917 < 2; i_13917 = 1 + i_13917) {
        x13747 = x13747 + x13754[i_13917 + (2 * l_id_13916)];
      }
      
      x13734[l_id_13916] = x13747;
    }
    
  }
  
  /* oclScanSeq */
  {
    float x13730;
    x13730 = 0.0f;
    /* unrolling loop of 0 */
    x13720[0] = x13730;
  }
  
  /* mapLocal */
  for (int l_id_13918 = get_local_id(0); l_id_13918 < 1; l_id_13918 = 128 + l_id_13918) {
    /* oclScanSeq */
    {
      float x13710;
      x13710 = x13720[l_id_13918];
      /* unrolling loop of 1 */
      {
        int idxAcc13919 = (int)0;
        x13697[idxAcc13919 + (2 * l_id_13918)] = x13710;
      }
      
      {
        int idx13920 = (int)0;
        x13710 = x13754[idx13920 + (2 * l_id_13918)] + x13710;
      }
      
      x13697[1 + (2 * l_id_13918)] = x13710;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_13921 = get_local_id(0); l_id_13921 < 2; l_id_13921 = 128 + l_id_13921) {
    /* oclScanSeq */
    {
      float x13687;
      x13687 = x13697[l_id_13921];
      /* unrolling loop of 1 */
      {
        int idxAcc13922 = (int)0;
        x13674[idxAcc13922 + (2 * l_id_13921)] = x13687;
      }
      
      {
        int idx13923 = (int)0;
        x13687 = x13774[idx13923 + (2 * l_id_13921)] + x13687;
      }
      
      x13674[1 + (2 * l_id_13921)] = x13687;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_13924 = get_local_id(0); l_id_13924 < 4; l_id_13924 = 128 + l_id_13924) {
    /* oclScanSeq */
    {
      float x13664;
      x13664 = x13674[l_id_13924];
      /* unrolling loop of 1 */
      {
        int idxAcc13925 = (int)0;
        x13651[idxAcc13925 + (2 * l_id_13924)] = x13664;
      }
      
      {
        int idx13926 = (int)0;
        x13664 = x13794[idx13926 + (2 * l_id_13924)] + x13664;
      }
      
      x13651[1 + (2 * l_id_13924)] = x13664;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_13927 = get_local_id(0); l_id_13927 < 8; l_id_13927 = 128 + l_id_13927) {
    /* oclScanSeq */
    {
      float x13641;
      x13641 = x13651[l_id_13927];
      /* unrolling loop of 1 */
      {
        int idxAcc13928 = (int)0;
        x13628[idxAcc13928 + (2 * l_id_13927)] = x13641;
      }
      
      {
        int idx13929 = (int)0;
        x13641 = x13814[idx13929 + (2 * l_id_13927)] + x13641;
      }
      
      x13628[1 + (2 * l_id_13927)] = x13641;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_13930 = get_local_id(0); l_id_13930 < 16; l_id_13930 = 128 + l_id_13930) {
    /* oclScanSeq */
    {
      float x13618;
      x13618 = x13628[l_id_13930];
      /* unrolling loop of 1 */
      {
        int idxAcc13931 = (int)0;
        x13605[idxAcc13931 + (2 * l_id_13930)] = x13618;
      }
      
      {
        int idx13932 = (int)0;
        x13618 = x13834[idx13932 + (2 * l_id_13930)] + x13618;
      }
      
      x13605[1 + (2 * l_id_13930)] = x13618;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_13933 = get_local_id(0); l_id_13933 < 32; l_id_13933 = 128 + l_id_13933) {
    /* oclScanSeq */
    {
      float x13595;
      x13595 = x13605[l_id_13933];
      /* unrolling loop of 1 */
      {
        int idxAcc13934 = (int)0;
        x13582[idxAcc13934 + (2 * l_id_13933)] = x13595;
      }
      
      {
        int idx13935 = (int)0;
        x13595 = x13854[idx13935 + (2 * l_id_13933)] + x13595;
      }
      
      x13582[1 + (2 * l_id_13933)] = x13595;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_13936 = get_local_id(0); l_id_13936 < 64; l_id_13936 = 128 + l_id_13936) {
    /* oclScanSeq */
    {
      float x13572;
      x13572 = x13582[l_id_13936];
      /* unrolling loop of 1 */
      {
        int idxAcc13937 = (int)0;
        x13559[idxAcc13937 + (2 * l_id_13936)] = x13572;
      }
      
      {
        int idx13938 = (int)0;
        x13572 = x13874[idx13938 + (2 * l_id_13936)] + x13572;
      }
      
      x13559[1 + (2 * l_id_13936)] = x13572;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_13939 = get_local_id(0);
  /* oclScanSeq */
  {
    float x13549;
    x13549 = x13559[l_id_13939];
    /* unrolling loop of 1 */
    {
      int idxAcc13940 = (int)0;
      output[idxAcc13940 + (2 * l_id_13939)] = x13549;
    }
    
    {
      int idx13941 = (int)0;
      x13549 = e12389[idx13941 + (2 * l_id_13939)] + x13549;
    }
    
    output[1 + (2 * l_id_13939)] = x13549;
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(64, 1, 1)))
void kernel_25600000_256_1_2(global float* restrict output, const global float* restrict e13942,__global float* d_block_sums){
__local float x15110[128];

__local float x15124[64];

__local float x15087[32];

__local float x15144[16];

__local float x15064[8];

__local float x15164[4];

__local float x15041[2];

__local float x15184[2];

__local float x15018[4];

__local float x15204[8];

__local float x14995[16];

__local float x15224[32];

__local float x14972[64];

__local float x15244[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_15272 = get_local_id(0); l_id_15272 < 128; l_id_15272 = 64 + l_id_15272) {
    /* oclReduceSeq */
    {
      float x15257;
      x15257 = 0.0f;
      for (int i_15273 = 0; i_15273 < 2; i_15273 = 1 + i_15273) {
        x15257 = x15257 + e13942[i_15273 + (2 * l_id_15272)];
      }
      
      x15244[l_id_15272] = x15257;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_15274 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x15237;
    x15237 = 0.0f;
    for (int i_15275 = 0; i_15275 < 2; i_15275 = 1 + i_15275) {
      x15237 = x15237 + x15244[i_15275 + (2 * l_id_15274)];
    }
    
    x15224[l_id_15274] = x15237;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_15276 = get_local_id(0); l_id_15276 < 32; l_id_15276 = 64 + l_id_15276) {
    /* oclReduceSeq */
    {
      float x15217;
      x15217 = 0.0f;
      for (int i_15277 = 0; i_15277 < 2; i_15277 = 1 + i_15277) {
        x15217 = x15217 + x15224[i_15277 + (2 * l_id_15276)];
      }
      
      x15204[l_id_15276] = x15217;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_15278 = get_local_id(0); l_id_15278 < 16; l_id_15278 = 64 + l_id_15278) {
    /* oclReduceSeq */
    {
      float x15197;
      x15197 = 0.0f;
      for (int i_15279 = 0; i_15279 < 2; i_15279 = 1 + i_15279) {
        x15197 = x15197 + x15204[i_15279 + (2 * l_id_15278)];
      }
      
      x15184[l_id_15278] = x15197;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_15280 = get_local_id(0); l_id_15280 < 8; l_id_15280 = 64 + l_id_15280) {
    /* oclReduceSeq */
    {
      float x15177;
      x15177 = 0.0f;
      for (int i_15281 = 0; i_15281 < 2; i_15281 = 1 + i_15281) {
        x15177 = x15177 + x15184[i_15281 + (2 * l_id_15280)];
      }
      
      x15164[l_id_15280] = x15177;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_15282 = get_local_id(0); l_id_15282 < 4; l_id_15282 = 64 + l_id_15282) {
    /* oclReduceSeq */
    {
      float x15157;
      x15157 = 0.0f;
      for (int i_15283 = 0; i_15283 < 2; i_15283 = 1 + i_15283) {
        x15157 = x15157 + x15164[i_15283 + (2 * l_id_15282)];
      }
      
      x15144[l_id_15282] = x15157;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_15284 = get_local_id(0); l_id_15284 < 2; l_id_15284 = 64 + l_id_15284) {
    /* oclReduceSeq */
    {
      float x15137;
      x15137 = 0.0f;
      for (int i_15285 = 0; i_15285 < 2; i_15285 = 1 + i_15285) {
        x15137 = x15137 + x15144[i_15285 + (2 * l_id_15284)];
      }
      
      x15124[l_id_15284] = x15137;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x15120;
    x15120 = 0.0f;
    /* unrolling loop of 1 */
    {
      int idxAcc15286 = (int)0;
      x15110[idxAcc15286] = x15120;
    }
    
    {
      int idx15287 = (int)0;
      x15120 = x15124[idx15287] + x15120;
    }
    
    x15110[1] = x15120;
  }
  
  /* mapLocal */
  for (int l_id_15288 = get_local_id(0); l_id_15288 < 2; l_id_15288 = 64 + l_id_15288) {
    /* oclScanSeq */
    {
      float x15100;
      x15100 = x15110[l_id_15288];
      /* unrolling loop of 1 */
      {
        int idxAcc15289 = (int)0;
        x15087[idxAcc15289 + (2 * l_id_15288)] = x15100;
      }
      
      {
        int idx15290 = (int)0;
        x15100 = x15144[idx15290 + (2 * l_id_15288)] + x15100;
      }
      
      x15087[1 + (2 * l_id_15288)] = x15100;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_15291 = get_local_id(0); l_id_15291 < 4; l_id_15291 = 64 + l_id_15291) {
    /* oclScanSeq */
    {
      float x15077;
      x15077 = x15087[l_id_15291];
      /* unrolling loop of 1 */
      {
        int idxAcc15292 = (int)0;
        x15064[idxAcc15292 + (2 * l_id_15291)] = x15077;
      }
      
      {
        int idx15293 = (int)0;
        x15077 = x15164[idx15293 + (2 * l_id_15291)] + x15077;
      }
      
      x15064[1 + (2 * l_id_15291)] = x15077;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_15294 = get_local_id(0); l_id_15294 < 8; l_id_15294 = 64 + l_id_15294) {
    /* oclScanSeq */
    {
      float x15054;
      x15054 = x15064[l_id_15294];
      /* unrolling loop of 1 */
      {
        int idxAcc15295 = (int)0;
        x15041[idxAcc15295 + (2 * l_id_15294)] = x15054;
      }
      
      {
        int idx15296 = (int)0;
        x15054 = x15184[idx15296 + (2 * l_id_15294)] + x15054;
      }
      
      x15041[1 + (2 * l_id_15294)] = x15054;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_15297 = get_local_id(0); l_id_15297 < 16; l_id_15297 = 64 + l_id_15297) {
    /* oclScanSeq */
    {
      float x15031;
      x15031 = x15041[l_id_15297];
      /* unrolling loop of 1 */
      {
        int idxAcc15298 = (int)0;
        x15018[idxAcc15298 + (2 * l_id_15297)] = x15031;
      }
      
      {
        int idx15299 = (int)0;
        x15031 = x15204[idx15299 + (2 * l_id_15297)] + x15031;
      }
      
      x15018[1 + (2 * l_id_15297)] = x15031;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_15300 = get_local_id(0); l_id_15300 < 32; l_id_15300 = 64 + l_id_15300) {
    /* oclScanSeq */
    {
      float x15008;
      x15008 = x15018[l_id_15300];
      /* unrolling loop of 1 */
      {
        int idxAcc15301 = (int)0;
        x14995[idxAcc15301 + (2 * l_id_15300)] = x15008;
      }
      
      {
        int idx15302 = (int)0;
        x15008 = x15224[idx15302 + (2 * l_id_15300)] + x15008;
      }
      
      x14995[1 + (2 * l_id_15300)] = x15008;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_15303 = get_local_id(0);
  /* oclScanSeq */
  {
    float x14985;
    x14985 = x14995[l_id_15303];
    /* unrolling loop of 1 */
    {
      int idxAcc15304 = (int)0;
      x14972[idxAcc15304 + (2 * l_id_15303)] = x14985;
    }
    
    {
      int idx15305 = (int)0;
      x14985 = x15244[idx15305 + (2 * l_id_15303)] + x14985;
    }
    
    x14972[1 + (2 * l_id_15303)] = x14985;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_15306 = get_local_id(0); l_id_15306 < 128; l_id_15306 = 64 + l_id_15306) {
    /* oclScanSeq */
    {
      float x14962;
      x14962 = x14972[l_id_15306];
      /* unrolling loop of 1 */
      {
        int idxAcc15307 = (int)0;
        output[idxAcc15307 + (2 * l_id_15306)] = x14962;
      }
      
      {
        int idx15308 = (int)0;
        x14962 = e13942[idx15308 + (2 * l_id_15306)] + x14962;
      }
      
      output[1 + (2 * l_id_15306)] = x14962;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(32, 1, 1)))
void kernel_25600000_256_2_2(global float* restrict output, const global float* restrict e15309,__global float* d_block_sums){
__local float x16314[128];

__local float x16328[64];

__local float x16291[32];

__local float x16348[16];

__local float x16268[8];

__local float x16368[4];

__local float x16245[4];

__local float x16388[8];

__local float x16222[16];

__local float x16408[32];

__local float x16199[64];

__local float x16428[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_16457 = get_local_id(0); l_id_16457 < 128; l_id_16457 = 32 + l_id_16457) {
    /* oclReduceSeq */
    {
      float x16441;
      x16441 = 0.0f;
      for (int i_16458 = 0; i_16458 < 2; i_16458 = 1 + i_16458) {
        x16441 = x16441 + e15309[i_16458 + (2 * l_id_16457)];
      }
      
      x16428[l_id_16457] = x16441;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_16459 = get_local_id(0); l_id_16459 < 64; l_id_16459 = 32 + l_id_16459) {
    /* oclReduceSeq */
    {
      float x16421;
      x16421 = 0.0f;
      for (int i_16460 = 0; i_16460 < 2; i_16460 = 1 + i_16460) {
        x16421 = x16421 + x16428[i_16460 + (2 * l_id_16459)];
      }
      
      x16408[l_id_16459] = x16421;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_16461 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x16401;
    x16401 = 0.0f;
    for (int i_16462 = 0; i_16462 < 2; i_16462 = 1 + i_16462) {
      x16401 = x16401 + x16408[i_16462 + (2 * l_id_16461)];
    }
    
    x16388[l_id_16461] = x16401;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_16463 = get_local_id(0); l_id_16463 < 16; l_id_16463 = 32 + l_id_16463) {
    /* oclReduceSeq */
    {
      float x16381;
      x16381 = 0.0f;
      for (int i_16464 = 0; i_16464 < 2; i_16464 = 1 + i_16464) {
        x16381 = x16381 + x16388[i_16464 + (2 * l_id_16463)];
      }
      
      x16368[l_id_16463] = x16381;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_16465 = get_local_id(0); l_id_16465 < 8; l_id_16465 = 32 + l_id_16465) {
    /* oclReduceSeq */
    {
      float x16361;
      x16361 = 0.0f;
      for (int i_16466 = 0; i_16466 < 2; i_16466 = 1 + i_16466) {
        x16361 = x16361 + x16368[i_16466 + (2 * l_id_16465)];
      }
      
      x16348[l_id_16465] = x16361;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_16467 = get_local_id(0); l_id_16467 < 4; l_id_16467 = 32 + l_id_16467) {
    /* oclReduceSeq */
    {
      float x16341;
      x16341 = 0.0f;
      for (int i_16468 = 0; i_16468 < 2; i_16468 = 1 + i_16468) {
        x16341 = x16341 + x16348[i_16468 + (2 * l_id_16467)];
      }
      
      x16328[l_id_16467] = x16341;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x16324;
    x16324 = 0.0f;
    /* unrolling loop of 3 */
    {
      int idxAcc16469 = (int)0;
      x16314[idxAcc16469] = x16324;
    }
    
    {
      int idx16470 = (int)0;
      x16324 = x16328[idx16470] + x16324;
    }
    
    {
      int idxAcc16471 = (int)1;
      x16314[idxAcc16471] = x16324;
    }
    
    {
      int idx16472 = (int)1;
      x16324 = x16328[idx16472] + x16324;
    }
    
    {
      int idxAcc16473 = (int)2;
      x16314[idxAcc16473] = x16324;
    }
    
    {
      int idx16474 = (int)2;
      x16324 = x16328[idx16474] + x16324;
    }
    
    x16314[3] = x16324;
  }
  
  /* mapLocal */
  for (int l_id_16475 = get_local_id(0); l_id_16475 < 4; l_id_16475 = 32 + l_id_16475) {
    /* oclScanSeq */
    {
      float x16304;
      x16304 = x16314[l_id_16475];
      /* unrolling loop of 1 */
      {
        int idxAcc16476 = (int)0;
        x16291[idxAcc16476 + (2 * l_id_16475)] = x16304;
      }
      
      {
        int idx16477 = (int)0;
        x16304 = x16348[idx16477 + (2 * l_id_16475)] + x16304;
      }
      
      x16291[1 + (2 * l_id_16475)] = x16304;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_16478 = get_local_id(0); l_id_16478 < 8; l_id_16478 = 32 + l_id_16478) {
    /* oclScanSeq */
    {
      float x16281;
      x16281 = x16291[l_id_16478];
      /* unrolling loop of 1 */
      {
        int idxAcc16479 = (int)0;
        x16268[idxAcc16479 + (2 * l_id_16478)] = x16281;
      }
      
      {
        int idx16480 = (int)0;
        x16281 = x16368[idx16480 + (2 * l_id_16478)] + x16281;
      }
      
      x16268[1 + (2 * l_id_16478)] = x16281;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_16481 = get_local_id(0); l_id_16481 < 16; l_id_16481 = 32 + l_id_16481) {
    /* oclScanSeq */
    {
      float x16258;
      x16258 = x16268[l_id_16481];
      /* unrolling loop of 1 */
      {
        int idxAcc16482 = (int)0;
        x16245[idxAcc16482 + (2 * l_id_16481)] = x16258;
      }
      
      {
        int idx16483 = (int)0;
        x16258 = x16388[idx16483 + (2 * l_id_16481)] + x16258;
      }
      
      x16245[1 + (2 * l_id_16481)] = x16258;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_16484 = get_local_id(0);
  /* oclScanSeq */
  {
    float x16235;
    x16235 = x16245[l_id_16484];
    /* unrolling loop of 1 */
    {
      int idxAcc16485 = (int)0;
      x16222[idxAcc16485 + (2 * l_id_16484)] = x16235;
    }
    
    {
      int idx16486 = (int)0;
      x16235 = x16408[idx16486 + (2 * l_id_16484)] + x16235;
    }
    
    x16222[1 + (2 * l_id_16484)] = x16235;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_16487 = get_local_id(0); l_id_16487 < 64; l_id_16487 = 32 + l_id_16487) {
    /* oclScanSeq */
    {
      float x16212;
      x16212 = x16222[l_id_16487];
      /* unrolling loop of 1 */
      {
        int idxAcc16488 = (int)0;
        x16199[idxAcc16488 + (2 * l_id_16487)] = x16212;
      }
      
      {
        int idx16489 = (int)0;
        x16212 = x16428[idx16489 + (2 * l_id_16487)] + x16212;
      }
      
      x16199[1 + (2 * l_id_16487)] = x16212;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_16490 = get_local_id(0); l_id_16490 < 128; l_id_16490 = 32 + l_id_16490) {
    /* oclScanSeq */
    {
      float x16189;
      x16189 = x16199[l_id_16490];
      /* unrolling loop of 1 */
      {
        int idxAcc16491 = (int)0;
        output[idxAcc16491 + (2 * l_id_16490)] = x16189;
      }
      
      {
        int idx16492 = (int)0;
        x16189 = e15309[idx16492 + (2 * l_id_16490)] + x16189;
      }
      
      output[1 + (2 * l_id_16490)] = x16189;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(16, 1, 1)))
void kernel_25600000_256_3_2(global float* restrict output, const global float* restrict e16493,__global float* d_block_sums){
__local float x17335[128];

__local float x17349[64];

__local float x17312[32];

__local float x17369[16];

__local float x17289[8];

__local float x17389[8];

__local float x17266[16];

__local float x17409[32];

__local float x17243[64];

__local float x17429[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_17461 = get_local_id(0); l_id_17461 < 128; l_id_17461 = 16 + l_id_17461) {
    /* oclReduceSeq */
    {
      float x17442;
      x17442 = 0.0f;
      for (int i_17462 = 0; i_17462 < 2; i_17462 = 1 + i_17462) {
        x17442 = x17442 + e16493[i_17462 + (2 * l_id_17461)];
      }
      
      x17429[l_id_17461] = x17442;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_17463 = get_local_id(0); l_id_17463 < 64; l_id_17463 = 16 + l_id_17463) {
    /* oclReduceSeq */
    {
      float x17422;
      x17422 = 0.0f;
      for (int i_17464 = 0; i_17464 < 2; i_17464 = 1 + i_17464) {
        x17422 = x17422 + x17429[i_17464 + (2 * l_id_17463)];
      }
      
      x17409[l_id_17463] = x17422;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_17465 = get_local_id(0); l_id_17465 < 32; l_id_17465 = 16 + l_id_17465) {
    /* oclReduceSeq */
    {
      float x17402;
      x17402 = 0.0f;
      for (int i_17466 = 0; i_17466 < 2; i_17466 = 1 + i_17466) {
        x17402 = x17402 + x17409[i_17466 + (2 * l_id_17465)];
      }
      
      x17389[l_id_17465] = x17402;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_17467 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x17382;
    x17382 = 0.0f;
    for (int i_17468 = 0; i_17468 < 2; i_17468 = 1 + i_17468) {
      x17382 = x17382 + x17389[i_17468 + (2 * l_id_17467)];
    }
    
    x17369[l_id_17467] = x17382;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_17469 = get_local_id(0); l_id_17469 < 8; l_id_17469 = 16 + l_id_17469) {
    /* oclReduceSeq */
    {
      float x17362;
      x17362 = 0.0f;
      for (int i_17470 = 0; i_17470 < 2; i_17470 = 1 + i_17470) {
        x17362 = x17362 + x17369[i_17470 + (2 * l_id_17469)];
      }
      
      x17349[l_id_17469] = x17362;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x17345;
    x17345 = 0.0f;
    /* unrolling loop of 7 */
    {
      int idxAcc17471 = (int)0;
      x17335[idxAcc17471] = x17345;
    }
    
    {
      int idx17472 = (int)0;
      x17345 = x17349[idx17472] + x17345;
    }
    
    {
      int idxAcc17473 = (int)1;
      x17335[idxAcc17473] = x17345;
    }
    
    {
      int idx17474 = (int)1;
      x17345 = x17349[idx17474] + x17345;
    }
    
    {
      int idxAcc17475 = (int)2;
      x17335[idxAcc17475] = x17345;
    }
    
    {
      int idx17476 = (int)2;
      x17345 = x17349[idx17476] + x17345;
    }
    
    {
      int idxAcc17477 = (int)3;
      x17335[idxAcc17477] = x17345;
    }
    
    {
      int idx17478 = (int)3;
      x17345 = x17349[idx17478] + x17345;
    }
    
    {
      int idxAcc17479 = (int)4;
      x17335[idxAcc17479] = x17345;
    }
    
    {
      int idx17480 = (int)4;
      x17345 = x17349[idx17480] + x17345;
    }
    
    {
      int idxAcc17481 = (int)5;
      x17335[idxAcc17481] = x17345;
    }
    
    {
      int idx17482 = (int)5;
      x17345 = x17349[idx17482] + x17345;
    }
    
    {
      int idxAcc17483 = (int)6;
      x17335[idxAcc17483] = x17345;
    }
    
    {
      int idx17484 = (int)6;
      x17345 = x17349[idx17484] + x17345;
    }
    
    x17335[7] = x17345;
  }
  
  /* mapLocal */
  for (int l_id_17485 = get_local_id(0); l_id_17485 < 8; l_id_17485 = 16 + l_id_17485) {
    /* oclScanSeq */
    {
      float x17325;
      x17325 = x17335[l_id_17485];
      /* unrolling loop of 1 */
      {
        int idxAcc17486 = (int)0;
        x17312[idxAcc17486 + (2 * l_id_17485)] = x17325;
      }
      
      {
        int idx17487 = (int)0;
        x17325 = x17369[idx17487 + (2 * l_id_17485)] + x17325;
      }
      
      x17312[1 + (2 * l_id_17485)] = x17325;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_17488 = get_local_id(0);
  /* oclScanSeq */
  {
    float x17302;
    x17302 = x17312[l_id_17488];
    /* unrolling loop of 1 */
    {
      int idxAcc17489 = (int)0;
      x17289[idxAcc17489 + (2 * l_id_17488)] = x17302;
    }
    
    {
      int idx17490 = (int)0;
      x17302 = x17389[idx17490 + (2 * l_id_17488)] + x17302;
    }
    
    x17289[1 + (2 * l_id_17488)] = x17302;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_17491 = get_local_id(0); l_id_17491 < 32; l_id_17491 = 16 + l_id_17491) {
    /* oclScanSeq */
    {
      float x17279;
      x17279 = x17289[l_id_17491];
      /* unrolling loop of 1 */
      {
        int idxAcc17492 = (int)0;
        x17266[idxAcc17492 + (2 * l_id_17491)] = x17279;
      }
      
      {
        int idx17493 = (int)0;
        x17279 = x17409[idx17493 + (2 * l_id_17491)] + x17279;
      }
      
      x17266[1 + (2 * l_id_17491)] = x17279;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_17494 = get_local_id(0); l_id_17494 < 64; l_id_17494 = 16 + l_id_17494) {
    /* oclScanSeq */
    {
      float x17256;
      x17256 = x17266[l_id_17494];
      /* unrolling loop of 1 */
      {
        int idxAcc17495 = (int)0;
        x17243[idxAcc17495 + (2 * l_id_17494)] = x17256;
      }
      
      {
        int idx17496 = (int)0;
        x17256 = x17429[idx17496 + (2 * l_id_17494)] + x17256;
      }
      
      x17243[1 + (2 * l_id_17494)] = x17256;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_17497 = get_local_id(0); l_id_17497 < 128; l_id_17497 = 16 + l_id_17497) {
    /* oclScanSeq */
    {
      float x17233;
      x17233 = x17243[l_id_17497];
      /* unrolling loop of 1 */
      {
        int idxAcc17498 = (int)0;
        output[idxAcc17498 + (2 * l_id_17497)] = x17233;
      }
      
      {
        int idx17499 = (int)0;
        x17233 = e16493[idx17499 + (2 * l_id_17497)] + x17233;
      }
      
      output[1 + (2 * l_id_17497)] = x17233;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(8, 1, 1)))
void kernel_25600000_256_4_2(global float* restrict output, const global float* restrict e17500,__global float* d_block_sums){
__local float x18179[128];

__local float x18193[64];

__local float x18156[32];

__local float x18213[16];

__local float x18133[16];

__local float x18233[32];

__local float x18110[64];

__local float x18253[128];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_18292 = get_local_id(0); l_id_18292 < 128; l_id_18292 = 8 + l_id_18292) {
    /* oclReduceSeq */
    {
      float x18266;
      x18266 = 0.0f;
      for (int i_18293 = 0; i_18293 < 2; i_18293 = 1 + i_18293) {
        x18266 = x18266 + e17500[i_18293 + (2 * l_id_18292)];
      }
      
      x18253[l_id_18292] = x18266;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_18294 = get_local_id(0); l_id_18294 < 64; l_id_18294 = 8 + l_id_18294) {
    /* oclReduceSeq */
    {
      float x18246;
      x18246 = 0.0f;
      for (int i_18295 = 0; i_18295 < 2; i_18295 = 1 + i_18295) {
        x18246 = x18246 + x18253[i_18295 + (2 * l_id_18294)];
      }
      
      x18233[l_id_18294] = x18246;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_18296 = get_local_id(0); l_id_18296 < 32; l_id_18296 = 8 + l_id_18296) {
    /* oclReduceSeq */
    {
      float x18226;
      x18226 = 0.0f;
      for (int i_18297 = 0; i_18297 < 2; i_18297 = 1 + i_18297) {
        x18226 = x18226 + x18233[i_18297 + (2 * l_id_18296)];
      }
      
      x18213[l_id_18296] = x18226;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_18298 = get_local_id(0); l_id_18298 < 16; l_id_18298 = 8 + l_id_18298) {
    /* oclReduceSeq */
    {
      float x18206;
      x18206 = 0.0f;
      for (int i_18299 = 0; i_18299 < 2; i_18299 = 1 + i_18299) {
        x18206 = x18206 + x18213[i_18299 + (2 * l_id_18298)];
      }
      
      x18193[l_id_18298] = x18206;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x18189;
    x18189 = 0.0f;
    /* unrolling loop of 15 */
    {
      int idxAcc18300 = (int)0;
      x18179[idxAcc18300] = x18189;
    }
    
    {
      int idx18301 = (int)0;
      x18189 = x18193[idx18301] + x18189;
    }
    
    {
      int idxAcc18302 = (int)1;
      x18179[idxAcc18302] = x18189;
    }
    
    {
      int idx18303 = (int)1;
      x18189 = x18193[idx18303] + x18189;
    }
    
    {
      int idxAcc18304 = (int)2;
      x18179[idxAcc18304] = x18189;
    }
    
    {
      int idx18305 = (int)2;
      x18189 = x18193[idx18305] + x18189;
    }
    
    {
      int idxAcc18306 = (int)3;
      x18179[idxAcc18306] = x18189;
    }
    
    {
      int idx18307 = (int)3;
      x18189 = x18193[idx18307] + x18189;
    }
    
    {
      int idxAcc18308 = (int)4;
      x18179[idxAcc18308] = x18189;
    }
    
    {
      int idx18309 = (int)4;
      x18189 = x18193[idx18309] + x18189;
    }
    
    {
      int idxAcc18310 = (int)5;
      x18179[idxAcc18310] = x18189;
    }
    
    {
      int idx18311 = (int)5;
      x18189 = x18193[idx18311] + x18189;
    }
    
    {
      int idxAcc18312 = (int)6;
      x18179[idxAcc18312] = x18189;
    }
    
    {
      int idx18313 = (int)6;
      x18189 = x18193[idx18313] + x18189;
    }
    
    {
      int idxAcc18314 = (int)7;
      x18179[idxAcc18314] = x18189;
    }
    
    {
      int idx18315 = (int)7;
      x18189 = x18193[idx18315] + x18189;
    }
    
    {
      int idxAcc18316 = (int)8;
      x18179[idxAcc18316] = x18189;
    }
    
    {
      int idx18317 = (int)8;
      x18189 = x18193[idx18317] + x18189;
    }
    
    {
      int idxAcc18318 = (int)9;
      x18179[idxAcc18318] = x18189;
    }
    
    {
      int idx18319 = (int)9;
      x18189 = x18193[idx18319] + x18189;
    }
    
    {
      int idxAcc18320 = (int)10;
      x18179[idxAcc18320] = x18189;
    }
    
    {
      int idx18321 = (int)10;
      x18189 = x18193[idx18321] + x18189;
    }
    
    {
      int idxAcc18322 = (int)11;
      x18179[idxAcc18322] = x18189;
    }
    
    {
      int idx18323 = (int)11;
      x18189 = x18193[idx18323] + x18189;
    }
    
    {
      int idxAcc18324 = (int)12;
      x18179[idxAcc18324] = x18189;
    }
    
    {
      int idx18325 = (int)12;
      x18189 = x18193[idx18325] + x18189;
    }
    
    {
      int idxAcc18326 = (int)13;
      x18179[idxAcc18326] = x18189;
    }
    
    {
      int idx18327 = (int)13;
      x18189 = x18193[idx18327] + x18189;
    }
    
    {
      int idxAcc18328 = (int)14;
      x18179[idxAcc18328] = x18189;
    }
    
    {
      int idx18329 = (int)14;
      x18189 = x18193[idx18329] + x18189;
    }
    
    x18179[15] = x18189;
  }
  
  /* mapLocal */
  for (int l_id_18330 = get_local_id(0); l_id_18330 < 16; l_id_18330 = 8 + l_id_18330) {
    /* oclScanSeq */
    {
      float x18169;
      x18169 = x18179[l_id_18330];
      /* unrolling loop of 1 */
      {
        int idxAcc18331 = (int)0;
        x18156[idxAcc18331 + (2 * l_id_18330)] = x18169;
      }
      
      {
        int idx18332 = (int)0;
        x18169 = x18213[idx18332 + (2 * l_id_18330)] + x18169;
      }
      
      x18156[1 + (2 * l_id_18330)] = x18169;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_18333 = get_local_id(0); l_id_18333 < 32; l_id_18333 = 8 + l_id_18333) {
    /* oclScanSeq */
    {
      float x18146;
      x18146 = x18156[l_id_18333];
      /* unrolling loop of 1 */
      {
        int idxAcc18334 = (int)0;
        x18133[idxAcc18334 + (2 * l_id_18333)] = x18146;
      }
      
      {
        int idx18335 = (int)0;
        x18146 = x18233[idx18335 + (2 * l_id_18333)] + x18146;
      }
      
      x18133[1 + (2 * l_id_18333)] = x18146;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_18336 = get_local_id(0); l_id_18336 < 64; l_id_18336 = 8 + l_id_18336) {
    /* oclScanSeq */
    {
      float x18123;
      x18123 = x18133[l_id_18336];
      /* unrolling loop of 1 */
      {
        int idxAcc18337 = (int)0;
        x18110[idxAcc18337 + (2 * l_id_18336)] = x18123;
      }
      
      {
        int idx18338 = (int)0;
        x18123 = x18253[idx18338 + (2 * l_id_18336)] + x18123;
      }
      
      x18110[1 + (2 * l_id_18336)] = x18123;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_18339 = get_local_id(0); l_id_18339 < 128; l_id_18339 = 8 + l_id_18339) {
    /* oclScanSeq */
    {
      float x18100;
      x18100 = x18110[l_id_18339];
      /* unrolling loop of 1 */
      {
        int idxAcc18340 = (int)0;
        output[idxAcc18340 + (2 * l_id_18339)] = x18100;
      }
      
      {
        int idx18341 = (int)0;
        x18100 = e17500[idx18341 + (2 * l_id_18339)] + x18100;
      }
      
      output[1 + (2 * l_id_18339)] = x18100;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(256, 1, 1)))
void kernel_25600000_512_0_2(global float* restrict output, const global float* restrict e18342,__global float* d_block_sums){
__local float x19836[256];

__local float x19850[128];

__local float x19813[64];

__local float x19870[32];

__local float x19790[16];

__local float x19890[8];

__local float x19767[4];

__local float x19910[2];

__local float x19744[1];

__local float x19930[1];

__local float x19721[2];

__local float x19950[4];

__local float x19698[8];

__local float x19970[16];

__local float x19675[32];

__local float x19990[64];

__local float x19652[128];

__local float x20010[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_20039 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x20023;
    x20023 = 0.0f;
    for (int i_20040 = 0; i_20040 < 2; i_20040 = 1 + i_20040) {
      x20023 = x20023 + e18342[i_20040 + (2 * l_id_20039)];
    }
    
    x20010[l_id_20039] = x20023;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20041 = get_local_id(0); l_id_20041 < 128; l_id_20041 = 256 + l_id_20041) {
    /* oclReduceSeq */
    {
      float x20003;
      x20003 = 0.0f;
      for (int i_20042 = 0; i_20042 < 2; i_20042 = 1 + i_20042) {
        x20003 = x20003 + x20010[i_20042 + (2 * l_id_20041)];
      }
      
      x19990[l_id_20041] = x20003;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20043 = get_local_id(0); l_id_20043 < 64; l_id_20043 = 256 + l_id_20043) {
    /* oclReduceSeq */
    {
      float x19983;
      x19983 = 0.0f;
      for (int i_20044 = 0; i_20044 < 2; i_20044 = 1 + i_20044) {
        x19983 = x19983 + x19990[i_20044 + (2 * l_id_20043)];
      }
      
      x19970[l_id_20043] = x19983;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20045 = get_local_id(0); l_id_20045 < 32; l_id_20045 = 256 + l_id_20045) {
    /* oclReduceSeq */
    {
      float x19963;
      x19963 = 0.0f;
      for (int i_20046 = 0; i_20046 < 2; i_20046 = 1 + i_20046) {
        x19963 = x19963 + x19970[i_20046 + (2 * l_id_20045)];
      }
      
      x19950[l_id_20045] = x19963;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20047 = get_local_id(0); l_id_20047 < 16; l_id_20047 = 256 + l_id_20047) {
    /* oclReduceSeq */
    {
      float x19943;
      x19943 = 0.0f;
      for (int i_20048 = 0; i_20048 < 2; i_20048 = 1 + i_20048) {
        x19943 = x19943 + x19950[i_20048 + (2 * l_id_20047)];
      }
      
      x19930[l_id_20047] = x19943;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20049 = get_local_id(0); l_id_20049 < 8; l_id_20049 = 256 + l_id_20049) {
    /* oclReduceSeq */
    {
      float x19923;
      x19923 = 0.0f;
      for (int i_20050 = 0; i_20050 < 2; i_20050 = 1 + i_20050) {
        x19923 = x19923 + x19930[i_20050 + (2 * l_id_20049)];
      }
      
      x19910[l_id_20049] = x19923;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20051 = get_local_id(0); l_id_20051 < 4; l_id_20051 = 256 + l_id_20051) {
    /* oclReduceSeq */
    {
      float x19903;
      x19903 = 0.0f;
      for (int i_20052 = 0; i_20052 < 2; i_20052 = 1 + i_20052) {
        x19903 = x19903 + x19910[i_20052 + (2 * l_id_20051)];
      }
      
      x19890[l_id_20051] = x19903;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20053 = get_local_id(0); l_id_20053 < 2; l_id_20053 = 256 + l_id_20053) {
    /* oclReduceSeq */
    {
      float x19883;
      x19883 = 0.0f;
      for (int i_20054 = 0; i_20054 < 2; i_20054 = 1 + i_20054) {
        x19883 = x19883 + x19890[i_20054 + (2 * l_id_20053)];
      }
      
      x19870[l_id_20053] = x19883;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20055 = get_local_id(0); l_id_20055 < 1; l_id_20055 = 256 + l_id_20055) {
    /* oclReduceSeq */
    {
      float x19863;
      x19863 = 0.0f;
      for (int i_20056 = 0; i_20056 < 2; i_20056 = 1 + i_20056) {
        x19863 = x19863 + x19870[i_20056 + (2 * l_id_20055)];
      }
      
      x19850[l_id_20055] = x19863;
    }
    
  }
  
  /* oclScanSeq */
  {
    float x19846;
    x19846 = 0.0f;
    /* unrolling loop of 0 */
    x19836[0] = x19846;
  }
  
  /* mapLocal */
  for (int l_id_20057 = get_local_id(0); l_id_20057 < 1; l_id_20057 = 256 + l_id_20057) {
    /* oclScanSeq */
    {
      float x19826;
      x19826 = x19836[l_id_20057];
      /* unrolling loop of 1 */
      {
        int idxAcc20058 = (int)0;
        x19813[idxAcc20058 + (2 * l_id_20057)] = x19826;
      }
      
      {
        int idx20059 = (int)0;
        x19826 = x19870[idx20059 + (2 * l_id_20057)] + x19826;
      }
      
      x19813[1 + (2 * l_id_20057)] = x19826;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20060 = get_local_id(0); l_id_20060 < 2; l_id_20060 = 256 + l_id_20060) {
    /* oclScanSeq */
    {
      float x19803;
      x19803 = x19813[l_id_20060];
      /* unrolling loop of 1 */
      {
        int idxAcc20061 = (int)0;
        x19790[idxAcc20061 + (2 * l_id_20060)] = x19803;
      }
      
      {
        int idx20062 = (int)0;
        x19803 = x19890[idx20062 + (2 * l_id_20060)] + x19803;
      }
      
      x19790[1 + (2 * l_id_20060)] = x19803;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20063 = get_local_id(0); l_id_20063 < 4; l_id_20063 = 256 + l_id_20063) {
    /* oclScanSeq */
    {
      float x19780;
      x19780 = x19790[l_id_20063];
      /* unrolling loop of 1 */
      {
        int idxAcc20064 = (int)0;
        x19767[idxAcc20064 + (2 * l_id_20063)] = x19780;
      }
      
      {
        int idx20065 = (int)0;
        x19780 = x19910[idx20065 + (2 * l_id_20063)] + x19780;
      }
      
      x19767[1 + (2 * l_id_20063)] = x19780;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20066 = get_local_id(0); l_id_20066 < 8; l_id_20066 = 256 + l_id_20066) {
    /* oclScanSeq */
    {
      float x19757;
      x19757 = x19767[l_id_20066];
      /* unrolling loop of 1 */
      {
        int idxAcc20067 = (int)0;
        x19744[idxAcc20067 + (2 * l_id_20066)] = x19757;
      }
      
      {
        int idx20068 = (int)0;
        x19757 = x19930[idx20068 + (2 * l_id_20066)] + x19757;
      }
      
      x19744[1 + (2 * l_id_20066)] = x19757;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20069 = get_local_id(0); l_id_20069 < 16; l_id_20069 = 256 + l_id_20069) {
    /* oclScanSeq */
    {
      float x19734;
      x19734 = x19744[l_id_20069];
      /* unrolling loop of 1 */
      {
        int idxAcc20070 = (int)0;
        x19721[idxAcc20070 + (2 * l_id_20069)] = x19734;
      }
      
      {
        int idx20071 = (int)0;
        x19734 = x19950[idx20071 + (2 * l_id_20069)] + x19734;
      }
      
      x19721[1 + (2 * l_id_20069)] = x19734;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20072 = get_local_id(0); l_id_20072 < 32; l_id_20072 = 256 + l_id_20072) {
    /* oclScanSeq */
    {
      float x19711;
      x19711 = x19721[l_id_20072];
      /* unrolling loop of 1 */
      {
        int idxAcc20073 = (int)0;
        x19698[idxAcc20073 + (2 * l_id_20072)] = x19711;
      }
      
      {
        int idx20074 = (int)0;
        x19711 = x19970[idx20074 + (2 * l_id_20072)] + x19711;
      }
      
      x19698[1 + (2 * l_id_20072)] = x19711;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20075 = get_local_id(0); l_id_20075 < 64; l_id_20075 = 256 + l_id_20075) {
    /* oclScanSeq */
    {
      float x19688;
      x19688 = x19698[l_id_20075];
      /* unrolling loop of 1 */
      {
        int idxAcc20076 = (int)0;
        x19675[idxAcc20076 + (2 * l_id_20075)] = x19688;
      }
      
      {
        int idx20077 = (int)0;
        x19688 = x19990[idx20077 + (2 * l_id_20075)] + x19688;
      }
      
      x19675[1 + (2 * l_id_20075)] = x19688;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_20078 = get_local_id(0); l_id_20078 < 128; l_id_20078 = 256 + l_id_20078) {
    /* oclScanSeq */
    {
      float x19665;
      x19665 = x19675[l_id_20078];
      /* unrolling loop of 1 */
      {
        int idxAcc20079 = (int)0;
        x19652[idxAcc20079 + (2 * l_id_20078)] = x19665;
      }
      
      {
        int idx20080 = (int)0;
        x19665 = x20010[idx20080 + (2 * l_id_20078)] + x19665;
      }
      
      x19652[1 + (2 * l_id_20078)] = x19665;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_20081 = get_local_id(0);
  /* oclScanSeq */
  {
    float x19642;
    x19642 = x19652[l_id_20081];
    /* unrolling loop of 1 */
    {
      int idxAcc20082 = (int)0;
      output[idxAcc20082 + (2 * l_id_20081)] = x19642;
    }
    
    {
      int idx20083 = (int)0;
      x19642 = e18342[idx20083 + (2 * l_id_20081)] + x19642;
    }
    
    output[1 + (2 * l_id_20081)] = x19642;
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(128, 1, 1)))
void kernel_25600000_512_1_2(global float* restrict output, const global float* restrict e20084,__global float* d_block_sums){
__local float x21415[256];

__local float x21429[128];

__local float x21392[64];

__local float x21449[32];

__local float x21369[16];

__local float x21469[8];

__local float x21346[4];

__local float x21489[2];

__local float x21323[2];

__local float x21509[4];

__local float x21300[8];

__local float x21529[16];

__local float x21277[32];

__local float x21549[64];

__local float x21254[128];

__local float x21569[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_21598 = get_local_id(0); l_id_21598 < 256; l_id_21598 = 128 + l_id_21598) {
    /* oclReduceSeq */
    {
      float x21582;
      x21582 = 0.0f;
      for (int i_21599 = 0; i_21599 < 2; i_21599 = 1 + i_21599) {
        x21582 = x21582 + e20084[i_21599 + (2 * l_id_21598)];
      }
      
      x21569[l_id_21598] = x21582;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_21600 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x21562;
    x21562 = 0.0f;
    for (int i_21601 = 0; i_21601 < 2; i_21601 = 1 + i_21601) {
      x21562 = x21562 + x21569[i_21601 + (2 * l_id_21600)];
    }
    
    x21549[l_id_21600] = x21562;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_21602 = get_local_id(0); l_id_21602 < 64; l_id_21602 = 128 + l_id_21602) {
    /* oclReduceSeq */
    {
      float x21542;
      x21542 = 0.0f;
      for (int i_21603 = 0; i_21603 < 2; i_21603 = 1 + i_21603) {
        x21542 = x21542 + x21549[i_21603 + (2 * l_id_21602)];
      }
      
      x21529[l_id_21602] = x21542;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_21604 = get_local_id(0); l_id_21604 < 32; l_id_21604 = 128 + l_id_21604) {
    /* oclReduceSeq */
    {
      float x21522;
      x21522 = 0.0f;
      for (int i_21605 = 0; i_21605 < 2; i_21605 = 1 + i_21605) {
        x21522 = x21522 + x21529[i_21605 + (2 * l_id_21604)];
      }
      
      x21509[l_id_21604] = x21522;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_21606 = get_local_id(0); l_id_21606 < 16; l_id_21606 = 128 + l_id_21606) {
    /* oclReduceSeq */
    {
      float x21502;
      x21502 = 0.0f;
      for (int i_21607 = 0; i_21607 < 2; i_21607 = 1 + i_21607) {
        x21502 = x21502 + x21509[i_21607 + (2 * l_id_21606)];
      }
      
      x21489[l_id_21606] = x21502;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_21608 = get_local_id(0); l_id_21608 < 8; l_id_21608 = 128 + l_id_21608) {
    /* oclReduceSeq */
    {
      float x21482;
      x21482 = 0.0f;
      for (int i_21609 = 0; i_21609 < 2; i_21609 = 1 + i_21609) {
        x21482 = x21482 + x21489[i_21609 + (2 * l_id_21608)];
      }
      
      x21469[l_id_21608] = x21482;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_21610 = get_local_id(0); l_id_21610 < 4; l_id_21610 = 128 + l_id_21610) {
    /* oclReduceSeq */
    {
      float x21462;
      x21462 = 0.0f;
      for (int i_21611 = 0; i_21611 < 2; i_21611 = 1 + i_21611) {
        x21462 = x21462 + x21469[i_21611 + (2 * l_id_21610)];
      }
      
      x21449[l_id_21610] = x21462;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_21612 = get_local_id(0); l_id_21612 < 2; l_id_21612 = 128 + l_id_21612) {
    /* oclReduceSeq */
    {
      float x21442;
      x21442 = 0.0f;
      for (int i_21613 = 0; i_21613 < 2; i_21613 = 1 + i_21613) {
        x21442 = x21442 + x21449[i_21613 + (2 * l_id_21612)];
      }
      
      x21429[l_id_21612] = x21442;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x21425;
    x21425 = 0.0f;
    /* unrolling loop of 1 */
    {
      int idxAcc21614 = (int)0;
      x21415[idxAcc21614] = x21425;
    }
    
    {
      int idx21615 = (int)0;
      x21425 = x21429[idx21615] + x21425;
    }
    
    x21415[1] = x21425;
  }
  
  /* mapLocal */
  for (int l_id_21616 = get_local_id(0); l_id_21616 < 2; l_id_21616 = 128 + l_id_21616) {
    /* oclScanSeq */
    {
      float x21405;
      x21405 = x21415[l_id_21616];
      /* unrolling loop of 1 */
      {
        int idxAcc21617 = (int)0;
        x21392[idxAcc21617 + (2 * l_id_21616)] = x21405;
      }
      
      {
        int idx21618 = (int)0;
        x21405 = x21449[idx21618 + (2 * l_id_21616)] + x21405;
      }
      
      x21392[1 + (2 * l_id_21616)] = x21405;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_21619 = get_local_id(0); l_id_21619 < 4; l_id_21619 = 128 + l_id_21619) {
    /* oclScanSeq */
    {
      float x21382;
      x21382 = x21392[l_id_21619];
      /* unrolling loop of 1 */
      {
        int idxAcc21620 = (int)0;
        x21369[idxAcc21620 + (2 * l_id_21619)] = x21382;
      }
      
      {
        int idx21621 = (int)0;
        x21382 = x21469[idx21621 + (2 * l_id_21619)] + x21382;
      }
      
      x21369[1 + (2 * l_id_21619)] = x21382;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_21622 = get_local_id(0); l_id_21622 < 8; l_id_21622 = 128 + l_id_21622) {
    /* oclScanSeq */
    {
      float x21359;
      x21359 = x21369[l_id_21622];
      /* unrolling loop of 1 */
      {
        int idxAcc21623 = (int)0;
        x21346[idxAcc21623 + (2 * l_id_21622)] = x21359;
      }
      
      {
        int idx21624 = (int)0;
        x21359 = x21489[idx21624 + (2 * l_id_21622)] + x21359;
      }
      
      x21346[1 + (2 * l_id_21622)] = x21359;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_21625 = get_local_id(0); l_id_21625 < 16; l_id_21625 = 128 + l_id_21625) {
    /* oclScanSeq */
    {
      float x21336;
      x21336 = x21346[l_id_21625];
      /* unrolling loop of 1 */
      {
        int idxAcc21626 = (int)0;
        x21323[idxAcc21626 + (2 * l_id_21625)] = x21336;
      }
      
      {
        int idx21627 = (int)0;
        x21336 = x21509[idx21627 + (2 * l_id_21625)] + x21336;
      }
      
      x21323[1 + (2 * l_id_21625)] = x21336;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_21628 = get_local_id(0); l_id_21628 < 32; l_id_21628 = 128 + l_id_21628) {
    /* oclScanSeq */
    {
      float x21313;
      x21313 = x21323[l_id_21628];
      /* unrolling loop of 1 */
      {
        int idxAcc21629 = (int)0;
        x21300[idxAcc21629 + (2 * l_id_21628)] = x21313;
      }
      
      {
        int idx21630 = (int)0;
        x21313 = x21529[idx21630 + (2 * l_id_21628)] + x21313;
      }
      
      x21300[1 + (2 * l_id_21628)] = x21313;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_21631 = get_local_id(0); l_id_21631 < 64; l_id_21631 = 128 + l_id_21631) {
    /* oclScanSeq */
    {
      float x21290;
      x21290 = x21300[l_id_21631];
      /* unrolling loop of 1 */
      {
        int idxAcc21632 = (int)0;
        x21277[idxAcc21632 + (2 * l_id_21631)] = x21290;
      }
      
      {
        int idx21633 = (int)0;
        x21290 = x21549[idx21633 + (2 * l_id_21631)] + x21290;
      }
      
      x21277[1 + (2 * l_id_21631)] = x21290;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_21634 = get_local_id(0);
  /* oclScanSeq */
  {
    float x21267;
    x21267 = x21277[l_id_21634];
    /* unrolling loop of 1 */
    {
      int idxAcc21635 = (int)0;
      x21254[idxAcc21635 + (2 * l_id_21634)] = x21267;
    }
    
    {
      int idx21636 = (int)0;
      x21267 = x21569[idx21636 + (2 * l_id_21634)] + x21267;
    }
    
    x21254[1 + (2 * l_id_21634)] = x21267;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_21637 = get_local_id(0); l_id_21637 < 256; l_id_21637 = 128 + l_id_21637) {
    /* oclScanSeq */
    {
      float x21244;
      x21244 = x21254[l_id_21637];
      /* unrolling loop of 1 */
      {
        int idxAcc21638 = (int)0;
        output[idxAcc21638 + (2 * l_id_21637)] = x21244;
      }
      
      {
        int idx21639 = (int)0;
        x21244 = e20084[idx21639 + (2 * l_id_21637)] + x21244;
      }
      
      output[1 + (2 * l_id_21637)] = x21244;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(64, 1, 1)))
void kernel_25600000_512_2_2(global float* restrict output, const global float* restrict e21640,__global float* d_block_sums){
__local float x22808[256];

__local float x22822[128];

__local float x22785[64];

__local float x22842[32];

__local float x22762[16];

__local float x22862[8];

__local float x22739[4];

__local float x22882[4];

__local float x22716[8];

__local float x22902[16];

__local float x22693[32];

__local float x22922[64];

__local float x22670[128];

__local float x22942[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_22972 = get_local_id(0); l_id_22972 < 256; l_id_22972 = 64 + l_id_22972) {
    /* oclReduceSeq */
    {
      float x22955;
      x22955 = 0.0f;
      for (int i_22973 = 0; i_22973 < 2; i_22973 = 1 + i_22973) {
        x22955 = x22955 + e21640[i_22973 + (2 * l_id_22972)];
      }
      
      x22942[l_id_22972] = x22955;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_22974 = get_local_id(0); l_id_22974 < 128; l_id_22974 = 64 + l_id_22974) {
    /* oclReduceSeq */
    {
      float x22935;
      x22935 = 0.0f;
      for (int i_22975 = 0; i_22975 < 2; i_22975 = 1 + i_22975) {
        x22935 = x22935 + x22942[i_22975 + (2 * l_id_22974)];
      }
      
      x22922[l_id_22974] = x22935;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_22976 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x22915;
    x22915 = 0.0f;
    for (int i_22977 = 0; i_22977 < 2; i_22977 = 1 + i_22977) {
      x22915 = x22915 + x22922[i_22977 + (2 * l_id_22976)];
    }
    
    x22902[l_id_22976] = x22915;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_22978 = get_local_id(0); l_id_22978 < 32; l_id_22978 = 64 + l_id_22978) {
    /* oclReduceSeq */
    {
      float x22895;
      x22895 = 0.0f;
      for (int i_22979 = 0; i_22979 < 2; i_22979 = 1 + i_22979) {
        x22895 = x22895 + x22902[i_22979 + (2 * l_id_22978)];
      }
      
      x22882[l_id_22978] = x22895;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_22980 = get_local_id(0); l_id_22980 < 16; l_id_22980 = 64 + l_id_22980) {
    /* oclReduceSeq */
    {
      float x22875;
      x22875 = 0.0f;
      for (int i_22981 = 0; i_22981 < 2; i_22981 = 1 + i_22981) {
        x22875 = x22875 + x22882[i_22981 + (2 * l_id_22980)];
      }
      
      x22862[l_id_22980] = x22875;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_22982 = get_local_id(0); l_id_22982 < 8; l_id_22982 = 64 + l_id_22982) {
    /* oclReduceSeq */
    {
      float x22855;
      x22855 = 0.0f;
      for (int i_22983 = 0; i_22983 < 2; i_22983 = 1 + i_22983) {
        x22855 = x22855 + x22862[i_22983 + (2 * l_id_22982)];
      }
      
      x22842[l_id_22982] = x22855;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_22984 = get_local_id(0); l_id_22984 < 4; l_id_22984 = 64 + l_id_22984) {
    /* oclReduceSeq */
    {
      float x22835;
      x22835 = 0.0f;
      for (int i_22985 = 0; i_22985 < 2; i_22985 = 1 + i_22985) {
        x22835 = x22835 + x22842[i_22985 + (2 * l_id_22984)];
      }
      
      x22822[l_id_22984] = x22835;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x22818;
    x22818 = 0.0f;
    /* unrolling loop of 3 */
    {
      int idxAcc22986 = (int)0;
      x22808[idxAcc22986] = x22818;
    }
    
    {
      int idx22987 = (int)0;
      x22818 = x22822[idx22987] + x22818;
    }
    
    {
      int idxAcc22988 = (int)1;
      x22808[idxAcc22988] = x22818;
    }
    
    {
      int idx22989 = (int)1;
      x22818 = x22822[idx22989] + x22818;
    }
    
    {
      int idxAcc22990 = (int)2;
      x22808[idxAcc22990] = x22818;
    }
    
    {
      int idx22991 = (int)2;
      x22818 = x22822[idx22991] + x22818;
    }
    
    x22808[3] = x22818;
  }
  
  /* mapLocal */
  for (int l_id_22992 = get_local_id(0); l_id_22992 < 4; l_id_22992 = 64 + l_id_22992) {
    /* oclScanSeq */
    {
      float x22798;
      x22798 = x22808[l_id_22992];
      /* unrolling loop of 1 */
      {
        int idxAcc22993 = (int)0;
        x22785[idxAcc22993 + (2 * l_id_22992)] = x22798;
      }
      
      {
        int idx22994 = (int)0;
        x22798 = x22842[idx22994 + (2 * l_id_22992)] + x22798;
      }
      
      x22785[1 + (2 * l_id_22992)] = x22798;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_22995 = get_local_id(0); l_id_22995 < 8; l_id_22995 = 64 + l_id_22995) {
    /* oclScanSeq */
    {
      float x22775;
      x22775 = x22785[l_id_22995];
      /* unrolling loop of 1 */
      {
        int idxAcc22996 = (int)0;
        x22762[idxAcc22996 + (2 * l_id_22995)] = x22775;
      }
      
      {
        int idx22997 = (int)0;
        x22775 = x22862[idx22997 + (2 * l_id_22995)] + x22775;
      }
      
      x22762[1 + (2 * l_id_22995)] = x22775;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_22998 = get_local_id(0); l_id_22998 < 16; l_id_22998 = 64 + l_id_22998) {
    /* oclScanSeq */
    {
      float x22752;
      x22752 = x22762[l_id_22998];
      /* unrolling loop of 1 */
      {
        int idxAcc22999 = (int)0;
        x22739[idxAcc22999 + (2 * l_id_22998)] = x22752;
      }
      
      {
        int idx23000 = (int)0;
        x22752 = x22882[idx23000 + (2 * l_id_22998)] + x22752;
      }
      
      x22739[1 + (2 * l_id_22998)] = x22752;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_23001 = get_local_id(0); l_id_23001 < 32; l_id_23001 = 64 + l_id_23001) {
    /* oclScanSeq */
    {
      float x22729;
      x22729 = x22739[l_id_23001];
      /* unrolling loop of 1 */
      {
        int idxAcc23002 = (int)0;
        x22716[idxAcc23002 + (2 * l_id_23001)] = x22729;
      }
      
      {
        int idx23003 = (int)0;
        x22729 = x22902[idx23003 + (2 * l_id_23001)] + x22729;
      }
      
      x22716[1 + (2 * l_id_23001)] = x22729;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_23004 = get_local_id(0);
  /* oclScanSeq */
  {
    float x22706;
    x22706 = x22716[l_id_23004];
    /* unrolling loop of 1 */
    {
      int idxAcc23005 = (int)0;
      x22693[idxAcc23005 + (2 * l_id_23004)] = x22706;
    }
    
    {
      int idx23006 = (int)0;
      x22706 = x22922[idx23006 + (2 * l_id_23004)] + x22706;
    }
    
    x22693[1 + (2 * l_id_23004)] = x22706;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_23007 = get_local_id(0); l_id_23007 < 128; l_id_23007 = 64 + l_id_23007) {
    /* oclScanSeq */
    {
      float x22683;
      x22683 = x22693[l_id_23007];
      /* unrolling loop of 1 */
      {
        int idxAcc23008 = (int)0;
        x22670[idxAcc23008 + (2 * l_id_23007)] = x22683;
      }
      
      {
        int idx23009 = (int)0;
        x22683 = x22942[idx23009 + (2 * l_id_23007)] + x22683;
      }
      
      x22670[1 + (2 * l_id_23007)] = x22683;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_23010 = get_local_id(0); l_id_23010 < 256; l_id_23010 = 64 + l_id_23010) {
    /* oclScanSeq */
    {
      float x22660;
      x22660 = x22670[l_id_23010];
      /* unrolling loop of 1 */
      {
        int idxAcc23011 = (int)0;
        output[idxAcc23011 + (2 * l_id_23010)] = x22660;
      }
      
      {
        int idx23012 = (int)0;
        x22660 = e21640[idx23012 + (2 * l_id_23010)] + x22660;
      }
      
      output[1 + (2 * l_id_23010)] = x22660;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(32, 1, 1)))
void kernel_25600000_512_3_2(global float* restrict output, const global float* restrict e23013,__global float* d_block_sums){
__local float x24018[256];

__local float x24032[128];

__local float x23995[64];

__local float x24052[32];

__local float x23972[16];

__local float x24072[8];

__local float x23949[8];

__local float x24092[16];

__local float x23926[32];

__local float x24112[64];

__local float x23903[128];

__local float x24132[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_24165 = get_local_id(0); l_id_24165 < 256; l_id_24165 = 32 + l_id_24165) {
    /* oclReduceSeq */
    {
      float x24145;
      x24145 = 0.0f;
      for (int i_24166 = 0; i_24166 < 2; i_24166 = 1 + i_24166) {
        x24145 = x24145 + e23013[i_24166 + (2 * l_id_24165)];
      }
      
      x24132[l_id_24165] = x24145;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_24167 = get_local_id(0); l_id_24167 < 128; l_id_24167 = 32 + l_id_24167) {
    /* oclReduceSeq */
    {
      float x24125;
      x24125 = 0.0f;
      for (int i_24168 = 0; i_24168 < 2; i_24168 = 1 + i_24168) {
        x24125 = x24125 + x24132[i_24168 + (2 * l_id_24167)];
      }
      
      x24112[l_id_24167] = x24125;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_24169 = get_local_id(0); l_id_24169 < 64; l_id_24169 = 32 + l_id_24169) {
    /* oclReduceSeq */
    {
      float x24105;
      x24105 = 0.0f;
      for (int i_24170 = 0; i_24170 < 2; i_24170 = 1 + i_24170) {
        x24105 = x24105 + x24112[i_24170 + (2 * l_id_24169)];
      }
      
      x24092[l_id_24169] = x24105;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_24171 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x24085;
    x24085 = 0.0f;
    for (int i_24172 = 0; i_24172 < 2; i_24172 = 1 + i_24172) {
      x24085 = x24085 + x24092[i_24172 + (2 * l_id_24171)];
    }
    
    x24072[l_id_24171] = x24085;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_24173 = get_local_id(0); l_id_24173 < 16; l_id_24173 = 32 + l_id_24173) {
    /* oclReduceSeq */
    {
      float x24065;
      x24065 = 0.0f;
      for (int i_24174 = 0; i_24174 < 2; i_24174 = 1 + i_24174) {
        x24065 = x24065 + x24072[i_24174 + (2 * l_id_24173)];
      }
      
      x24052[l_id_24173] = x24065;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_24175 = get_local_id(0); l_id_24175 < 8; l_id_24175 = 32 + l_id_24175) {
    /* oclReduceSeq */
    {
      float x24045;
      x24045 = 0.0f;
      for (int i_24176 = 0; i_24176 < 2; i_24176 = 1 + i_24176) {
        x24045 = x24045 + x24052[i_24176 + (2 * l_id_24175)];
      }
      
      x24032[l_id_24175] = x24045;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x24028;
    x24028 = 0.0f;
    /* unrolling loop of 7 */
    {
      int idxAcc24177 = (int)0;
      x24018[idxAcc24177] = x24028;
    }
    
    {
      int idx24178 = (int)0;
      x24028 = x24032[idx24178] + x24028;
    }
    
    {
      int idxAcc24179 = (int)1;
      x24018[idxAcc24179] = x24028;
    }
    
    {
      int idx24180 = (int)1;
      x24028 = x24032[idx24180] + x24028;
    }
    
    {
      int idxAcc24181 = (int)2;
      x24018[idxAcc24181] = x24028;
    }
    
    {
      int idx24182 = (int)2;
      x24028 = x24032[idx24182] + x24028;
    }
    
    {
      int idxAcc24183 = (int)3;
      x24018[idxAcc24183] = x24028;
    }
    
    {
      int idx24184 = (int)3;
      x24028 = x24032[idx24184] + x24028;
    }
    
    {
      int idxAcc24185 = (int)4;
      x24018[idxAcc24185] = x24028;
    }
    
    {
      int idx24186 = (int)4;
      x24028 = x24032[idx24186] + x24028;
    }
    
    {
      int idxAcc24187 = (int)5;
      x24018[idxAcc24187] = x24028;
    }
    
    {
      int idx24188 = (int)5;
      x24028 = x24032[idx24188] + x24028;
    }
    
    {
      int idxAcc24189 = (int)6;
      x24018[idxAcc24189] = x24028;
    }
    
    {
      int idx24190 = (int)6;
      x24028 = x24032[idx24190] + x24028;
    }
    
    x24018[7] = x24028;
  }
  
  /* mapLocal */
  for (int l_id_24191 = get_local_id(0); l_id_24191 < 8; l_id_24191 = 32 + l_id_24191) {
    /* oclScanSeq */
    {
      float x24008;
      x24008 = x24018[l_id_24191];
      /* unrolling loop of 1 */
      {
        int idxAcc24192 = (int)0;
        x23995[idxAcc24192 + (2 * l_id_24191)] = x24008;
      }
      
      {
        int idx24193 = (int)0;
        x24008 = x24052[idx24193 + (2 * l_id_24191)] + x24008;
      }
      
      x23995[1 + (2 * l_id_24191)] = x24008;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_24194 = get_local_id(0); l_id_24194 < 16; l_id_24194 = 32 + l_id_24194) {
    /* oclScanSeq */
    {
      float x23985;
      x23985 = x23995[l_id_24194];
      /* unrolling loop of 1 */
      {
        int idxAcc24195 = (int)0;
        x23972[idxAcc24195 + (2 * l_id_24194)] = x23985;
      }
      
      {
        int idx24196 = (int)0;
        x23985 = x24072[idx24196 + (2 * l_id_24194)] + x23985;
      }
      
      x23972[1 + (2 * l_id_24194)] = x23985;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_24197 = get_local_id(0);
  /* oclScanSeq */
  {
    float x23962;
    x23962 = x23972[l_id_24197];
    /* unrolling loop of 1 */
    {
      int idxAcc24198 = (int)0;
      x23949[idxAcc24198 + (2 * l_id_24197)] = x23962;
    }
    
    {
      int idx24199 = (int)0;
      x23962 = x24092[idx24199 + (2 * l_id_24197)] + x23962;
    }
    
    x23949[1 + (2 * l_id_24197)] = x23962;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_24200 = get_local_id(0); l_id_24200 < 64; l_id_24200 = 32 + l_id_24200) {
    /* oclScanSeq */
    {
      float x23939;
      x23939 = x23949[l_id_24200];
      /* unrolling loop of 1 */
      {
        int idxAcc24201 = (int)0;
        x23926[idxAcc24201 + (2 * l_id_24200)] = x23939;
      }
      
      {
        int idx24202 = (int)0;
        x23939 = x24112[idx24202 + (2 * l_id_24200)] + x23939;
      }
      
      x23926[1 + (2 * l_id_24200)] = x23939;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_24203 = get_local_id(0); l_id_24203 < 128; l_id_24203 = 32 + l_id_24203) {
    /* oclScanSeq */
    {
      float x23916;
      x23916 = x23926[l_id_24203];
      /* unrolling loop of 1 */
      {
        int idxAcc24204 = (int)0;
        x23903[idxAcc24204 + (2 * l_id_24203)] = x23916;
      }
      
      {
        int idx24205 = (int)0;
        x23916 = x24132[idx24205 + (2 * l_id_24203)] + x23916;
      }
      
      x23903[1 + (2 * l_id_24203)] = x23916;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_24206 = get_local_id(0); l_id_24206 < 256; l_id_24206 = 32 + l_id_24206) {
    /* oclScanSeq */
    {
      float x23893;
      x23893 = x23903[l_id_24206];
      /* unrolling loop of 1 */
      {
        int idxAcc24207 = (int)0;
        output[idxAcc24207 + (2 * l_id_24206)] = x23893;
      }
      
      {
        int idx24208 = (int)0;
        x23893 = e23013[idx24208 + (2 * l_id_24206)] + x23893;
      }
      
      output[1 + (2 * l_id_24206)] = x23893;
    }
    
  }
  
}






__kernel __attribute__ ((reqd_work_group_size(16, 1, 1)))
void kernel_25600000_512_4_2(global float* restrict output, const global float* restrict e24209,__global float* d_block_sums){
__local float x25051[256];

__local float x25065[128];

__local float x25028[64];

__local float x25085[32];

__local float x25005[16];

__local float x25105[16];

__local float x24982[32];

__local float x25125[64];

__local float x24959[128];

__local float x25145[256];

  /* Start of moved local vars */
  /* End of moved local vars */
  /* mapLocal */
  for (int l_id_25185 = get_local_id(0); l_id_25185 < 256; l_id_25185 = 16 + l_id_25185) {
    /* oclReduceSeq */
    {
      float x25158;
      x25158 = 0.0f;
      for (int i_25186 = 0; i_25186 < 2; i_25186 = 1 + i_25186) {
        x25158 = x25158 + e24209[i_25186 + (2 * l_id_25185)];
      }
      
      x25145[l_id_25185] = x25158;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_25187 = get_local_id(0); l_id_25187 < 128; l_id_25187 = 16 + l_id_25187) {
    /* oclReduceSeq */
    {
      float x25138;
      x25138 = 0.0f;
      for (int i_25188 = 0; i_25188 < 2; i_25188 = 1 + i_25188) {
        x25138 = x25138 + x25145[i_25188 + (2 * l_id_25187)];
      }
      
      x25125[l_id_25187] = x25138;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_25189 = get_local_id(0); l_id_25189 < 64; l_id_25189 = 16 + l_id_25189) {
    /* oclReduceSeq */
    {
      float x25118;
      x25118 = 0.0f;
      for (int i_25190 = 0; i_25190 < 2; i_25190 = 1 + i_25190) {
        x25118 = x25118 + x25125[i_25190 + (2 * l_id_25189)];
      }
      
      x25105[l_id_25189] = x25118;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_25191 = get_local_id(0); l_id_25191 < 32; l_id_25191 = 16 + l_id_25191) {
    /* oclReduceSeq */
    {
      float x25098;
      x25098 = 0.0f;
      for (int i_25192 = 0; i_25192 < 2; i_25192 = 1 + i_25192) {
        x25098 = x25098 + x25105[i_25192 + (2 * l_id_25191)];
      }
      
      x25085[l_id_25191] = x25098;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_25193 = get_local_id(0);
  /* oclReduceSeq */
  {
    float x25078;
    x25078 = 0.0f;
    for (int i_25194 = 0; i_25194 < 2; i_25194 = 1 + i_25194) {
      x25078 = x25078 + x25085[i_25194 + (2 * l_id_25193)];
    }
    
    x25065[l_id_25193] = x25078;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* oclScanSeq */
  {
    float x25061;
    x25061 = 0.0f;
    /* unrolling loop of 15 */
    {
      int idxAcc25195 = (int)0;
      x25051[idxAcc25195] = x25061;
    }
    
    {
      int idx25196 = (int)0;
      x25061 = x25065[idx25196] + x25061;
    }
    
    {
      int idxAcc25197 = (int)1;
      x25051[idxAcc25197] = x25061;
    }
    
    {
      int idx25198 = (int)1;
      x25061 = x25065[idx25198] + x25061;
    }
    
    {
      int idxAcc25199 = (int)2;
      x25051[idxAcc25199] = x25061;
    }
    
    {
      int idx25200 = (int)2;
      x25061 = x25065[idx25200] + x25061;
    }
    
    {
      int idxAcc25201 = (int)3;
      x25051[idxAcc25201] = x25061;
    }
    
    {
      int idx25202 = (int)3;
      x25061 = x25065[idx25202] + x25061;
    }
    
    {
      int idxAcc25203 = (int)4;
      x25051[idxAcc25203] = x25061;
    }
    
    {
      int idx25204 = (int)4;
      x25061 = x25065[idx25204] + x25061;
    }
    
    {
      int idxAcc25205 = (int)5;
      x25051[idxAcc25205] = x25061;
    }
    
    {
      int idx25206 = (int)5;
      x25061 = x25065[idx25206] + x25061;
    }
    
    {
      int idxAcc25207 = (int)6;
      x25051[idxAcc25207] = x25061;
    }
    
    {
      int idx25208 = (int)6;
      x25061 = x25065[idx25208] + x25061;
    }
    
    {
      int idxAcc25209 = (int)7;
      x25051[idxAcc25209] = x25061;
    }
    
    {
      int idx25210 = (int)7;
      x25061 = x25065[idx25210] + x25061;
    }
    
    {
      int idxAcc25211 = (int)8;
      x25051[idxAcc25211] = x25061;
    }
    
    {
      int idx25212 = (int)8;
      x25061 = x25065[idx25212] + x25061;
    }
    
    {
      int idxAcc25213 = (int)9;
      x25051[idxAcc25213] = x25061;
    }
    
    {
      int idx25214 = (int)9;
      x25061 = x25065[idx25214] + x25061;
    }
    
    {
      int idxAcc25215 = (int)10;
      x25051[idxAcc25215] = x25061;
    }
    
    {
      int idx25216 = (int)10;
      x25061 = x25065[idx25216] + x25061;
    }
    
    {
      int idxAcc25217 = (int)11;
      x25051[idxAcc25217] = x25061;
    }
    
    {
      int idx25218 = (int)11;
      x25061 = x25065[idx25218] + x25061;
    }
    
    {
      int idxAcc25219 = (int)12;
      x25051[idxAcc25219] = x25061;
    }
    
    {
      int idx25220 = (int)12;
      x25061 = x25065[idx25220] + x25061;
    }
    
    {
      int idxAcc25221 = (int)13;
      x25051[idxAcc25221] = x25061;
    }
    
    {
      int idx25222 = (int)13;
      x25061 = x25065[idx25222] + x25061;
    }
    
    {
      int idxAcc25223 = (int)14;
      x25051[idxAcc25223] = x25061;
    }
    
    {
      int idx25224 = (int)14;
      x25061 = x25065[idx25224] + x25061;
    }
    
    x25051[15] = x25061;
  }
  
  /* mapLocal */
  /* iteration count is exactly 1, no loop emitted */
  int l_id_25225 = get_local_id(0);
  /* oclScanSeq */
  {
    float x25041;
    x25041 = x25051[l_id_25225];
    /* unrolling loop of 1 */
    {
      int idxAcc25226 = (int)0;
      x25028[idxAcc25226 + (2 * l_id_25225)] = x25041;
    }
    
    {
      int idx25227 = (int)0;
      x25041 = x25085[idx25227 + (2 * l_id_25225)] + x25041;
    }
    
    x25028[1 + (2 * l_id_25225)] = x25041;
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_25228 = get_local_id(0); l_id_25228 < 32; l_id_25228 = 16 + l_id_25228) {
    /* oclScanSeq */
    {
      float x25018;
      x25018 = x25028[l_id_25228];
      /* unrolling loop of 1 */
      {
        int idxAcc25229 = (int)0;
        x25005[idxAcc25229 + (2 * l_id_25228)] = x25018;
      }
      
      {
        int idx25230 = (int)0;
        x25018 = x25105[idx25230 + (2 * l_id_25228)] + x25018;
      }
      
      x25005[1 + (2 * l_id_25228)] = x25018;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_25231 = get_local_id(0); l_id_25231 < 64; l_id_25231 = 16 + l_id_25231) {
    /* oclScanSeq */
    {
      float x24995;
      x24995 = x25005[l_id_25231];
      /* unrolling loop of 1 */
      {
        int idxAcc25232 = (int)0;
        x24982[idxAcc25232 + (2 * l_id_25231)] = x24995;
      }
      
      {
        int idx25233 = (int)0;
        x24995 = x25125[idx25233 + (2 * l_id_25231)] + x24995;
      }
      
      x24982[1 + (2 * l_id_25231)] = x24995;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_25234 = get_local_id(0); l_id_25234 < 128; l_id_25234 = 16 + l_id_25234) {
    /* oclScanSeq */
    {
      float x24972;
      x24972 = x24982[l_id_25234];
      /* unrolling loop of 1 */
      {
        int idxAcc25235 = (int)0;
        x24959[idxAcc25235 + (2 * l_id_25234)] = x24972;
      }
      
      {
        int idx25236 = (int)0;
        x24972 = x25145[idx25236 + (2 * l_id_25234)] + x24972;
      }
      
      x24959[1 + (2 * l_id_25234)] = x24972;
    }
    
  }
  
  barrier(CLK_LOCAL_MEM_FENCE);
  /* mapLocal */
  for (int l_id_25237 = get_local_id(0); l_id_25237 < 256; l_id_25237 = 16 + l_id_25237) {
    /* oclScanSeq */
    {
      float x24949;
      x24949 = x24959[l_id_25237];
      /* unrolling loop of 1 */
      {
        int idxAcc25238 = (int)0;
        output[idxAcc25238 + (2 * l_id_25237)] = x24949;
      }
      
      {
        int idx25239 = (int)0;
        x24949 = e24209[idx25239 + (2 * l_id_25237)] + x24949;
      }
      
      output[1 + (2 * l_id_25237)] = x24949;
    }
    
  }
  
}



