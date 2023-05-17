export hahn1

function hahn1(; use_nls::Bool = false, kwargs...)
  model = use_nls ? :nls : :nlp
  return hahn1(Val(model); kwargs...)
end

function hahn1(
  ::Val{:nlp};
  n::Int = default_nvar,
  type::Val{T} = Val(Float64),
  kwargs...,
) where {T}
y = Rational{Int}[
    591 // 1000          24410 // 1000  
    1547 // 1000         34820 // 1000  
    2902 // 1000         44090 // 1000  
    2894 // 1000         45070 // 1000  
    4703 // 1000         54980 // 1000  
    6307 // 1000         65510 // 1000  
    7030 // 1000         70530 // 1000  
    7898 // 1000         75700 // 1000  
    9470 // 1000         89570 // 1000  
    9484 // 1000         91140 // 1000  
   10072 // 1000         96400 // 1000  
   10163 // 1000         97190 // 1000  
   11615 // 1000        114260 // 1000  
   12005 // 1000        120250 // 1000  
   12478 // 1000        127080 // 1000  
   12982 // 1000        133550 // 1000  
   12970 // 1000        133610 // 1000  
   13926 // 1000        158670 // 1000  
   14452 // 1000        172740 // 1000  
   14404 // 1000        171310 // 1000  
   15190 // 1000        202140 // 1000  
   15550 // 1000        220550 // 1000  
   15528 // 1000        221050 // 1000  
   15499 // 1000        221390 // 1000  
   16131 // 1000        250990 // 1000  
   16438 // 1000        268990 // 1000  
   16387 // 1000        271800 // 1000  
   16549 // 1000        271970 // 1000  
   16872 // 1000        321310 // 1000  
   16830 // 1000        321690 // 1000  
   16926 // 1000        330140 // 1000  
   16907 // 1000        333030 // 1000  
   16966 // 1000        333470 // 1000  
   17060 // 1000        340770 // 1000  
   17122 // 1000        345650 // 1000  
   17311 // 1000        373110 // 1000  
   17355 // 1000        373790 // 1000  
   17668 // 1000        411820 // 1000  
   17767 // 1000        419510 // 1000  
   17803 // 1000        421590 // 1000  
   17765 // 1000        422020 // 1000  
   17768 // 1000        422470 // 1000  
   17736 // 1000        422610 // 1000  
   17858 // 1000        441750 // 1000  
   17877 // 1000        447410 // 1000  
   17912 // 1000        448700 // 1000   
   18046 // 1000        472890 // 1000  
   18085 // 1000        476690 // 1000  
   18291 // 1000        522470 // 1000  
   18357 // 1000        522620 // 1000  
   18426 // 1000        524430 // 1000  
   18584 // 1000        546750 // 1000  
   18610 // 1000        549530 // 1000  
   18870 // 1000        575290 // 1000  
   18795 // 1000        576000 // 1000  
   19111 // 1000        625550 // 1000  
     367 // 1000         20150 // 1000  
     796 // 1000         28780 // 1000  
    0892 // 1000         29570 // 1000  
    1903 // 1000         37410 // 1000  
    2150 // 1000         39120 // 1000  
    3697 // 1000         50240 // 1000  
    5870 // 1000         61380 // 1000  
    6421 // 1000         66250 // 1000  
    7422 // 1000         73420 // 1000  
    9944 // 1000         95520 // 1000  
   11023 // 1000        107320 // 1000  
   11870 // 1000        122040 // 1000  
   12786 // 1000        134030 // 1000  
   14067 // 1000        163190 // 1000  
   13974 // 1000        163480 // 1000  
   14462 // 1000        175700 // 1000  
   14464 // 1000        179860 // 1000  
   15381 // 1000        211270 // 1000  
   15483 // 1000        217780 // 1000  
   15590 // 1000        219140 // 1000  
   16075 // 1000        262520 // 1000  
   16347 // 1000        268010 // 1000  
   16181 // 1000        268620 // 1000  
   16915 // 1000        336250 // 1000  
   17003 // 1000        337230 // 1000  
   16978 // 1000        339330 // 1000  
   17756 // 1000        427380 // 1000  
   17808 // 1000        428580 // 1000  
   17868 // 1000        432680 // 1000  
   18481 // 1000        528990 // 1000  
   18486 // 1000        531080 // 1000  
   19090 // 1000        628340 // 1000  
   16062 // 1000        253240 // 1000  
   16337 // 1000        273130 // 1000  
   16345 // 1000        273660 // 1000  
   16388 // 1000        282100 // 1000  
   17159 // 1000        346620 // 1000  
   17116 // 1000        347190 // 1000  
   17164 // 1000        348780 // 1000  
   17123 // 1000        351180 // 1000  
   17979 // 1000        450100 // 1000  
   17974 // 1000        450350 // 1000  
   18007 // 1000        451920 // 1000  
   17993 // 1000        455560 // 1000  
   18523 // 1000        552220 // 1000  
   18669 // 1000        553560 // 1000  
   18617 // 1000        555740 // 1000  
   19371 // 1000        652590 // 1000  
   19330 // 1000        656200 // 1000  
    0080 // 1000         14130 // 1000  
    0248 // 1000         20410 // 1000  
    1089 // 1000         31300 // 1000  
    1418 // 1000         33840 // 1000  
    2278 // 1000         39700 // 1000  
    3624 // 1000         48830 // 1000  
    4574 // 1000         54500 // 1000  
    5556 // 1000         60410 // 1000  
    7267 // 1000         72770 // 1000  
    7695 // 1000         75250 // 1000  
    9136 // 1000         86840 // 1000  
    9959 // 1000         94880 // 1000  
    9957 // 1000         96400 // 1000  
   11600 // 1000        117370 // 1000  
   13138 // 1000        139080 // 1000  
   13564 // 1000        147730 // 1000  
   13871 // 1000        158630 // 1000  
   13994 // 1000        161840 // 1000  
   14947 // 1000        192110 // 1000  
   15473 // 1000        206760 // 1000  
   15379 // 1000        209070 // 1000  
   15455 // 1000        213320 // 1000  
   15908 // 1000        226440 // 1000  
   16114 // 1000        237120 // 1000  
   17071 // 1000        330900 // 1000  
   17135 // 1000        358720 // 1000  
   17282 // 1000        370770 // 1000  
   17368 // 1000        372720 // 1000  
   17483 // 1000        396240 // 1000  
   17764 // 1000        416590 // 1000  
   18185 // 1000        484020 // 1000  
   18271 // 1000        495470 // 1000  
   18236 // 1000        514780 // 1000  
   18237 // 1000        515650 // 1000  
   18523 // 1000        519470 // 1000  
   18627 // 1000        544470 // 1000  
   18665 // 1000        560110 // 1000  
   19086 // 1000        620770 // 1000  
    0214 // 1000         18970 // 1000  
    0943 // 1000         28930 // 1000  
    1429 // 1000         33910 // 1000  
    2241 // 1000         40030 // 1000  
    2951 // 1000         44660 // 1000  
    3782 // 1000         49870 // 1000  
    4757 // 1000         55160 // 1000  
    5602 // 1000         60900 // 1000  
    7169 // 1000         72080 // 1000  
    8920 // 1000         85150 // 1000  
   10055 // 1000         97060 // 1000  
   12035 // 1000        119630 // 1000  
   12861 // 1000        133270 // 1000  
   13436 // 1000        143840 // 1000  
   14167 // 1000        161910 // 1000  
   14755 // 1000        180670 // 1000  
   15168 // 1000        198440 // 1000  
   15651 // 1000        226860 // 1000  
   15746 // 1000        229650 // 1000  
   16216 // 1000        258270 // 1000  
   16445 // 1000        273770 // 1000  
   16965 // 1000        339150 // 1000  
   17121 // 1000        350130 // 1000  
   17206 // 1000        362750 // 1000  
   17250 // 1000        371030 // 1000  
   17339 // 1000        393320 // 1000  
   17793 // 1000        448530 // 1000  
   18123 // 1000        473780 // 1000  
   18490 // 1000        511120 // 1000  
   18566 // 1000        524700 // 1000  
   18645 // 1000        548750 // 1000  
   18706 // 1000        551640 // 1000  
   18924 // 1000        574020 // 1000  
   19100 // 1000        623860 // 1000  
    0375 // 1000         21460 // 1000  
    0471 // 1000         24330 // 1000  
    1504 // 1000         33430 // 1000  
    2204 // 1000         39220 // 1000  
    2813 // 1000         44180 // 1000  
    4765 // 1000         55020 // 1000  
    9835 // 1000         94330 // 1000  
   10040 // 1000         96440 // 1000  
   11946 // 1000        118820 // 1000  
   12596 // 1000        128480 // 1000  
   13303 // 1000        141940 // 1000  
   13922 // 1000        156920 // 1000  
   14440 // 1000        171650 // 1000  
   14951 // 1000        190000 // 1000  
   15627 // 1000        223260 // 1000  
   15639 // 1000        223880 // 1000  
   15814 // 1000        231500 // 1000  
   16315 // 1000        265050 // 1000  
   16334 // 1000        269440 // 1000  
   16430 // 1000        271780 // 1000  
   16423 // 1000        273460 // 1000  
   17024 // 1000        334610 // 1000  
   17009 // 1000        339790 // 1000  
   17165 // 1000        349520 // 1000  
   17134 // 1000        358180 // 1000  
   17349 // 1000        377980 // 1000  
   17576 // 1000        394770 // 1000  
   17848 // 1000        429660 // 1000  
   18090 // 1000        468220 // 1000  
   18276 // 1000        487270 // 1000  
   18404 // 1000        519540 // 1000  
   18519 // 1000        523030 // 1000  
   19133 // 1000        612990 // 1000  
   19074 // 1000        638590 // 1000  
   19239 // 1000        641360 // 1000  
   19280 // 1000        622050 // 1000  
   19101 // 1000        631500 // 1000  
   19398 // 1000        663970 // 1000  
   19252 // 1000        646900 // 1000   
   19890 // 1000        748290 // 1000  
   20007 // 1000        749210 // 1000  
   19929 // 1000        750140 // 1000  
   19268 // 1000        647040 // 1000  
   19324 // 1000        646890 // 1000  
   20049 // 1000        746900 // 1000   
   20107 // 1000        748430 // 1000  
   20062 // 1000        747350 // 1000  
   20065 // 1000        749270 // 1000  
   19286 // 1000        647610 // 1000  
   19972 // 1000        747780 // 1000  
   20088 // 1000        750510 // 1000  
   20743 // 1000        851370 // 1000  
   20830 // 1000        845970 // 1000  
   20935 // 1000        847540 // 1000  
   21035 // 1000        849930 // 1000  
   20930 // 1000        851610 // 1000  
   21074 // 1000        849750 // 1000  
   21085 // 1000        850980 // 1000  
   20935 // 1000        848230 // 1000  
  ]
  function f(x; y = y)
    return 1 // 2 * sum((y[i, 1] - (x[1]+x[2]*y[i, 2]+x[3]*y[i, 2]^2+x[4]*y[i, 2]^3) / (1+x[5]*y[i, 2]+x[6]*y[i, 2]^2+x[7]*y[i, 2]^3) )^2 for i = 1:236)
  end
  x0 = T[10, -1, 0.05, -0.00001, -0.05, 0.001, -0.000001]
  return ADNLPModels.ADNLPModel(f, x0, name = "hahn1"; kwargs...)
