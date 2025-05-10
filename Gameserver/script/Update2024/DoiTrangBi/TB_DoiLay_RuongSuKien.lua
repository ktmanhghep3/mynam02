local tbDoiTrangBi_RuongSuKien = {};
SpecialEvent.DoiTrangBi_RuongSuKien = tbDoiTrangBi_RuongSuKien;


local REQUIRE_ITEM = 
{ 

[1] = {-- Phi Phong Thương Phong - 200R
{ {
string.format("%s,%s,%s,%s",1,17,2171,10), --Thương Phong Kim Vũ
string.format("%s,%s,%s,%s",1,17,2172,10), --Thương Phong Mộc Vũ
string.format("%s,%s,%s,%s",1,17,2173,10), --Thương Phong Thủy Vũ
string.format("%s,%s,%s,%s",1,17,2174,10), --Thương Phong Hỏa Vũ
string.format("%s,%s,%s,%s",1,17,2175,10), --Thương Phong Thổ Vũ
string.format("%s,%s,%s,%s",1,17,2176,10), --Thương Phong Kim Vũ
string.format("%s,%s,%s,%s",1,17,2177,10), --Thương Phong Mộc Vũ
string.format("%s,%s,%s,%s",1,17,2178,10), --Thương Phong Thủy Vũ
string.format("%s,%s,%s,%s",1,17,2179,10), --Thương Phong Hỏa Vũ
string.format("%s,%s,%s,%s",1,17,2180,10), --Thương Phong Thổ Vũ
},1},
},

[2] = {-- Vũ Khí Thanh Hạ-Cấp 6 - 80R
{ {
string.format("%s,%s,%s,%s",2,1,2500,10), --Thanh Hạ-Cấp 6-Hiệu ứng Kim Đao Ngoại
string.format("%s,%s,%s,%s",2,1,2501,10), --Thanh Hạ-Cấp 6-Hiệu ứng Kim Côn Ngoại
string.format("%s,%s,%s,%s",2,1,2502,10), --Thanh Hạ-Cấp 6-Hiệu ứng Kim Thương Ngoại
string.format("%s,%s,%s,%s",2,1,2503,10), --Thanh Hạ-Cấp 6-Hiệu ứng Kim Chùy Ngoại
string.format("%s,%s,%s,%s",2,1,2504,10), --Thanh Hạ-Cấp 6-Hiệu ứng Mộc Đao Ngoại
string.format("%s,%s,%s,%s",2,1,2505,10), --Thanh Hạ-Cấp 6-Hiệu ứng Mộc Thủ Nội
string.format("%s,%s,%s,%s",2,1,2506,10), --Thanh Hạ-Cấp 6-Hiệu ứng Mộc Kiếm Nội
string.format("%s,%s,%s,%s",2,1,2507,10), --Thanh Hạ-Cấp 6-Hiệu ứng Mộc Chùy Ngoại
string.format("%s,%s,%s,%s",2,1,2508,10), --Thanh Hạ-Cấp 6-Hiệu ứng Thủy Kiếm Nội
string.format("%s,%s,%s,%s",2,1,2509,10), --Thanh Hạ-Cấp 6-Hiệu ứng Thủy Thủ Ngoại
string.format("%s,%s,%s,%s",2,1,2510,10), --Thanh Hạ-Cấp 6-Hiệu ứng Thủy Thủ Nội
string.format("%s,%s,%s,%s",2,1,2511,10), --Thanh Hạ-Cấp 6-Hiệu ứng Thủy Đao Ngoại
string.format("%s,%s,%s,%s",2,1,2512,10), --Thanh Hạ-Cấp 6-Hiệu ứng Hỏa Thủ Nội
string.format("%s,%s,%s,%s",2,1,2513,10), --Thanh Hạ-Cấp 6-Hiệu ứng Hỏa Côn Ngoại
string.format("%s,%s,%s,%s",2,1,2514,10), --Thanh Hạ-Cấp 6-Hiệu ứng Hỏa Đao Nội
string.format("%s,%s,%s,%s",2,1,2515,10), --Thanh Hạ-Cấp 6-Hiệu ứng Hỏa Thương Ngoại
string.format("%s,%s,%s,%s",2,1,2516,10), --Thanh Hạ-Cấp 6-Hiệu ứng Thổ Kiếm Nội
string.format("%s,%s,%s,%s",2,1,2517,10), --Thanh Hạ-Cấp 6-Hiệu ứng Thổ Kiếm Ngoại
string.format("%s,%s,%s,%s",2,1,2518,10), --Thanh Hạ-Cấp 6-Hiệu ứng Thổ Đao Ngoại
string.format("%s,%s,%s,%s",2,1,2519,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Kim_Thương
string.format("%s,%s,%s,%s",2,1,2520,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Kim_Chùy
string.format("%s,%s,%s,%s",2,1,2521,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Kim_Thủ
string.format("%s,%s,%s,%s",2,1,2522,10), --Thanh Hạ-Cấp 6_Ngoại công_Kim_Côn
string.format("%s,%s,%s,%s",2,1,2523,10), --Thanh Hạ-Cấp 6_Ngoại công_Kim_Đao
string.format("%s,%s,%s,%s",2,1,2524,10), --Thanh Hạ-Cấp 6_Ngoại công_Kim_Kiếm
string.format("%s,%s,%s,%s",2,1,2525,10), --Thanh Hạ-Cấp 6_Nội công_Kim_Đao
string.format("%s,%s,%s,%s",2,1,2526,10), --Thanh Hạ-Cấp 6_Nội công_Kim_Kiếm
string.format("%s,%s,%s,%s",2,1,2527,10), --Thanh Hạ-Cấp 6_Nội công_Kim_Thủ
string.format("%s,%s,%s,%s",2,1,2528,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Mộc_Thương
string.format("%s,%s,%s,%s",2,1,2529,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Mộc_Chùy
string.format("%s,%s,%s,%s",2,1,2530,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Mộc_Thủ
string.format("%s,%s,%s,%s",2,1,2531,10), --Thanh Hạ-Cấp 6_Ngoại công_Mộc_Côn
string.format("%s,%s,%s,%s",2,1,2532,10), --Thanh Hạ-Cấp 6_Ngoại công_Mộc_Đao
string.format("%s,%s,%s,%s",2,1,2533,10), --Thanh Hạ-Cấp 6_Ngoại công_Mộc_Kiếm
string.format("%s,%s,%s,%s",2,1,2534,10), --Thanh Hạ-Cấp 6_Ngoại công_Mộc_Thương
string.format("%s,%s,%s,%s",2,1,2535,10), --Thanh Hạ-Cấp 6_Nội công_Mộc_Đao
string.format("%s,%s,%s,%s",2,1,2536,10), --Thanh Hạ-Cấp 6_Nội công_Mộc_Kiếm
string.format("%s,%s,%s,%s",2,1,2537,10), --Thanh Hạ-Cấp 6_Nội công_Mộc_Thủ
string.format("%s,%s,%s,%s",2,1,2538,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Thủy_Thương
string.format("%s,%s,%s,%s",2,1,2539,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Thủy_Chùy
string.format("%s,%s,%s,%s",2,1,2540,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Thủy_Thủ
string.format("%s,%s,%s,%s",2,1,2541,10), --Thanh Hạ-Cấp 6_Ngoại công_Thủy_Côn
string.format("%s,%s,%s,%s",2,1,2542,10), --Thanh Hạ-Cấp 6_Ngoại công_Thủy_Đao
string.format("%s,%s,%s,%s",2,1,2543,10), --Thanh Hạ-Cấp 6_Ngoại công_Thủy_Kiếm
string.format("%s,%s,%s,%s",2,1,2544,10), --Thanh Hạ-Cấp 6_Nội công_Thủy_Đao
string.format("%s,%s,%s,%s",2,1,2545,10), --Thanh Hạ-Cấp 6_Nội công_Thủy_Kiếm
string.format("%s,%s,%s,%s",2,1,2546,10), --Thanh Hạ-Cấp 6_Nội công_Thủy_Thủ
string.format("%s,%s,%s,%s",2,1,2547,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Hỏa_Thương
string.format("%s,%s,%s,%s",2,1,2548,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Hỏa_Chùy
string.format("%s,%s,%s,%s",2,1,2549,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Hỏa_Thủ
string.format("%s,%s,%s,%s",2,1,2550,10), --Thanh Hạ-Cấp 6_Ngoại công_Hỏa_Côn
string.format("%s,%s,%s,%s",2,1,2551,10), --Thanh Hạ-Cấp 6_Ngoại công_Hỏa_Đao
string.format("%s,%s,%s,%s",2,1,2552,10), --Thanh Hạ-Cấp 6_Ngoại công_Hỏa_Kiếm
string.format("%s,%s,%s,%s",2,1,2553,10), --Thanh Hạ-Cấp 6_Nội công_Hỏa_Đao
string.format("%s,%s,%s,%s",2,1,2554,10), --Thanh Hạ-Cấp 6_Nội công_Hỏa_Kiếm
string.format("%s,%s,%s,%s",2,1,2555,10), --Thanh Hạ-Cấp 6_Nội công_Hỏa_Thủ
string.format("%s,%s,%s,%s",2,1,2556,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Thổ_Thương
string.format("%s,%s,%s,%s",2,1,2557,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Thổ_Chùy
string.format("%s,%s,%s,%s",2,1,2558,10), --Thanh Hạ-Cấp 6_Hệ cách đấu_Thổ_Thủ
string.format("%s,%s,%s,%s",2,1,2559,10), --Thanh Hạ-Cấp 6_Ngoại công_Thổ_Côn
string.format("%s,%s,%s,%s",2,1,2560,10), --Thanh Hạ-Cấp 6_Ngoại công_Thổ_Đao
string.format("%s,%s,%s,%s",2,1,2561,10), --Thanh Hạ-Cấp 6_Ngoại công_Thổ_Kiếm
string.format("%s,%s,%s,%s",2,1,2562,10), --Thanh Hạ-Cấp 6_Nội công_Thổ_Đao
string.format("%s,%s,%s,%s",2,1,2563,10), --Thanh Hạ-Cấp 6_Nội công_Thổ_Kiếm
string.format("%s,%s,%s,%s",2,1,2564,10), --Thanh Hạ-Cấp 6_Nội công_Thổ_Thủ
string.format("%s,%s,%s,%s",2,2,2500,10), --Hiệu ứng Thanh Hạ-Cấp 6_Phi Đao
string.format("%s,%s,%s,%s",2,2,2501,10), --Hiệu ứng Thanh Hạ-Cấp 6_Tụ Tiễn
string.format("%s,%s,%s,%s",2,2,2502,10), --Hệ kim Thanh Hạ-Cấp 6_Phi Đao
string.format("%s,%s,%s,%s",2,2,2503,10), --Hệ thủy Thanh Hạ-Cấp 6_Phi Đao
string.format("%s,%s,%s,%s",2,2,2504,10), --Hệ hỏa Thanh Hạ-Cấp 6_Phi Đao
string.format("%s,%s,%s,%s",2,2,2505,10), --Hệ thổ Thanh Hạ-Cấp 6_Phi Đao
string.format("%s,%s,%s,%s",2,2,2506,10), --Hệ kim Thanh Hạ-Cấp 6_Tụ Tiễn
string.format("%s,%s,%s,%s",2,2,2507,10), --Hệ thủy Thanh Hạ-Cấp 6_Tụ Tiễn
string.format("%s,%s,%s,%s",2,2,2508,10), --Hệ hỏa Thanh Hạ-Cấp 6_Tụ Tiễn
string.format("%s,%s,%s,%s",2,2,2509,10), --Hệ thổ Thanh Hạ-Cấp 6_Tụ Tiễn
},1},
},

[3] = {-- Vũ Khí Thương Phong-Cấp 7 - 120R
{ {
string.format("%s,%s,%s,%s",2,1,2570,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Kim Đao Ngoại
string.format("%s,%s,%s,%s",2,1,2635,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 2
string.format("%s,%s,%s,%s",2,1,2636,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 3
string.format("%s,%s,%s,%s",2,1,2637,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 4
string.format("%s,%s,%s,%s",2,1,2638,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 5
string.format("%s,%s,%s,%s",2,1,2639,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 6
string.format("%s,%s,%s,%s",2,1,2640,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 7
string.format("%s,%s,%s,%s",2,1,2641,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 8
string.format("%s,%s,%s,%s",2,1,2642,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 9
string.format("%s,%s,%s,%s",2,1,2643,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 10
string.format("%s,%s,%s,%s",2,1,2644,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 11
string.format("%s,%s,%s,%s",2,1,2645,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 12
string.format("%s,%s,%s,%s",2,1,2646,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 13
string.format("%s,%s,%s,%s",2,1,2647,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 14
string.format("%s,%s,%s,%s",2,1,2648,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 15
string.format("%s,%s,%s,%s",2,1,2649,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 16
string.format("%s,%s,%s,%s",2,1,2650,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 17
string.format("%s,%s,%s,%s",2,1,2651,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 18
string.format("%s,%s,%s,%s",2,1,2652,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 19
string.format("%s,%s,%s,%s",2,1,2653,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Đao Ngoại 20
string.format("%s,%s,%s,%s",2,1,2571,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Kim Côn Ngoại
string.format("%s,%s,%s,%s",2,1,2654,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 1
string.format("%s,%s,%s,%s",2,1,2655,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 2
string.format("%s,%s,%s,%s",2,1,2656,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 3
string.format("%s,%s,%s,%s",2,1,2657,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 4
string.format("%s,%s,%s,%s",2,1,2658,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 5
string.format("%s,%s,%s,%s",2,1,2659,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 6
string.format("%s,%s,%s,%s",2,1,2660,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 7
string.format("%s,%s,%s,%s",2,1,2661,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 8
string.format("%s,%s,%s,%s",2,1,2662,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 9
string.format("%s,%s,%s,%s",2,1,2663,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 10
string.format("%s,%s,%s,%s",2,1,2664,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 11
string.format("%s,%s,%s,%s",2,1,2665,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 12
string.format("%s,%s,%s,%s",2,1,2666,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 13
string.format("%s,%s,%s,%s",2,1,2667,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 14
string.format("%s,%s,%s,%s",2,1,2668,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 15
string.format("%s,%s,%s,%s",2,1,2669,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 16
string.format("%s,%s,%s,%s",2,1,2670,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 17
string.format("%s,%s,%s,%s",2,1,2671,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 18
string.format("%s,%s,%s,%s",2,1,2672,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Côn Ngoại 19
string.format("%s,%s,%s,%s",2,1,2572,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Kim Thương Ngoại
string.format("%s,%s,%s,%s",2,1,2673,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 2
string.format("%s,%s,%s,%s",2,1,2674,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 3
string.format("%s,%s,%s,%s",2,1,2675,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 4
string.format("%s,%s,%s,%s",2,1,2676,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 5
string.format("%s,%s,%s,%s",2,1,2677,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 6
string.format("%s,%s,%s,%s",2,1,2678,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 7
string.format("%s,%s,%s,%s",2,1,2679,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 8
string.format("%s,%s,%s,%s",2,1,2680,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 9
string.format("%s,%s,%s,%s",2,1,2681,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 10
string.format("%s,%s,%s,%s",2,1,2682,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 11
string.format("%s,%s,%s,%s",2,1,2683,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 12
string.format("%s,%s,%s,%s",2,1,2684,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 13
string.format("%s,%s,%s,%s",2,1,2685,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 14
string.format("%s,%s,%s,%s",2,1,2686,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 15
string.format("%s,%s,%s,%s",2,1,2687,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 16
string.format("%s,%s,%s,%s",2,1,2688,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 17
string.format("%s,%s,%s,%s",2,1,2689,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 18
string.format("%s,%s,%s,%s",2,1,2690,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 19
string.format("%s,%s,%s,%s",2,1,2691,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 20
string.format("%s,%s,%s,%s",2,1,2573,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Kim Chùy Ngoại
string.format("%s,%s,%s,%s",2,1,2692,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 2
string.format("%s,%s,%s,%s",2,1,2693,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 3
string.format("%s,%s,%s,%s",2,1,2694,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 4
string.format("%s,%s,%s,%s",2,1,2695,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 5
string.format("%s,%s,%s,%s",2,1,2696,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 6
string.format("%s,%s,%s,%s",2,1,2697,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 7
string.format("%s,%s,%s,%s",2,1,2698,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 8
string.format("%s,%s,%s,%s",2,1,2699,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 9
string.format("%s,%s,%s,%s",2,1,2700,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 10
string.format("%s,%s,%s,%s",2,1,2701,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 11
string.format("%s,%s,%s,%s",2,1,2702,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 12
string.format("%s,%s,%s,%s",2,1,2703,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 13
string.format("%s,%s,%s,%s",2,1,2704,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 14
string.format("%s,%s,%s,%s",2,1,2705,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 15
string.format("%s,%s,%s,%s",2,1,2706,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 16
string.format("%s,%s,%s,%s",2,1,2707,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 17
string.format("%s,%s,%s,%s",2,1,2708,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 18
string.format("%s,%s,%s,%s",2,1,2709,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 19
string.format("%s,%s,%s,%s",2,1,2710,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Kim Chùy Ngoại 20
string.format("%s,%s,%s,%s",2,1,2574,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Mộc Đao Ngoại
string.format("%s,%s,%s,%s",2,1,2711,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 2
string.format("%s,%s,%s,%s",2,1,2712,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 3
string.format("%s,%s,%s,%s",2,1,2713,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 4
string.format("%s,%s,%s,%s",2,1,2714,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 5
string.format("%s,%s,%s,%s",2,1,2715,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 6
string.format("%s,%s,%s,%s",2,1,2716,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 7
string.format("%s,%s,%s,%s",2,1,2717,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 8
string.format("%s,%s,%s,%s",2,1,2718,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 9
string.format("%s,%s,%s,%s",2,1,2719,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 10
string.format("%s,%s,%s,%s",2,1,2720,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 11
string.format("%s,%s,%s,%s",2,1,2721,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 12
string.format("%s,%s,%s,%s",2,1,2722,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 13
string.format("%s,%s,%s,%s",2,1,2723,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 14
string.format("%s,%s,%s,%s",2,1,2724,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 15
string.format("%s,%s,%s,%s",2,1,2725,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 16
string.format("%s,%s,%s,%s",2,1,2726,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 17
string.format("%s,%s,%s,%s",2,1,2727,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 18
string.format("%s,%s,%s,%s",2,1,2728,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 19
string.format("%s,%s,%s,%s",2,1,2729,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Đao Ngoại 20
string.format("%s,%s,%s,%s",2,1,2575,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Mộc Thủ Nội
string.format("%s,%s,%s,%s",2,1,2730,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 2
string.format("%s,%s,%s,%s",2,1,2731,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 3
string.format("%s,%s,%s,%s",2,1,2732,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 4
string.format("%s,%s,%s,%s",2,1,2733,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 5
string.format("%s,%s,%s,%s",2,1,2734,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 6
string.format("%s,%s,%s,%s",2,1,2735,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 7
string.format("%s,%s,%s,%s",2,1,2736,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 8
string.format("%s,%s,%s,%s",2,1,2737,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 9
string.format("%s,%s,%s,%s",2,1,2738,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 10
string.format("%s,%s,%s,%s",2,1,2739,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 11
string.format("%s,%s,%s,%s",2,1,2740,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 12
string.format("%s,%s,%s,%s",2,1,2741,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 13
string.format("%s,%s,%s,%s",2,1,2742,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 14
string.format("%s,%s,%s,%s",2,1,2743,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 15
string.format("%s,%s,%s,%s",2,1,2744,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 16
string.format("%s,%s,%s,%s",2,1,2745,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 17
string.format("%s,%s,%s,%s",2,1,2746,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 18
string.format("%s,%s,%s,%s",2,1,2747,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 19
string.format("%s,%s,%s,%s",2,1,2748,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Thủ Nội 20
string.format("%s,%s,%s,%s",2,1,2576,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Mộc Kiếm Nội
string.format("%s,%s,%s,%s",2,1,2749,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 2
string.format("%s,%s,%s,%s",2,1,2750,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 3
string.format("%s,%s,%s,%s",2,1,2751,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 4
string.format("%s,%s,%s,%s",2,1,2752,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 5
string.format("%s,%s,%s,%s",2,1,2753,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 6
string.format("%s,%s,%s,%s",2,1,2754,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 7
string.format("%s,%s,%s,%s",2,1,2755,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 8
string.format("%s,%s,%s,%s",2,1,2756,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 9
string.format("%s,%s,%s,%s",2,1,2757,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 10
string.format("%s,%s,%s,%s",2,1,2758,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 11
string.format("%s,%s,%s,%s",2,1,2759,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 12
string.format("%s,%s,%s,%s",2,1,2760,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 13
string.format("%s,%s,%s,%s",2,1,2761,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 14
string.format("%s,%s,%s,%s",2,1,2762,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 15
string.format("%s,%s,%s,%s",2,1,2763,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 16
string.format("%s,%s,%s,%s",2,1,2764,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 17
string.format("%s,%s,%s,%s",2,1,2765,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 18
string.format("%s,%s,%s,%s",2,1,2766,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 19
string.format("%s,%s,%s,%s",2,1,2767,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 20
string.format("%s,%s,%s,%s",2,1,2577,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Mộc Chùy Ngoại
string.format("%s,%s,%s,%s",2,1,2768,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 2
string.format("%s,%s,%s,%s",2,1,2769,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 3
string.format("%s,%s,%s,%s",2,1,2770,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 4
string.format("%s,%s,%s,%s",2,1,2771,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 5
string.format("%s,%s,%s,%s",2,1,2772,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 6
string.format("%s,%s,%s,%s",2,1,2773,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 7
string.format("%s,%s,%s,%s",2,1,2774,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 8
string.format("%s,%s,%s,%s",2,1,2775,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 9
string.format("%s,%s,%s,%s",2,1,2776,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 10
string.format("%s,%s,%s,%s",2,1,2777,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 11
string.format("%s,%s,%s,%s",2,1,2778,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 12
string.format("%s,%s,%s,%s",2,1,2779,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 13
string.format("%s,%s,%s,%s",2,1,2780,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 14
string.format("%s,%s,%s,%s",2,1,2781,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 15
string.format("%s,%s,%s,%s",2,1,2782,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 16
string.format("%s,%s,%s,%s",2,1,2783,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 17
string.format("%s,%s,%s,%s",2,1,2784,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 18
string.format("%s,%s,%s,%s",2,1,2785,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 19
string.format("%s,%s,%s,%s",2,1,2786,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Mộc Chùy Ngoại 20
string.format("%s,%s,%s,%s",2,1,2578,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Thủy Kiếm Nội
string.format("%s,%s,%s,%s",2,1,2787,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 2
string.format("%s,%s,%s,%s",2,1,2788,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 3
string.format("%s,%s,%s,%s",2,1,2789,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 4
string.format("%s,%s,%s,%s",2,1,2790,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 5
string.format("%s,%s,%s,%s",2,1,2791,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 6
string.format("%s,%s,%s,%s",2,1,2792,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 7
string.format("%s,%s,%s,%s",2,1,2793,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 8
string.format("%s,%s,%s,%s",2,1,2794,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 9
string.format("%s,%s,%s,%s",2,1,2795,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 10
string.format("%s,%s,%s,%s",2,1,2796,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 11
string.format("%s,%s,%s,%s",2,1,2797,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 12
string.format("%s,%s,%s,%s",2,1,2798,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 13
string.format("%s,%s,%s,%s",2,1,2799,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 14
string.format("%s,%s,%s,%s",2,1,2800,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 15
string.format("%s,%s,%s,%s",2,1,2801,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 16
string.format("%s,%s,%s,%s",2,1,2802,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 17
string.format("%s,%s,%s,%s",2,1,2803,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 18
string.format("%s,%s,%s,%s",2,1,2804,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 19
string.format("%s,%s,%s,%s",2,1,2805,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Kiếm Nội 20
string.format("%s,%s,%s,%s",2,1,2579,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Thủy Thủ Ngoại
string.format("%s,%s,%s,%s",2,1,2806,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 2
string.format("%s,%s,%s,%s",2,1,2807,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 3
string.format("%s,%s,%s,%s",2,1,2808,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 4
string.format("%s,%s,%s,%s",2,1,2809,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 5
string.format("%s,%s,%s,%s",2,1,2810,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 6
string.format("%s,%s,%s,%s",2,1,2811,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 7
string.format("%s,%s,%s,%s",2,1,2812,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 8
string.format("%s,%s,%s,%s",2,1,2813,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 9
string.format("%s,%s,%s,%s",2,1,2814,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 10
string.format("%s,%s,%s,%s",2,1,2815,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 11
string.format("%s,%s,%s,%s",2,1,2816,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 12
string.format("%s,%s,%s,%s",2,1,2817,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 13
string.format("%s,%s,%s,%s",2,1,2818,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 14
string.format("%s,%s,%s,%s",2,1,2819,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 15
string.format("%s,%s,%s,%s",2,1,2820,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 16
string.format("%s,%s,%s,%s",2,1,2821,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 17
string.format("%s,%s,%s,%s",2,1,2822,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 18
string.format("%s,%s,%s,%s",2,1,2823,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 19
string.format("%s,%s,%s,%s",2,1,2824,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 20
string.format("%s,%s,%s,%s",2,1,2580,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Thủy Thủ Nội
string.format("%s,%s,%s,%s",2,1,2825,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 2
string.format("%s,%s,%s,%s",2,1,2826,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 3
string.format("%s,%s,%s,%s",2,1,2827,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 4
string.format("%s,%s,%s,%s",2,1,2828,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 5
string.format("%s,%s,%s,%s",2,1,2829,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 6
string.format("%s,%s,%s,%s",2,1,2830,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 7
string.format("%s,%s,%s,%s",2,1,2831,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 8
string.format("%s,%s,%s,%s",2,1,2832,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 9
string.format("%s,%s,%s,%s",2,1,2833,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 10
string.format("%s,%s,%s,%s",2,1,2834,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 11
string.format("%s,%s,%s,%s",2,1,2835,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 12
string.format("%s,%s,%s,%s",2,1,2836,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 13
string.format("%s,%s,%s,%s",2,1,2837,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 14
string.format("%s,%s,%s,%s",2,1,2838,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 15
string.format("%s,%s,%s,%s",2,1,2839,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 16
string.format("%s,%s,%s,%s",2,1,2840,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 17
string.format("%s,%s,%s,%s",2,1,2841,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 18
string.format("%s,%s,%s,%s",2,1,2842,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 19
string.format("%s,%s,%s,%s",2,1,2843,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Nội 20
string.format("%s,%s,%s,%s",2,1,2581,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Thủy Đao Ngoại
string.format("%s,%s,%s,%s",2,1,2844,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 2
string.format("%s,%s,%s,%s",2,1,2845,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 3
string.format("%s,%s,%s,%s",2,1,2846,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 4
string.format("%s,%s,%s,%s",2,1,2847,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 5
string.format("%s,%s,%s,%s",2,1,2848,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 6
string.format("%s,%s,%s,%s",2,1,2849,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 7
string.format("%s,%s,%s,%s",2,1,2850,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 8
string.format("%s,%s,%s,%s",2,1,2851,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 9
string.format("%s,%s,%s,%s",2,1,2852,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 10
string.format("%s,%s,%s,%s",2,1,2853,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 11
string.format("%s,%s,%s,%s",2,1,2854,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 12
string.format("%s,%s,%s,%s",2,1,2855,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 13
string.format("%s,%s,%s,%s",2,1,2856,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 14
string.format("%s,%s,%s,%s",2,1,2857,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 15
string.format("%s,%s,%s,%s",2,1,2858,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 16
string.format("%s,%s,%s,%s",2,1,2859,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 17
string.format("%s,%s,%s,%s",2,1,2860,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 18
string.format("%s,%s,%s,%s",2,1,2861,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 19
string.format("%s,%s,%s,%s",2,1,2862,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thủy Đao Ngoại 20
string.format("%s,%s,%s,%s",2,1,2582,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Hỏa Thủ Nội
string.format("%s,%s,%s,%s",2,1,2863,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 2
string.format("%s,%s,%s,%s",2,1,2864,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 3
string.format("%s,%s,%s,%s",2,1,2865,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 4
string.format("%s,%s,%s,%s",2,1,2866,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 5
string.format("%s,%s,%s,%s",2,1,2867,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 6
string.format("%s,%s,%s,%s",2,1,2868,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 7
string.format("%s,%s,%s,%s",2,1,2869,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 8
string.format("%s,%s,%s,%s",2,1,2870,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 9
string.format("%s,%s,%s,%s",2,1,2871,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 10
string.format("%s,%s,%s,%s",2,1,2872,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 11
string.format("%s,%s,%s,%s",2,1,2873,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 12
string.format("%s,%s,%s,%s",2,1,2874,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 13
string.format("%s,%s,%s,%s",2,1,2875,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 14
string.format("%s,%s,%s,%s",2,1,2876,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 15
string.format("%s,%s,%s,%s",2,1,2877,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 16
string.format("%s,%s,%s,%s",2,1,2878,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 17
string.format("%s,%s,%s,%s",2,1,2879,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 18
string.format("%s,%s,%s,%s",2,1,2880,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 19
string.format("%s,%s,%s,%s",2,1,2881,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thủ Nội 20
string.format("%s,%s,%s,%s",2,1,2583,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Hỏa Côn Ngoại
string.format("%s,%s,%s,%s",2,1,2882,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 2
string.format("%s,%s,%s,%s",2,1,2883,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 3
string.format("%s,%s,%s,%s",2,1,2884,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 4
string.format("%s,%s,%s,%s",2,1,2885,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 5
string.format("%s,%s,%s,%s",2,1,2886,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 6
string.format("%s,%s,%s,%s",2,1,2887,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 7
string.format("%s,%s,%s,%s",2,1,2888,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 8
string.format("%s,%s,%s,%s",2,1,2889,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 9
string.format("%s,%s,%s,%s",2,1,2890,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 10
string.format("%s,%s,%s,%s",2,1,2891,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 11
string.format("%s,%s,%s,%s",2,1,2892,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 12
string.format("%s,%s,%s,%s",2,1,2893,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 13
string.format("%s,%s,%s,%s",2,1,2894,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 14
string.format("%s,%s,%s,%s",2,1,2895,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 15
string.format("%s,%s,%s,%s",2,1,2896,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 16
string.format("%s,%s,%s,%s",2,1,2897,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 17
string.format("%s,%s,%s,%s",2,1,2898,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 18
string.format("%s,%s,%s,%s",2,1,2899,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 19
string.format("%s,%s,%s,%s",2,1,2900,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Côn Ngoại 20
string.format("%s,%s,%s,%s",2,1,2584,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Hỏa Đao Nội
string.format("%s,%s,%s,%s",2,1,2901,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 2
string.format("%s,%s,%s,%s",2,1,2902,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 3
string.format("%s,%s,%s,%s",2,1,2903,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 4
string.format("%s,%s,%s,%s",2,1,2904,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 5
string.format("%s,%s,%s,%s",2,1,2905,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 6
string.format("%s,%s,%s,%s",2,1,2906,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 7
string.format("%s,%s,%s,%s",2,1,2907,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 8
string.format("%s,%s,%s,%s",2,1,2908,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 9
string.format("%s,%s,%s,%s",2,1,2909,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 10
string.format("%s,%s,%s,%s",2,1,2910,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 11
string.format("%s,%s,%s,%s",2,1,2911,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 12
string.format("%s,%s,%s,%s",2,1,2912,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 13
string.format("%s,%s,%s,%s",2,1,2913,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 14
string.format("%s,%s,%s,%s",2,1,2914,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 15
string.format("%s,%s,%s,%s",2,1,2915,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 16
string.format("%s,%s,%s,%s",2,1,2916,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 17
string.format("%s,%s,%s,%s",2,1,2917,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 18
string.format("%s,%s,%s,%s",2,1,2918,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 19
string.format("%s,%s,%s,%s",2,1,2919,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Đao Nội 20
string.format("%s,%s,%s,%s",2,1,2585,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Hỏa Thương Ngoại
string.format("%s,%s,%s,%s",2,1,2920,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 2
string.format("%s,%s,%s,%s",2,1,2921,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 3
string.format("%s,%s,%s,%s",2,1,2922,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 4
string.format("%s,%s,%s,%s",2,1,2923,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 5
string.format("%s,%s,%s,%s",2,1,2924,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 6
string.format("%s,%s,%s,%s",2,1,2925,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 7
string.format("%s,%s,%s,%s",2,1,2926,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 8
string.format("%s,%s,%s,%s",2,1,2927,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 9
string.format("%s,%s,%s,%s",2,1,2928,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 10
string.format("%s,%s,%s,%s",2,1,2929,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 11
string.format("%s,%s,%s,%s",2,1,2930,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 12
string.format("%s,%s,%s,%s",2,1,2931,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 13
string.format("%s,%s,%s,%s",2,1,2932,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 14
string.format("%s,%s,%s,%s",2,1,2933,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 15
string.format("%s,%s,%s,%s",2,1,2934,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 16
string.format("%s,%s,%s,%s",2,1,2935,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 17
string.format("%s,%s,%s,%s",2,1,2936,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 18
string.format("%s,%s,%s,%s",2,1,2937,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 19
string.format("%s,%s,%s,%s",2,1,2938,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Hỏa Thương Ngoại 20
string.format("%s,%s,%s,%s",2,1,2586,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Thổ Kiếm Nội
string.format("%s,%s,%s,%s",2,1,2939,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 2
string.format("%s,%s,%s,%s",2,1,2940,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 3
string.format("%s,%s,%s,%s",2,1,2941,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 4
string.format("%s,%s,%s,%s",2,1,2942,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 5
string.format("%s,%s,%s,%s",2,1,2943,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 6
string.format("%s,%s,%s,%s",2,1,2944,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 7
string.format("%s,%s,%s,%s",2,1,2945,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 8
string.format("%s,%s,%s,%s",2,1,2946,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 9
string.format("%s,%s,%s,%s",2,1,2947,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 10
string.format("%s,%s,%s,%s",2,1,2948,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 11
string.format("%s,%s,%s,%s",2,1,2949,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 12
string.format("%s,%s,%s,%s",2,1,2950,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 13
string.format("%s,%s,%s,%s",2,1,2951,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 14
string.format("%s,%s,%s,%s",2,1,2952,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 15
string.format("%s,%s,%s,%s",2,1,2953,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 16
string.format("%s,%s,%s,%s",2,1,2954,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 17
string.format("%s,%s,%s,%s",2,1,2955,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 18
string.format("%s,%s,%s,%s",2,1,2956,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 19
string.format("%s,%s,%s,%s",2,1,2957,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 20
string.format("%s,%s,%s,%s",2,1,2587,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Thổ Kiếm Ngoại
string.format("%s,%s,%s,%s",2,1,2958,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 2
string.format("%s,%s,%s,%s",2,1,2959,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 3
string.format("%s,%s,%s,%s",2,1,2960,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 4
string.format("%s,%s,%s,%s",2,1,2961,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 5
string.format("%s,%s,%s,%s",2,1,2962,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 6
string.format("%s,%s,%s,%s",2,1,2963,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 7
string.format("%s,%s,%s,%s",2,1,2964,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 8
string.format("%s,%s,%s,%s",2,1,2965,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 9
string.format("%s,%s,%s,%s",2,1,2966,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 10
string.format("%s,%s,%s,%s",2,1,2967,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 11
string.format("%s,%s,%s,%s",2,1,2968,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 12
string.format("%s,%s,%s,%s",2,1,2969,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 13
string.format("%s,%s,%s,%s",2,1,2970,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 14
string.format("%s,%s,%s,%s",2,1,2971,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 15
string.format("%s,%s,%s,%s",2,1,2972,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 16
string.format("%s,%s,%s,%s",2,1,2973,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 17
string.format("%s,%s,%s,%s",2,1,2974,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 18
string.format("%s,%s,%s,%s",2,1,2975,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 19
string.format("%s,%s,%s,%s",2,1,2976,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Ngoại 20
string.format("%s,%s,%s,%s",2,1,2588,10), --Thương Phong-Cấp 7 [1]-Hiệu ứng Thổ Đao Ngoại
string.format("%s,%s,%s,%s",2,1,2977,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 2
string.format("%s,%s,%s,%s",2,1,2978,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 3
string.format("%s,%s,%s,%s",2,1,2979,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 4
string.format("%s,%s,%s,%s",2,1,2980,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 5
string.format("%s,%s,%s,%s",2,1,2981,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 6
string.format("%s,%s,%s,%s",2,1,2982,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 7
string.format("%s,%s,%s,%s",2,1,2983,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 8
string.format("%s,%s,%s,%s",2,1,2984,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 9
string.format("%s,%s,%s,%s",2,1,2985,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 10
string.format("%s,%s,%s,%s",2,1,2986,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 11
string.format("%s,%s,%s,%s",2,1,2987,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 12
string.format("%s,%s,%s,%s",2,1,2988,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 13
string.format("%s,%s,%s,%s",2,1,2989,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 14
string.format("%s,%s,%s,%s",2,1,2990,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 15
string.format("%s,%s,%s,%s",2,1,2991,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 16
string.format("%s,%s,%s,%s",2,1,2992,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 17
string.format("%s,%s,%s,%s",2,1,2993,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 18
string.format("%s,%s,%s,%s",2,1,2994,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 19
string.format("%s,%s,%s,%s",2,1,2995,10), --Thương Phong-Cấp 7 (2-20)-Hiệu ứng Thổ Đao Ngoại 20
string.format("%s,%s,%s,%s",2,1,2589,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Kim_Thương
string.format("%s,%s,%s,%s",2,1,2996,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 2
string.format("%s,%s,%s,%s",2,1,2997,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 3
string.format("%s,%s,%s,%s",2,1,2998,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 4
string.format("%s,%s,%s,%s",2,1,2999,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 5
string.format("%s,%s,%s,%s",2,1,3000,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 6
string.format("%s,%s,%s,%s",2,1,3001,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 7
string.format("%s,%s,%s,%s",2,1,3002,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 8
string.format("%s,%s,%s,%s",2,1,3003,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 9
string.format("%s,%s,%s,%s",2,1,3004,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 10
string.format("%s,%s,%s,%s",2,1,3005,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 11
string.format("%s,%s,%s,%s",2,1,3006,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 12
string.format("%s,%s,%s,%s",2,1,3007,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 13
string.format("%s,%s,%s,%s",2,1,3008,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 14
string.format("%s,%s,%s,%s",2,1,3009,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 15
string.format("%s,%s,%s,%s",2,1,3010,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 16
string.format("%s,%s,%s,%s",2,1,3011,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 17
string.format("%s,%s,%s,%s",2,1,3012,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 18
string.format("%s,%s,%s,%s",2,1,3013,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 19
string.format("%s,%s,%s,%s",2,1,3014,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thương 20
string.format("%s,%s,%s,%s",2,1,2590,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Kim_Chùy
string.format("%s,%s,%s,%s",2,1,3015,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 2
string.format("%s,%s,%s,%s",2,1,3016,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 3
string.format("%s,%s,%s,%s",2,1,3017,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 4
string.format("%s,%s,%s,%s",2,1,3018,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 5
string.format("%s,%s,%s,%s",2,1,3019,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 6
string.format("%s,%s,%s,%s",2,1,3020,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 7
string.format("%s,%s,%s,%s",2,1,3021,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 8
string.format("%s,%s,%s,%s",2,1,3022,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 9
string.format("%s,%s,%s,%s",2,1,3023,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 10
string.format("%s,%s,%s,%s",2,1,3024,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 11
string.format("%s,%s,%s,%s",2,1,3025,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 12
string.format("%s,%s,%s,%s",2,1,3026,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 13
string.format("%s,%s,%s,%s",2,1,3027,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 14
string.format("%s,%s,%s,%s",2,1,3028,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 15
string.format("%s,%s,%s,%s",2,1,3029,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 16
string.format("%s,%s,%s,%s",2,1,3030,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 17
string.format("%s,%s,%s,%s",2,1,3031,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 18
string.format("%s,%s,%s,%s",2,1,3032,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 19
string.format("%s,%s,%s,%s",2,1,3033,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Chùy 20
string.format("%s,%s,%s,%s",2,1,2591,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Kim_Thủ
string.format("%s,%s,%s,%s",2,1,3034,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 2
string.format("%s,%s,%s,%s",2,1,3035,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 3
string.format("%s,%s,%s,%s",2,1,3036,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 4
string.format("%s,%s,%s,%s",2,1,3037,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 5
string.format("%s,%s,%s,%s",2,1,3038,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 6
string.format("%s,%s,%s,%s",2,1,3039,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 7
string.format("%s,%s,%s,%s",2,1,3040,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 8
string.format("%s,%s,%s,%s",2,1,3041,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 9
string.format("%s,%s,%s,%s",2,1,3042,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 10
string.format("%s,%s,%s,%s",2,1,3043,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 11
string.format("%s,%s,%s,%s",2,1,3044,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 12
string.format("%s,%s,%s,%s",2,1,3045,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 13
string.format("%s,%s,%s,%s",2,1,3046,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 14
string.format("%s,%s,%s,%s",2,1,3047,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 15
string.format("%s,%s,%s,%s",2,1,3048,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 16
string.format("%s,%s,%s,%s",2,1,3049,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 17
string.format("%s,%s,%s,%s",2,1,3050,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 18
string.format("%s,%s,%s,%s",2,1,3051,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 19
string.format("%s,%s,%s,%s",2,1,3052,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Kim_Thủ 20
string.format("%s,%s,%s,%s",2,1,2592,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Kim_Côn
string.format("%s,%s,%s,%s",2,1,3053,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 2
string.format("%s,%s,%s,%s",2,1,3054,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 3
string.format("%s,%s,%s,%s",2,1,3055,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 4
string.format("%s,%s,%s,%s",2,1,3056,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 5
string.format("%s,%s,%s,%s",2,1,3057,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 6
string.format("%s,%s,%s,%s",2,1,3058,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 7
string.format("%s,%s,%s,%s",2,1,3059,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 8
string.format("%s,%s,%s,%s",2,1,3060,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 9
string.format("%s,%s,%s,%s",2,1,3061,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 10
string.format("%s,%s,%s,%s",2,1,3062,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 11
string.format("%s,%s,%s,%s",2,1,3063,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 12
string.format("%s,%s,%s,%s",2,1,3064,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 13
string.format("%s,%s,%s,%s",2,1,3065,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 14
string.format("%s,%s,%s,%s",2,1,3066,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 15
string.format("%s,%s,%s,%s",2,1,3067,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 16
string.format("%s,%s,%s,%s",2,1,3068,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 17
string.format("%s,%s,%s,%s",2,1,3069,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 18
string.format("%s,%s,%s,%s",2,1,3070,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 19
string.format("%s,%s,%s,%s",2,1,3071,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Côn 20
string.format("%s,%s,%s,%s",2,1,2593,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Kim_Đao
string.format("%s,%s,%s,%s",2,1,3072,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 2
string.format("%s,%s,%s,%s",2,1,3073,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 3
string.format("%s,%s,%s,%s",2,1,3074,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 4
string.format("%s,%s,%s,%s",2,1,3075,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 5
string.format("%s,%s,%s,%s",2,1,3076,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 6
string.format("%s,%s,%s,%s",2,1,3077,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 7
string.format("%s,%s,%s,%s",2,1,3078,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 8
string.format("%s,%s,%s,%s",2,1,3079,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 9
string.format("%s,%s,%s,%s",2,1,3080,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 10
string.format("%s,%s,%s,%s",2,1,3081,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 11
string.format("%s,%s,%s,%s",2,1,3082,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 12
string.format("%s,%s,%s,%s",2,1,3083,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 13
string.format("%s,%s,%s,%s",2,1,3084,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 14
string.format("%s,%s,%s,%s",2,1,3085,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 15
string.format("%s,%s,%s,%s",2,1,3086,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 16
string.format("%s,%s,%s,%s",2,1,3087,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 17
string.format("%s,%s,%s,%s",2,1,3088,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 18
string.format("%s,%s,%s,%s",2,1,3089,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 19
string.format("%s,%s,%s,%s",2,1,3090,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Đao 20
string.format("%s,%s,%s,%s",2,1,2594,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Kim_Kiếm
string.format("%s,%s,%s,%s",2,1,3091,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 2
string.format("%s,%s,%s,%s",2,1,3092,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 3
string.format("%s,%s,%s,%s",2,1,3093,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 4
string.format("%s,%s,%s,%s",2,1,3094,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 5
string.format("%s,%s,%s,%s",2,1,3095,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 6
string.format("%s,%s,%s,%s",2,1,3096,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 7
string.format("%s,%s,%s,%s",2,1,3097,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 8
string.format("%s,%s,%s,%s",2,1,3098,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 9
string.format("%s,%s,%s,%s",2,1,3099,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 10
string.format("%s,%s,%s,%s",2,1,3100,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 11
string.format("%s,%s,%s,%s",2,1,3101,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 12
string.format("%s,%s,%s,%s",2,1,3102,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 13
string.format("%s,%s,%s,%s",2,1,3103,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 14
string.format("%s,%s,%s,%s",2,1,3104,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 15
string.format("%s,%s,%s,%s",2,1,3105,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 16
string.format("%s,%s,%s,%s",2,1,3106,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 17
string.format("%s,%s,%s,%s",2,1,3107,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 18
string.format("%s,%s,%s,%s",2,1,3108,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 19
string.format("%s,%s,%s,%s",2,1,3109,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Kim_Kiếm 20
string.format("%s,%s,%s,%s",2,1,2595,10), --Thương Phong-Cấp 7 [1]_Nội công_Kim_Đao
string.format("%s,%s,%s,%s",2,1,3110,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 2
string.format("%s,%s,%s,%s",2,1,3111,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 3
string.format("%s,%s,%s,%s",2,1,3112,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 4
string.format("%s,%s,%s,%s",2,1,3113,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 5
string.format("%s,%s,%s,%s",2,1,3114,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 6
string.format("%s,%s,%s,%s",2,1,3115,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 7
string.format("%s,%s,%s,%s",2,1,3116,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 8
string.format("%s,%s,%s,%s",2,1,3117,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 9
string.format("%s,%s,%s,%s",2,1,3118,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 10
string.format("%s,%s,%s,%s",2,1,3119,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 11
string.format("%s,%s,%s,%s",2,1,3120,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 12
string.format("%s,%s,%s,%s",2,1,3121,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 13
string.format("%s,%s,%s,%s",2,1,3122,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 14
string.format("%s,%s,%s,%s",2,1,3123,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 15
string.format("%s,%s,%s,%s",2,1,3124,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 16
string.format("%s,%s,%s,%s",2,1,3125,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 17
string.format("%s,%s,%s,%s",2,1,3126,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 18
string.format("%s,%s,%s,%s",2,1,3127,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 19
string.format("%s,%s,%s,%s",2,1,3128,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Đao 20
string.format("%s,%s,%s,%s",2,1,2596,10), --Thương Phong-Cấp 7 [1]_Nội công_Kim_Kiếm
string.format("%s,%s,%s,%s",2,1,3129,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 2
string.format("%s,%s,%s,%s",2,1,3130,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 3
string.format("%s,%s,%s,%s",2,1,3131,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 4
string.format("%s,%s,%s,%s",2,1,3132,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 5
string.format("%s,%s,%s,%s",2,1,3133,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 6
string.format("%s,%s,%s,%s",2,1,3134,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 7
string.format("%s,%s,%s,%s",2,1,3135,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 8
string.format("%s,%s,%s,%s",2,1,3136,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 9
string.format("%s,%s,%s,%s",2,1,3137,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 10
string.format("%s,%s,%s,%s",2,1,3138,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 11
string.format("%s,%s,%s,%s",2,1,3139,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 12
string.format("%s,%s,%s,%s",2,1,3140,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 13
string.format("%s,%s,%s,%s",2,1,3141,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 14
string.format("%s,%s,%s,%s",2,1,3142,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 15
string.format("%s,%s,%s,%s",2,1,3143,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 16
string.format("%s,%s,%s,%s",2,1,3144,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 17
string.format("%s,%s,%s,%s",2,1,3145,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 18
string.format("%s,%s,%s,%s",2,1,3146,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 19
string.format("%s,%s,%s,%s",2,1,3147,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Kiếm 20
string.format("%s,%s,%s,%s",2,1,2597,10), --Thương Phong-Cấp 7 [1]_Nội công_Kim_Thủ
string.format("%s,%s,%s,%s",2,1,3148,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 2
string.format("%s,%s,%s,%s",2,1,3149,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 3
string.format("%s,%s,%s,%s",2,1,3150,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 4
string.format("%s,%s,%s,%s",2,1,3151,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 5
string.format("%s,%s,%s,%s",2,1,3152,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 6
string.format("%s,%s,%s,%s",2,1,3153,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 7
string.format("%s,%s,%s,%s",2,1,3154,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 8
string.format("%s,%s,%s,%s",2,1,3155,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 9
string.format("%s,%s,%s,%s",2,1,3156,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 10
string.format("%s,%s,%s,%s",2,1,3157,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 11
string.format("%s,%s,%s,%s",2,1,3158,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 12
string.format("%s,%s,%s,%s",2,1,3159,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 13
string.format("%s,%s,%s,%s",2,1,3160,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 14
string.format("%s,%s,%s,%s",2,1,3161,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 15
string.format("%s,%s,%s,%s",2,1,3162,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 16
string.format("%s,%s,%s,%s",2,1,3163,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 17
string.format("%s,%s,%s,%s",2,1,3164,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 18
string.format("%s,%s,%s,%s",2,1,3165,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 19
string.format("%s,%s,%s,%s",2,1,3166,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Kim_Thủ 20
string.format("%s,%s,%s,%s",2,1,2598,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Mộc_Thương
string.format("%s,%s,%s,%s",2,1,3167,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 2
string.format("%s,%s,%s,%s",2,1,3168,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 3
string.format("%s,%s,%s,%s",2,1,3169,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 4
string.format("%s,%s,%s,%s",2,1,3170,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 5
string.format("%s,%s,%s,%s",2,1,3171,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 6
string.format("%s,%s,%s,%s",2,1,3172,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 7
string.format("%s,%s,%s,%s",2,1,3173,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 8
string.format("%s,%s,%s,%s",2,1,3174,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 9
string.format("%s,%s,%s,%s",2,1,3175,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 10
string.format("%s,%s,%s,%s",2,1,3176,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 11
string.format("%s,%s,%s,%s",2,1,3177,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 12
string.format("%s,%s,%s,%s",2,1,3178,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 13
string.format("%s,%s,%s,%s",2,1,3179,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 14
string.format("%s,%s,%s,%s",2,1,3180,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 15
string.format("%s,%s,%s,%s",2,1,3181,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 16
string.format("%s,%s,%s,%s",2,1,3182,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 17
string.format("%s,%s,%s,%s",2,1,3183,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 18
string.format("%s,%s,%s,%s",2,1,3184,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 19
string.format("%s,%s,%s,%s",2,1,3185,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thương 20
string.format("%s,%s,%s,%s",2,1,2599,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Mộc_Chùy
string.format("%s,%s,%s,%s",2,1,3186,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 2
string.format("%s,%s,%s,%s",2,1,3187,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 3
string.format("%s,%s,%s,%s",2,1,3188,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 4
string.format("%s,%s,%s,%s",2,1,3189,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 5
string.format("%s,%s,%s,%s",2,1,3190,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 6
string.format("%s,%s,%s,%s",2,1,3191,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 7
string.format("%s,%s,%s,%s",2,1,3192,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 8
string.format("%s,%s,%s,%s",2,1,3193,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 9
string.format("%s,%s,%s,%s",2,1,3194,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 10
string.format("%s,%s,%s,%s",2,1,3195,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 11
string.format("%s,%s,%s,%s",2,1,3196,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 12
string.format("%s,%s,%s,%s",2,1,3197,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 13
string.format("%s,%s,%s,%s",2,1,3198,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 14
string.format("%s,%s,%s,%s",2,1,3199,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 15
string.format("%s,%s,%s,%s",2,1,3200,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 16
string.format("%s,%s,%s,%s",2,1,3201,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 17
string.format("%s,%s,%s,%s",2,1,3202,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 18
string.format("%s,%s,%s,%s",2,1,3203,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 19
string.format("%s,%s,%s,%s",2,1,3204,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Chùy 20
string.format("%s,%s,%s,%s",2,1,2600,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Mộc_Thủ
string.format("%s,%s,%s,%s",2,1,3205,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 2
string.format("%s,%s,%s,%s",2,1,3206,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 3
string.format("%s,%s,%s,%s",2,1,3207,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 4
string.format("%s,%s,%s,%s",2,1,3208,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 5
string.format("%s,%s,%s,%s",2,1,3209,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 6
string.format("%s,%s,%s,%s",2,1,3210,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 7
string.format("%s,%s,%s,%s",2,1,3211,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 8
string.format("%s,%s,%s,%s",2,1,3212,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 9
string.format("%s,%s,%s,%s",2,1,3213,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 10
string.format("%s,%s,%s,%s",2,1,3214,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 11
string.format("%s,%s,%s,%s",2,1,3215,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 12
string.format("%s,%s,%s,%s",2,1,3216,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 13
string.format("%s,%s,%s,%s",2,1,3217,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 14
string.format("%s,%s,%s,%s",2,1,3218,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 15
string.format("%s,%s,%s,%s",2,1,3219,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 16
string.format("%s,%s,%s,%s",2,1,3220,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 17
string.format("%s,%s,%s,%s",2,1,3221,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 18
string.format("%s,%s,%s,%s",2,1,3222,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 19
string.format("%s,%s,%s,%s",2,1,3223,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Mộc_Thủ 20
string.format("%s,%s,%s,%s",2,1,2601,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Mộc_Côn
string.format("%s,%s,%s,%s",2,1,3224,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 2
string.format("%s,%s,%s,%s",2,1,3225,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 3
string.format("%s,%s,%s,%s",2,1,3226,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 4
string.format("%s,%s,%s,%s",2,1,3227,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 5
string.format("%s,%s,%s,%s",2,1,3228,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 6
string.format("%s,%s,%s,%s",2,1,3229,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 7
string.format("%s,%s,%s,%s",2,1,3230,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 8
string.format("%s,%s,%s,%s",2,1,3231,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 9
string.format("%s,%s,%s,%s",2,1,3232,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 10
string.format("%s,%s,%s,%s",2,1,3233,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 11
string.format("%s,%s,%s,%s",2,1,3234,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 12
string.format("%s,%s,%s,%s",2,1,3235,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 13
string.format("%s,%s,%s,%s",2,1,3236,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 14
string.format("%s,%s,%s,%s",2,1,3237,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 15
string.format("%s,%s,%s,%s",2,1,3238,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 16
string.format("%s,%s,%s,%s",2,1,3239,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 17
string.format("%s,%s,%s,%s",2,1,3240,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 18
string.format("%s,%s,%s,%s",2,1,3241,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 19
string.format("%s,%s,%s,%s",2,1,3242,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Côn 20
string.format("%s,%s,%s,%s",2,1,2602,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Mộc_Đao
string.format("%s,%s,%s,%s",2,1,3243,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 2
string.format("%s,%s,%s,%s",2,1,3244,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 3
string.format("%s,%s,%s,%s",2,1,3245,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 4
string.format("%s,%s,%s,%s",2,1,3246,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 5
string.format("%s,%s,%s,%s",2,1,3247,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 6
string.format("%s,%s,%s,%s",2,1,3248,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 7
string.format("%s,%s,%s,%s",2,1,3249,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 8
string.format("%s,%s,%s,%s",2,1,3250,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 9
string.format("%s,%s,%s,%s",2,1,3251,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 10
string.format("%s,%s,%s,%s",2,1,3252,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 11
string.format("%s,%s,%s,%s",2,1,3253,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 12
string.format("%s,%s,%s,%s",2,1,3254,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 13
string.format("%s,%s,%s,%s",2,1,3255,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 14
string.format("%s,%s,%s,%s",2,1,3256,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 15
string.format("%s,%s,%s,%s",2,1,3257,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 16
string.format("%s,%s,%s,%s",2,1,3258,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 17
string.format("%s,%s,%s,%s",2,1,3259,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 18
string.format("%s,%s,%s,%s",2,1,3260,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 19
string.format("%s,%s,%s,%s",2,1,3261,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Đao 20
string.format("%s,%s,%s,%s",2,1,2603,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Mộc_Kiếm
string.format("%s,%s,%s,%s",2,1,3262,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 2
string.format("%s,%s,%s,%s",2,1,3263,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 3
string.format("%s,%s,%s,%s",2,1,3264,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 4
string.format("%s,%s,%s,%s",2,1,3265,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 5
string.format("%s,%s,%s,%s",2,1,3266,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 6
string.format("%s,%s,%s,%s",2,1,3267,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 7
string.format("%s,%s,%s,%s",2,1,3268,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 8
string.format("%s,%s,%s,%s",2,1,3269,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 9
string.format("%s,%s,%s,%s",2,1,3270,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 10
string.format("%s,%s,%s,%s",2,1,3271,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 11
string.format("%s,%s,%s,%s",2,1,3272,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 12
string.format("%s,%s,%s,%s",2,1,3273,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 13
string.format("%s,%s,%s,%s",2,1,3274,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 14
string.format("%s,%s,%s,%s",2,1,3275,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 15
string.format("%s,%s,%s,%s",2,1,3276,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 16
string.format("%s,%s,%s,%s",2,1,3277,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 17
string.format("%s,%s,%s,%s",2,1,3278,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 18
string.format("%s,%s,%s,%s",2,1,3279,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 19
string.format("%s,%s,%s,%s",2,1,3280,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Kiếm 20
string.format("%s,%s,%s,%s",2,1,2604,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Mộc_Thương
string.format("%s,%s,%s,%s",2,1,3281,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 2
string.format("%s,%s,%s,%s",2,1,3282,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 3
string.format("%s,%s,%s,%s",2,1,3283,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 4
string.format("%s,%s,%s,%s",2,1,3284,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 5
string.format("%s,%s,%s,%s",2,1,3285,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 6
string.format("%s,%s,%s,%s",2,1,3286,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 7
string.format("%s,%s,%s,%s",2,1,3287,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 8
string.format("%s,%s,%s,%s",2,1,3288,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 9
string.format("%s,%s,%s,%s",2,1,3289,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 10
string.format("%s,%s,%s,%s",2,1,3290,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 11
string.format("%s,%s,%s,%s",2,1,3291,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 12
string.format("%s,%s,%s,%s",2,1,3292,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 13
string.format("%s,%s,%s,%s",2,1,3293,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 14
string.format("%s,%s,%s,%s",2,1,3294,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 15
string.format("%s,%s,%s,%s",2,1,3295,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 16
string.format("%s,%s,%s,%s",2,1,3296,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 17
string.format("%s,%s,%s,%s",2,1,3297,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 18
string.format("%s,%s,%s,%s",2,1,3298,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 19
string.format("%s,%s,%s,%s",2,1,3299,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Mộc_Thương 20
string.format("%s,%s,%s,%s",2,1,2605,10), --Thương Phong-Cấp 7 [1]_Nội công_Mộc_Đao
string.format("%s,%s,%s,%s",2,1,3300,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 2
string.format("%s,%s,%s,%s",2,1,3301,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 3
string.format("%s,%s,%s,%s",2,1,3302,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 4
string.format("%s,%s,%s,%s",2,1,3303,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 5
string.format("%s,%s,%s,%s",2,1,3304,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 6
string.format("%s,%s,%s,%s",2,1,3305,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 7
string.format("%s,%s,%s,%s",2,1,3306,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 8
string.format("%s,%s,%s,%s",2,1,3307,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 9
string.format("%s,%s,%s,%s",2,1,3308,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 10
string.format("%s,%s,%s,%s",2,1,3309,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 11
string.format("%s,%s,%s,%s",2,1,3310,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 12
string.format("%s,%s,%s,%s",2,1,3311,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 13
string.format("%s,%s,%s,%s",2,1,3312,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 14
string.format("%s,%s,%s,%s",2,1,3313,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 15
string.format("%s,%s,%s,%s",2,1,3314,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 16
string.format("%s,%s,%s,%s",2,1,3315,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 17
string.format("%s,%s,%s,%s",2,1,3316,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 18
string.format("%s,%s,%s,%s",2,1,3317,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 19
string.format("%s,%s,%s,%s",2,1,3318,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Đao 20
string.format("%s,%s,%s,%s",2,1,2606,10), --Thương Phong-Cấp 7 [1]_Nội công_Mộc_Kiếm
string.format("%s,%s,%s,%s",2,1,3319,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 2
string.format("%s,%s,%s,%s",2,1,3320,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 3
string.format("%s,%s,%s,%s",2,1,3321,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 4
string.format("%s,%s,%s,%s",2,1,3322,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 5
string.format("%s,%s,%s,%s",2,1,3323,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 6
string.format("%s,%s,%s,%s",2,1,3324,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 7
string.format("%s,%s,%s,%s",2,1,3325,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 8
string.format("%s,%s,%s,%s",2,1,3326,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 9
string.format("%s,%s,%s,%s",2,1,3327,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 10
string.format("%s,%s,%s,%s",2,1,3328,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 11
string.format("%s,%s,%s,%s",2,1,3329,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 12
string.format("%s,%s,%s,%s",2,1,3330,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 13
string.format("%s,%s,%s,%s",2,1,3331,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 14
string.format("%s,%s,%s,%s",2,1,3332,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 15
string.format("%s,%s,%s,%s",2,1,3333,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 16
string.format("%s,%s,%s,%s",2,1,3334,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 17
string.format("%s,%s,%s,%s",2,1,3335,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 18
string.format("%s,%s,%s,%s",2,1,3336,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 19
string.format("%s,%s,%s,%s",2,1,3337,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Kiếm 20
string.format("%s,%s,%s,%s",2,1,2607,10), --Thương Phong-Cấp 7 [1]_Nội công_Mộc_Thủ
string.format("%s,%s,%s,%s",2,1,3338,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 2
string.format("%s,%s,%s,%s",2,1,3339,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 3
string.format("%s,%s,%s,%s",2,1,3340,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 4
string.format("%s,%s,%s,%s",2,1,3341,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 5
string.format("%s,%s,%s,%s",2,1,3342,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 6
string.format("%s,%s,%s,%s",2,1,3343,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 7
string.format("%s,%s,%s,%s",2,1,3344,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 8
string.format("%s,%s,%s,%s",2,1,3345,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 9
string.format("%s,%s,%s,%s",2,1,3346,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 10
string.format("%s,%s,%s,%s",2,1,3347,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 11
string.format("%s,%s,%s,%s",2,1,3348,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 12
string.format("%s,%s,%s,%s",2,1,3349,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 13
string.format("%s,%s,%s,%s",2,1,3350,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 14
string.format("%s,%s,%s,%s",2,1,3351,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 15
string.format("%s,%s,%s,%s",2,1,3352,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 16
string.format("%s,%s,%s,%s",2,1,3353,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 17
string.format("%s,%s,%s,%s",2,1,3354,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 18
string.format("%s,%s,%s,%s",2,1,3355,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 19
string.format("%s,%s,%s,%s",2,1,3356,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Mộc_Thủ 20
string.format("%s,%s,%s,%s",2,1,2608,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Thủy_Thương
string.format("%s,%s,%s,%s",2,1,3357,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 2
string.format("%s,%s,%s,%s",2,1,3358,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 3
string.format("%s,%s,%s,%s",2,1,3359,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 4
string.format("%s,%s,%s,%s",2,1,3360,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 5
string.format("%s,%s,%s,%s",2,1,3361,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 6
string.format("%s,%s,%s,%s",2,1,3362,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 7
string.format("%s,%s,%s,%s",2,1,3363,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 8
string.format("%s,%s,%s,%s",2,1,3364,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 9
string.format("%s,%s,%s,%s",2,1,3365,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 10
string.format("%s,%s,%s,%s",2,1,3366,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 11
string.format("%s,%s,%s,%s",2,1,3367,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 12
string.format("%s,%s,%s,%s",2,1,3368,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 13
string.format("%s,%s,%s,%s",2,1,3369,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 14
string.format("%s,%s,%s,%s",2,1,3370,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 15
string.format("%s,%s,%s,%s",2,1,3371,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 16
string.format("%s,%s,%s,%s",2,1,3372,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 17
string.format("%s,%s,%s,%s",2,1,3373,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 18
string.format("%s,%s,%s,%s",2,1,3374,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 19
string.format("%s,%s,%s,%s",2,1,3375,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thương 20
string.format("%s,%s,%s,%s",2,1,2609,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Thủy_Chùy
string.format("%s,%s,%s,%s",2,1,3376,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 2
string.format("%s,%s,%s,%s",2,1,3377,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 3
string.format("%s,%s,%s,%s",2,1,3378,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 4
string.format("%s,%s,%s,%s",2,1,3379,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 5
string.format("%s,%s,%s,%s",2,1,3380,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 6
string.format("%s,%s,%s,%s",2,1,3381,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 7
string.format("%s,%s,%s,%s",2,1,3382,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 8
string.format("%s,%s,%s,%s",2,1,3383,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 9
string.format("%s,%s,%s,%s",2,1,3384,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 10
string.format("%s,%s,%s,%s",2,1,3385,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 11
string.format("%s,%s,%s,%s",2,1,3386,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 12
string.format("%s,%s,%s,%s",2,1,3387,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 13
string.format("%s,%s,%s,%s",2,1,3388,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 14
string.format("%s,%s,%s,%s",2,1,3389,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 15
string.format("%s,%s,%s,%s",2,1,3390,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 16
string.format("%s,%s,%s,%s",2,1,3391,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 17
string.format("%s,%s,%s,%s",2,1,3392,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 18
string.format("%s,%s,%s,%s",2,1,3393,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 19
string.format("%s,%s,%s,%s",2,1,3394,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Chùy 20
string.format("%s,%s,%s,%s",2,1,2610,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Thủy_Thủ
string.format("%s,%s,%s,%s",2,1,3395,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 2
string.format("%s,%s,%s,%s",2,1,3396,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 3
string.format("%s,%s,%s,%s",2,1,3397,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 4
string.format("%s,%s,%s,%s",2,1,3398,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 5
string.format("%s,%s,%s,%s",2,1,3399,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 6
string.format("%s,%s,%s,%s",2,1,3400,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 7
string.format("%s,%s,%s,%s",2,1,3401,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 8
string.format("%s,%s,%s,%s",2,1,3402,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 9
string.format("%s,%s,%s,%s",2,1,3403,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 10
string.format("%s,%s,%s,%s",2,1,3404,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 11
string.format("%s,%s,%s,%s",2,1,3405,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 12
string.format("%s,%s,%s,%s",2,1,3406,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 13
string.format("%s,%s,%s,%s",2,1,3407,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 14
string.format("%s,%s,%s,%s",2,1,3408,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 15
string.format("%s,%s,%s,%s",2,1,3409,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 16
string.format("%s,%s,%s,%s",2,1,3410,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 17
string.format("%s,%s,%s,%s",2,1,3411,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 18
string.format("%s,%s,%s,%s",2,1,3412,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 19
string.format("%s,%s,%s,%s",2,1,3413,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thủy_Thủ 20
string.format("%s,%s,%s,%s",2,1,2611,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Thủy_Côn
string.format("%s,%s,%s,%s",2,1,3414,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 2
string.format("%s,%s,%s,%s",2,1,3415,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 3
string.format("%s,%s,%s,%s",2,1,3416,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 4
string.format("%s,%s,%s,%s",2,1,3417,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 5
string.format("%s,%s,%s,%s",2,1,3418,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 6
string.format("%s,%s,%s,%s",2,1,3419,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 7
string.format("%s,%s,%s,%s",2,1,3420,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 8
string.format("%s,%s,%s,%s",2,1,3421,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 9
string.format("%s,%s,%s,%s",2,1,3422,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 10
string.format("%s,%s,%s,%s",2,1,3423,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 11
string.format("%s,%s,%s,%s",2,1,3424,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 12
string.format("%s,%s,%s,%s",2,1,3425,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 13
string.format("%s,%s,%s,%s",2,1,3426,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 14
string.format("%s,%s,%s,%s",2,1,3427,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 15
string.format("%s,%s,%s,%s",2,1,3428,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 16
string.format("%s,%s,%s,%s",2,1,3429,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 17
string.format("%s,%s,%s,%s",2,1,3430,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 18
string.format("%s,%s,%s,%s",2,1,3431,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 19
string.format("%s,%s,%s,%s",2,1,3432,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Côn 20
string.format("%s,%s,%s,%s",2,1,2612,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Thủy_Đao
string.format("%s,%s,%s,%s",2,1,3433,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 2
string.format("%s,%s,%s,%s",2,1,3434,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 3
string.format("%s,%s,%s,%s",2,1,3435,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 4
string.format("%s,%s,%s,%s",2,1,3436,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 5
string.format("%s,%s,%s,%s",2,1,3437,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 6
string.format("%s,%s,%s,%s",2,1,3438,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 7
string.format("%s,%s,%s,%s",2,1,3439,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 8
string.format("%s,%s,%s,%s",2,1,3440,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 9
string.format("%s,%s,%s,%s",2,1,3441,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 10
string.format("%s,%s,%s,%s",2,1,3442,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 11
string.format("%s,%s,%s,%s",2,1,3443,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 12
string.format("%s,%s,%s,%s",2,1,3444,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 13
string.format("%s,%s,%s,%s",2,1,3445,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 14
string.format("%s,%s,%s,%s",2,1,3446,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 15
string.format("%s,%s,%s,%s",2,1,3447,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 16
string.format("%s,%s,%s,%s",2,1,3448,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 17
string.format("%s,%s,%s,%s",2,1,3449,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 18
string.format("%s,%s,%s,%s",2,1,3450,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 19
string.format("%s,%s,%s,%s",2,1,3451,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Đao 20
string.format("%s,%s,%s,%s",2,1,2613,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Thủy_Kiếm
string.format("%s,%s,%s,%s",2,1,3452,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 2
string.format("%s,%s,%s,%s",2,1,3453,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 3
string.format("%s,%s,%s,%s",2,1,3454,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 4
string.format("%s,%s,%s,%s",2,1,3455,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 5
string.format("%s,%s,%s,%s",2,1,3456,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 6
string.format("%s,%s,%s,%s",2,1,3457,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 7
string.format("%s,%s,%s,%s",2,1,3458,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 8
string.format("%s,%s,%s,%s",2,1,3459,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 9
string.format("%s,%s,%s,%s",2,1,3460,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 10
string.format("%s,%s,%s,%s",2,1,3461,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 11
string.format("%s,%s,%s,%s",2,1,3462,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 12
string.format("%s,%s,%s,%s",2,1,3463,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 13
string.format("%s,%s,%s,%s",2,1,3464,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 14
string.format("%s,%s,%s,%s",2,1,3465,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 15
string.format("%s,%s,%s,%s",2,1,3466,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 16
string.format("%s,%s,%s,%s",2,1,3467,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 17
string.format("%s,%s,%s,%s",2,1,3468,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 18
string.format("%s,%s,%s,%s",2,1,3469,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 19
string.format("%s,%s,%s,%s",2,1,3470,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thủy_Kiếm 20
string.format("%s,%s,%s,%s",2,1,2614,10), --Thương Phong-Cấp 7 [1]_Nội công_Thủy_Đao
string.format("%s,%s,%s,%s",2,1,3471,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 2
string.format("%s,%s,%s,%s",2,1,3472,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 3
string.format("%s,%s,%s,%s",2,1,3473,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 4
string.format("%s,%s,%s,%s",2,1,3474,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 5
string.format("%s,%s,%s,%s",2,1,3475,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 6
string.format("%s,%s,%s,%s",2,1,3476,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 7
string.format("%s,%s,%s,%s",2,1,3477,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 8
string.format("%s,%s,%s,%s",2,1,3478,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 9
string.format("%s,%s,%s,%s",2,1,3479,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 10
string.format("%s,%s,%s,%s",2,1,3480,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 11
string.format("%s,%s,%s,%s",2,1,3481,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 12
string.format("%s,%s,%s,%s",2,1,3482,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 13
string.format("%s,%s,%s,%s",2,1,3483,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 14
string.format("%s,%s,%s,%s",2,1,3484,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 15
string.format("%s,%s,%s,%s",2,1,3485,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 16
string.format("%s,%s,%s,%s",2,1,3486,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 17
string.format("%s,%s,%s,%s",2,1,3487,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 18
string.format("%s,%s,%s,%s",2,1,3488,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 19
string.format("%s,%s,%s,%s",2,1,3489,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Đao 20
string.format("%s,%s,%s,%s",2,1,2615,10), --Thương Phong-Cấp 7 [1]_Nội công_Thủy_Kiếm
string.format("%s,%s,%s,%s",2,1,3490,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 2
string.format("%s,%s,%s,%s",2,1,3491,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 3
string.format("%s,%s,%s,%s",2,1,3492,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 4
string.format("%s,%s,%s,%s",2,1,3493,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 5
string.format("%s,%s,%s,%s",2,1,3494,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 6
string.format("%s,%s,%s,%s",2,1,3495,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 7
string.format("%s,%s,%s,%s",2,1,3496,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 8
string.format("%s,%s,%s,%s",2,1,3497,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 9
string.format("%s,%s,%s,%s",2,1,3498,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 10
string.format("%s,%s,%s,%s",2,1,3499,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 11
string.format("%s,%s,%s,%s",2,1,3500,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 12
string.format("%s,%s,%s,%s",2,1,3501,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 13
string.format("%s,%s,%s,%s",2,1,3502,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 14
string.format("%s,%s,%s,%s",2,1,3503,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 15
string.format("%s,%s,%s,%s",2,1,3504,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 16
string.format("%s,%s,%s,%s",2,1,3505,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 17
string.format("%s,%s,%s,%s",2,1,3506,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 18
string.format("%s,%s,%s,%s",2,1,3507,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 19
string.format("%s,%s,%s,%s",2,1,3508,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Kiếm 20
string.format("%s,%s,%s,%s",2,1,2616,10), --Thương Phong-Cấp 7 [1]_Nội công_Thủy_Thủ
string.format("%s,%s,%s,%s",2,1,3509,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 2
string.format("%s,%s,%s,%s",2,1,3510,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 3
string.format("%s,%s,%s,%s",2,1,3511,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 4
string.format("%s,%s,%s,%s",2,1,3512,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 5
string.format("%s,%s,%s,%s",2,1,3513,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 6
string.format("%s,%s,%s,%s",2,1,3514,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 7
string.format("%s,%s,%s,%s",2,1,3515,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 8
string.format("%s,%s,%s,%s",2,1,3516,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 9
string.format("%s,%s,%s,%s",2,1,3517,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 10
string.format("%s,%s,%s,%s",2,1,3518,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 11
string.format("%s,%s,%s,%s",2,1,3519,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 12
string.format("%s,%s,%s,%s",2,1,3520,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 13
string.format("%s,%s,%s,%s",2,1,3521,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 14
string.format("%s,%s,%s,%s",2,1,3522,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 15
string.format("%s,%s,%s,%s",2,1,3523,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 16
string.format("%s,%s,%s,%s",2,1,3524,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 17
string.format("%s,%s,%s,%s",2,1,3525,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 18
string.format("%s,%s,%s,%s",2,1,3526,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 19
string.format("%s,%s,%s,%s",2,1,3527,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thủy_Thủ 20
string.format("%s,%s,%s,%s",2,1,2617,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Hỏa_Thương
string.format("%s,%s,%s,%s",2,1,3528,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 2
string.format("%s,%s,%s,%s",2,1,3529,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 3
string.format("%s,%s,%s,%s",2,1,3530,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 4
string.format("%s,%s,%s,%s",2,1,3531,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 5
string.format("%s,%s,%s,%s",2,1,3532,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 6
string.format("%s,%s,%s,%s",2,1,3533,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 7
string.format("%s,%s,%s,%s",2,1,3534,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 8
string.format("%s,%s,%s,%s",2,1,3535,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 9
string.format("%s,%s,%s,%s",2,1,3536,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 10
string.format("%s,%s,%s,%s",2,1,3537,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 11
string.format("%s,%s,%s,%s",2,1,3538,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 12
string.format("%s,%s,%s,%s",2,1,3539,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 13
string.format("%s,%s,%s,%s",2,1,3540,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 14
string.format("%s,%s,%s,%s",2,1,3541,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 15
string.format("%s,%s,%s,%s",2,1,3542,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 16
string.format("%s,%s,%s,%s",2,1,3543,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 17
string.format("%s,%s,%s,%s",2,1,3544,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 18
string.format("%s,%s,%s,%s",2,1,3545,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 19
string.format("%s,%s,%s,%s",2,1,3546,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thương 20
string.format("%s,%s,%s,%s",2,1,2618,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Hỏa_Chùy
string.format("%s,%s,%s,%s",2,1,3547,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 2
string.format("%s,%s,%s,%s",2,1,3548,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 3
string.format("%s,%s,%s,%s",2,1,3549,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 4
string.format("%s,%s,%s,%s",2,1,3550,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 5
string.format("%s,%s,%s,%s",2,1,3551,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 6
string.format("%s,%s,%s,%s",2,1,3552,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 7
string.format("%s,%s,%s,%s",2,1,3553,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 8
string.format("%s,%s,%s,%s",2,1,3554,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 9
string.format("%s,%s,%s,%s",2,1,3555,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 10
string.format("%s,%s,%s,%s",2,1,3556,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 11
string.format("%s,%s,%s,%s",2,1,3557,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 12
string.format("%s,%s,%s,%s",2,1,3558,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 13
string.format("%s,%s,%s,%s",2,1,3559,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 14
string.format("%s,%s,%s,%s",2,1,3560,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 15
string.format("%s,%s,%s,%s",2,1,3561,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 16
string.format("%s,%s,%s,%s",2,1,3562,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 17
string.format("%s,%s,%s,%s",2,1,3563,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 18
string.format("%s,%s,%s,%s",2,1,3564,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 19
string.format("%s,%s,%s,%s",2,1,3565,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Chùy 20
string.format("%s,%s,%s,%s",2,1,2619,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Hỏa_Thủ
string.format("%s,%s,%s,%s",2,1,3566,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 2
string.format("%s,%s,%s,%s",2,1,3567,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 3
string.format("%s,%s,%s,%s",2,1,3568,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 4
string.format("%s,%s,%s,%s",2,1,3569,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 5
string.format("%s,%s,%s,%s",2,1,3570,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 6
string.format("%s,%s,%s,%s",2,1,3571,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 7
string.format("%s,%s,%s,%s",2,1,3572,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 8
string.format("%s,%s,%s,%s",2,1,3573,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 9
string.format("%s,%s,%s,%s",2,1,3574,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 10
string.format("%s,%s,%s,%s",2,1,3575,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 11
string.format("%s,%s,%s,%s",2,1,3576,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 12
string.format("%s,%s,%s,%s",2,1,3577,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 13
string.format("%s,%s,%s,%s",2,1,3578,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 14
string.format("%s,%s,%s,%s",2,1,3579,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 15
string.format("%s,%s,%s,%s",2,1,3580,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 16
string.format("%s,%s,%s,%s",2,1,3581,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 17
string.format("%s,%s,%s,%s",2,1,3582,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 18
string.format("%s,%s,%s,%s",2,1,3583,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 19
string.format("%s,%s,%s,%s",2,1,3584,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Hỏa_Thủ 20
string.format("%s,%s,%s,%s",2,1,2620,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Hỏa_Côn
string.format("%s,%s,%s,%s",2,1,3585,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 2
string.format("%s,%s,%s,%s",2,1,3586,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 3
string.format("%s,%s,%s,%s",2,1,3587,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 4
string.format("%s,%s,%s,%s",2,1,3588,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 5
string.format("%s,%s,%s,%s",2,1,3589,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 6
string.format("%s,%s,%s,%s",2,1,3590,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 7
string.format("%s,%s,%s,%s",2,1,3591,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 8
string.format("%s,%s,%s,%s",2,1,3592,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 9
string.format("%s,%s,%s,%s",2,1,3593,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 10
string.format("%s,%s,%s,%s",2,1,3594,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 11
string.format("%s,%s,%s,%s",2,1,3595,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 12
string.format("%s,%s,%s,%s",2,1,3596,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 13
string.format("%s,%s,%s,%s",2,1,3597,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 14
string.format("%s,%s,%s,%s",2,1,3598,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 15
string.format("%s,%s,%s,%s",2,1,3599,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 16
string.format("%s,%s,%s,%s",2,1,3600,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 17
string.format("%s,%s,%s,%s",2,1,3601,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 18
string.format("%s,%s,%s,%s",2,1,3602,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 19
string.format("%s,%s,%s,%s",2,1,3603,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Côn 20
string.format("%s,%s,%s,%s",2,1,2621,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Hỏa_Đao
string.format("%s,%s,%s,%s",2,1,3604,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 2
string.format("%s,%s,%s,%s",2,1,3605,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 3
string.format("%s,%s,%s,%s",2,1,3606,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 4
string.format("%s,%s,%s,%s",2,1,3607,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 5
string.format("%s,%s,%s,%s",2,1,3608,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 6
string.format("%s,%s,%s,%s",2,1,3609,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 7
string.format("%s,%s,%s,%s",2,1,3610,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 8
string.format("%s,%s,%s,%s",2,1,3611,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 9
string.format("%s,%s,%s,%s",2,1,3612,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 10
string.format("%s,%s,%s,%s",2,1,3613,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 11
string.format("%s,%s,%s,%s",2,1,3614,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 12
string.format("%s,%s,%s,%s",2,1,3615,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 13
string.format("%s,%s,%s,%s",2,1,3616,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 14
string.format("%s,%s,%s,%s",2,1,3617,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 15
string.format("%s,%s,%s,%s",2,1,3618,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 16
string.format("%s,%s,%s,%s",2,1,3619,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 17
string.format("%s,%s,%s,%s",2,1,3620,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 18
string.format("%s,%s,%s,%s",2,1,3621,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 19
string.format("%s,%s,%s,%s",2,1,3622,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Đao 20
string.format("%s,%s,%s,%s",2,1,2622,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Hỏa_Kiếm
string.format("%s,%s,%s,%s",2,1,3623,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 2
string.format("%s,%s,%s,%s",2,1,3624,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 3
string.format("%s,%s,%s,%s",2,1,3625,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 4
string.format("%s,%s,%s,%s",2,1,3626,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 5
string.format("%s,%s,%s,%s",2,1,3627,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 6
string.format("%s,%s,%s,%s",2,1,3628,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 7
string.format("%s,%s,%s,%s",2,1,3629,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 8
string.format("%s,%s,%s,%s",2,1,3630,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 9
string.format("%s,%s,%s,%s",2,1,3631,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 10
string.format("%s,%s,%s,%s",2,1,3632,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 11
string.format("%s,%s,%s,%s",2,1,3633,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 12
string.format("%s,%s,%s,%s",2,1,3634,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 13
string.format("%s,%s,%s,%s",2,1,3635,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 14
string.format("%s,%s,%s,%s",2,1,3636,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 15
string.format("%s,%s,%s,%s",2,1,3637,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 16
string.format("%s,%s,%s,%s",2,1,3638,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 17
string.format("%s,%s,%s,%s",2,1,3639,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 18
string.format("%s,%s,%s,%s",2,1,3640,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 19
string.format("%s,%s,%s,%s",2,1,3641,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Hỏa_Kiếm 20
string.format("%s,%s,%s,%s",2,1,2623,10), --Thương Phong-Cấp 7 [1]_Nội công_Hỏa_Đao
string.format("%s,%s,%s,%s",2,1,3642,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 2
string.format("%s,%s,%s,%s",2,1,3643,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 3
string.format("%s,%s,%s,%s",2,1,3644,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 4
string.format("%s,%s,%s,%s",2,1,3645,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 5
string.format("%s,%s,%s,%s",2,1,3646,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 6
string.format("%s,%s,%s,%s",2,1,3647,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 7
string.format("%s,%s,%s,%s",2,1,3648,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 8
string.format("%s,%s,%s,%s",2,1,3649,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 9
string.format("%s,%s,%s,%s",2,1,3650,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 10
string.format("%s,%s,%s,%s",2,1,3651,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 11
string.format("%s,%s,%s,%s",2,1,3652,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 12
string.format("%s,%s,%s,%s",2,1,3653,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 13
string.format("%s,%s,%s,%s",2,1,3654,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 14
string.format("%s,%s,%s,%s",2,1,3655,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 15
string.format("%s,%s,%s,%s",2,1,3656,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 16
string.format("%s,%s,%s,%s",2,1,3657,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 17
string.format("%s,%s,%s,%s",2,1,3658,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 18
string.format("%s,%s,%s,%s",2,1,3659,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 19
string.format("%s,%s,%s,%s",2,1,3660,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Đao 20
string.format("%s,%s,%s,%s",2,1,2624,10), --Thương Phong-Cấp 7 [1]_Nội công_Hỏa_Kiếm
string.format("%s,%s,%s,%s",2,1,3661,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 2
string.format("%s,%s,%s,%s",2,1,3662,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 3
string.format("%s,%s,%s,%s",2,1,3663,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 4
string.format("%s,%s,%s,%s",2,1,3664,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 5
string.format("%s,%s,%s,%s",2,1,3665,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 6
string.format("%s,%s,%s,%s",2,1,3666,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 7
string.format("%s,%s,%s,%s",2,1,3667,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 8
string.format("%s,%s,%s,%s",2,1,3668,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 9
string.format("%s,%s,%s,%s",2,1,3669,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 10
string.format("%s,%s,%s,%s",2,1,3670,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 11
string.format("%s,%s,%s,%s",2,1,3671,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 12
string.format("%s,%s,%s,%s",2,1,3672,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 13
string.format("%s,%s,%s,%s",2,1,3673,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 14
string.format("%s,%s,%s,%s",2,1,3674,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 15
string.format("%s,%s,%s,%s",2,1,3675,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 16
string.format("%s,%s,%s,%s",2,1,3676,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 17
string.format("%s,%s,%s,%s",2,1,3677,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 18
string.format("%s,%s,%s,%s",2,1,3678,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 19
string.format("%s,%s,%s,%s",2,1,3679,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Kiếm 20
string.format("%s,%s,%s,%s",2,1,2625,10), --Thương Phong-Cấp 7 [1]_Nội công_Hỏa_Thủ
string.format("%s,%s,%s,%s",2,1,3680,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 2
string.format("%s,%s,%s,%s",2,1,3681,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 3
string.format("%s,%s,%s,%s",2,1,3682,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 4
string.format("%s,%s,%s,%s",2,1,3683,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 5
string.format("%s,%s,%s,%s",2,1,3684,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 6
string.format("%s,%s,%s,%s",2,1,3685,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 7
string.format("%s,%s,%s,%s",2,1,3686,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 8
string.format("%s,%s,%s,%s",2,1,3687,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 9
string.format("%s,%s,%s,%s",2,1,3688,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 10
string.format("%s,%s,%s,%s",2,1,3689,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 11
string.format("%s,%s,%s,%s",2,1,3690,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 12
string.format("%s,%s,%s,%s",2,1,3691,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 13
string.format("%s,%s,%s,%s",2,1,3692,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 14
string.format("%s,%s,%s,%s",2,1,3693,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 15
string.format("%s,%s,%s,%s",2,1,3694,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 16
string.format("%s,%s,%s,%s",2,1,3695,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 17
string.format("%s,%s,%s,%s",2,1,3696,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 18
string.format("%s,%s,%s,%s",2,1,3697,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 19
string.format("%s,%s,%s,%s",2,1,3698,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Hỏa_Thủ 20
string.format("%s,%s,%s,%s",2,1,2626,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Thổ_Thương
string.format("%s,%s,%s,%s",2,1,3699,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 2
string.format("%s,%s,%s,%s",2,1,3700,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 3
string.format("%s,%s,%s,%s",2,1,3701,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 4
string.format("%s,%s,%s,%s",2,1,3702,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 5
string.format("%s,%s,%s,%s",2,1,3703,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 6
string.format("%s,%s,%s,%s",2,1,3704,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 7
string.format("%s,%s,%s,%s",2,1,3705,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 8
string.format("%s,%s,%s,%s",2,1,3706,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 9
string.format("%s,%s,%s,%s",2,1,3707,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 10
string.format("%s,%s,%s,%s",2,1,3708,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 11
string.format("%s,%s,%s,%s",2,1,3709,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 12
string.format("%s,%s,%s,%s",2,1,3710,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 13
string.format("%s,%s,%s,%s",2,1,3711,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 14
string.format("%s,%s,%s,%s",2,1,3712,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 15
string.format("%s,%s,%s,%s",2,1,3713,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 16
string.format("%s,%s,%s,%s",2,1,3714,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 17
string.format("%s,%s,%s,%s",2,1,3715,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 18
string.format("%s,%s,%s,%s",2,1,3716,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 19
string.format("%s,%s,%s,%s",2,1,3717,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thương 20
string.format("%s,%s,%s,%s",2,1,2627,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Thổ_Chùy
string.format("%s,%s,%s,%s",2,1,3718,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 2
string.format("%s,%s,%s,%s",2,1,3719,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 3
string.format("%s,%s,%s,%s",2,1,3720,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 4
string.format("%s,%s,%s,%s",2,1,3721,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 5
string.format("%s,%s,%s,%s",2,1,3722,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 6
string.format("%s,%s,%s,%s",2,1,3723,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 7
string.format("%s,%s,%s,%s",2,1,3724,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 8
string.format("%s,%s,%s,%s",2,1,3725,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 9
string.format("%s,%s,%s,%s",2,1,3726,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 10
string.format("%s,%s,%s,%s",2,1,3727,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 11
string.format("%s,%s,%s,%s",2,1,3728,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 12
string.format("%s,%s,%s,%s",2,1,3729,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 13
string.format("%s,%s,%s,%s",2,1,3730,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 14
string.format("%s,%s,%s,%s",2,1,3731,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 15
string.format("%s,%s,%s,%s",2,1,3732,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 16
string.format("%s,%s,%s,%s",2,1,3733,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 17
string.format("%s,%s,%s,%s",2,1,3734,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 18
string.format("%s,%s,%s,%s",2,1,3735,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 19
string.format("%s,%s,%s,%s",2,1,3736,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Chùy 20
string.format("%s,%s,%s,%s",2,1,2628,10), --Thương Phong-Cấp 7 [1]_Hệ cách đấu_Thổ_Thủ
string.format("%s,%s,%s,%s",2,1,3737,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 2
string.format("%s,%s,%s,%s",2,1,3738,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 3
string.format("%s,%s,%s,%s",2,1,3739,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 4
string.format("%s,%s,%s,%s",2,1,3740,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 5
string.format("%s,%s,%s,%s",2,1,3741,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 6
string.format("%s,%s,%s,%s",2,1,3742,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 7
string.format("%s,%s,%s,%s",2,1,3743,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 8
string.format("%s,%s,%s,%s",2,1,3744,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 9
string.format("%s,%s,%s,%s",2,1,3745,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 10
string.format("%s,%s,%s,%s",2,1,3746,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 11
string.format("%s,%s,%s,%s",2,1,3747,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 12
string.format("%s,%s,%s,%s",2,1,3748,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 13
string.format("%s,%s,%s,%s",2,1,3749,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 14
string.format("%s,%s,%s,%s",2,1,3750,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 15
string.format("%s,%s,%s,%s",2,1,3751,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 16
string.format("%s,%s,%s,%s",2,1,3752,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 17
string.format("%s,%s,%s,%s",2,1,3753,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 18
string.format("%s,%s,%s,%s",2,1,3754,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 19
string.format("%s,%s,%s,%s",2,1,3755,10), --Thương Phong-Cấp 7 (2-20)_Hệ cách đấu_Thổ_Thủ 20
string.format("%s,%s,%s,%s",2,1,2629,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Thổ_Côn
string.format("%s,%s,%s,%s",2,1,3756,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 2
string.format("%s,%s,%s,%s",2,1,3757,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 3
string.format("%s,%s,%s,%s",2,1,3758,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 4
string.format("%s,%s,%s,%s",2,1,3759,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 5
string.format("%s,%s,%s,%s",2,1,3760,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 6
string.format("%s,%s,%s,%s",2,1,3761,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 7
string.format("%s,%s,%s,%s",2,1,3762,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 8
string.format("%s,%s,%s,%s",2,1,3763,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 9
string.format("%s,%s,%s,%s",2,1,3764,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 10
string.format("%s,%s,%s,%s",2,1,3765,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 11
string.format("%s,%s,%s,%s",2,1,3766,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 12
string.format("%s,%s,%s,%s",2,1,3767,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 13
string.format("%s,%s,%s,%s",2,1,3768,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 14
string.format("%s,%s,%s,%s",2,1,3769,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 15
string.format("%s,%s,%s,%s",2,1,3770,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 16
string.format("%s,%s,%s,%s",2,1,3771,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 17
string.format("%s,%s,%s,%s",2,1,3772,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 18
string.format("%s,%s,%s,%s",2,1,3773,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 19
string.format("%s,%s,%s,%s",2,1,3774,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Côn 20
string.format("%s,%s,%s,%s",2,1,2630,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Thổ_Đao
string.format("%s,%s,%s,%s",2,1,3775,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 2
string.format("%s,%s,%s,%s",2,1,3776,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 3
string.format("%s,%s,%s,%s",2,1,3777,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 4
string.format("%s,%s,%s,%s",2,1,3778,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 5
string.format("%s,%s,%s,%s",2,1,3779,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 6
string.format("%s,%s,%s,%s",2,1,3780,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 7
string.format("%s,%s,%s,%s",2,1,3781,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 8
string.format("%s,%s,%s,%s",2,1,3782,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 9
string.format("%s,%s,%s,%s",2,1,3783,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 10
string.format("%s,%s,%s,%s",2,1,3784,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 11
string.format("%s,%s,%s,%s",2,1,3785,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 12
string.format("%s,%s,%s,%s",2,1,3786,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 13
string.format("%s,%s,%s,%s",2,1,3787,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 14
string.format("%s,%s,%s,%s",2,1,3788,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 15
string.format("%s,%s,%s,%s",2,1,3789,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 16
string.format("%s,%s,%s,%s",2,1,3790,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 17
string.format("%s,%s,%s,%s",2,1,3791,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 18
string.format("%s,%s,%s,%s",2,1,3792,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 19
string.format("%s,%s,%s,%s",2,1,3793,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Đao 20
string.format("%s,%s,%s,%s",2,1,2631,10), --Thương Phong-Cấp 7 [1]_Ngoại công_Thổ_Kiếm
string.format("%s,%s,%s,%s",2,1,3794,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 2
string.format("%s,%s,%s,%s",2,1,3795,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 3
string.format("%s,%s,%s,%s",2,1,3796,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 4
string.format("%s,%s,%s,%s",2,1,3797,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 5
string.format("%s,%s,%s,%s",2,1,3798,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 6
string.format("%s,%s,%s,%s",2,1,3799,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 7
string.format("%s,%s,%s,%s",2,1,3800,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 8
string.format("%s,%s,%s,%s",2,1,3801,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 9
string.format("%s,%s,%s,%s",2,1,3802,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 10
string.format("%s,%s,%s,%s",2,1,3803,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 11
string.format("%s,%s,%s,%s",2,1,3804,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 12
string.format("%s,%s,%s,%s",2,1,3805,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 13
string.format("%s,%s,%s,%s",2,1,3806,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 14
string.format("%s,%s,%s,%s",2,1,3807,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 15
string.format("%s,%s,%s,%s",2,1,3808,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 16
string.format("%s,%s,%s,%s",2,1,3809,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 17
string.format("%s,%s,%s,%s",2,1,3810,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 18
string.format("%s,%s,%s,%s",2,1,3811,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 19
string.format("%s,%s,%s,%s",2,1,3812,10), --Thương Phong-Cấp 7 (2-20)_Ngoại công_Thổ_Kiếm 20
string.format("%s,%s,%s,%s",2,1,2632,10), --Thương Phong-Cấp 7 [1]_Nội công_Thổ_Đao
string.format("%s,%s,%s,%s",2,1,3813,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 2
string.format("%s,%s,%s,%s",2,1,3814,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 3
string.format("%s,%s,%s,%s",2,1,3815,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 4
string.format("%s,%s,%s,%s",2,1,3816,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 5
string.format("%s,%s,%s,%s",2,1,3817,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 6
string.format("%s,%s,%s,%s",2,1,3818,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 7
string.format("%s,%s,%s,%s",2,1,3819,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 8
string.format("%s,%s,%s,%s",2,1,3820,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 9
string.format("%s,%s,%s,%s",2,1,3821,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 10
string.format("%s,%s,%s,%s",2,1,3822,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 11
string.format("%s,%s,%s,%s",2,1,3823,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 12
string.format("%s,%s,%s,%s",2,1,3824,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 13
string.format("%s,%s,%s,%s",2,1,3825,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 14
string.format("%s,%s,%s,%s",2,1,3826,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 15
string.format("%s,%s,%s,%s",2,1,3827,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 16
string.format("%s,%s,%s,%s",2,1,3828,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 17
string.format("%s,%s,%s,%s",2,1,3829,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 18
string.format("%s,%s,%s,%s",2,1,3830,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 19
string.format("%s,%s,%s,%s",2,1,3831,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Đao 20
string.format("%s,%s,%s,%s",2,1,2633,10), --Thương Phong-Cấp 7 [1]_Nội công_Thổ_Kiếm
string.format("%s,%s,%s,%s",2,1,3832,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 2
string.format("%s,%s,%s,%s",2,1,3833,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 3
string.format("%s,%s,%s,%s",2,1,3834,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 4
string.format("%s,%s,%s,%s",2,1,3835,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 5
string.format("%s,%s,%s,%s",2,1,3836,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 6
string.format("%s,%s,%s,%s",2,1,3837,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 7
string.format("%s,%s,%s,%s",2,1,3838,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 8
string.format("%s,%s,%s,%s",2,1,3839,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 9
string.format("%s,%s,%s,%s",2,1,3840,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 10
string.format("%s,%s,%s,%s",2,1,3841,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 11
string.format("%s,%s,%s,%s",2,1,3842,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 12
string.format("%s,%s,%s,%s",2,1,3843,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 13
string.format("%s,%s,%s,%s",2,1,3844,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 14
string.format("%s,%s,%s,%s",2,1,3845,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 15
string.format("%s,%s,%s,%s",2,1,3846,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 16
string.format("%s,%s,%s,%s",2,1,3847,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 17
string.format("%s,%s,%s,%s",2,1,3848,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 18
string.format("%s,%s,%s,%s",2,1,3849,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 19
string.format("%s,%s,%s,%s",2,1,3850,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Kiếm 20
string.format("%s,%s,%s,%s",2,1,2634,10), --Thương Phong-Cấp 7 [1]_Nội công_Thổ_Thủ
string.format("%s,%s,%s,%s",2,1,3851,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 2
string.format("%s,%s,%s,%s",2,1,3852,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 3
string.format("%s,%s,%s,%s",2,1,3853,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 4
string.format("%s,%s,%s,%s",2,1,3854,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 5
string.format("%s,%s,%s,%s",2,1,3855,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 6
string.format("%s,%s,%s,%s",2,1,3856,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 7
string.format("%s,%s,%s,%s",2,1,3857,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 8
string.format("%s,%s,%s,%s",2,1,3858,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 9
string.format("%s,%s,%s,%s",2,1,3859,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 10
string.format("%s,%s,%s,%s",2,1,3860,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 11
string.format("%s,%s,%s,%s",2,1,3861,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 12
string.format("%s,%s,%s,%s",2,1,3862,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 13
string.format("%s,%s,%s,%s",2,1,3863,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 14
string.format("%s,%s,%s,%s",2,1,3864,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 15
string.format("%s,%s,%s,%s",2,1,3865,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 16
string.format("%s,%s,%s,%s",2,1,3866,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 17
string.format("%s,%s,%s,%s",2,1,3867,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 18
string.format("%s,%s,%s,%s",2,1,3868,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 19
string.format("%s,%s,%s,%s",2,1,3869,10), --Thương Phong-Cấp 7 (2-20)_Nội công_Thổ_Thủ 20
string.format("%s,%s,%s,%s",2,2,2510,10), --Hiệu ứng Thương Phong-Cấp 7 [1]_Phi Đao
string.format("%s,%s,%s,%s",2,2,2520,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 2
string.format("%s,%s,%s,%s",2,2,2521,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 3
string.format("%s,%s,%s,%s",2,2,2522,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 4
string.format("%s,%s,%s,%s",2,2,2523,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 5
string.format("%s,%s,%s,%s",2,2,2524,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 6
string.format("%s,%s,%s,%s",2,2,2525,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 7
string.format("%s,%s,%s,%s",2,2,2526,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 8
string.format("%s,%s,%s,%s",2,2,2527,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 9
string.format("%s,%s,%s,%s",2,2,2528,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 10
string.format("%s,%s,%s,%s",2,2,2529,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 11
string.format("%s,%s,%s,%s",2,2,2530,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 12
string.format("%s,%s,%s,%s",2,2,2531,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 13
string.format("%s,%s,%s,%s",2,2,2532,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 14
string.format("%s,%s,%s,%s",2,2,2533,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 15
string.format("%s,%s,%s,%s",2,2,2534,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 16
string.format("%s,%s,%s,%s",2,2,2535,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 17
string.format("%s,%s,%s,%s",2,2,2536,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 18
string.format("%s,%s,%s,%s",2,2,2537,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 19
string.format("%s,%s,%s,%s",2,2,2538,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Phi Đao 20
string.format("%s,%s,%s,%s",2,2,2511,10), --Hiệu ứng Thương Phong-Cấp 7 [1]_Tụ Tiễn
string.format("%s,%s,%s,%s",2,2,2539,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 2
string.format("%s,%s,%s,%s",2,2,2540,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 3
string.format("%s,%s,%s,%s",2,2,2541,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 4
string.format("%s,%s,%s,%s",2,2,2542,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 5
string.format("%s,%s,%s,%s",2,2,2543,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 6
string.format("%s,%s,%s,%s",2,2,2544,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 7
string.format("%s,%s,%s,%s",2,2,2545,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 8
string.format("%s,%s,%s,%s",2,2,2546,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 9
string.format("%s,%s,%s,%s",2,2,2547,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 10
string.format("%s,%s,%s,%s",2,2,2548,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 11
string.format("%s,%s,%s,%s",2,2,2549,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 12
string.format("%s,%s,%s,%s",2,2,2550,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 13
string.format("%s,%s,%s,%s",2,2,2551,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 14
string.format("%s,%s,%s,%s",2,2,2552,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 15
string.format("%s,%s,%s,%s",2,2,2553,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 16
string.format("%s,%s,%s,%s",2,2,2554,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 17
string.format("%s,%s,%s,%s",2,2,2555,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 18
string.format("%s,%s,%s,%s",2,2,2556,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 19
string.format("%s,%s,%s,%s",2,2,2557,10), --Hiệu ứng Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 20
string.format("%s,%s,%s,%s",2,2,2512,10), --Hệ kim Thương Phong-Cấp 7 [1]_Phi Đao
string.format("%s,%s,%s,%s",2,2,2558,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 2
string.format("%s,%s,%s,%s",2,2,2559,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 3
string.format("%s,%s,%s,%s",2,2,2560,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 4
string.format("%s,%s,%s,%s",2,2,2561,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 5
string.format("%s,%s,%s,%s",2,2,2562,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 6
string.format("%s,%s,%s,%s",2,2,2563,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 7
string.format("%s,%s,%s,%s",2,2,2564,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 8
string.format("%s,%s,%s,%s",2,2,2565,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 9
string.format("%s,%s,%s,%s",2,2,2566,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 10
string.format("%s,%s,%s,%s",2,2,2567,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 11
string.format("%s,%s,%s,%s",2,2,2568,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 12
string.format("%s,%s,%s,%s",2,2,2569,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 13
string.format("%s,%s,%s,%s",2,2,2570,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 14
string.format("%s,%s,%s,%s",2,2,2571,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 15
string.format("%s,%s,%s,%s",2,2,2572,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 16
string.format("%s,%s,%s,%s",2,2,2573,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 17
string.format("%s,%s,%s,%s",2,2,2574,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 18
string.format("%s,%s,%s,%s",2,2,2575,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 19
string.format("%s,%s,%s,%s",2,2,2576,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Phi Đao 20
string.format("%s,%s,%s,%s",2,2,2513,10), --Hệ thủy Thương Phong-Cấp 7 [1]_Phi Đao
string.format("%s,%s,%s,%s",2,2,2577,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 2
string.format("%s,%s,%s,%s",2,2,2578,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 3
string.format("%s,%s,%s,%s",2,2,2579,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 4
string.format("%s,%s,%s,%s",2,2,2580,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 5
string.format("%s,%s,%s,%s",2,2,2581,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 6
string.format("%s,%s,%s,%s",2,2,2582,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 7
string.format("%s,%s,%s,%s",2,2,2583,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 8
string.format("%s,%s,%s,%s",2,2,2584,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 9
string.format("%s,%s,%s,%s",2,2,2585,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 10
string.format("%s,%s,%s,%s",2,2,2586,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 11
string.format("%s,%s,%s,%s",2,2,2587,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 12
string.format("%s,%s,%s,%s",2,2,2588,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 13
string.format("%s,%s,%s,%s",2,2,2589,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 14
string.format("%s,%s,%s,%s",2,2,2590,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 15
string.format("%s,%s,%s,%s",2,2,2591,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 16
string.format("%s,%s,%s,%s",2,2,2592,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 17
string.format("%s,%s,%s,%s",2,2,2593,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 18
string.format("%s,%s,%s,%s",2,2,2594,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 19
string.format("%s,%s,%s,%s",2,2,2595,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Phi Đao 20
string.format("%s,%s,%s,%s",2,2,2514,10), --Hệ hỏa Thương Phong-Cấp 7 [1]_Phi Đao
string.format("%s,%s,%s,%s",2,2,2596,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 2
string.format("%s,%s,%s,%s",2,2,2597,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 3
string.format("%s,%s,%s,%s",2,2,2598,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 4
string.format("%s,%s,%s,%s",2,2,2599,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 5
string.format("%s,%s,%s,%s",2,2,2600,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 6
string.format("%s,%s,%s,%s",2,2,2601,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 7
string.format("%s,%s,%s,%s",2,2,2602,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 8
string.format("%s,%s,%s,%s",2,2,2603,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 9
string.format("%s,%s,%s,%s",2,2,2604,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 10
string.format("%s,%s,%s,%s",2,2,2605,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 11
string.format("%s,%s,%s,%s",2,2,2606,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 12
string.format("%s,%s,%s,%s",2,2,2607,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 13
string.format("%s,%s,%s,%s",2,2,2608,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 14
string.format("%s,%s,%s,%s",2,2,2609,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 15
string.format("%s,%s,%s,%s",2,2,2610,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 16
string.format("%s,%s,%s,%s",2,2,2611,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 17
string.format("%s,%s,%s,%s",2,2,2612,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 18
string.format("%s,%s,%s,%s",2,2,2613,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 19
string.format("%s,%s,%s,%s",2,2,2614,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Phi Đao 20
string.format("%s,%s,%s,%s",2,2,2515,10), --Hệ thổ Thương Phong-Cấp 7 [1]_Phi Đao
string.format("%s,%s,%s,%s",2,2,2615,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 2
string.format("%s,%s,%s,%s",2,2,2616,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 3
string.format("%s,%s,%s,%s",2,2,2617,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 4
string.format("%s,%s,%s,%s",2,2,2618,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 5
string.format("%s,%s,%s,%s",2,2,2619,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 6
string.format("%s,%s,%s,%s",2,2,2620,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 7
string.format("%s,%s,%s,%s",2,2,2621,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 8
string.format("%s,%s,%s,%s",2,2,2622,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 9
string.format("%s,%s,%s,%s",2,2,2623,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 10
string.format("%s,%s,%s,%s",2,2,2624,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 11
string.format("%s,%s,%s,%s",2,2,2625,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 12
string.format("%s,%s,%s,%s",2,2,2626,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 13
string.format("%s,%s,%s,%s",2,2,2627,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 14
string.format("%s,%s,%s,%s",2,2,2628,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 15
string.format("%s,%s,%s,%s",2,2,2629,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 16
string.format("%s,%s,%s,%s",2,2,2630,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 17
string.format("%s,%s,%s,%s",2,2,2631,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 18
string.format("%s,%s,%s,%s",2,2,2632,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 19
string.format("%s,%s,%s,%s",2,2,2633,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Phi Đao 20
string.format("%s,%s,%s,%s",2,2,2516,10), --Hệ kim Thương Phong-Cấp 7 [1]_Tụ Tiễn
string.format("%s,%s,%s,%s",2,2,2634,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 2
string.format("%s,%s,%s,%s",2,2,2635,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 3
string.format("%s,%s,%s,%s",2,2,2636,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 4
string.format("%s,%s,%s,%s",2,2,2637,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 5
string.format("%s,%s,%s,%s",2,2,2638,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 6
string.format("%s,%s,%s,%s",2,2,2639,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 7
string.format("%s,%s,%s,%s",2,2,2640,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 8
string.format("%s,%s,%s,%s",2,2,2641,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 9
string.format("%s,%s,%s,%s",2,2,2642,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 10
string.format("%s,%s,%s,%s",2,2,2643,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 11
string.format("%s,%s,%s,%s",2,2,2644,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 12
string.format("%s,%s,%s,%s",2,2,2645,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 13
string.format("%s,%s,%s,%s",2,2,2646,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 14
string.format("%s,%s,%s,%s",2,2,2647,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 15
string.format("%s,%s,%s,%s",2,2,2648,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 16
string.format("%s,%s,%s,%s",2,2,2649,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 17
string.format("%s,%s,%s,%s",2,2,2650,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 18
string.format("%s,%s,%s,%s",2,2,2651,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 19
string.format("%s,%s,%s,%s",2,2,2652,10), --Hệ kim Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 20
string.format("%s,%s,%s,%s",2,2,2517,10), --Hệ thủy Thương Phong-Cấp 7 [1]_Tụ Tiễn
string.format("%s,%s,%s,%s",2,2,2653,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 2
string.format("%s,%s,%s,%s",2,2,2654,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 3
string.format("%s,%s,%s,%s",2,2,2655,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 4
string.format("%s,%s,%s,%s",2,2,2656,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 5
string.format("%s,%s,%s,%s",2,2,2657,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 6
string.format("%s,%s,%s,%s",2,2,2658,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 7
string.format("%s,%s,%s,%s",2,2,2659,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 8
string.format("%s,%s,%s,%s",2,2,2660,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 9
string.format("%s,%s,%s,%s",2,2,2661,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 10
string.format("%s,%s,%s,%s",2,2,2662,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 11
string.format("%s,%s,%s,%s",2,2,2663,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 12
string.format("%s,%s,%s,%s",2,2,2664,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 13
string.format("%s,%s,%s,%s",2,2,2665,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 14
string.format("%s,%s,%s,%s",2,2,2666,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 15
string.format("%s,%s,%s,%s",2,2,2667,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 16
string.format("%s,%s,%s,%s",2,2,2668,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 17
string.format("%s,%s,%s,%s",2,2,2669,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 18
string.format("%s,%s,%s,%s",2,2,2670,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 19
string.format("%s,%s,%s,%s",2,2,2671,10), --Hệ thủy Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 20
string.format("%s,%s,%s,%s",2,2,2518,10), --Hệ hỏa Thương Phong-Cấp 7 [1]_Tụ Tiễn
string.format("%s,%s,%s,%s",2,2,2672,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 2
string.format("%s,%s,%s,%s",2,2,2673,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 3
string.format("%s,%s,%s,%s",2,2,2674,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 4
string.format("%s,%s,%s,%s",2,2,2675,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 5
string.format("%s,%s,%s,%s",2,2,2676,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 6
string.format("%s,%s,%s,%s",2,2,2677,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 7
string.format("%s,%s,%s,%s",2,2,2678,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 8
string.format("%s,%s,%s,%s",2,2,2679,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 9
string.format("%s,%s,%s,%s",2,2,2680,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 10
string.format("%s,%s,%s,%s",2,2,2681,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 11
string.format("%s,%s,%s,%s",2,2,2682,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 12
string.format("%s,%s,%s,%s",2,2,2683,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 13
string.format("%s,%s,%s,%s",2,2,2684,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 14
string.format("%s,%s,%s,%s",2,2,2685,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 15
string.format("%s,%s,%s,%s",2,2,2686,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 16
string.format("%s,%s,%s,%s",2,2,2687,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 17
string.format("%s,%s,%s,%s",2,2,2688,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 18
string.format("%s,%s,%s,%s",2,2,2689,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 19
string.format("%s,%s,%s,%s",2,2,2690,10), --Hệ hỏa Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 20
string.format("%s,%s,%s,%s",2,2,2519,10), --Hệ thổ Thương Phong-Cấp 7 [1]_Tụ Tiễn
string.format("%s,%s,%s,%s",2,2,2691,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 2
string.format("%s,%s,%s,%s",2,2,2692,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 3
string.format("%s,%s,%s,%s",2,2,2693,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 4
string.format("%s,%s,%s,%s",2,2,2694,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 5
string.format("%s,%s,%s,%s",2,2,2695,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 6
string.format("%s,%s,%s,%s",2,2,2696,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 7
string.format("%s,%s,%s,%s",2,2,2697,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 8
string.format("%s,%s,%s,%s",2,2,2698,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 9
string.format("%s,%s,%s,%s",2,2,2699,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 10
string.format("%s,%s,%s,%s",2,2,2700,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 11
string.format("%s,%s,%s,%s",2,2,2701,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 12
string.format("%s,%s,%s,%s",2,2,2702,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 13
string.format("%s,%s,%s,%s",2,2,2703,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 14
string.format("%s,%s,%s,%s",2,2,2704,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 15
string.format("%s,%s,%s,%s",2,2,2705,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 16
string.format("%s,%s,%s,%s",2,2,2706,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 17
string.format("%s,%s,%s,%s",2,2,2707,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 18
string.format("%s,%s,%s,%s",2,2,2708,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 19
string.format("%s,%s,%s,%s",2,2,2709,10), --Hệ thổ Thương Phong-Cấp 7 (2-20)_Tụ Tiễn 20
},1},
},

[4] = {-- Đồng Hành Thương Phong - 50R
{ {
string.format("%s,%s,%s,%s",5,23,13,5), --Thương Phong Phù 13
string.format("%s,%s,%s,%s",5,23,14,5), --Thương Phong Phù 14
string.format("%s,%s,%s,%s",5,23,15,5), --Thương Phong Phù 15
string.format("%s,%s,%s,%s",5,23,16,5), --Thương Phong Phù 16
string.format("%s,%s,%s,%s",5,23,17,5), --Thương Phong Phù 17
string.format("%s,%s,%s,%s",5,23,18,5), --Thương Phong Phù 18
string.format("%s,%s,%s,%s",5,23,19,5), --Thương Phong Phù 19
string.format("%s,%s,%s,%s",5,23,20,5), --Thương Phong Phù 20
string.format("%s,%s,%s,%s",5,20,13,5), --Thương Phong Y 13
string.format("%s,%s,%s,%s",5,20,14,5), --Thương Phong Y 14
string.format("%s,%s,%s,%s",5,20,15,5), --Thương Phong Y 15
string.format("%s,%s,%s,%s",5,20,16,5), --Thương Phong Y 16
string.format("%s,%s,%s,%s",5,20,17,5), --Thương Phong Y 17
string.format("%s,%s,%s,%s",5,20,18,5), --Thương Phong Y 18
string.format("%s,%s,%s,%s",5,20,19,5), --Thương Phong Y 19
string.format("%s,%s,%s,%s",5,20,20,5), --Thương Phong Y 20
string.format("%s,%s,%s,%s",5,22,13,5), --Thương Phong Hộ Uyển 13
string.format("%s,%s,%s,%s",5,22,14,5), --Thương Phong Hộ Uyển 14
string.format("%s,%s,%s,%s",5,22,15,5), --Thương Phong Hộ Uyển 15
string.format("%s,%s,%s,%s",5,22,16,5), --Thương Phong Hộ Uyển 16
string.format("%s,%s,%s,%s",5,22,17,5), --Thương Phong Hộ Uyển 17
string.format("%s,%s,%s,%s",5,22,18,5), --Thương Phong Hộ Uyển 18
string.format("%s,%s,%s,%s",5,22,19,5), --Thương Phong Hộ Uyển 19
string.format("%s,%s,%s,%s",5,22,20,5), --Thương Phong Hộ Uyển 20
string.format("%s,%s,%s,%s",5,21,13,5), --Thương Phong Giới 13
string.format("%s,%s,%s,%s",5,21,14,5), --Thương Phong Giới 14
string.format("%s,%s,%s,%s",5,21,15,5), --Thương Phong Giới 15
string.format("%s,%s,%s,%s",5,21,16,5), --Thương Phong Giới 16
string.format("%s,%s,%s,%s",5,21,17,5), --Thương Phong Giới 17
string.format("%s,%s,%s,%s",5,21,18,5), --Thương Phong Giới 18
string.format("%s,%s,%s,%s",5,21,19,5), --Thương Phong Giới 19
string.format("%s,%s,%s,%s",5,21,20,5), --Thương Phong Giới 20
string.format("%s,%s,%s,%s",5,19,14,5), --Thương Phong Kiếm 13
string.format("%s,%s,%s,%s",5,19,15,5), --Thương Phong Kiếm 14
string.format("%s,%s,%s,%s",5,19,16,5), --Thương Phong Kiếm 15
string.format("%s,%s,%s,%s",5,19,17,5), --Thương Phong Kiếm 16
string.format("%s,%s,%s,%s",5,19,18,5), --Thương Phong Kiếm 17
string.format("%s,%s,%s,%s",5,19,19,5), --Thương Phong Kiếm 18
string.format("%s,%s,%s,%s",5,19,20,5), --Thương Phong Kiếm 19
string.format("%s,%s,%s,%s",5,19,21,5), --Thương Phong Kiếm 20
},1},
},

};

function tbDoiTrangBi_RuongSuKien:OnDialog()
local szMsg = "<color=cyan>Trang bị Đổi: Rương Sự Kiện:\n"..
"<color=yellow>★1 Phi Phong Thương Phong<color=green> → 200	Rương Sự Kiện<color><color>\n"..
"<color=yellow>★1 Vũ khí Thanh Hạ<color=green> → 80	Rương Sự Kiện<color><color>\n"..
"<color=yellow>★1 Vũ khí Thương Phong<color=green> → 120	Rương Sự Kiện<color><color>\n"..
"<color=yellow>★1 Đồng Hành Thương Phong<color=green> → 50	Rương Sự Kiện<color><color>\n"
	local tbOpt = {{"Kết thúc đối thoại..."},};
	table.insert(tbOpt,1,{"<bclr=0,0,200><color=white>1 Phi Phong Thương Phong → 200 Rương Sự Kiện", self.LuaChon, self,1});
	table.insert(tbOpt,2,{"<bclr=0,0,200><color=white>1 Vũ khí Thanh Hạ → 80 Rương Sự Kiện", self.LuaChon, self,2});
	table.insert(tbOpt,3,{"<bclr=0,0,200><color=white>1 Vũ khí Thương Phong → 120 Rương Sự Kiện", self.LuaChon, self,3});
	table.insert(tbOpt,4,{"<bclr=0,0,200><color=white>1 Đồng hành Thương Phong → 50 Rương Sự Kiện", self.LuaChon, self,4});

	Dialog:Say(szMsg, tbOpt);
end


function tbDoiTrangBi_RuongSuKien:LuaChon(nValue)
	local szMsg = "<bclr=0,0,200><color=white>Trang bị Đổi:  Rương Sự Kiện<color>";
	local szMsg;
	
	if nValue == 1 then
		szMsg = "<color=cyan>Đặt vào:\n<color=green>1 Phi Phong Thương Phong bất kỳ<color><color=yellow>\n→ Nhận lại: \n200 Rương Sự Kiện.<color>";
	end;
	if nValue == 2 then
		szMsg = "<color=cyan>Đặt vào:\n<color=green>1 Vũ khí Thanh Hạ bất kỳ<color><color=yellow>\n→ Nhận lại: \n80 Rương Sự Kiện.<color>";
	end;
	if nValue == 3 then
		szMsg = "<color=cyan>Đặt vào:\n<color=green>1 Vũ khí Thương Phong bất kỳ<color><color=yellow>\n→ Nhận lại: \n120 Rương Sự Kiện.<color>";
	end;
	if nValue == 4 then
		szMsg = "<color=cyan>Đặt vào:\n<color=green>1 Đồng hành Thương Phong bất kỳ<color><color=yellow>\n→ Nhận lại: \n50 Rương Sự Kiện.<color>";
	end;
	
	Dialog:OpenGift(szMsg, nil, {self.OnOpenGiftOk, self, nValue});
end;
function tbDoiTrangBi_RuongSuKien:OnOpenGiftOk(nValue, tbItemObj)
	local tbItemList	= {};
	for _, pItem in pairs(tbItemObj) do
		if (self:ChechItem(pItem, REQUIRE_ITEM[nValue], tbItemList) ~= 1) then
			Dialog:Say("\nKhông phải vật phẩm đúng yêu cầu ta sẽ không nhận!",tbOpt);
			return 0;
		end;
	end
	local bResult 	= false;
	for i = 1, #REQUIRE_ITEM[nValue] do
		if (REQUIRE_ITEM[nValue][i][2] ~= tbItemList[i]) then
			bResult = true;
		end;
	end
	if (bResult) then
		Dialog:Say("\nNguyên Liệu đặt vào không đúng số lượng hoặc nhiều hơn 1 loại, hãy xem lại!",tbOpt);
		return 0;
	end;
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end;
	end
	
	--Phần thưởng--

	if (nValue == 1) then
	me.AddStackItem(18,1,3039,10,{bForceBind=1,},200);		--Rương Sự Kiện
	end
	if (nValue == 2) then
	me.AddStackItem(18,1,3039,10,{bForceBind=1,},80);		--Rương Sự Kiện
	end
	if (nValue == 3) then
	me.AddStackItem(18,1,3039,10,{bForceBind=1,},120);		--Rương Sự Kiện
	end
	if (nValue == 4) then
	me.AddStackItem(18,1,3039,10,{bForceBind=1,},50);		--Rương Sự Kiện
	end


end;

function tbDoiTrangBi_RuongSuKien:ChechItem(pItem, tbItemList, tbCountList)
	if (not pItem) then
		return 0;
	end;
	local szItem		= string.format("%s,%s,%s,%s",pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel);
	for i = 1, #tbItemList do
		local tbI = tbItemList[i];
		for j = 1, #tbI[1] do
			if (szItem == tbI[1][j]) then
				tbCountList[i] = (tbCountList[i] or 0) + pItem[1].nCount;
				return 1;
			end;
		end
	end
	return 0;
end;