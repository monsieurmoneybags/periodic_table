#!/bin/bash
COLOR="1;35m" # Violet
elements_row2=([5]=B [6]=C [7]=N [8]=O [9]=F [10]=Ne)
elements_row3=([13]=Al [14]=Si [15]=P [16]=S [17]=Cl [18]=Ar)
elements_row4=([19]=K [20]=Ca [21]=Sc [22]=Ti [23]=V [24]=Cr [25]=Mn [26]=Fe [27]=Co [28]=Ni [29]=Cu [30]=Zn [31]=Ga [32]=Ge [33]=As [34]=Se [35]=Br [36]=Kr)
elements_row5=([37]=Rb [38]=Sr [39]=Y [40]=Zr [41]=Nb [42]=Mo [43]=Tc [44]=Ru [45]=Rh [46]=Pd [47]=Ag [48]=Cd [49]=In [50]=Sn [51]=Sb [52]=Te [53]=I [54]=Xe)
elements_row6=([55]=Cs [56]=Ba [71]=Lu [72]=Hf [73]=Ta [74]=W [75]=Re [76]=Os [77]=Ir [78]=Pt [79]=Au [80]=Hg [81]=Tl [82]=Pb [83]=Bi [84]=Po [85]=At [86]=Rn)
elements_row7=([87]=Fr [88]=Ra [103]=Lr [104]=Rf [105]=Db [106]=Sg [107]=Bh [108]=Hs [109]=Mt [110]=Ds [111]=Rg [112]=Cn [113]=Nh [114]=Fl [115]=Mc [116]=Lv [117]=Ts [118]=Og)
elements_row8=([57]=La [58]=Ce [59]=Pr [60]=Nd [61]=Pm [62]=Sm [63]=Eu [64]=Gd [65]=Tb [66]=Dy [67]=Ho [68]=Er [69]=Tm [70]=Yb)
elements_row9=([89]=Ac [90]=Th [91]=Pa [92]=U [93]=Np [94]=Pu [95]=Am [96]=Cm [97]=Bk [98]=Cf [99]=Es [100]=Fm [101]=Md [102]=No)

# Row 1
printf "\E[$COLOR\E(0\x6c\x71\x71\x71\x6b\E(B\E[0m%63s\E[$COLOR\E(0\x6c\x71\x71\x71\x6b\E(B\E[0m\n"
printf "\E[$COLOR\E(0\x78\E(B\E[0m%-3d\E[$COLOR\E(0\x78\E(B\E[0m%63s\E[$COLOR\E(0\x78\E(B\E[0m%-3d\E[$COLOR\E(0\x78\E(B\E[0m\n" 1 "" 2
printf "\E[$COLOR\E(0\x78\E(B\E[0m%3s\E[$COLOR\E(0\x78\E(B\E[0m%63s\E[$COLOR\E(0\x78\E(B\E[0m%3s\E[$COLOR\E(0\x78\E(B\E[0m\n" "H" "" "He"

# Row 2
printf "\E[$COLOR\E(0\x74\x71\x71\x71\x6e\x71\x71\x71\x6b\E(B\E[0m%39s\E[$COLOR\E(0\x6c" ""
for x in {1..4}; do
    printf "\E[$COLOR\E(0\x71\x71\x71\x77"