end

function hahn1(
  ::Val{:nls};
  n::Int = default_nvar,
  type::Val{T} = Val(Float64),
  kwargs...,
) where {T}
y = Rational{Int}[
    591 // 1000          24410 // 1000  
    1547 // 1000         34820 // 1000  
    2902 // 1000         44090 // 1000  
    2894 // 1000         45070 // 1000  
    4703 // 1000         54980 // 1000  
    6307 // 1000         65510 // 1000  
    7030 // 1000         70530 // 1000  
    7898 // 1000         75700 // 1000  
    9470 // 1000         89570 // 1000  
    9484 // 1000         91140 // 1000  
   10072 // 1000         96400 // 1000  
   10163 // 1000         97190 // 1000  
   11615 // 1000        114260 // 1000  
   12005 // 1000        120250 // 1000  
   12478 // 1000        127080 // 1000  
   12982 // 1000        133550 // 1000  
   12970 // 1000        133610 // 1000  
   13926 // 1000        158670 // 1000  
   14452 // 1000        172740 // 1000  
   14404 // 1000        171310 // 1000  
   15190 // 1000        202140 // 1000  
   15550 // 1000        220550 // 1000  
   15528 // 1000        221050 // 1000  
   15499 // 1000        221390 // 1000  
   16131 // 1000        250990 // 1000  
   16438 // 1000        268990 // 1000  
   16387 // 1000        271800 // 1000  
   16549 // 1000        271970 // 1000  
   16872 // 1000        321310 // 1000  
   16830 // 1000        321690 // 1000  
   16926 // 1000        330140 // 1000  
   16907 // 1000        333030 // 1000  
   16966 // 1000        333470 // 1000  
   17060 // 1000        340770 // 1000  
   17122 // 1000        345650 // 1000  
   17311 // 1000        373110 // 1000  
   17355 // 1000        373790 // 1000  
   17668 // 1000        411820 // 1000  
   17767 // 1000        419510 // 1000  
   17803 // 1000        421590 // 1000  
   17765 // 1000        422020 // 1000  
   17768 // 1000        422470 // 1000  
   17736 // 1000        422610 // 1000  
   17858 // 1000        441750 // 1000  
   17877 // 1000        447410 // 1000  
   17912 // 1000        448700 // 1000   
   18046 // 1000        472890 // 1000  
   18085 // 1000        476690 // 1000  
   18291 // 1000        522470 // 1000  
   18357 // 1000        522620 // 1000  
   18426 // 1000        524430 // 1000  
   18584 // 1000        546750 // 1000  
   18610 // 1000        549530 // 1000  
   18870 // 1000        575290 // 1000  
   18795 // 1000        576000 // 1000  
   19111 // 1000        625550 // 1000  
     367 // 1000         20150 // 1000  
     796 // 1000         28780 // 1000  
    0892 // 1000         29570 // 1000  
    1903 // 1000         37410 // 1000  
    2150 // 1000         39120 // 1000  
    3697 // 1000         50240 // 1000  
    5870 // 1000         61380 // 1000  
    6421 // 1000         66250 // 1000  
    7422 // 1000         73420 // 1000  
    9944 // 1000         95520 // 1000  
   11023 // 1000        107320 // 1000  
   11870 // 1000        122040 // 1000  
   12786 // 1000        134030 // 1000  
   14067 // 1000        163190 // 1000  
   13974 // 1000        163480 // 1000  
   14462 // 1000        175700 // 1000  
   14464 // 1000        179860 // 1000  
   15381 // 1000        211270 // 1000  
   15483 // 1000        217780 // 1000  
   15590 // 1000        219140 // 1000  
   16075 // 1000        262520 // 1000  
   16347 // 1000        268010 // 1000  
   16181 // 1000        268620 // 1000  
   16915 // 1000        336250 // 1000  
   17003 // 1000        337230 // 1000  
   16978 // 1000        339330 // 1000  
   17756 // 1000        427380 // 1000  
   17808 // 1000        428580 // 1000  
   17868 // 1000        432680 // 1000  
   18481 // 1000        528990 // 1000  
   18486 // 1000        531080 // 1000  
   19090 // 1000        628340 // 1000  
   16062 // 1000        253240 // 1000  
   16337 // 1000        273130 // 1000  
   16345 // 1000        273660 // 1000  
   16388 // 1000        282100 // 1000  
   17159 // 1000        346620 // 1000  
   17116 // 1000        347190 // 1000  
   17164 // 1000        348780 // 1000  
   17123 // 1000        351180 // 1000  
   17979 // 1000        450100 // 1000  
   17974 // 1000        450350 // 1000  
   18007 // 1000        451920 // 1000  
   17993 // 1000        455560 // 1000  
   18523 // 1000        552220 // 1000  
   18669 // 1000        553560 // 1000  
   18617 // 1000        555740 // 1000  
   19371 // 1000        652590 // 1000  
   19330 // 1000        656200 // 1000  
    0080 // 1000         14130 // 1000  
    0248 // 1000         20410 // 1000  
    1089 // 1000         31300 // 1000  
    1418 // 1000         33840 // 1000  
    2278 // 1000         39700 // 1000  
    3624 // 1000         48830 // 1000  
    4574 // 1000         54500 // 1000  
    5556 // 1000         60410 // 1000  
    7267 // 1000         72770 // 1000  
    7695 // 1000         75250 // 1000  
    9136 // 1000         86840 // 1000  
    9959 // 1000         94880 // 1000  
    9957 // 1000         96400 // 1000  
   11600 // 1000        117370 // 1000  
   13138 // 1000        139080 // 1000  
   13564 // 1000        147730 // 1000  
   13871 // 1000        158630 // 1000  
   13994 // 1000        161840 // 1000  
   14947 // 1000        192110 // 1000  
   15473 // 1000        206760 // 1000  
   15379 // 1000        209070 // 1000  
   15455 // 1000        213320 // 1000  
   15908 // 1000        226440 // 1000  
   16114 // 1000        237120 // 1000  
   17071 // 1000        330900 // 1000  
   17135 // 1000        358720 // 1000  
   17282 // 1000        370770 // 1000  
   17368 // 1000        372720 // 1000  
   17483 // 1000        396240 // 1000  
   17764 // 1000        416590 // 1000  
   18185 // 1000        484020 // 1000  
   18271 // 1000        495470 // 1000  
   18236 // 1000        514780 // 1000  
   18237 // 1000        515650 // 1000  
   18523 // 1000        519470 // 1000  
   18627 // 1000        544470 // 1000  
   18665 // 1000        560110 // 1000  
   19086 // 1000        620770 // 1000  
    0214 // 1000         18970 // 1000  
    0943 // 1000         28930 // 1000  
    1429 // 1000         33910 // 1000  
    2241 // 1000         40030 // 1000  
    2951 // 1000         44660 // 1000  
    3782 // 1000         49870 // 1000  
    4757 // 1000         55160 // 1000  
    5602 // 1000         60900 // 1000  
    7169 // 1000         72080 // 1000  
    8920 // 1000         85150 // 1000  
   10055 // 1000         97060 // 1000  
   12035 // 1000        119630 // 1000  
   12861 // 1000        133270 // 1000  
   13436 // 1000        143840 // 1000  
   14167 // 1000        161910 // 1000  
   14755 // 1000        180670 // 1000  
   15168 // 1000        198440 // 1000  
   15651 // 1000        226860 // 1000  
   15746 // 1000        229650 // 1000  
   16216 // 1000        258270 // 1000  
   16445 // 1000        273770 // 1000  
   16965 // 1000        339150 // 1000  
   17121 // 1000        350130 // 1000  
   17206 // 1000        362750 // 1000  
   17250 // 1000        371030 // 1000  
   17339 // 1000        393320 // 1000  
   17793 // 1000        448530 // 1000  
   18123 // 1000        473780 // 1000  
   18490 // 1000        511120 // 1000  
   18566 // 1000        524700 // 1000  
   18645 // 1000        548750 // 1000  
   18706 // 1000        551640 // 1000  
   18924 // 1000        574020 // 1000  
   19100 // 1000        623860 // 1000  
    0375 // 1000         21460 // 1000  
    0471 // 1000         24330 // 1000  
    1504 // 1000         33430 // 1000  
    2204 // 1000         39220 // 1000  
    2813 // 1000         44180 // 1000  
    4765 // 1000         55020 // 1000  
    9835 // 1000         94330 // 1000  
   10040 // 1000         96440 // 1000  
   11946 // 1000        118820 // 1000  
   12596 // 1000        128480 // 1000  
   13303 // 1000        141940 // 1000  
   13922 // 1000        156920 // 1000  
   14440 // 1000        171650 // 1000  
   14951 // 1000        190000 // 1000  
   15627 // 1000        223260 // 1000  
   15639 // 1000        223880 // 1000  
   15814 // 1000        231500 // 1000  
   16315 // 1000        265050 // 1000  
   16334 // 1000        269440 // 1000  
   16430 // 1000        271780 // 1000  
   16423 // 1000        273460 // 1000  
   17024 // 1000        334610 // 1000  
   17009 // 1000        339790 // 1000  
   17165 // 1000        349520 // 1000  
   17134 // 1000        358180 // 1000  
   17349 // 1000        377980 // 1000  
   17576 // 1000        394770 // 1000  
   17848 // 1000        429660 // 1000  
   18090 // 1000        468220 // 1000  
   18276 // 1000        487270 // 1000  
   18404 // 1000        519540 // 1000  
   18519 // 1000        523030 // 1000  
   19133 // 1000        612990 // 1000  
   19074 // 1000        638590 // 1000  
   19239 // 1000        641360 // 1000  
   19280 // 1000        622050 // 1000  
   19101 // 1000        631500 // 1000  
   19398 // 1000        663970 // 1000  
   19252 // 1000        646900 // 1000   
   19890 // 1000        748290 // 1000  
   20007 // 1000        749210 // 1000  
   19929 // 1000        750140 // 1000  
   19268 // 1000        647040 // 1000  
   19324 // 1000        646890 // 1000  
   20049 // 1000        746900 // 1000   
   20107 // 1000        748430 // 1000  
   20062 // 1000        747350 // 1000  
   20065 // 1000        749270 // 1000  
   19286 // 1000        647610 // 1000  
   19972 // 1000        747780 // 1000  
   20088 // 1000        750510 // 1000  
   20743 // 1000        851370 // 1000  
   20830 // 1000        845970 // 1000  
   20935 // 1000        847540 // 1000  
   21035 // 1000        849930 // 1000  
   20930 // 1000        851610 // 1000  
   21074 // 1000        849750 // 1000  
   21085 // 1000        850980 // 1000  
   20935 // 1000        848230 // 1000  
  ]
  function F!(r, x)
    m = 236
    for i = 1:m
      r[i] = y[i, 1] - (x[1]+x[2]*y[i, 2]+x[3]*y[i, 2]^2+x[4]*y[i, 2]^3) / (1+x[5]*y[i, 2]+x[6]*y[i, 2]^2+x[7]*y[i, 2]^3)
    end
    return r
  end
  x0 = T[10, -1, 0.05, -0.00001, -0.05, 0.001, -0.000001]
  return ADNLPModels.ADNLSModel!(F!, x0, 236, name = "hahn1-nls"; kwargs...)
end