done
printf "\E[$COLOR\E(0\x71\x71\x71\x6e\x71\x71\x71\x75\E(B\E[0m\n"
printf "\E[$COLOR\E(0\x78\E(B\E[0m%-3d\E[$COLOR\E(0\x78\E(B\E[0m%-3d\E[$COLOR\E(0\x78\E(B\E[0m%39s" 3 4 ""
for e in $(echo ${!elements_row2[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%-3d" $e
done
printf "\E[$COLOR\E(0\x78\E(B\E[0m\n"
printf "\E[$COLOR\E(0\x78\E(B\E[0m%3s\E[$COLOR\E(0\x78\E(B\E[0m%3s\E[$COLOR\E(0\x78\E(B\E[0m%39s" "Li" "Be" ""
for e in $(echo ${!elements_row2[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%3s" ${elements_row2[$e]}
done
printf "\E[$COLOR\E(0\x78\n\x74"

# Row 3
printf "\E[$COLOR\E(0\x71\x71\x71\x6e\x71\x71\x71\x75\E(B\E[0m%39s\E[$COLOR\E(0\x74" ""
for x in {1..5}; do
    printf "\E[$COLOR\E(0\x71\x71\x71\x6e"
done
printf "\E[$COLOR\E(0\x71\x71\x71\x75\E(B\E[0m\n"
printf "\E[$COLOR\E(0\x78\E(B\E[0m%-3d\E[$COLOR\E(0\x78\E(B\E[0m%-3d\E[$COLOR\E(0\x78\E(B\E[0m%39s" 11 12 ""
for e in $(echo ${!elements_row3[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%-3d" $e
done
printf "\E[$COLOR\E(0\x78\E(B\E[0m\n"
printf "\E[$COLOR\E(0\x78\E(B\E[0m%3s\E[$COLOR\E(0\x78\E(B\E[0m%3s\E[$COLOR\E(0\x78\E(B\E[0m%39s" "Na" "Mg" ""
for e in $(echo ${!elements_row3[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%3s" ${elements_row3[$e]}
done
printf "\E[$COLOR\E(0\x78\n"

# Row 4
printf "\E[$COLOR\E(0\x74"
for x in {1..17}; do
    if [ $x -lt 3 -o $x -gt 11 ]; then
        printf "\E[$COLOR\E(0\x71\x71\x71\x6e"
    else
        printf "\E[$COLOR\E(0\x71\x71\x71\x77"
    fi
done
printf "\E[$COLOR\E(0\x71\x71\x71\x75\E(B\E[0m\n"
for e in $(echo ${!elements_row4[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%-3d" $e
done
printf "\E[$COLOR\E(0\x78\E(B\E[0m\n"
for e in $(echo ${!elements_row4[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%3s" ${elements_row4[$e]}
done
printf "\E[$COLOR\E(0\x78\n\x74"

# Row 5
for x in {1..17}; do
    printf "\E[$COLOR\E(0\x71\x71\x71\x6e"
done
printf "\E[$COLOR\E(0\x71\x71\x71\x75\E(B\E[0m\n"
for e in $(echo ${!elements_row5[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%-3d" $e
done
printf "\E[$COLOR\E(0\x78\E(B\E[0m\n"
for e in $(echo ${!elements_row5[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%3s" ${elements_row5[$e]}
done
printf "\E[$COLOR\E(0\x78\n\x74"

# Row 6
for x in {1..17}; do
    printf "\E[$COLOR\E(0\x71\x71\x71\x6e"
done
printf "\E[$COLOR\E(0\x71\x71\x71\x75\E(B\E[0m\n"
for e in $(echo ${!elements_row6[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%-3d" $e
done
printf "\E[$COLOR\E(0\x78\E(B\E[0m\n"
for e in $(echo ${!elements_row6[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%3s" ${elements_row6[$e]}
done
printf "\E[$COLOR\E(0\x78\n\x74"

# Row 7
for x in {1..17}; do
    printf "\E[$COLOR\E(0\x71\x71\x71\x6e"
done
printf "\E[$COLOR\E(0\x71\x71\x71\x75\E(B\E[0m\n"
for e in $(echo ${!elements_row7[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%-3d" $e
done
printf "\E[$COLOR\E(0\x78\E(B\E[0m\n"
for e in $(echo ${!elements_row7[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%3s" ${elements_row7[$e]}
done
printf "\E[$COLOR\E(0\x78\n\E[$COLOR\E(0\x6d\x71\x71\x71\x76\x71\x71\x71"
printf "\E[$COLOR\E(0\x6e\E(B\E[0m"

# Row 8
for x in {1..14}; do
    printf "\E[$COLOR\E(0\x71\x71\x71\x6e"
done
printf "\E[$COLOR\E(0\x71\x71\x71\x76\x71\x71\x71\x6a\E(B\E[0m\n%8s" ""
for e in $(echo ${!elements_row8[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%-3d" $e
done
printf "\E[$COLOR\E(0\x78\E(B\E[0m\n%8s" ""
for e in $(echo ${!elements_row8[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%3s" ${elements_row8[$e]}
done
printf "\E[$COLOR\E(0\x78\n%8s\x74" ""

# Row 9
for x in {1..13}; do
    printf "\E[$COLOR\E(0\x71\x71\x71\x6e"
done
printf "\E[$COLOR\E(0\x71\x71\x71\x75\E(B\E[0m\n%8s" ""
for e in $(echo ${!elements_row9[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%-3d" $e
done
printf "\E[$COLOR\E(0\x78\E(B\E[0m\n%8s" ""
for e in $(echo ${!elements_row9[@]} | tr ' ' '\n' | sort -n); do
    printf "\E[$COLOR\E(0\x78\E(B\E[0m%3s" ${elements_row9[$e]}
done
printf "\E[$COLOR\E(0\x78\n%8s\E[$COLOR\E(0\x6d" ""
for x in {1..13}; do
    printf "\E[$COLOR\E(0\x71\x71\x71\x76"
done
printf "\E[$COLOR\E(0\x71\x71\x71\x6a\n\E(B\E[0m"
