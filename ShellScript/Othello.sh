#/bin/sh
#駒定義　先手ユーザー黒
U="○"
C="●"
#空処理
X=" "
#駒カウント
black=0
white=0
#盤面駒表示変数初期化
V11=" "
V12=" "
V13=" "
V14=" "
V15=" "
V16=" "
V17=" "
V18=" "
V21=" "
V22=" "
V23=" "
V24=" "
V25=" "
V26=" "
V27=" "
V28=" "
V31=" "
V32=" "
V33=" "
V34=" "
V35=" "
V36=" "
V37=" "
V38=" "
V41=" "
V42=" "
V43=" "
V44=" "
V45=" "
V46=" "
V47=" "
V48=" "
V51=" "
V52=" "
V53=" "
V54=" "
V55=" "
V56=" "
V57=" "
V58=" "
V61=" "
V62=" "
V63=" "
V64=" "
V65=" "
V66=" "
V67=" "
V68=" "
V71=" "
V72=" "
V73=" "
V74=" "
V75=" "
V76=" "
V77=" "
V78=" "
V81=" "
V82=" "
V83=" "
V84=" "
V85=" "
V86=" "
V87=" "
V88=" "
#初期駒位置
V44="$C"
V45="$U"
V54="$U"
V55="$C"

#盤面
function table () {
echo "     1     2     3     4     5     6     7     8   "
echo "   _____ _____ _____ _____ _____ _____ _____ _____ "
echo "  |     |     |     |     |     |     |     |     |"
echo "1 |  $V11  |  $V21  |  $V31  |  $V41  |  $V51  |  $V61  |  $V71  |  $V81  |"
echo "  |_____|_____|_____|_____|_____|_____|_____|_____|"
echo "  |     |     |     |     |     |     |     |     |"
echo "2 |  $V12  |  $V22  |  $V32  |  $V42  |  $V52  |  $V62  |  $V72  |  $V82  |"
echo "  |_____|_____|_____|_____|_____|_____|_____|_____|"
echo "  |     |     |     |     |     |     |     |     |"
echo "3 |  $V13  |  $V23  |  $V33  |  $V43  |  $V53  |  $V63  |  $V73  |  $V83  |"
echo "  |_____|_____|_____|_____|_____|_____|_____|_____|"
echo "  |     |     |     |     |     |     |     |     |"
echo "4 |  $V14  |  $V24  |  $V34  |  $V44  |  $V54  |  $V64  |  $V74  |  $V84  |"
echo "  |_____|_____|_____|_____|_____|_____|_____|_____|"
echo "  |     |     |     |     |     |     |     |     |"
echo "5 |  $V15  |  $V25  |  $V35  |  $V45  |  $V55  |  $V65  |  $V75  |  $V85  |"
echo "  |_____|_____|_____|_____|_____|_____|_____|_____|"
echo "  |     |     |     |     |     |     |     |     |"
echo "6 |  $V16  |  $V26  |  $V36  |  $V46  |  $V56  |  $V66  |  $V76  |  $V86  |"
echo "  |_____|_____|_____|_____|_____|_____|_____|_____|"
echo "  |     |     |     |     |     |     |     |     |"
echo "7 |  $V17  |  $V27  |  $V37  |  $V47  |  $V57  |  $V67  |  $V77  |  $V87  |"
echo "  |_____|_____|_____|_____|_____|_____|_____|_____|"
echo "  |     |     |     |     |     |     |     |     |"
echo "8 |  $V18  |  $V28  |  $V38  |  $V48  |  $V58  |  $V68  |  $V78  |  $V88  |"
echo "  |_____|_____|_____|_____|_____|_____|_____|_____|"
}
table
echo "　　　　　　　　　　　　オセロゲーム　　　　　　　　　　　　"
echo "座標を指定してコマを置きます"
echo "先にX座標後者にY座標"
echo "最左上の場合11"
echo "最左下の場合18"
echo "最右上の場合81"
echo "最右下の場合88"
read -p "Enterキーで続行 "
clear
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
#繰り返し項目開始　ループ
flag=0
while [ $flag == 0 ]
do
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #ユーザー不正入力判定初期化
    user_input_flag=0
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    clear
    table
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #置ける場所の有無　黒
    #初期化
    continue_flag_black=0
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #11 総合判定
    if [ "$V11" = " " ] ; then
      #11横判定
      if [ "$V81" = "$U" ] && [ "$V71" = "$C" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] && [ "$V21" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V71" = "$U" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] && [ "$V21" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V61" = "$U" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] && [ "$V21" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V51" = "$U" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] && [ "$V21" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V41" = "$U" ] && [ "$V31" = "$C" ] && [ "$V21" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V31" = "$U" ] && [ "$V21" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #11斜判定
      if [ "$V88" = "$U" ] && [ "$V77" = "$C" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V33" = "$C" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #11縦判定
      if [ "$V18" = "$U" ] && [ "$V17" = "$C" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] && [ "$V12" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V17" = "$U" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] && [ "$V12" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V16" = "$U" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] && [ "$V12" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V15" = "$U" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] && [ "$V12" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V14" = "$U" ] && [ "$V13" = "$C" ] && [ "$V12" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V13" = "$U" ] && [ "$V12" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #21 総合判定
    if [ "$V21" = " " ] ; then
      #21横判定
      if [ "$V81" = "$U" ] && [ "$V71" = "$C" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V71" = "$U" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V61" = "$U" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V51" = "$U" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V41" = "$U" ] && [ "$V31" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #21右下判定
      if [ "$V87" = "$U" ] && [ "$V76" = "$C" ] && [ "$V65" = "$C" ] && [ "$V54" = "$C" ] && [ "$V43" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V65" = "$C" ] && [ "$V54" = "$C" ] && [ "$V43" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V54" = "$C" ] && [ "$V43" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V43" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #21縦判定
      if [ "$V28" = "$U" ] && [ "$V27" = "$C" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V23" = "$C" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #31 総合判定
    if [ "$V31" = " " ] ; then
      #31右横判定
      if [ "$V81" = "$U" ] && [ "$V71" = "$C" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V71" = "$U" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V61" = "$U" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V51" = "$U" ] && [ "$V41" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #31右斜判定
      if [ "$V86" = "$U" ] && [ "$V75" = "$C" ] && [ "$V64" = "$C" ] && [ "$V53" = "$C" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V64" = "$C" ] && [ "$V53" = "$C" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V53" = "$C" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #31縦判定
      if [ "$V38" = "$U" ] && [ "$V37" = "$C" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V33" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #31左斜判定
      if [ "$V13" = "$U" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #31左横判定
      if [ "$V11" = "$U" ] && [ "$V21" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #41 総合判定
    if [ "$V41" = " " ] ; then
      #41右横判定
      if [ "$V81" = "$U" ] && [ "$V71" = "$C" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V71" = "$U" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V61" = "$U" ] && [ "$V51" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #41右下斜判定
      if [ "$V85" = "$U" ] && [ "$V74" = "$C" ] && [ "$V63" = "$C" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V63" = "$C" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #41縦判定
      if [ "$V48" = "$U" ] && [ "$V47" = "$C" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V43" = "$C" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #41左下判定
      if [ "$V14" = "$U" ] && [ "$V23" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #41左判定
      if [ "$V11" = "$U" ] && [ "$V21" = "$C" ] && [ "$V31" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V21" = "$U" ] && [ "$V31" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #---------------------------------------------------------------------------------------------------------------------------------------------------------------- 
    #51 総合判定
    if [ "$V51" = " " ] ; then
      #51右判定
      if [ "$V81" = "$U" ] && [ "$V71" = "$C" ] && [ "$V61" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V71" = "$U" ] && [ "$V61" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      else
        X=1
      fi
      #51右下判定
      if [ "$V84" = "$U" ] && [ "$V73" = "$C" ] && [ "$V62" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V62" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      else
        X=1
      fi
      #51縦判定
      if [ "$V58" = "$U" ] && [ "$V57" = "$C" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] && [ "$V52" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] && [ "$V52" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] && [ "$V52" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] && [ "$V52" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V53" = "$C" ] && [ "$V52" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V52" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      else
        X=1
      fi
      #51左下判定
      if [ "$V15" = "$U" ] && [ "$V24" = "$C" ] && [ "$V33" = "$C" ] && [ "$V42" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V33" = "$C" ] && [ "$V42" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V42" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      else
        X=1
      fi
      #51左判定
      if [ "$V11" = "$U" ] && [ "$V21" = "$C" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] ; then
        #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V21" = "$U" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] ; then
        #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V31" = "$U" ] && [ "$V41" = "$C" ] ; then
        #ひっくり返し実行
      continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #61 総合判定
    if [ "$V61" = " " ] ; then
      #61右判定
      if [ "$V81" = "$U" ] && [ "$V71" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      else
        X=1
      fi
      #61右下判定
      if [ "$V83" = "$U" ] && [ "$V72" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      else
        X=1
      fi
      #61縦判定
      if [ "$V68" = "$U" ] && [ "$V67" = "$C" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] && [ "$V62" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V63" = "$C" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
      continue_flag_black=1
      else
        X=1
      fi
      #61左下判定
      if [ "$V16" = "$U" ] && [ "$V25" = "$C" ] && [ "$V34" = "$C" ] && [ "$V43" = "$C" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V34" = "$C" ] && [ "$V43" = "$C" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V43" = "$C" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
      continue_flag_black=1
      else
        X=1
      fi
      #61左判定
      if [ "$V11" = "$U" ] && [ "$V21" = "$C" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V21" = "$U" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V31" = "$U" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      elif [ "$V41" = "$U" ] && [ "$V51" = "$C" ] ; then
      #ひっくり返し実行
      continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #71 総合判定
    if [ "$V71" = " " ] ; then
      #71縦判定
      if [ "$V78" = "$U" ] && [ "$V77" = "$C" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V73" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #71左下判定
      if [ "$V17" = "$U" ] && [ "$V26" = "$C" ] && [ "$V35" = "$C" ] && [ "$V44" = "$C" ] && [ "$V53" = "$C" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V35" = "$C" ] && [ "$V44" = "$C" ] && [ "$V53" = "$C" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V44" = "$C" ] && [ "$V53" = "$C" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V53" = "$C" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #71左判定
      if [ "$V11" = "$U" ] && [ "$V21" = "$C" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V21" = "$U" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V31" = "$U" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V41" = "$U" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V51" = "$U" ] && [ "$V61" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #81 総合判定
    if [ "$V81" = " " ] ; then
      #81縦判定
      if [ "$V88" = "$U" ] && [ "$V87" = "$C" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] && [ "$V82" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V87" = "$U" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] && [ "$V82" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V86" = "$U" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] && [ "$V82" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V85" = "$U" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] && [ "$V82" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V84" = "$U" ] && [ "$V83" = "$C" ] && [ "$V82" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V83" = "$U" ] && [ "$V82" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #81左下判定
      if [ "$V18" = "$U" ] && [ "$V27" = "$C" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V63" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #81左判定
      if [ "$V11" = "$U" ] && [ "$V21" = "$C" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] && [ "$V71" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V21" = "$U" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] && [ "$V71" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V31" = "$U" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] && [ "$V71" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V41" = "$U" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] && [ "$V71" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V51" = "$U" ] && [ "$V61" = "$C" ] && [ "$V71" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V61" = "$U" ] && [ "$V71" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #12 総合判定
    if [ "$V12" = " " ] ; then
      #12右判定
      if [ "$V82" = "$U" ] && [ "$V72" = "$C" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] && [ "$V22" = "$C" ] ; then
      #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] && [ "$V22" = "$C" ] ; then
      #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] && [ "$V22" = "$C" ] ; then
      #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] && [ "$V22" = "$C" ] ; then
      #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V32" = "$C" ] && [ "$V22" = "$C" ] ; then
      #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V22" = "$C" ] ; then
      #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #12右下判定
      if [ "$V78" = "$U" ] && [ "$V67" = "$C" ] && [ "$V56" = "$C" ] && [ "$V45" = "$C" ] && [ "$V34" = "$C" ] && [ "$V23" = "$C" ] ; then
      #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V56" = "$C" ] && [ "$V45" = "$C" ] && [ "$V34" = "$C" ] && [ "$V23" = "$C" ] ; then
      #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V45" = "$C" ] && [ "$V34" = "$C" ] && [ "$V23" = "$C" ] ; then
      #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V34" = "$C" ] && [ "$V23" = "$C" ] ; then
      #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V23" = "$C" ] ; then
      #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #12下判定
      if [ "$V18" = "$U" ] && [ "$V17" = "$C" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V17" = "$U" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V16" = "$U" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V15" = "$U" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V14" = "$U" ] && [ "$V13" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #22 総合判定
    if [ "$V22" = " " ] ; then
      #22右判定
      if [ "$V82" = "$U" ] && [ "$V72" = "$C" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #22右下判定
      if [ "$V88" = "$U" ] && [ "$V77" = "$C" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #22下判定
      if [ "$V28" = "$U" ] && [ "$V27" = "$C" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #32 総合判定
    if [ "$V32" = " " ] ; then
      #32右判定
      if [ "$V82" = "$U" ] && [ "$V72" = "$C" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #32右下判定
      if [ "$V87" = "$U" ] && [ "$V76" = "$C" ] && [ "$V65" = "$C" ] && [ "$V54" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V65" = "$C" ] && [ "$V54" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V54" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #32下判定
      if [ "$V38" = "$U" ] && [ "$V37" = "$C" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #32左下判定
      if [ "$V14" = "$U" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #32左判定
      if [ "$V12" = "$U" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #42 総合判定
    if [ "$V42" = " " ] ; then
      #42右判定
      if [ "$V82" = "$U" ] && [ "$V72" = "$C" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #42右下判定
      if [ "$V86" = "$U" ] && [ "$V75" = "$C" ] && [ "$V64" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V64" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #42下判定
      if [ "$V48" = "$U" ] && [ "$V47" = "$C" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #42左下判定
      if [ "$V15" = "$U" ] && [ "$V24" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
        X=1
      fi
      #42左判定
      if [ "$V12" = "$U" ] && [ "$V22" = "$C" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V33" = "$C" ] ; then
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #52 総合判定
    if [ "$V52" = " " ] ; then
      #52右判定
      if [ "$V82" = "$U" ] && [ "$V72" = "$C" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #52右下判定
      if [ "$V85" = "$U" ] && [ "$V74" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #52下判定
      if [ "$V58" = "$U" ] && [ "$V57" = "$C" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #52左下判定
      if [ "$V16" = "$U" ] && [ "$V25" = "$C" ] && [ "$V34" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V34" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #52左判定
      if [ "$V12" = "$U" ] && [ "$V22" = "$C" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------  
    #62 総合判定
    if [ "$V62" = " " ] ; then
      #62右判定
      if [ "$V82" = "$U" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #62右下判定
      if [ "$V84" = "$U" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #62下判定
      if [ "$V68" = "$U" ] && [ "$V67" = "$C" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #62左下判定
      if [ "$V17" = "$U" ] && [ "$V26" = "$C" ] && [ "$V35" = "$C" ] && [ "$V44" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V35" = "$C" ] && [ "$V44" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V44" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #62左判定
      if [ "$V12" = "$U" ] && [ "$V22" = "$C" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------    
    #72 総合判定
    if [ "$V72" = " " ] ; then
      #72下判定
      if [ "$V78" = "$U" ] && [ "$V77" = "$C" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #72左下判定
      if [ "$V18" = "$U" ] && [ "$V27" = "$C" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #72左判定
      if [ "$V12" = "$U" ] && [ "$V22" = "$C" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ]; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ]; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ]; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V62" = "$C" ]; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #82 総合判定
    if [ "$V82" = " " ] ; then
      #82下判定
      if [ "$V88" = "$U" ] && [ "$V87" = "$C" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V87" = "$U" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V86" = "$U" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V85" = "$U" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V84" = "$U" ] && [ "$V83" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #82左下判定
      if [ "$V28" = "$U" ] && [ "$V37" = "$C" ] && [ "$V46" = "$C" ] && [ "$V55" = "$C" ] && [ "$V64" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V37" = "$" ] && [ "$V46" = "$C" ] && [ "$V55" = "$C" ] && [ "$V64" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V55" = "$C" ] && [ "$V64" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V64" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #82左判定
      if [ "$V12" = "$U" ] && [ "$V22" = "$C" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V62" = "$C" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #13 総合判定
    if [ "$V13" = " " ] ; then
      #13上判定
      if [ "$V11" = "$U" ] && [ "$V12" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #13右上判定
      if [ "$V31" = "$U" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #13右判定
      if [ "$V83" = "$U" ] && [ "$V73" = "$C" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V33" = "$C" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #13右下判定
      if [ "$V68" = "$U" ] && [ "$V57" = "$C" ] && [ "$V46" = "$C" ] && [ "$V35" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V46" = "$C" ] && [ "$V35" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V35" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #13下判定
      if [ "$V18" = "$U" ] && [ "$V17" = "$C" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V17" = "$U" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V16" = "$U" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V15" = "$U" ] && [ "$V14" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #23 総合判定
    if [ "$V23" = " " ] ; then
      #23上判定
      if [ "$V21" = "$U" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #23右上判定
      if [ "$V41" = "$U" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #23右判定
      if [ "$V83" = "$U" ] && [ "$V73" = "$C" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #23右下判定
      if [ "$V78" = "$U" ] && [ "$V67" = "$C" ] && [ "$V56" = "$C" ] && [ "$V45" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V56" = "$C" ] && [ "$V45" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V45" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #23下判定
      if [ "$V28" = "$U" ] && [ "$V27" = "$C" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #33 総合判定
    if [ "$V33" = " " ] ; then
      #33 上判定
      if [ "$V31" = "$U" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #33右上判定
      if [ "$V51" = "$U" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #33右判定 ここまで
      if [ "$V83" = "$U" ] && [ "$V73" = "$C" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #33右下判定
      if [ "$V88" = "$U" ] && [ "$V77" = "$C" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #33下判定
      if [ "$V38" = "$U" ] && [ "$V37" = "$C" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #33左下判定
      if [ "$V15" = "$U" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #33左判定
      if [ "$V13" = "$U" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #33左上判定
      if [ "$V11" = "$U" ] && [ "$V22" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #43 総合判定
    if [ "$V43" = " " ] ; then
      #43 上判定
      if [ "$V41" = "$U" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #43右上判定
      if [ "$V61" = "$U" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #43右判定
      if [ "$V83" = "$U" ] && [ "$V73" = "$C" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #43右下判定
      if [ "$V87" = "$U" ] && [ "$V76" = "$C" ] && [ "$V65" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V65" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #43下判定
      if [ "$V48" = "$U" ] && [ "$V47" = "$C" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #43左下判定
      if [ "$V16" = "$U" ] && [ "$V25" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #43左判定
      if [ "$V13" = "$U" ] && [ "$V23" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #43左上判定
      if [ "$V21" = "$U" ] && [ "$V32" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #53 総合判定
    if [ "$V53" = " " ] ; then
      #53 上判定
      if [ "$V51" = "$U" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #53右上判定
      if [ "$V71" = "$U" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #53右判定
      if [ "$V83" = "$U" ] && [ "$V73" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #53右下判定
      if [ "$V86" = "$U" ] && [ "$V75" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #53下判定
      if [ "$V58" = "$U" ] && [ "$V57" = "$C" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #53左下判定
      if [ "$V17" = "$U" ] && [ "$V26" = "$C" ] && [ "$V35" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V35" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #53左判定
      if [ "$V13" = "$U" ] && [ "$V23" = "$C" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #53左上判定
      if [ "$V31" = "$U" ] && [ "$V42" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #63 総合判定
    if [ "$V63" = " " ] ; then
      #63 上判定
      if [ "$V61" = "$U" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #63右上判定
      if [ "$V81" = "$U" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #63右判定
      if [ "$V83" = "$U" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #63右下判定
      if [ "$V85" = "$U" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #63下判定
      if [ "$V68" = "$U" ] && [ "$V67" = "$C" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #63左下判定
      if [ "$V18" = "$U" ] && [ "$V27" = "$C" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #63左判定
      if [ "$V13" = "$U" ] && [ "$V23" = "$C" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #63左上判定
      if [ "$V41" = "$U" ] && [ "$V52" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #73 総合判定
    if [ "$V73" = " " ] ; then
      #73 上判定
      if [ "$V71" = "$U" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #73下判定
      if [ "$V78" = "$U" ] && [ "$V77" = "$C" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #73左下判定
      if [ "$V28" = "$U" ] && [ "$V37" = "$C" ] && [ "$V46" = "$C" ] && [ "$V55" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V46" = "$C" ] && [ "$V55" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V55" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #73左判定
      if [ "$V13" = "$U" ] && [ "$V23" = "$C" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #73左上判定
      if [ "$V51" = "$U" ] && [ "$V62" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #83 総合判定
    if [ "$V83" = " " ] ; then
      #83 上判定
      if [ "$V81" = "$U" ] && [ "$V82" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #83下判定
      if [ "$V88" = "$U" ] && [ "$V87" = "$C" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V87" = "$U" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V86" = "$U" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V85" = "$U" ] && [ "$V84" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #83左下判定
      if [ "$V38" = "$U" ] && [ "$V47" = "$C" ] && [ "$V56" = "$C" ] && [ "$V65" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V56" = "$C" ] && [ "$V65" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V65" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #83左判定
      if [ "$V13" = "$U" ] && [ "$V23" = "$C" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V63" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #83左上判定
      if [ "$V61" = "$U" ] && [ "$V72" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #---------------------------------------------------------------------------------------------------------------------------------------------------------------- 
    #14 総合判定
    if [ "$V14" = " " ] ; then
      #14 上判定
      if [ "$V11" = "$U" ] && [ "$V12" = "$C" ] && [ "$V13" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V12" = "$U" ] && [ "$V13" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #14右上判定
      if [ "$V41" = "$U" ] && [ "$V32" = "$C" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #14右判定
      if [ "$V84" = "$U" ] && [ "$V74" = "$C" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V34" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #14右下判定
      if [ "$V58" = "$U" ] && [ "$V47" = "$C" ] && [ "$V36" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V36" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #14下判定
      if [ "$V18" = "$U" ] && [ "$V17" = "$C" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V17" = "$U" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V16" = "$U" ] && [ "$V15" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #24 総合判定
    if [ "$V24" = " " ] ; then
      #24 上判定
      if [ "$V21" = "$U" ] && [ "$V22" = "$C" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #24右上判定
      if [ "$V51" = "$U" ] && [ "$V42" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #24右判定
      if [ "$V84" = "$U" ] && [ "$V74" = "$C" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #24右下判定
      if [ "$V68" = "$U" ] && [ "$V57" = "$C" ] && [ "$V46" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V46" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #24下判定
      if [ "$V28" = "$U" ] && [ "$V27" = "$C" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #34 総合判定
    if [ "$V34" = " " ] ; then
      #34 上判定
      if [ "$V31" = "$U" ] && [ "$V32" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #34右上判定
      if [ "$V61" = "$U" ] && [ "$V52" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #34右判定
      if [ "$V84" = "$U" ] && [ "$V74" = "$C" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #34右下判定
      if [ "$V78" = "$U" ] && [ "$V67" = "$C" ] && [ "$V56" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V56" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #34下判定
      if [ "$V38" = "$U" ] && [ "$V37" = "$C" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #34左下判定
      if [ "$V16" = "$U" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #34左判定
      if [ "$V14" = "$U" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #34左上判定
      if [ "$V12" = "$U" ] && [ "$V23" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #44 総合判定
    if [ "$V44" = " " ] ; then
      #44 上判定
      if [ "$V41" = "$U" ] && [ "$V42" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #44右上判定
      if [ "$V71" = "$U" ] && [ "$V62" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #44右判定
      if [ "$V84" = "$U" ] && [ "$V74" = "$C" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #44右下判定
      if [ "$V88" = "$U" ] && [ "$V77" = "$C" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #44下判定
      if [ "$V48" = "$U" ] && [ "$V47" = "$C" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #44左下判定
      if [ "$V17" = "$U" ] && [ "$V26" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #44左判定
      if [ "$V14" = "$U" ] && [ "$V24" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #44左上判定
      if [ "$V11" = "$U" ] && [ "$V22" = "$C" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V33" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #54 総合判定
    if [ "$V54" = " " ] ; then
      #54 上判定
      if [ "$V51" = "$U" ] && [ "$V52" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #54右上判定
      if [ "$V81" = "$U" ] && [ "$V72" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #54右判定
      if [ "$V84" = "$U" ] && [ "$V74" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #54右下判定
      if [ "$V87" = "$U" ] && [ "$V76" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #54下判定
      if [ "$V58" = "$U" ] && [ "$V57" = "$C" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #54左下判定
      if [ "$V18" = "$U" ] && [ "$V27" = "$C" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #54左判定
      if [ "$V14" = "$U" ] && [ "$V24" = "$C" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #54左上判定
      if [ "$V21" = "$U" ] && [ "$V32" = "$C" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V43" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #64 総合判定
    if [ "$V64" = " " ] ; then
      #64 上判定
      if [ "$V61" = "$U" ] && [ "$V62" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #64右上判定
      if [ "$V82" = "$U" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #64右判定
      if [ "$V84" = "$U" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #64右下判定
      if [ "$V86" = "$U" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #64下判定
      if [ "$V68" = "$U" ] && [ "$V67" = "$C" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #64左下判定
      if [ "$V28" = "$U" ] && [ "$V37" = "$C" ] && [ "$V46" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V46" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #64左判定
      if [ "$V14" = "$U" ] && [ "$V24" = "$C" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #64左上判定
      if [ "$V31" = "$U" ] && [ "$V42" = "$C" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V53" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #74 総合判定
    if [ "$V74" = " " ] ; then
      #74 上判定
      if [ "$V71" = "$U" ] && [ "$V72" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #74下判定
      if [ "$V78" = "$U" ] && [ "$V77" = "$C" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #74左下判定
      if [ "$V38" = "$U" ] && [ "$V47" = "$C" ] && [ "$V56" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V56" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #74左判定
      if [ "$V14" = "$U" ] && [ "$V24" = "$C" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #74左上判定
      if [ "$V41" = "$U" ] && [ "$V52" = "$C" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V63" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #84 総合判定
    if [ "$V84" = " " ] ; then
      #84 上判定
      if [ "$V81" = "$U" ] && [ "$V82" = "$C" ] && [ "$V83" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V82" = "$U" ] && [ "$V83" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #84下判定
      if [ "$V88" = "$U" ] && [ "$V87" = "$C" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V87" = "$U" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V86" = "$U" ] && [ "$V85" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #84左下判定
      if [ "$V48" = "$U" ] && [ "$V57" = "$C" ] && [ "$V66" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V66" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #84左判定
      if [ "$V14" = "$U" ] && [ "$V24" = "$C" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V64" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #84左上判定
      if [ "$V51" = "$U" ] && [ "$V62" = "$C" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V73" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #15 総合判定
    if [ "$V15" = " " ] ; then
      #15 上判定
      if [ "$V11" = "$U" ] && [ "$V12" = "$C" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V12" = "$U" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V13" = "$U" ] && [ "$V14" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #15 右上判定
      if [ "$V51" = "$U" ] && [ "$V42" = "$C" ] && [ "$V33" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V33" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #15 右判定
      if [ "$V85" = "$U" ] && [ "$V75" = "$C" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V35" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #15 右下判定
      if [ "$V48" = "$U" ] && [ "$V37" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #15下判定
      if [ "$V18" = "$U" ] && [ "$V17" = "$C" ] && [ "$V16" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V17" = "$U" ] && [ "$V16" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #25 総合判定
    if [ "$V25" = " " ] ; then
      #25 上判定
      if [ "$V21" = "$U" ] && [ "$V22" = "$C" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #25 右上判定
      if [ "$V61" = "$U" ] && [ "$V52" = "$C" ] && [ "$V43" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V43" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #25 右判定
      if [ "$V85" = "$U" ] && [ "$V75" = "$C" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #25 右下判定
      if [ "$V58" = "$U" ] && [ "$V47" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #25下判定
      if [ "$V28" = "$U" ] && [ "$V27" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #35 総合判定
    if [ "$V35" = " " ] ; then
      #35 上判定
      if [ "$V31" = "$U" ] && [ "$V32" = "$C" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #35 右上判定
      if [ "$V71" = "$U" ] && [ "$V62" = "$C" ] && [ "$V53" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V53" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #35 右判定
      if [ "$V85" = "$U" ] && [ "$V75" = "$C" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #35 右下判定
      if [ "$V68" = "$U" ] && [ "$V57" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #35下判定
      if [ "$V38" = "$U" ] && [ "$V37" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #35 左下判定
      if [ "$V13" = "$U" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #35 左判定
      if [ "$V15" = "$U" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #35 左上判定
      if [ "$V13" = "$U" ] && [ "$V24" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #45 総合判定
    if [ "$V45" = " " ] ; then
      #45 上判定
      if [ "$V41" = "$U" ] && [ "$V42" = "$C" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #45 右上判定
      if [ "$V81" = "$U" ] && [ "$V72" = "$C" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #45 右判定
      if [ "$V85" = "$U" ] && [ "$V75" = "$C" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #45 右下判定
      if [ "$V78" = "$U" ] && [ "$V67" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #45下判定
      if [ "$V48" = "$U" ] && [ "$V47" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #45 左下判定
      if [ "$V18" = "$U" ] && [ "$V27" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #45 左判定
      if [ "$V15" = "$U" ] && [ "$V25" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #45 左上判定
      if [ "$V12" = "$U" ] && [ "$V23" = "$C" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V34" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #55 総合判定
    if [ "$V55" = " " ] ; then
      #55 上判定
      if [ "$V51" = "$U" ] && [ "$V52" = "$C" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #55 右上判定
      if [ "$V82" = "$U" ] && [ "$V73" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #55 右判定
      if [ "$V85" = "$U" ] && [ "$V75" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #55 右下判定
      if [ "$V88" = "$U" ] && [ "$V77" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #55下判定
      if [ "$V58" = "$U" ] && [ "$V57" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #55 左下判定
      if [ "$V28" = "$U" ] && [ "$V37" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #55 左判定
      if [ "$V15" = "$U" ] && [ "$V25" = "$C" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #55 左上判定
      if [ "$V11" = "$U" ] && [ "$V22" = "$C" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V44" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #65 総合判定
    if [ "$V65" = " " ] ; then
      #65 上判定
      if [ "$V61" = "$U" ] && [ "$V62" = "$C" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #65 右上判定
      if [ "$V83" = "$U" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #65 右判定
      if [ "$V85" = "$U" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #65 右下判定
      if [ "$V87" = "$U" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #65下判定
      if [ "$V68" = "$U" ] && [ "$V67" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #65 左下判定
      if [ "$V38" = "$U" ] && [ "$V47" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #65 左判定
      if [ "$V15" = "$U" ] && [ "$V25" = "$C" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V55" = "$C" ] ; then
          #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #65 左上判定
      if [ "$V21" = "$U" ] && [ "$V32" = "$C" ] && [ "$V43" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V43" = "$C" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V54" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #75 総合判定
    if [ "$V75" = " " ] ; then
      #75 上判定
      if [ "$V71" = "$U" ] && [ "$V72" = "$C" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #75下判定
      if [ "$V78" = "$U" ] && [ "$V77" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #75 左下判定
      if [ "$V48" = "$U" ] && [ "$V57" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #75 左判定
      if [ "$V15" = "$U" ] && [ "$V25" = "$C" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #75 左上判定
      if [ "$V31" = "$U" ] && [ "$V42" = "$C" ] && [ "$V53" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V53" = "$C" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V64" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #85 総合判定
    if [ "$V85" = " " ] ; then
      #85 上判定
      if [ "$V81" = "$U" ] && [ "$V82" = "$C" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V82" = "$U" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V83" = "$U" ] && [ "$V84" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #85下判定
      if [ "$V88" = "$U" ] && [ "$V87" = "$C" ] && [ "$V86" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V87" = "$U" ] && [ "$V86" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #85 左下判定
      if [ "$V48" = "$U" ] && [ "$V57" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #85 左判定
      if [ "$V15" = "$U" ] && [ "$V25" = "$C" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V65" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #85 左上判定
      if [ "$V41" = "$U" ] && [ "$V52" = "$C" ] && [ "$V63" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V63" = "$C" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V74" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #16 総合判定
    if [ "$V16" = " " ] ; then
      #16 上判定
      if [ "$V11" = "$U" ] && [ "$V12" = "$C" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V12" = "$U" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V13" = "$U" ] && [ "$V14" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #16 右上判定
      if [ "$V61" = "$U" ] && [ "$V52" = "$C" ] && [ "$V43" = "$C" ] && [ "$V34" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V43" = "$C" ] && [ "$V34" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V34" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #16 右判定
      if [ "$V86" = "$U" ] && [ "$V76" = "$C" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V36" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #16右下判定
      if [ "$V38" = "$U" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #16下判定
      if [ "$V18" = "$U" ] && [ "$V17" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #26 総合判定
    if [ "$V26" = " " ] ; then
      #26 上判定
      if [ "$V21" = "$U" ] && [ "$V22" = "$C" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #26 右上判定
      if [ "$V71" = "$U" ] && [ "$V62" = "$C" ] && [ "$V53" = "$C" ] && [ "$V44" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V53" = "$C" ] && [ "$V44" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V44" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #26 右判定
      if [ "$V86" = "$U" ] && [ "$V76" = "$C" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #26右下判定
      if [ "$V48" = "$U" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #26下判定
      if [ "$V28" = "$U" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #36 総合判定
    if [ "$V36" = " " ] ; then
      #36 上判定
      if [ "$V31" = "$U" ] && [ "$V32" = "$C" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #36 右上判定
      if [ "$V81" = "$U" ] && [ "$V72" = "$U" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #36 右判定
      if [ "$V86" = "$U" ] && [ "$V76" = "$C" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #36右下判定
      if [ "$V58" = "$U" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #36下判定
      if [ "$V38" = "$U" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #36左下判定
      if [ "$V18" = "$U" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #36左判定
      if [ "$V16" = "$U" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #36左上判定
      if [ "$V14" = "$U" ] && [ "$V25" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #46 総合判定
    if [ "$V46" = " " ] ; then
      #46 上判定
      if [ "$V41" = "$U" ] && [ "$V42" = "$C" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #46 右上判定
      if [ "$V82" = "$U" ] && [ "$V73" = "$C" ] && [ "$V64" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V64" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #46 右判定
      if [ "$V86" = "$U" ] && [ "$V76" = "$C" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #46右下判定
      if [ "$V68" = "$U" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #46下判定
      if [ "$V48" = "$U" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #46左下判定
      if [ "$V28" = "$U" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #46左判定
      if [ "$V16" = "$U" ] && [ "$V26" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #46左上判定
      if [ "$V13" = "$U" ] && [ "$V24" = "$U" ] && [ "$V35" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #56 総合判定
    if [ "$V56" = " " ] ; then
      #56 上判定
      if [ "$V51" = "$U" ] && [ "$V52" = "$C" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #56 右上判定
      if [ "$V83" = "$U" ] && [ "$V74" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #56 右判定
      if [ "$V86" = "$U" ] && [ "$V76" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #56右下判定
      if [ "$V78" = "$U" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #56下判定
      if [ "$V58" = "$U" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #56左下判定
      if [ "$V38" = "$U" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #56左判定
      if [ "$V16" = "$U" ] && [ "$V26" = "$C" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #56左上判定
      if [ "$V12" = "$U" ] && [ "$V23" = "$C" ] && [ "$V34" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V34" = "$C" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V45" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #66 総合判定
    if [ "$V66" = " " ] ; then
      #66 上判定
      if [ "$V61" = "$U" ] && [ "$V62" = "$C" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #66 右上判定
      if [ "$V84" = "$U" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #66 右判定
      if [ "$V86" = "$U" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #66右下判定
      if [ "$V88" = "$U" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #66下判定
      if [ "$V68" = "$U" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #66左下判定
      if [ "$V48" = "$U" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #66左判定
      if [ "$V16" = "$U" ] && [ "$V26" = "$C" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #66左上判定
      if [ "$V11" = "$U" ] && [ "$V22" = "$C" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V55" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #76 総合判定
    if [ "$V76" = " " ] ; then
      #76 上判定
      if [ "$V71" = "$U" ] && [ "$V72" = "$C" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #76下判定
      if [ "$V78" = "$U" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #76左下判定
      if [ "$V58" = "$U" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #76左判定
      if [ "$V16" = "$U" ] && [ "$V26" = "$C" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #76左上判定
      if [ "$V21" = "$U" ] && [ "$V32" = "$C" ] && [ "$V43" = "$C" ] && [ "$V54" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V43" = "$C" ] && [ "$V54" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V54" = "$C" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #86 総合判定
    if [ "$V86" = " " ] ; then
      #86 上判定
      if [ "$V81" = "$U" ] && [ "$V82" = "$C" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V82" = "$U" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V83" = "$U" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V84" = "$U" ] && [ "$V85" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #86下判定
      if [ "$V88" = "$U" ] && [ "$V87" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #86左下判定
      if [ "$V68" = "$U" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #86左判定
      if [ "$V16" = "$U" ] && [ "$V26" = "$C" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V66" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #86左上判定
      if [ "$V31" = "$U" ] && [ "$V42" = "$C" ] && [ "$V53" = "$C" ] && [ "$V64" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V53" = "$C" ] && [ "$V64" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V64" = "$C" ] && [ "$V75" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V65" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #17 総合判定
    if [ "$V17" = " " ] ; then
      #17 上判定
      if [ "$V11" = "$U" ] && [ "$V12" = "$C" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V12" = "$U" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V13" = "$U" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V14" = "$U" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V15" = "$U" ] && [ "$V16" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #17右上判定
      if [ "$V71" = "$U" ] && [ "$V62" = "$C" ] && [ "$V53" = "$C" ] && [ "$V44" = "$C" ] && [ "$V35" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V53" = "$C" ] && [ "$V44" = "$C" ] && [ "$V35" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V44" = "$C" ] && [ "$V35" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V35" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #17右判定
      if [ "$V87" = "$U" ] && [ "$V77" = "$C" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V37" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #27 総合判定
    if [ "$V27" = " " ] ; then
      #27 上判定
      if [ "$V21" = "$U" ] && [ "$V22" = "$C" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #27右上判定
      if [ "$V81" = "$U" ] && [ "$V72" = "$C" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #27右判定
      if [ "$V87" = "$U" ] && [ "$V77" = "$C" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #37 総合判定
    if [ "$V37" = " " ] ; then
      #37 上判定
      if [ "$V31" = "$U" ] && [ "$V32" = "$C" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #37右上判定
      if [ "$V82" = "$U" ] && [ "$V73" = "$C" ] && [ "$V64" = "$C" ] && [ "$V55" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V64" = "$C" ] && [ "$V55" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V55" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #37右判定
      if [ "$V87" = "$U" ] && [ "$V77" = "$C" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #37左判定
      if [ "$V17" = "$U" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #37左上判定
      if [ "$V15" = "$U" ] && [ "$V26" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #47 総合判定
    if [ "$V47" = " " ] ; then
      #47 上判定
      if [ "$V41" = "$U" ] && [ "$V42" = "$C" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #47右上判定
      if [ "$V83" = "$U" ] && [ "$V74" = "$C" ] && [ "$V65" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V65" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
				X=1
      fi
      #47右判定
      if [ "$V87" = "$U" ] && [ "$V77" = "$C" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
				X=1
      fi
      #47左判定
      if [ "$V17" = "$U" ] && [ "$V27" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
				X=1
      fi
      #47左上判定
      if [ "$V14" = "$U" ] && [ "$V25" = "$C" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V36" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
				X=1
      fi
    else
			X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #57 総合判定
    if [ "$V57" = " " ] ; then
      #57 上判定
      if [ "$V51" = "$U" ] && [ "$V52" = "$C" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #57右上判定
      if [ "$V84" = "$U" ] && [ "$V75" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #57右判定
      if [ "$V87" = "$U" ] && [ "$V77" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V77" = "$U" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #57左判定
      if [ "$V17" = "$U" ] && [ "$V27" = "$C" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #57左上判定
      if [ "$V13" = "$U" ] && [ "$V24" = "$C" ] && [ "$V35" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V35" = "$C" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V46" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #67 総合判定
    if [ "$V67" = " " ] ; then
      #67 上判定
      if [ "$V61" = "$U" ] && [ "$V62" = "$C" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #67右上判定
      if [ "$V85" = "$U" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #67右判定
      if [ "$V87" = "$U" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #67左判定
      if [ "$V17" = "$U" ] && [ "$V27" = "$C" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #67左上判定
      if [ "$V12" = "$U" ] && [ "$V23" = "$C" ] && [ "$V34" = "$C" ] && [ "$V45" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V34" = "$C" ] && [ "$V45" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V45" = "$C" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V56" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #77 総合判定
    if [ "$V77" = " " ] ; then
      #77 上判定
      if [ "$V71" = "$U" ] && [ "$V72" = "$C" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #77左判定
      if [ "$V17" = "$U" ] && [ "$V27" = "$C" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #77左上判定
      if [ "$V11" = "$U" ] && [ "$V22" = "$C" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V66" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #87 総合判定
    if [ "$V87" = " " ] ; then
      #87 上判定
      if [ "$V81" = "$U" ] && [ "$V82" = "$C" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V82" = "$U" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V83" = "$U" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V84" = "$U" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V85" = "$U" ] && [ "$V86" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #87左判定
      if [ "$V17" = "$U" ] && [ "$V27" = "$C" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V27" = "$U" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V37" = "$U" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V47" = "$U" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V57" = "$U" ] && [ "$V67" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V67" = "$U" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #87左上判定
      if [ "$V21" = "$U" ] && [ "$V32" = "$C" ] && [ "$V43" = "$C" ] && [ "$V54" = "$C" ] && [ "$V65" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V43" = "$C" ] && [ "$V54" = "$C" ] && [ "$V65" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V54" = "$C" ] && [ "$V65" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V65" = "$C" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V76" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #18 総合判定
    if [ "$V18" = " " ] ; then
      #18 上判定
      if [ "$V11" = "$U" ] && [ "$V12" = "$C" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] && [ "$V17" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V12" = "$U" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] && [ "$V17" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V13" = "$U" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] && [ "$V17" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V14" = "$U" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] && [ "$V17" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V15" = "$U" ] && [ "$V16" = "$C" ] && [ "$V17" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V16" = "$U" ] && [ "$V17" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #18右上判定
      if [ "$V81" = "$U" ] && [ "$V72" = "$C" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V36" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
      #18右判定
      if [ "$V88" = "$U" ] && [ "$V78" = "$C" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] && [ "$V28" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V78" = "$U" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] && [ "$V28" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V68" = "$U" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] && [ "$V28" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V58" = "$U" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] && [ "$V28" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V48" = "$U" ] && [ "$V38" = "$C" ] && [ "$V28" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      elif [ "$V38" = "$U" ] && [ "$V28" = "$C" ] ; then
        #ひっくり返し実行
          continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #28 総合判定
    if [ "$V28" = " " ] ; then
      #28 上判定 途中
      if [ "$V21" = "$U" ] && [ "$V22" = "$C" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V26" = "$C" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #28右上判定
      if [ "$V82" = "$U" ] && [ "$V73" = "$C" ] && [ "$V64" = "$C" ] && [ "$V55" = "$C" ] && [ "$V46" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V64" = "$C" ] && [ "$V55" = "$C" ] && [ "$V46" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V55" = "$C" ] && [ "$V46" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V46" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #28右判定
      if [ "$V88" = "$U" ] && [ "$V78" = "$C" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V78" = "$U" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V68" = "$U" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V58" = "$U" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V48" = "$U" ] && [ "$V38" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #38 総合判定
    if [ "$V38" = " " ] ; then
      #38 上判定 途中
      if [ "$V31" = "$U" ] && [ "$V32" = "$C" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V32" = "$U" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V36" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #38右上判定
      if [ "$V83" = "$U" ] && [ "$V74" = "$C" ] && [ "$V65" = "$C" ] && [ "$V56" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V65" = "$C" ] && [ "$V56" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V56" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #38右判定
      if [ "$V88" = "$U" ] && [ "$V78" = "$C" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V78" = "$U" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V68" = "$U" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V58" = "$U" ] && [ "$V48" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V48" = "$U" ] && [ "$V38" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #38左判定
      if [ "$V18" = "$U" ] && [ "$V28" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #38左上判定
      if [ "$V16" = "$U" ] && [ "$V27" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #48 総合判定
    if [ "$V48" = " " ] ; then
      #48 上判定 途中
      if [ "$V41" = "$U" ] && [ "$V42" = "$C" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V42" = "$U" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V43" = "$U" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V46" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #48右上判定
      if [ "$V84" = "$U" ] && [ "$V75" = "$C" ] && [ "$V66" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V66" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #48右判定
      if [ "$V88" = "$U" ] && [ "$V78" = "$C" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V78" = "$U" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V68" = "$U" ] && [ "$V58" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #48左判定
      if [ "$V18" = "$U" ] && [ "$V28" = "$C" ] && [ "$V38" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V28" = "$U" ] && [ "$V38" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #48左上判定
      if [ "$V15" = "$U" ] && [ "$V26" = "$C" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V26" = "$U" ] && [ "$V37" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #58 総合判定
    if [ "$V58" = " " ] ; then
      #58 上判定
      if [ "$V51" = "$U" ] && [ "$V52" = "$C" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V52" = "$U" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V53" = "$U" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V54" = "$U" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V56" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #58右上判定
      if [ "$V85" = "$U" ] && [ "$V76" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #58右判定
      if [ "$V88" = "$U" ] && [ "$V78" = "$C" ] && [ "$V68" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V78" = "$U" ] && [ "$V68" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #58左判定
      if [ "$V18" = "$U" ] && [ "$V28" = "$C" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V28" = "$U" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V38" = "$U" ] && [ "$V48" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #58左上判定 ここまで
      if [ "$V14" = "$U" ] && [ "$V25" = "$C" ] && [ "$V36" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V25" = "$U" ] && [ "$V36" = "$C" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V36" = "$U" ] && [ "$V47" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #68 総合判定
    if [ "$V68" = " " ] ; then
      #68 上判定
      if [ "$V61" = "$U" ] && [ "$V62" = "$C" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V62" = "$U" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V63" = "$U" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V64" = "$U" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V65" = "$U" ] && [ "$V66" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #68右上判定
      if [ "$V86" = "$U" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #68右判定
      if [ "$V88" = "$U" ] && [ "$V78" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #68左判定
      if [ "$V18" = "$U" ] && [ "$V28" = "$C" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V28" = "$U" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V38" = "$U" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V48" = "$U" ] && [ "$V58" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #68左上判定 ここまで
      if [ "$V13" = "$U" ] && [ "$V24" = "$C" ] && [ "$V35" = "$C" ] && [ "$V46" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V24" = "$U" ] && [ "$V35" = "$C" ] && [ "$V46" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V35" = "$U" ] && [ "$V46" = "$C" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V46" = "$U" ] && [ "$V57" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #78 総合判定
    if [ "$V78" = " " ] ; then
      #78 上判定
      if [ "$V71" = "$U" ] && [ "$V72" = "$C" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V72" = "$U" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V73" = "$U" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V74" = "$U" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V75" = "$U" ] && [ "$V76" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V76" = "$U" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #78左判定
      if [ "$V18" = "$U" ] && [ "$V28" = "$C" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V28" = "$U" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V38" = "$U" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V48" = "$U" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V58" = "$U" ] && [ "$V68" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #78左上判定
      if [ "$V12" = "$U" ] && [ "$V23" = "$C" ] && [ "$V34" = "$C" ] && [ "$V45" = "$C" ] && [ "$V56" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V23" = "$U" ] && [ "$V34" = "$C" ] && [ "$V45" = "$C" ] && [ "$V56" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V34" = "$U" ] && [ "$V45" = "$C" ] && [ "$V56" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V45" = "$U" ] && [ "$V56" = "$C" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V56" = "$U" ] && [ "$V67" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #88 総合判定
    if [ "$V88" = " " ] ; then
      #88 上判定
      if [ "$V81" = "$U" ] && [ "$V82" = "$C" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] && [ "$V87" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V82" = "$U" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] && [ "$V87" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V83" = "$U" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] && [ "$V87" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V84" = "$U" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] && [ "$V87" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V85" = "$U" ] && [ "$V86" = "$C" ] && [ "$V87" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V86" = "$U" ] && [ "$V87" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #88左判定
      if [ "$V18" = "$U" ] && [ "$V28" = "$C" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] && [ "$V78" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V28" = "$U" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] && [ "$V78" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V38" = "$U" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] && [ "$V78" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V48" = "$U" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] && [ "$V78" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V58" = "$U" ] && [ "$V68" = "$C" ] && [ "$V78" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V68" = "$U" ] && [ "$V78" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
      #88左上判定
      if [ "$V11" = "$U" ] && [ "$V22" = "$C" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V22" = "$U" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V33" = "$U" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V44" = "$U" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V55" = "$U" ] && [ "$V66" = "$C" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      elif [ "$V66" = "$U" ] && [ "$V77" = "$C" ] ; then
        #ひっくり返し実行
        continue_flag_black=1
      else
        X=1
      fi
    else
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    if [ $continue_flag_black = 1 ] ; then #場所無しスキップフラグ
    #-------------------------------------------------
    #座標入力待  黒
    while [ $user_input_flag -eq 0 ] #0なら繰り返し
    do
      echo "ユーザー1 駒黒　座標を入力してください"
      read U1
      if [ "$U1" == 11 ] || [ "$U1" == 12 ] || [ "$U1" == 13 ] || [ "$U1" == 14 ] || [ "$U1" == 15 ] || [ "$U1" == 16 ] || [ "$U1" == 17 ] || [ "$U1" == 18 ] ||
      [ "$U1" == 21 ] || [ "$U1" == 22 ] || [ "$U1" == 23 ] || [ "$U1" == 24 ] || [ "$U1" == 25 ] || [ "$U1" == 26 ] || [ "$U1" == 27 ] || [ "$U1" == 28 ] ||
      [ "$U1" == 31 ] || [ "$U1" == 32 ] || [ "$U1" == 33 ] || [ "$U1" == 34 ] || [ "$U1" == 35 ] || [ "$U1" == 36 ] || [ "$U1" == 37 ] || [ "$U1" == 38 ] ||
      [ "$U1" == 41 ] || [ "$U1" == 42 ] || [ "$U1" == 43 ] || [ "$U1" == 44 ] || [ "$U1" == 45 ] || [ "$U1" == 46 ] || [ "$U1" == 47 ] || [ "$U1" == 48 ] ||
      [ "$U1" == 51 ] || [ "$U1" == 52 ] || [ "$U1" == 53 ] || [ "$U1" == 54 ] || [ "$U1" == 55 ] || [ "$U1" == 56 ] || [ "$U1" == 57 ] || [ "$U1" == 58 ] ||
      [ "$U1" == 61 ] || [ "$U1" == 62 ] || [ "$U1" == 63 ] || [ "$U1" == 64 ] || [ "$U1" == 65 ] || [ "$U1" == 66 ] || [ "$U1" == 67 ] || [ "$U1" == 68 ] ||
      [ "$U1" == 71 ] || [ "$U1" == 72 ] || [ "$U1" == 73 ] || [ "$U1" == 74 ] || [ "$U1" == 75 ] || [ "$U1" == 76 ] || [ "$U1" == 77 ] || [ "$U1" == 78 ] ||
      [ "$U1" == 81 ] || [ "$U1" == 82 ] || [ "$U1" == 83 ] || [ "$U1" == 84 ] || [ "$U1" == 85 ] || [ "$U1" == 86 ] || [ "$U1" == 87 ] || [ "$U1" == 88 ] ; then
        #メインロジック
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #11 総合判定
        if [ $U1 == 11 ] && [ "$V11" != "$U" ] && [ "$V11" != "$C" ]; then
          #11横判定
          if [ "$V81" = "$U" ] && [ "$V71" = "$C" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] && [ "$V21" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V21="$U"
            V31="$U"
            V41="$U"
            V51="$U"
            V61="$U"
            V71="$U"
          elif [ "$V71" = "$U" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] && [ "$V21" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V21="$U"
            V31="$U"
            V41="$U"
            V51="$U"
            V61="$U"
          elif [ "$V61" = "$U" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] && [ "$V21" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V21="$U"
            V31="$U"
            V41="$U"
            V51="$U"
          elif [ "$V51" = "$U" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] && [ "$V21" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V21="$U"
            V31="$U"
            V41="$U"
          elif [ "$V41" = "$U" ] && [ "$V31" = "$C" ] && [ "$V21" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V21="$U"
            V31="$U"
            user_input_flag=1
          elif [ "$V31" = "$U" ] && [ "$V21" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V21="$U"
          else
          X=1
          fi
          #11斜判定
          if [ "$V88" = "$U" ] && [ "$V77" = "$C" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V22="$U"
            V33="$U"
            V44="$U"
            V55="$U"
            V66="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V22="$U"
            V33="$U"
            V44="$U"
            V55="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V22="$U"
            V33="$U"
            V44="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V22="$U"
            V33="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V33" = "$C" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V22="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V22="$U"
          else
					X=1
          fi
          #11縦判定
          if [ "$V18" = "$U" ] && [ "$V17" = "$C" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] && [ "$V12" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V12="$U"
            V13="$U"
            V14="$U"
            V15="$U"
            V16="$U"
            V17="$U"
          elif [ "$V17" = "$U" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] && [ "$V12" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V12="$U"
            V13="$U"
            V14="$U"
            V15="$U"
            V16="$U"
          elif [ "$V16" = "$U" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] && [ "$V12" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V12="$U"
            V13="$U"
            V14="$U"
            V15="$U"
          elif [ "$V15" = "$U" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] && [ "$V12" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V12="$U"
            V13="$U"
            V14="$U"
          elif [ "$V14" = "$U" ] && [ "$V13" = "$C" ] && [ "$V12" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V12="$U"
            V13="$U"
          elif [ "$V13" = "$U" ] && [ "$V12" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$U"
            V12="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #21 総合判定
        elif [ $U1 == 21 ] && [ "$V21" != "$U" ] && [ "$V21" != "$C" ]; then
          #21横判定
          if [ "$V81" = "$U" ] && [ "$V71" = "$C" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V31="$U"
            V41="$U"
            V51="$U"
            V61="$U"
            V71="$U"
          elif [ "$V71" = "$U" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V31="$U"
            V41="$U"
            V51="$U"
            V61="$U"
          elif [ "$V61" = "$U" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V31="$U"
            V41="$U"
            V51="$U"
          elif [ "$V51" = "$U" ] && [ "$V41" = "$C" ] && [ "$V31" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V31="$U"
            V41="$U"
          elif [ "$V41" = "$U" ] && [ "$V31" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V31="$U"
          else
					X=1
          fi
          #21右下判定
          if [ "$V87" = "$U" ] && [ "$V76" = "$C" ] && [ "$V65" = "$C" ] && [ "$V54" = "$C" ] && [ "$V43" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V32="$U"
            V43="$U"
            V54="$U"
            V65="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V65" = "$C" ] && [ "$V54" = "$C" ] && [ "$V43" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V32="$U"
            V43="$U"
            V54="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V54" = "$C" ] && [ "$V43" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V32="$U"
            V43="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V43" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V32="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V32="$U"
          else
					X=1
          fi
          #21縦判定
          if [ "$V28" = "$U" ] && [ "$V27" = "$C" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V22="$U"
            V23="$U"
            V24="$U"
            V25="$U"
            V26="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V22="$U"
            V23="$U"
            V24="$U"
            V25="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V22="$U"
            V23="$U"
            V24="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V22="$U"
            V23="$U"
            V24="$U"
          elif [ "$V24" = "$U" ] && [ "$V23" = "$C" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V22="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$U"
            V22="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #31 総合判定
        elif [ $U1 == 31 ] && [ "$V31" != "$U" ] && [ "$V31" != "$C" ]; then
          #31右横判定
          if [ "$V81" = "$U" ] && [ "$V71" = "$C" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V41="$U"
            V51="$U"
            V61="$U"
            V71="$U"
          elif [ "$V71" = "$U" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V41="$U"
            V51="$U"
            V61="$U"
          elif [ "$V61" = "$U" ] && [ "$V51" = "$C" ] && [ "$V41" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V41="$U"
            V51="$U"
          elif [ "$V51" = "$U" ] && [ "$V41" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V41="$U"
          else
					X=1
          fi
          #31右斜判定
          if [ "$V86" = "$U" ] && [ "$V75" = "$C" ] && [ "$V64" = "$C" ] && [ "$V53" = "$C" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V42="$U"
            V53="$U"
            V64="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V64" = "$C" ] && [ "$V53" = "$C" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V42="$U"
            V53="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V53" = "$C" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V42="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V42="$U"
          else
					X=1
          fi
          #31縦判定
          if [ "$V38" = "$U" ] && [ "$V37" = "$C" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V32="$U"
            V33="$U"
            V34="$U"
            V35="$U"
            V36="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V32="$U"
            V33="$U"
            V34="$U"
            V35="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V32="$U"
            V33="$U"
            V34="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V32="$U"
            V33="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V33" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V32="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V32="$U"
          else
					X=1
          fi
          #31左下判定
          if [ "$V11" = "$U" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V22="$U"
          else
					X=1
          fi
          #31左判定
          if [ "$V11" = "$U" ] && [ "$V21" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$U"
            V21="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #41 総合判定
        elif [ $U1 == 41 ] && [ "$V41" != "$U" ] && [ "$V41" != "$C" ]; then
          #41右横判定
          if [ "$V81" = "$U" ] && [ "$V71" = "$C" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V51="$U"
            V61="$U"
            V71="$U"
          elif [ "$V71" = "$U" ] && [ "$V61" = "$C" ] && [ "$V51" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V51="$U"
            V61="$U"
          elif [ "$V61" = "$U" ] && [ "$V51" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V51="$U"
          else
					X=1
          fi
          #41右下斜判定
          if [ "$V85" = "$U" ] && [ "$V74" = "$C" ] && [ "$V63" = "$C" ] && [ "$V52" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V52="$U"
            V63="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V63" = "$C" ] && [ "$V52" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V52="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V52" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V52="$U"
          else
					X=1
          fi
          #41縦判定
          if [ "$V48" = "$U" ] && [ "$V47" = "$C" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V42="$U"
            V43="$U"
            V44="$U"
            V45="$U"
            V46="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V42="$U"
            V43="$U"
            V44="$U"
            V45="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V42="$U"
            V43="$U"
            V44="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V42="$U"
            V43="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V43" = "$C" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V42="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V42="$U"
          else
					X=1
          fi
          #41左下判定
          if [ "$V14" = "$U" ] && [ "$V23" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V32="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V32="$U"
          else
					X=1
          fi
          #41左判定
          if [ "$V11" = "$U" ] && [ "$V21" = "$C" ] && [ "$V31" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V31="$U"
            V21="$U"
          elif [ "$V21" = "$U" ] && [ "$V31" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$U"
            V31="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #51 総合判定
        elif [ $U1 == 51 ] && [ "$V51" != "$U" ] && [ "$V51" != "$C" ]; then
            #51右判定
            if [ "$V81" = "$U" ] && [ "$V71" = "$C" ] && [ "$V61" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V61="$U"
              V71="$U"
            elif [ "$V71" = "$U" ] && [ "$V61" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V61="$U"
            else
					X=1
            fi
            #51右下判定
            if [ "$V84" = "$U" ] && [ "$V73" = "$C" ] && [ "$V62" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V62="$U"
              V73="$U"
            elif [ "$V73" = "$U" ] && [ "$V62" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V62="$U"
            else
					X=1
            fi
            #51縦判定
            if [ "$V58" = "$U" ] && [ "$V57" = "$C" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] && [ "$V52" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V52="$U"
              V53="$U"
              V54="$U"
              V55="$U"
              V56="$U"
              V57="$U"
            elif [ "$V57" = "$U" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] && [ "$V52" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V52="$U"
              V53="$U"
              V54="$U"
              V55="$U"
              V56="$U"
            elif [ "$V56" = "$U" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] && [ "$V52" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V52="$U"
              V53="$U"
              V54="$U"
              V55="$U"
            elif [ "$V55" = "$U" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] && [ "$V52" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V52="$U"
              V53="$U"
              V54="$U"
            elif [ "$V54" = "$U" ] && [ "$V53" = "$C" ] && [ "$V52" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V52="$U"
              V53="$U"
            elif [ "$V53" = "$U" ] && [ "$V52" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V52="$U"
            else
					X=1
            fi
            #51左下判定
            if [ "$V15" = "$U" ] && [ "$V24" = "$C" ] && [ "$V33" = "$C" ] && [ "$V42" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V42="$U"
              V33="$U"
              V24="$U"
            elif [ "$V24" = "$U" ] && [ "$V33" = "$C" ] && [ "$V42" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V42="$U"
              V33="$U"
            elif [ "$V33" = "$U" ] && [ "$V42" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V42="$U"
            else
					X=1
            fi
            #51左判定
            if [ "$V11" = "$U" ] && [ "$V21" = "$C" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V41="$U"
              V31="$U"
              V21="$U"
            elif [ "$V21" = "$U" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V41="$U"
              V31="$U"
            elif [ "$V31" = "$U" ] && [ "$V41" = "$C" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$U"
              V41="$U"
            else
					X=1
            fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #61 総合判定
        elif [ $U1 == 61 ] && [ "$V61" != "$U" ] && [ "$V61" != "$C" ]; then
              #61右判定
              if [ "$V81" = "$U" ] && [ "$V71" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V71="$U"
              else
					X=1
              fi
              #61右下判定
              if [ "$V83" = "$U" ] && [ "$V72" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V72="$U"
              else
					X=1
              fi
              #61縦判定
              if [ "$V68" = "$U" ] && [ "$V67" = "$C" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] && [ "$V62" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V62="$U"
                V63="$U"
                V64="$U"
                V65="$U"
                V66="$U"
                V67="$U"
              elif [ "$V67" = "$U" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] && [ "$V62" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V62="$U"
                V63="$U"
                V64="$U"
                V65="$U"
                V66="$U"
              elif [ "$V66" = "$U" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] && [ "$V62" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V62="$U"
                V63="$U"
                V64="$U"
                V65="$U"
              elif [ "$V65" = "$U" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] && [ "$V62" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V62="$U"
                V63="$U"
                V64="$U"
              elif [ "$V64" = "$U" ] && [ "$V63" = "$C" ] && [ "$V62" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V62="$U"
                V63="$U"
              elif [ "$V63" = "$U" ] && [ "$V62" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V62="$U"
              else
					X=1
              fi
              #61左下判定
              if [ "$V16" = "$U" ] && [ "$V25" = "$C" ] && [ "$V34" = "$C" ] && [ "$V43" = "$C" ] && [ "$V52" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V52="$U"
                V43="$U"
                V34="$U"
                V25="$U"
              elif [ "$V25" = "$U" ] && [ "$V34" = "$C" ] && [ "$V43" = "$C" ] && [ "$V52" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V52="$U"
                V43="$U"
                V34="$U"
              elif [ "$V34" = "$U" ] && [ "$V43" = "$C" ] && [ "$V52" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V52="$U"
                V43="$U"
              elif [ "$V43" = "$U" ] && [ "$V52" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V52="$U"
              else
					X=1
              fi
              #61左判定
              if [ "$V11" = "$U" ] && [ "$V21" = "$C" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V51="$U"
                V41="$U"
                V31="$U"
                V21="$U"
              elif [ "$V21" = "$U" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V51="$U"
                V41="$U"
                V31="$U"
              elif [ "$V31" = "$U" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V51="$U"
                V41="$U"
              elif [ "$V41" = "$U" ] && [ "$V51" = "$C" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$U"
                V51="$U"
              else
					X=1
              fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #71 総合判定
        elif [ $U1 == 71 ] && [ "$V71" != "$U" ] && [ "$V71" != "$C" ]; then
          #71縦判定
          if [ "$V78" = "$U" ] && [ "$V77" = "$C" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V72="$U"
            V73="$U"
            V74="$U"
            V75="$U"
            V76="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V72="$U"
            V73="$U"
            V74="$U"
            V75="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V72="$U"
            V73="$U"
            V74="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V72="$U"
            V73="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V73" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V72="$U"
            V73="$U"
          elif [ "$V73" = "$U" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V72="$U"
          else
					X=1
          fi
          #71左下判定
          if [ "$V17" = "$U" ] && [ "$V26" = "$C" ] && [ "$V35" = "$C" ] && [ "$V44" = "$C" ] && [ "$V53" = "$C" ] && [ "$V62" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V62="$U"
            V53="$U"
            V44="$U"
            V35="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V35" = "$C" ] && [ "$V44" = "$C" ] && [ "$V53" = "$C" ] && [ "$V62" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V62="$U"
            V53="$U"
            V44="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V44" = "$C" ] && [ "$V53" = "$C" ] && [ "$V62" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V62="$U"
            V53="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V53" = "$C" ] && [ "$V62" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V62="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V62" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V62="$U"
          else
					X=1
          fi
          #71左判定
          if [ "$V11" = "$U" ] && [ "$V21" = "$C" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V61="$U"
            V51="$U"
            V41="$U"
            V31="$U"
            V21="$U"
          elif [ "$V21" = "$U" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V61="$U"
            V51="$U"
            V41="$U"
            V31="$U"
          elif [ "$V31" = "$U" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V61="$U"
            V51="$U"
            V41="$U"
          elif [ "$V41" = "$U" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V61="$U"
            V51="$U"
          elif [ "$V51" = "$U" ] && [ "$V61" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$U"
            V61="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #81 総合判定
        elif [ $U1 == 81 ] && [ "$V81" != "$U" ] && [ "$V81" != "$C" ]; then
          #81縦判定
          if [ "$V88" = "$U" ] && [ "$V87" = "$C" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] && [ "$V82" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V82="$U"
            V83="$U"
            V84="$U"
            V85="$U"
            V86="$U"
            V87="$U"
          elif [ "$V87" = "$U" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] && [ "$V82" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V82="$U"
            V83="$U"
            V84="$U"
            V85="$U"
            V86="$U"
          elif [ "$V86" = "$U" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] && [ "$V82" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V82="$U"
            V83="$U"
            V84="$U"
            V85="$U"
          elif [ "$V85" = "$U" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] && [ "$V82" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V82="$U"
            V83="$U"
            V84="$U"
          elif [ "$V84" = "$U" ] && [ "$V83" = "$C" ] && [ "$V82" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V83="$U"
          elif [ "$V83" = "$U" ] && [ "$V82" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V82="$U"
          else
					X=1
          fi
          #81左下判定
          if [ "$V18" = "$U" ] && [ "$V27" = "$C" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V72="$U"
            V63="$U"
            V54="$U"
            V45="$U"
            V36="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V72="$U"
            V63="$U"
            V54="$U"
            V45="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V72="$U"
            V63="$U"
            V54="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V72="$U"
            V63="$U"
            V54="$U"
          elif [ "$V53" = "$U" ] && [ "$V63" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V72="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V72="$U"
          else
					X=1
          fi
          #81左判定
          if [ "$V11" = "$U" ] && [ "$V21" = "$C" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] && [ "$V71" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V71="$U"
            V61="$U"
            V51="$U"
            V41="$U"
            V31="$U"
            V21="$U"
          elif [ "$V21" = "$U" ] && [ "$V31" = "$C" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] && [ "$V71" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V71="$U"
            V61="$U"
            V51="$U"
            V41="$U"
            V31="$U"
          elif [ "$V31" = "$U" ] && [ "$V41" = "$C" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] && [ "$V71" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V71="$U"
            V61="$U"
            V51="$U"
            V41="$U"
          elif [ "$V41" = "$U" ] && [ "$V51" = "$C" ] && [ "$V61" = "$C" ] && [ "$V71" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V71="$U"
            V61="$U"
            V51="$U"
          elif [ "$V51" = "$U" ] && [ "$V61" = "$C" ] && [ "$V71" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V71="$U"
            V61="$U"
          elif [ "$V61" = "$U" ] && [ "$V71" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$U"
            V71="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #12 総合判定
        elif [ $U1 == 12 ] && [ "$V12" != "$U" ] && [ "$V12" != "$C" ]; then
          #12右判定
          if [ "$V82" = "$U" ] && [ "$V72" = "$C" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] && [ "$V22" = "$C" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$U"
          V22="$U"
          V32="$U"
          V42="$U"
          V52="$U"
          V62="$U"
          V72="$U"
          elif [ "$V72" = "$U" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] && [ "$V22" = "$C" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$U"
          V22="$U"
          V32="$U"
          V42="$U"
          V52="$U"
          V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] && [ "$V22" = "$C" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$U"
          V22="$U"
          V32="$U"
          V42="$U"
          V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] && [ "$V22" = "$C" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$U"
          V22="$U"
          V32="$U"
          V42="$U"
          elif [ "$V42" = "$U" ] && [ "$V32" = "$C" ] && [ "$V22" = "$C" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$U"
          V22="$U"
          V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V22" = "$C" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$U"
          V22="$U"
          else
					X=1
          fi
          #12右下判定
          if [ "$V78" = "$U" ] && [ "$V67" = "$C" ] && [ "$V56" = "$C" ] && [ "$V45" = "$C" ] && [ "$V34" = "$C" ] && [ "$V23" = "$C" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$U"
          V23="$U"
          V34="$U"
          V45="$U"
          V56="$U"
          V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V56" = "$C" ] && [ "$V45" = "$C" ] && [ "$V34" = "$C" ] && [ "$V23" = "$C" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$U"
          V23="$U"
          V34="$U"
          V45="$U"
          V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V45" = "$C" ] && [ "$V34" = "$C" ] && [ "$V23" = "$C" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$U"
          V23="$U"
          V34="$U"
          V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V34" = "$C" ] && [ "$V23" = "$C" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$U"
          V23="$U"
          V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V23" = "$C" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$U"
          V23="$U"
          else
					X=1
          fi
          #12下判定
          if [ "$V18" = "$U" ] && [ "$V17" = "$C" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V12="$U"
            V13="$U"
            V14="$U"
            V15="$U"
            V16="$U"
            V17="$U"
          elif [ "$V17" = "$U" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V12="$U"
            V13="$U"
            V14="$U"
            V15="$U"
            V16="$U"
          elif [ "$V16" = "$U" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V12="$U"
            V13="$U"
            V14="$U"
            V15="$U"
          elif [ "$V15" = "$U" ] && [ "$V14" = "$C" ] && [ "$V13" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V12="$U"
            V13="$U"
            V14="$U"
          elif [ "$V14" = "$U" ] && [ "$V13" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V12="$U"
            V13="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #22 総合判定
        elif [ $U1 == 22 ] && [ "$V22" != "$U" ] && [ "$V22" != "$C" ]; then
          #22右判定
          if [ "$V82" = "$U" ] && [ "$V72" = "$C" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V32="$U"
            V42="$U"
            V52="$U"
            V62="$U"
            V72="$U"
          elif [ "$V72" = "$U" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V32="$U"
            V42="$U"
            V52="$U"
            V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V32="$U"
            V42="$U"
            V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V42" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V32="$U"
            V42="$U"
          elif [ "$V42" = "$U" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V32="$U"
          else
					X=1
          fi
          #22右下判定
          if [ "$V88" = "$U" ] && [ "$V77" = "$C" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V33="$U"
            V44="$U"
            V55="$U"
            V66="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V33="$U"
            V44="$U"
            V55="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V33="$U"
            V44="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V44" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V33="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V33="$U"
          else
					X=1
          fi
          #22下判定
          if [ "$V28" = "$U" ] && [ "$V27" = "$C" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V23="$U"
            V24="$U"
            V25="$U"
            V26="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V23="$U"
            V24="$U"
            V25="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V23="$U"
            V24="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V24" = "$C" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V23="$U"
            V24="$U"
          elif [ "$V24" = "$U" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$U"
            V23="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #32 総合判定
        elif [ $U1 == 32 ] && [ "$V32" != "$U" ] && [ "$V32" != "$C" ]; then
          #32右判定
          if [ "$V82" = "$U" ] && [ "$V72" = "$C" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V42="$U"
            V52="$U"
            V62="$U"
            V72="$U"
          elif [ "$V72" = "$U" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V42="$U"
            V52="$U"
            V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V52" = "$C" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V42="$U"
            V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V42="$U"
          else
					X=1
          fi
          #32右下判定
          if [ "$V87" = "$U" ] && [ "$V76" = "$C" ] && [ "$V65" = "$C" ] && [ "$V54" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V43="$U"
            V54="$U"
            V65="$U"
          elif [ "$V76" = "$U" ] && [ "$V65" = "$C" ] && [ "$V54" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V43="$U"
            V54="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V54" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V43="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V43="$U"
          else
					X=1
          fi
          #32下判定
          if [ "$V38" = "$U" ] && [ "$V37" = "$C" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V33="$U"
            V34="$U"
            V35="$U"
            V36="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V33="$U"
            V34="$U"
            V35="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V33="$U"
            V34="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V34" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V33="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V33="$U"
          else
					X=1
          fi
          #32左下判定
          if [ "$V14" = "$U" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V23="$U"
          else
					X=1
          fi
          #32左判定
          if [ "$V12" = "$U" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$U"
            V22="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #42 総合判定
        elif [ $U1 == 42 ] && [ "$V42" != "$U" ] && [ "$V42" != "$C" ]; then
          #42右判定
          if [ "$V82" = "$U" ] && [ "$V72" = "$C" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V52="$U"
            V62="$U"
            V72="$U"
          elif [ "$V72" = "$U" ] && [ "$V62" = "$C" ] && [ "$V52" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V52="$U"
            V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V52" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V52="$U"
          else
					X=1
          fi
          #42右下判定
          if [ "$V86" = "$U" ] && [ "$V75" = "$C" ] && [ "$V64" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V53="$U"
            V64="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V64" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V53="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V53="$U"
          else
					X=1
          fi
          #42下判定
          if [ "$V48" = "$U" ] && [ "$V47" = "$C" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V43="$U"
            V44="$U"
            V45="$U"
            V46="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V43="$U"
            V44="$U"
            V45="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V43="$U"
            V44="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V44" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V43="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V43="$U"
          else
					X=1
          fi
          #42左下判定
          if [ "$V15" = "$U" ] && [ "$V24" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V33="$U"
            V24="$U"
          elif [ "$V24" = "$U" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V33="$U"
          else
					X=1
          fi
          #42左判定
          if [ "$V12" = "$U" ] && [ "$V22" = "$C" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$U"
            V32="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V32" = "$C" ] ; then
            V42="$U"
            V32="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #52 総合判定
        elif [ $U1 == 52 ] && [ "$V52" != "$U" ] && [ "$V52" != "$C" ]; then
          #52右判定
          if [ "$V82" = "$U" ] && [ "$V72" = "$C" ] && [ "$V62" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V62="$U"
            V72="$U"
          elif [ "$V72" = "$U" ] && [ "$V62" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V62="$U"
          else
					X=1
          fi
          #52右下判定
          if [ "$V85" = "$U" ] && [ "$V74" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V63="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V63="$U"
          else
					X=1
          fi
          #52下判定
          if [ "$V58" = "$U" ] && [ "$V57" = "$C" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V53="$U"
            V54="$U"
            V55="$U"
            V56="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V53="$U"
            V54="$U"
            V55="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V53="$U"
            V54="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V54" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V53="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V53="$U"
          else
					X=1
          fi
          #52左下判定
          if [ "$V16" = "$U" ] && [ "$V25" = "$C" ] && [ "$V34" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V43="$U"
            V34="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V34" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V43="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V43="$U"
          else
					X=1
          fi
          #52左判定
          if [ "$V12" = "$U" ] && [ "$V22" = "$C" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V42="$U"
            V32="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V42="$U"
            V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$U"
            V42="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #62 総合判定
        elif [ $U1 == 62 ] && [ "$V62" != "$U" ] && [ "$V62" != "$C" ]; then
          #62右判定
          if [ "$V82" = "$U" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V72="$U"
          else
					X=1
          fi
          #62右下判定
          if [ "$V84" = "$U" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V73="$U"
          else
					X=1
          fi
          #62下判定
          if [ "$V68" = "$U" ] && [ "$V67" = "$C" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V63="$U"
            V64="$U"
            V65="$U"
            V66="$U"
            V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V63="$U"
            V64="$U"
            V65="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V63="$U"
            V64="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V64" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V63="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V63="$U"
          else
					X=1
          fi
          #62左下判定
          if [ "$V17" = "$U" ] && [ "$V26" = "$C" ] && [ "$V35" = "$C" ] && [ "$V44" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V53="$U"
            V44="$U"
            V35="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V35" = "$C" ] && [ "$V44" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V53="$U"
            V44="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V44" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V53="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V53="$U"
          else
					X=1
          fi
          #62左判定
          if [ "$V12" = "$U" ] && [ "$V22" = "$C" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V52="$U"
            V42="$U"
            V32="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V52="$U"
            V42="$U"
            V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V52="$U"
            V42="$U"
          elif [ "$V42" = "$U" ] && [ "$V52" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$U"
            V52="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #72 総合判定
        elif [ $U1 == 72 ] && [ "$V72" != "$U" ] && [ "$V72" != "$C" ]; then
          #72下判定
          if [ "$V78" = "$U" ] && [ "$V77" = "$C" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V73="$U"
            V74="$U"
            V75="$U"
            V76="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V73="$U"
            V74="$U"
            V75="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V73="$U"
            V74="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V74" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V73="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V73="$U"
          else
					X=1
          fi
          #72左下判定
          if [ "$V18" = "$U" ] && [ "$V27" = "$C" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V63="$U"
            V54="$U"
            V45="$U"
            V36="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V63="$U"
            V54="$U"
            V45="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V63="$U"
            V54="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V54" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V63="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V63="$U"
          else
					X=1
          fi
          #72左判定
          if [ "$V12" = "$U" ] && [ "$V22" = "$C" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V62="$U"
            V52="$U"
            V42="$U"
            V32="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ]; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V62="$U"
            V52="$U"
            V42="$U"
            V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ]; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V62="$U"
            V52="$U"
            V42="$U"
          elif [ "$V42" = "$U" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ]; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V62="$U"
            V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V62" = "$C" ]; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$U"
            V62="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #82 総合判定
        elif [ $U1 == 82 ] && [ "$V82" != "$U" ] && [ "$V82" != "$C" ]; then
          #82下判定
          if [ "$V88" = "$U" ] && [ "$V87" = "$C" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V83="$U"
            V84="$U"
            V85="$U"
            V86="$U"
            V87="$U"
          elif [ "$V87" = "$U" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V83="$U"
            V84="$U"
            V85="$U"
            V86="$U"
          elif [ "$V86" = "$U" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V83="$U"
            V84="$U"
            V85="$U"
          elif [ "$V85" = "$U" ] && [ "$V84" = "$C" ] && [ "$V83" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V83="$U"
            V84="$U"
          elif [ "$V84" = "$U" ] && [ "$V83" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V83="$U"
          else
					X=1
          fi
          #82左下判定
          if [ "$V28" = "$U" ] && [ "$V37" = "$C" ] && [ "$V46" = "$C" ] && [ "$V55" = "$C" ] && [ "$V64" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V73="$U"
            V64="$U"
            V55="$U"
            V46="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V46" = "$C" ] && [ "$V55" = "$C" ] && [ "$V64" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V73="$U"
            V64="$U"
            V55="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V55" = "$C" ] && [ "$V64" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V73="$U"
            V64="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V64" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V73="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V73="$U"
          else
					X=1
          fi
          #82左判定
          if [ "$V12" = "$U" ] && [ "$V22" = "$C" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V72="$U"
            V62="$U"
            V52="$U"
            V42="$U"
            V32="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V32" = "$C" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V72="$U"
            V62="$U"
            V52="$U"
            V42="$U"
            V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V42" = "$C" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V72="$U"
            V62="$U"
            V52="$U"
            V42="$U"
          elif [ "$V42" = "$U" ] && [ "$V52" = "$C" ] && [ "$V62" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V72="$U"
            V62="$U"
            V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V62" = "$C" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V72="$U"
            V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$U"
            V72="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #13 総合判定
        elif [ $U1 == 13 ] && [ "$V13" != "$U" ] && [ "$V13" != "$C" ]; then
          #13上判定
          if [ "$V11" = "$U" ] && [ "$V12" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V12="$U"
          else
					X=1
          fi
          #13右上判定
          if [ "$V31" = "$U" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V22="$U"
          else
					X=1
          fi
          #13右判定
          if [ "$V83" = "$U" ] && [ "$V73" = "$C" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V23="$U"
            V33="$U"
            V43="$U"
            V53="$U"
            V63="$U"
            V73="$U"
          elif [ "$V73" = "$U" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V23="$U"
            V33="$U"
            V43="$U"
            V53="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V23="$U"
            V33="$U"
            V43="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V23="$U"
            V33="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V33" = "$C" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V23="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V23="$U"
          else
					X=1
          fi
          #13右下判定
          if [ "$V68" = "$U" ] && [ "$V57" = "$C" ] && [ "$V46" = "$C" ] && [ "$V35" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V24="$U"
            V35="$U"
            V46="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V46" = "$C" ] && [ "$V35" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V24="$U"
            V35="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V35" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V24="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V24="$U"
          else
					X=1
          fi
          #13下判定
          if [ "$V18" = "$U" ] && [ "$V17" = "$C" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V14="$U"
            V15="$U"
            V16="$U"
            V17="$U"
          elif [ "$V17" = "$U" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V14="$U"
            V15="$U"
            V16="$U"
          elif [ "$V16" = "$U" ] && [ "$V15" = "$C" ] && [ "$V14" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V14="$U"
            V15="$U"
          elif [ "$V15" = "$U" ] && [ "$V14" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$U"
            V14="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #23 総合判定
        elif [ $U1 == 23 ] && [ "$V23" != "$U" ] && [ "$V23" != "$C" ]; then
          #23上判定
          if [ "$V21" = "$U" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V22="$U"
          else
					X=1
          fi
          #23右上判定
          if [ "$V41" = "$U" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V32="$U"
          else
					X=1
          fi
          #23右判定
          if [ "$V83" = "$U" ] && [ "$V73" = "$C" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V33="$U"
            V43="$U"
            V53="$U"
            V63="$U"
            V73="$U"
          elif [ "$V73" = "$U" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V33="$U"
            V43="$U"
            V53="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V33="$U"
            V43="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V43" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V33="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V33="$U"
          else
					X=1
          fi
          #23右下判定
          if [ "$V78" = "$U" ] && [ "$V67" = "$C" ] && [ "$V56" = "$C" ] && [ "$V45" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V34="$U"
            V45="$U"
            V56="$U"
            V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V56" = "$C" ] && [ "$V45" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V34="$U"
            V45="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V45" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V34="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V34="$U"
          else
					X=1
          fi
          #23下判定
          if [ "$V28" = "$U" ] && [ "$V27" = "$C" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V24="$U"
            V25="$U"
            V26="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V24="$U"
            V25="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V25" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V24="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$U"
            V24="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #33 総合判定
        elif [ $U1 == 33 ] && [ "$V33" != "$U" ] && [ "$V33" != "$C" ]; then
          #33 上判定
          if [ "$V31" = "$U" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V32="$U"
          else
					X=1
          fi
          #33右上判定
          if [ "$V51" = "$U" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V42="$U"
          else
					X=1
          fi
          #33右判定 ここまで
          if [ "$V83" = "$U" ] && [ "$V73" = "$C" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V43="$U"
            V53="$U"
            V63="$U"
            V73="$U"
          elif [ "$V73" = "$U" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V43="$U"
            V53="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V53" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V43="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V43="$U"
          else
					X=1
          fi
          #33右下判定
          if [ "$V88" = "$U" ] && [ "$V77" = "$C" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V44="$U"
            V55="$U"
            V66="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V44="$U"
            V55="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V55" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V44="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V44="$U"
          else
					X=1
          fi
          #33下判定
          if [ "$V38" = "$U" ] && [ "$V37" = "$C" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V34="$U"
            V35="$U"
            V36="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V34="$U"
            V35="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V35" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V34="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V34="$U"
          else
					X=1
          fi
          #33左下判定
          if [ "$V15" = "$U" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V24="$U"
          else
					X=1
          fi
          #33左判定
          if [ "$V13" = "$U" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V23="$U"
          else
					X=1
          fi
          #33左上判定
          if [ "$V11" = "$U" ] && [ "$V22" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$U"
            V22="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #43 総合判定
        elif [ $U1 == 43 ] && [ "$V43" != "$U" ] && [ "$V43" != "$C" ]; then
          #43 上判定
          if [ "$V41" = "$U" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V42="$U"
          else
					X=1
          fi
          #43右上判定
          if [ "$V61" = "$U" ] && [ "$V52" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V52="$U"
          else
					X=1
          fi
          #43右判定
          if [ "$V83" = "$U" ] && [ "$V73" = "$C" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V53="$U"
            V63="$U"
            V73="$U"
          elif [ "$V73" = "$U" ] && [ "$V63" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V53="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V53="$U"
          else
					X=1
          fi
          #43右下判定
          if [ "$V87" = "$U" ] && [ "$V76" = "$C" ] && [ "$V65" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V54="$U"
            V65="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V65" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V54="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V54="$U"
          else
					X=1
          fi
          #43下判定
          if [ "$V48" = "$U" ] && [ "$V47" = "$C" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V44="$U"
            V45="$U"
            V46="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V44="$U"
            V45="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V45" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V44="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V44="$U"
          else
					X=1
          fi
          #43左下判定
          if [ "$V16" = "$U" ] && [ "$V25" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V34="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V34="$U"
          else
					X=1
          fi
          #43左判定
          if [ "$V13" = "$U" ] && [ "$V23" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V33="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V33="$U"
          else
					X=1
          fi
          #43左上判定
          if [ "$V21" = "$U" ] && [ "$V32" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$U"
            V32="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #53 総合判定
        elif [ $U1 == 53 ] && [ "$V53" != "$U" ] && [ "$V53" != "$C" ]; then
          #53 上判定
          if [ "$V51" = "$U" ] && [ "$V52" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V52="$U"
          else
					X=1
          fi
          #53右上判定
          if [ "$V71" = "$U" ] && [ "$V62" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V62="$U"
          else
					X=1
          fi
          #53右判定
          if [ "$V83" = "$U" ] && [ "$V73" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V63="$U"
            V73="$U"
          elif [ "$V73" = "$U" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V63="$U"
          else
					X=1
          fi
          #53右下判定
          if [ "$V86" = "$U" ] && [ "$V75" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V64="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V64="$U"
          else
					X=1
          fi
          #53下判定
          if [ "$V58" = "$U" ] && [ "$V57" = "$C" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V54="$U"
            V55="$U"
            V56="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V54="$U"
            V55="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V55" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V54="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V54="$U"
          else
					X=1
          fi
          #53左下判定
          if [ "$V17" = "$U" ] && [ "$V26" = "$C" ] && [ "$V35" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V44="$U"
            V35="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V35" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V44="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V44="$U"
          else
					X=1
          fi
          #53左判定
          if [ "$V13" = "$U" ] && [ "$V23" = "$C" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V43="$U"
            V33="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V43="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V43="$U"
          else
					X=1
          fi
          #53左上判定
          if [ "$V31" = "$U" ] && [ "$V42" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$U"
            V42="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #63 総合判定
        elif [ $U1 == 63 ] && [ "$V63" != "$U" ] && [ "$V63" != "$C" ]; then
          #63 上判定
          if [ "$V61" = "$U" ] && [ "$V62" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V62="$U"
          else
					X=1
          fi
          #63右上判定
          if [ "$V81" = "$U" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V72="$U"
          else
					X=1
          fi
          #63右判定
          if [ "$V83" = "$U" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V73="$U"
          else
					X=1
          fi
          #63右下判定
          if [ "$V85" = "$U" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V74="$U"
          else
					X=1
          fi
          #63下判定
          if [ "$V68" = "$U" ] && [ "$V67" = "$C" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V64="$U"
            V65="$U"
            V66="$U"
            V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V64="$U"
            V65="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V65" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V64="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V64="$U"
          else
					X=1
          fi
          #63左下判定
          if [ "$V18" = "$U" ] && [ "$V27" = "$C" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V54="$U"
            V45="$U"
            V36="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V54="$U"
            V45="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V45" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V54="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V54="$U"
          else
					X=1
          fi
          #63左判定
          if [ "$V13" = "$U" ] && [ "$V23" = "$C" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V53="$U"
            V43="$U"
            V33="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V53="$U"
            V43="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V53="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V53="$U"
          else
					X=1
          fi
          #63左上判定
          if [ "$V41" = "$U" ] && [ "$V52" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$U"
            V52="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #73 総合判定
        elif [ $U1 == 73 ] && [ "$V73" != "$U" ] && [ "$V73" != "$C" ]; then
          #73 上判定
          if [ "$V71" = "$U" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V72="$U"
          else
					X=1
          fi
          #73下判定
          if [ "$V78" = "$U" ] && [ "$V77" = "$C" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V74="$U"
            V75="$U"
            V76="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V74="$U"
            V75="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V75" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V74="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V74="$U"
          else
					X=1
          fi
          #73左下判定
          if [ "$V28" = "$U" ] && [ "$V37" = "$C" ] && [ "$V46" = "$C" ] && [ "$V55" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V64="$U"
            V55="$U"
            V46="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V46" = "$C" ] && [ "$V55" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V64="$U"
            V55="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V55" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V64="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V64="$U"
          else
					X=1
          fi
          #73左判定
          if [ "$V13" = "$U" ] && [ "$V23" = "$C" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V63="$U"
            V53="$U"
            V43="$U"
            V33="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V63="$U"
            V53="$U"
            V43="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V63="$U"
            V53="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V63="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V63="$U"
          else
					X=1
          fi
          #73左上判定
          if [ "$V51" = "$U" ] && [ "$V62" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$U"
            V62="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #83 総合判定
        elif [ $U1 == 83 ] && [ "$V83" != "$U" ] && [ "$V83" != "$C" ]; then
          #83 上判定
          if [ "$V81" = "$U" ] && [ "$V82" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V82="$U"
          else
					X=1
          fi
          #83下判定
          if [ "$V88" = "$U" ] && [ "$V87" = "$C" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V84="$U"
            V85="$U"
            V86="$U"
            V87="$U"
          elif [ "$V87" = "$U" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V84="$U"
            V85="$U"
            V86="$U"
          elif [ "$V86" = "$U" ] && [ "$V85" = "$C" ] && [ "$V84" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V84="$U"
            V85="$U"
          elif [ "$V85" = "$U" ] && [ "$V84" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V84="$U"
          else
					X=1
          fi
          #83左下判定
          if [ "$V38" = "$U" ] && [ "$V47" = "$C" ] && [ "$V56" = "$C" ] && [ "$V65" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V74="$U"
            V65="$U"
            V56="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V56" = "$C" ] && [ "$V65" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V74="$U"
            V65="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V65" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V74="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V74="$U"
          else
					X=1
          fi
          #83左判定
          if [ "$V13" = "$U" ] && [ "$V23" = "$C" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V73="$U"
            V63="$U"
            V53="$U"
            V43="$U"
            V33="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V33" = "$C" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V73="$U"
            V63="$U"
            V53="$U"
            V43="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V43" = "$C" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V73="$U"
            V63="$U"
            V53="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V53" = "$C" ] && [ "$V63" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V73="$U"
            V63="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V63" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V73="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V73="$U"
          else
					X=1
          fi
          #83左上判定
          if [ "$V61" = "$U" ] && [ "$V72" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$U"
            V72="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #14 総合判定
        elif [ $U1 == 14 ] && [ "$V14" != "$U" ] && [ "$V14" != "$C" ]; then
          #14 上判定
          if [ "$V11" = "$U" ] && [ "$V12" = "$C" ] && [ "$V13" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V13="$U"
            V12="$U"
          elif [ "$V12" = "$U" ] && [ "$V13" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V13="$U"
          else
					X=1
          fi
          #14右上判定
          if [ "$V41" = "$U" ] && [ "$V32" = "$C" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V32="$U"
            V23="$U"
          elif [ "$V32" = "$U" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V23="$U"
          else
					X=1
          fi
          #14右判定
          if [ "$V84" = "$U" ] && [ "$V74" = "$C" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V24="$U"
            V34="$U"
            V44="$U"
            V54="$U"
            V64="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V24="$U"
            V34="$U"
            V44="$U"
            V54="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V24="$U"
            V34="$U"
            V44="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V24="$U"
            V34="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V34" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V24="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V24="$U"
          else
					X=1
          fi
          #14右下判定
          if [ "$V58" = "$U" ] && [ "$V47" = "$C" ] && [ "$V36" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V25="$U"
            V36="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V36" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V25="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V25="$U"
          else
					X=1
          fi
          #14下判定
          if [ "$V18" = "$U" ] && [ "$V17" = "$C" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V15="$U"
            V16="$U"
            V17="$U"
          elif [ "$V17" = "$U" ] && [ "$V16" = "$C" ] && [ "$V15" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V15="$U"
            V16="$U"
          elif [ "$V16" = "$U" ] && [ "$V15" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$U"
            V15="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #24 総合判定
        elif [ $U1 == 24 ] && [ "$V24" != "$U" ] && [ "$V24" != "$C" ]; then
          #24 上判定
          if [ "$V21" = "$U" ] && [ "$V22" = "$C" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V23="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V23="$U"
          else
					X=1
          fi
          #24右上判定
          if [ "$V51" = "$U" ] && [ "$V42" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V33="$U"
            V22="$U"
          elif [ "$V42" = "$U" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V33="$U"
          else
					X=1
          fi
          #24右判定
          if [ "$V84" = "$U" ] && [ "$V74" = "$C" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V34="$U"
            V44="$U"
            V54="$U"
            V64="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V34="$U"
            V44="$U"
            V54="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V34="$U"
            V44="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V44" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V34="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V34="$U"
          else
					X=1
          fi
          #24右下判定
          if [ "$V68" = "$U" ] && [ "$V57" = "$C" ] && [ "$V46" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V35="$U"
            V46="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V46" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V35="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V35="$U"
          else
					X=1
          fi
          #24下判定
          if [ "$V28" = "$U" ] && [ "$V27" = "$C" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V25="$U"
            V26="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V26" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V25="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$U"
            V25="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #34 総合判定
        elif [ $U1 == 34 ] && [ "$V34" != "$U" ] && [ "$V34" != "$C" ]; then
          #34 上判定
          if [ "$V31" = "$U" ] && [ "$V32" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V33="$U"
            V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V33="$U"
          else
					X=1
          fi
          #34右上判定
          if [ "$V61" = "$U" ] && [ "$V52" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V43="$U"
            V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V43="$U"
          else
					X=1
          fi
          #34右判定
          if [ "$V84" = "$U" ] && [ "$V74" = "$C" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V44="$U"
            V54="$U"
            V64="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V44="$U"
            V54="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V54" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V44="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V44="$U"
          else
					X=1
          fi
          #34右下判定
          if [ "$V78" = "$U" ] && [ "$V67" = "$C" ] && [ "$V56" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V45="$U"
            V56="$U"
            V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V56" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V45="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V45="$U"
          else
					X=1
          fi
          #34下判定
          if [ "$V38" = "$U" ] && [ "$V37" = "$C" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V35="$U"
            V36="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V36" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V35="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V35="$U"
          else
					X=1
          fi
          #34左下判定
          if [ "$V16" = "$U" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V25="$U"
          else
					X=1
          fi
          #34左判定
          if [ "$V14" = "$U" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V24="$U"
          else
					X=1
          fi
          #34左上判定
          if [ "$V12" = "$U" ] && [ "$V23" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$U"
            V23="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #44 総合判定
        elif [ $U1 == 44 ] && [ "$V44" != "$U" ] && [ "$V44" != "$C" ]; then
          #44 上判定
          if [ "$V41" = "$U" ] && [ "$V42" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V42="$U"
            V43="$U"
          elif [ "$V42" = "$U" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V43="$U"
          else
					X=1
          fi
          #44右上判定
          if [ "$V71" = "$U" ] && [ "$V62" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V53="$U"
            V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V53="$U"
          else
					X=1
          fi
          #44右判定
          if [ "$V84" = "$U" ] && [ "$V74" = "$C" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V54="$U"
            V64="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V64" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V54="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V54="$U"
          else
					X=1
          fi
          #44右下判定
          if [ "$V88" = "$U" ] && [ "$V77" = "$C" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V55="$U"
            V66="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V66" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V55="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V55="$U"
          else
					X=1
          fi
          #44下判定
          if [ "$V48" = "$U" ] && [ "$V47" = "$C" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V45="$U"
            V46="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V46" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V45="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V45="$U"
          else
					X=1
          fi
          #44左下判定
          if [ "$V17" = "$U" ] && [ "$V26" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V35="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V35="$U"
          else
					X=1
          fi
          #44左判定
          if [ "$V14" = "$U" ] && [ "$V24" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V24="$U"
            V34="$U"
          elif [ "$V24" = "$U" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V34="$U"
          else
					X=1
          fi
          #44左上判定
          if [ "$V11" = "$U" ] && [ "$V22" = "$C" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V33="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V33" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            v33="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #54 総合判定
        elif [ $U1 == 54 ] && [ "$V54" != "$U" ] && [ "$V54" != "$C" ]; then
          #54 上判定
          if [ "$V51" = "$U" ] && [ "$V52" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V52="$U"
            V53="$U"
          elif [ "$V52" = "$U" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V53="$U"
          else
					X=1
          fi
          #54右上判定
          if [ "$V81" = "$U" ] && [ "$V72" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V53="$U"
            V62="$U"
          elif [ "$V72" = "$U" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$U"
            V53="$U"
          else
					X=1
          fi
          #54右判定
          if [ "$V84" = "$U" ] && [ "$V74" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V64="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V64="$U"
          else
					X=1
          fi
          #54右下判定
          if [ "$V87" = "$U" ] && [ "$V76" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V65="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V65="$U"
          else
					X=1
          fi
          #54下判定
          if [ "$V58" = "$U" ] && [ "$V57" = "$C" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V55="$U"
            V56="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V56" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V55="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V55="$U"
          else
					X=1
          fi
          #54左下判定
          if [ "$V18" = "$U" ] && [ "$V27" = "$C" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V45="$U"
            V36="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V36" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V45="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V45="$U"
          else
					X=1
          fi
          #54左判定
          if [ "$V14" = "$U" ] && [ "$V24" = "$C" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V44="$U"
            V34="$U"
            V24="$U"
          elif [ "$V24" = "$U" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V44="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V44="$U"
          else
					X=1
          fi
          #54左上判定
          if [ "$V21" = "$U" ] && [ "$V32" = "$C" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            V43="$U"
            V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V43" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$U"
            v43="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #64 総合判定
        elif [ $U1 == 64 ] && [ "$V64" != "$U" ] && [ "$V64" != "$C" ]; then
          #64 上判定
          if [ "$V61" = "$U" ] && [ "$V62" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V62="$U"
            V63="$U"
          elif [ "$V62" = "$U" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V63="$U"
          else
					X=1
          fi
          #64右上判定
          if [ "$V82" = "$U" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V73="$U"
          else
					X=1
          fi
          #64右判定
          if [ "$V84" = "$U" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V74="$U"
          else
					X=1
          fi
          #64右下判定
          if [ "$V86" = "$U" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V75="$U"
          else
					X=1
          fi
          #64下判定
          if [ "$V68" = "$U" ] && [ "$V67" = "$C" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V65="$U"
            V66="$U"
            V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V66" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V65="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V65="$U"
          else
					X=1
          fi
          #64左下判定
          if [ "$V28" = "$U" ] && [ "$V37" = "$C" ] && [ "$V46" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V55="$U"
            V46="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V46" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V55="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V55="$U"
          else
					X=1
          fi
          #64左判定
          if [ "$V14" = "$U" ] && [ "$V24" = "$C" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V54="$U"
            V44="$U"
            V34="$U"
            V24="$U"
          elif [ "$V24" = "$U" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V54="$U"
            V44="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V54="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V54="$U"
          else
					X=1
          fi
          #64左上判定
          if [ "$V31" = "$U" ] && [ "$V42" = "$C" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V53="$U"
            V42="$U"
          elif [ "$V42" = "$U" ] && [ "$V53" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$U"
            V53="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #74 総合判定
        elif [ $U1 == 74 ] && [ "$V74" != "$U" ] && [ "$V74" != "$C" ]; then
          #74 上判定
          if [ "$V71" = "$U" ] && [ "$V72" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V72="$U"
            V73="$U"
          elif [ "$V72" = "$U" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V73="$U"
          else
					X=1
          fi
          #74下判定
          if [ "$V78" = "$U" ] && [ "$V77" = "$C" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V75="$U"
            V76="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V76" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V75="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V75="$U"
          else
					X=1
          fi
          #74左下判定
          if [ "$V38" = "$U" ] && [ "$V47" = "$C" ] && [ "$V56" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V65="$U"
            V56="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V56" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V65="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V65="$U"
          else
					X=1
          fi
          #74左判定
          if [ "$V14" = "$U" ] && [ "$V24" = "$C" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V64="$U"
            V54="$U"
            V44="$U"
            V34="$U"
            V24="$U"
          elif [ "$V24" = "$U" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V64="$U"
            V54="$U"
            V44="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V64="$U"
            V54="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V64="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V64="$U"
          else
					X=1
          fi
          #74左上判定
          if [ "$V41" = "$U" ] && [ "$V52" = "$C" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V63="$U"
            V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V63" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$U"
            V63="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #84 総合判定
        elif [ $U1 == 84 ] && [ "$V84" != "$U" ] && [ "$V84" != "$C" ]; then
          #84 上判定
          if [ "$V81" = "$U" ] && [ "$V82" = "$C" ] && [ "$V83" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V82="$U"
            V83="$U"
          elif [ "$V82" = "$U" ] && [ "$V83" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V83="$U"
          else
					X=1
          fi
          #84下判定
          if [ "$V88" = "$U" ] && [ "$V87" = "$C" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V85="$U"
            V86="$U"
            V87="$U"
          elif [ "$V87" = "$U" ] && [ "$V86" = "$C" ] && [ "$V85" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V85="$U"
            V86="$U"
          elif [ "$V86" = "$U" ] && [ "$V85" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V85="$U"
          else
					X=1
          fi
          #84左下判定
          if [ "$V48" = "$U" ] && [ "$V57" = "$C" ] && [ "$V66" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V75="$U"
            V66="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V66" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V75="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V75="$U"
          else
					X=1
          fi
          #84左判定
          if [ "$V14" = "$U" ] && [ "$V24" = "$C" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V74="$U"
            V64="$U"
            V54="$U"
            V44="$U"
            V34="$U"
            V24="$U"
          elif [ "$V24" = "$U" ] && [ "$V34" = "$C" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V74="$U"
            V64="$U"
            V54="$U"
            V44="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V44" = "$C" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V74="$U"
            V64="$U"
            V54="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V54" = "$C" ] && [ "$V64" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V74="$U"
            V64="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V64" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V74="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V74="$U"
          else
					X=1
          fi
          #84左上判定
          if [ "$V51" = "$U" ] && [ "$V62" = "$C" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V73="$U"
            V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V73" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$U"
            V73="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #15 総合判定
        elif [ $U1 == 15 ] && [ "$V15" != "$U" ] && [ "$V15" != "$C" ]; then
          #15 上判定
          if [ "$V11" = "$U" ] && [ "$V12" = "$C" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V14="$U"
            V13="$U"
            V12="$U"
          elif [ "$V12" = "$U" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V14="$U"
            V13="$U"
          elif [ "$V13" = "$U" ] && [ "$V14" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V14="$U"
          else
					X=1
          fi
          #15 右上判定
          if [ "$V51" = "$U" ] && [ "$V42" = "$C" ] && [ "$V33" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V24="$U"
            V33="$U"
            V42="$U"
          elif [ "$V42" = "$U" ] && [ "$V33" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V24="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V24="$U"
          else
					X=1
          fi
          #15 右判定
          if [ "$V85" = "$U" ] && [ "$V75" = "$C" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V25="$U"
            V35="$U"
            V45="$U"
            V55="$U"
            V65="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V25="$U"
            V35="$U"
            V45="$U"
            V55="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V25="$U"
            V35="$U"
            V45="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V25="$U"
            V35="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V35" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V25="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V25="$U"
          else
					X=1
          fi
          #15 右下判定
          if [ "$V48" = "$U" ] && [ "$V37" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V26="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V26="$U"
          else
					X=1
          fi
          #15下判定
          if [ "$V18" = "$U" ] && [ "$V17" = "$C" ] && [ "$V16" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V16="$U"
            V17="$U"
          elif [ "$V17" = "$U" ] && [ "$V16" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$U"
            V16="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #25 総合判定
        elif [ $U1 == 25 ] && [ "$V25" != "$U" ] && [ "$V25" != "$C" ]; then
          #25 上判定
          if [ "$V21" = "$U" ] && [ "$V22" = "$C" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V24="$U"
            V23="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V24="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V24="$U"
          else
					X=1
          fi
          #25 右上判定
          if [ "$V61" = "$U" ] && [ "$V52" = "$C" ] && [ "$V43" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V34="$U"
            V43="$U"
            V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V43" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V34="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V34="$U"
          else
					X=1
          fi
          #25 右判定
          if [ "$V85" = "$U" ] && [ "$V75" = "$C" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V35="$U"
            V45="$U"
            V55="$U"
            V65="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V35="$U"
            V45="$U"
            V55="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V35="$U"
            V45="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V45" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V35="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V35="$U"
          else
					X=1
          fi
          #25 右下判定
          if [ "$V58" = "$U" ] && [ "$V47" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V36="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V36="$U"
          else
					X=1
          fi
          #25下判定
          if [ "$V28" = "$U" ] && [ "$V27" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V26="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$U"
            V26="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #35 総合判定
        elif [ $U1 == 35 ] && [ "$V35" != "$U" ] && [ "$V35" != "$C" ]; then
          #35 上判定
          if [ "$V31" = "$U" ] && [ "$V32" = "$C" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V34="$U"
            V33="$U"
            V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V34="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V34="$U"
          else
					X=1
          fi
          #35 右上判定
          if [ "$V71" = "$U" ] && [ "$V62" = "$C" ] && [ "$V53" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V44="$U"
            V53="$U"
            V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V53" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V44="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V44="$U"
          else
					X=1
          fi
          #35 右判定
          if [ "$V85" = "$U" ] && [ "$V75" = "$C" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V45="$U"
            V55="$U"
            V65="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V45="$U"
            V55="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V55" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V45="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V45="$U"
          else
					X=1
          fi
          #35 右下判定
          if [ "$V68" = "$U" ] && [ "$V57" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V46="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V46="$U"
          else
					X=1
          fi
          #35下判定
          if [ "$V38" = "$U" ] && [ "$V37" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V36="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V36="$U"
          else
					X=1
          fi
          #35 左下判定
          if [ "$V13" = "$U" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V24="$U"
          else
					X=1
          fi
          #35 左判定
          if [ "$V15" = "$U" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V25="$U"
          else
					X=1
          fi
          #35 左上判定
          if [ "$V13" = "$U" ] && [ "$V24" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$U"
            V24="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #45 総合判定
        elif [ $U1 == 45 ] && [ "$V45" != "$U" ] && [ "$V45" != "$C" ]; then
          #45 上判定
          if [ "$V41" = "$U" ] && [ "$V42" = "$C" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V44="$U"
            V43="$U"
            V42="$U"
          elif [ "$V42" = "$U" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V44="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V44="$U"
          else
					X=1
          fi
          #45 右上判定
          if [ "$V81" = "$U" ] && [ "$V72" = "$C" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V54="$U"
            V63="$U"
            V72="$U"
          elif [ "$V72" = "$U" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V54="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V54="$U"
          else
					X=1
          fi
          #45 右判定
          if [ "$V85" = "$U" ] && [ "$V75" = "$C" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V55="$U"
            V65="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V65" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V55="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V55="$U"
          else
					X=1
          fi
          #45 右下判定
          if [ "$V78" = "$U" ] && [ "$V67" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V56="$U"
            V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V56="$U"
          else
					X=1
          fi
          #45下判定
          if [ "$V48" = "$U" ] && [ "$V47" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V46="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V46="$U"
          else
					X=1
          fi
          #45 左下判定
          if [ "$V18" = "$U" ] && [ "$V27" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V36="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V36="$U"
          else
					X=1
          fi
          #45 左判定
          if [ "$V15" = "$U" ] && [ "$V25" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V35="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V35="$U"
          else
					X=1
          fi
          #45 左上判定
          if [ "$V12" = "$U" ] && [ "$V23" = "$C" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V34="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V34" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$U"
            V34="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #55 総合判定
        elif [ $U1 == 55 ] && [ "$V55" != "$U" ] && [ "$V55" != "$C" ]; then
          #55 上判定
          if [ "$V51" = "$U" ] && [ "$V52" = "$C" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V54="$U"
            V53="$U"
            V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V54="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V54="$U"
          else
					X=1
          fi
          #55 右上判定
          if [ "$V82" = "$U" ] && [ "$V73" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V64="$U"
            V73="$U"
          elif [ "$V73" = "$U" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V64="$U"
          else
					X=1
          fi
          #55 右判定
          if [ "$V85" = "$U" ] && [ "$V75" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V65="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V65="$U"
          else
					X=1
          fi
          #55 右下判定
          if [ "$V88" = "$U" ] && [ "$V77" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V66="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V66="$U"
          else
					X=1
          fi
          #55下判定
          if [ "$V58" = "$U" ] && [ "$V57" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V56="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V56="$U"
          else
					X=1
          fi
          #55 左下判定
          if [ "$V28" = "$U" ] && [ "$V37" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V46="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V46="$U"
          else
					X=1
          fi
          #55 左判定
          if [ "$V15" = "$U" ] && [ "$V25" = "$C" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V45="$U"
            V35="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V45="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V45="$U"
          else
					X=1
          fi
          #55 左上判定
          if [ "$V11" = "$U" ] && [ "$V22" = "$C" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V44="$U"
            V33="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V44="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V44" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$U"
            V44="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #65 総合判定
        elif [ $U1 == 65 ] && [ "$V65" != "$U" ] && [ "$V65" != "$C" ]; then
          #65 上判定
          if [ "$V61" = "$U" ] && [ "$V62" = "$C" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V64="$U"
            V63="$U"
            V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V64="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V64="$U"
          else
					X=1
          fi
          #65 右上判定
          if [ "$V83" = "$U" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V74="$U"
          else
					X=1
          fi
          #65 右判定
          if [ "$V85" = "$U" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V75="$U"
          else
					X=1
          fi
          #65 右下判定
          if [ "$V87" = "$U" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V76="$U"
          else
					X=1
          fi
          #65下判定
          if [ "$V68" = "$U" ] && [ "$V67" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V66="$U"
            V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V66="$U"
          else
					X=1
          fi
          #65 左下判定
          if [ "$V38" = "$U" ] && [ "$V47" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V56="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V56="$U"
          else
					X=1
          fi
          #65 左判定
          if [ "$V15" = "$U" ] && [ "$V25" = "$C" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V55="$U"
            V45="$U"
            V35="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V55="$U"
            V45="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V55="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V55" = "$C" ] ; then
              #ひっくり返し実行
              user_input_flag=1
              V65="$U"
              V55="$U"
          else
					X=1
          fi
          #65 左上判定
          if [ "$V21" = "$U" ] && [ "$V32" = "$C" ] && [ "$V43" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V54="$U"
            V43="$U"
            V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V43" = "$C" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V54="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V54" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$U"
            V54="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #75 総合判定
        elif [ $U1 == 75 ] && [ "$V75" != "$U" ] && [ "$V75" != "$C" ]; then
          #75 上判定
          if [ "$V71" = "$U" ] && [ "$V72" = "$C" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V74="$U"
            V73="$U"
            V72="$U"
          elif [ "$V72" = "$U" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V74="$U"
            V73="$U"
          elif [ "$V73" = "$U" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V74="$U"
          else
					X=1
          fi
          #75下判定
          if [ "$V78" = "$U" ] && [ "$V77" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V76="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V76="$U"
          else
					X=1
          fi
          #75 左下判定
          if [ "$V48" = "$U" ] && [ "$V57" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V66="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V66="$U"
          else
					X=1
          fi
          #75 左判定
          if [ "$V15" = "$U" ] && [ "$V25" = "$C" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V65="$U"
            V55="$U"
            V45="$U"
            V35="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V65="$U"
            V55="$U"
            V45="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V65="$U"
            V55="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V65="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V65="$U"
          else
					X=1
          fi
          #75 左上判定
          if [ "$V31" = "$U" ] && [ "$V42" = "$C" ] && [ "$V53" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V64="$U"
            V53="$U"
            V42="$U"
          elif [ "$V42" = "$U" ] && [ "$V53" = "$C" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V64="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V64" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$U"
            V64="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #85 総合判定
        elif [ $U1 == 85 ] && [ "$V85" != "$U" ] && [ "$V85" != "$C" ]; then
          #85 上判定
          if [ "$V81" = "$U" ] && [ "$V82" = "$C" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V84="$U"
            V83="$U"
            V82="$U"
          elif [ "$V82" = "$U" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V84="$U"
            V83="$U"
          elif [ "$V83" = "$U" ] && [ "$V84" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V84="$U"
          else
					X=1
          fi
          #85下判定
          if [ "$V88" = "$U" ] && [ "$V87" = "$C" ] && [ "$V86" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V86="$U"
            V87="$U"
          elif [ "$V87" = "$U" ] && [ "$V86" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V86="$U"
          else
					X=1
          fi
          #85 左下判定
          if [ "$V58" = "$U" ] && [ "$V67" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V76="$U"
            V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V76="$U"
          else
					X=1
          fi
          #85 左判定
          if [ "$V15" = "$U" ] && [ "$V25" = "$C" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V75="$U"
            V65="$U"
            V55="$U"
            V45="$U"
            V35="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V35" = "$C" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V75="$U"
            V65="$U"
            V55="$U"
            V45="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V45" = "$C" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V75="$U"
            V65="$U"
            V55="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V55" = "$C" ] && [ "$V65" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V75="$U"
            V65="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V65" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V75="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V75="$U"
          else
					X=1
          fi
          #85 左上判定
          if [ "$V41" = "$U" ] && [ "$V52" = "$C" ] && [ "$V63" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V74="$U"
            V63="$U"
            V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V63" = "$C" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V74="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V74" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$U"
            V74="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #16 総合判定
        elif [ $U1 == 16 ] && [ "$V16" != "$U" ] && [ "$V16" != "$C" ]; then
          #16 上判定
          if [ "$V11" = "$U" ] && [ "$V12" = "$C" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V15="$U"
            V14="$U"
            V13="$U"
            V12="$U"
          elif [ "$V12" = "$U" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V15="$U"
            V14="$U"
            V13="$U"
          elif [ "$V13" = "$U" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V15="$U"
            V14="$U"
          elif [ "$V14" = "$U" ] && [ "$V15" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V15="$U"
          else
					X=1
          fi
          #16 右上判定
          if [ "$V61" = "$U" ] && [ "$V52" = "$C" ] && [ "$V43" = "$C" ] && [ "$V34" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V25="$U"
            V34="$U"
            V43="$U"
            V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V43" = "$C" ] && [ "$V34" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V25="$U"
            V34="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V34" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V25="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V25="$U"
          else
					X=1
          fi
          #16 右判定
          if [ "$V86" = "$U" ] && [ "$V76" = "$C" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V26="$U"
            V36="$U"
            V46="$U"
            V56="$U"
            V66="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V26="$U"
            V36="$U"
            V46="$U"
            V56="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V26="$U"
            V36="$U"
            V46="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V26="$U"
            V36="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V36" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V26="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V26="$U"
          else
					X=1
          fi
          #16右下判定
          if [ "$V38" = "$U" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V27="$U"
          else
					X=1
          fi
          #16下判定
          if [ "$V18" = "$U" ] && [ "$V17" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$U"
            V17="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #26 総合判定
        elif [ $U1 == 26 ] && [ "$V26" != "$U" ] && [ "$V26" != "$C" ]; then
          #26 上判定
          if [ "$V21" = "$U" ] && [ "$V22" = "$C" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V25="$U"
            V24="$U"
            V23="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V25="$U"
            V24="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V25="$U"
            V24="$U"
          elif [ "$V24" = "$U" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V25="$U"
          else
					X=1
          fi
          #26 右上判定
          if [ "$V71" = "$U" ] && [ "$V62" = "$C" ] && [ "$V53" = "$C" ] && [ "$V44" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V35="$U"
            V44="$U"
            V53="$U"
            V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V53" = "$C" ] && [ "$V44" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V35="$U"
            V44="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V44" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V35="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V35="$U"
          else
					X=1
          fi
          #26 右判定
          if [ "$V86" = "$U" ] && [ "$V76" = "$C" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V36="$U"
            V46="$U"
            V56="$U"
            V66="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V36="$U"
            V46="$U"
            V56="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V36="$U"
            V46="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V46" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V36="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V36="$U"
          else
					X=1
          fi
          #26右下判定
          if [ "$V48" = "$U" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V37="$U"
          else
					X=1
          fi
          #26下判定
          if [ "$V28" = "$U" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$U"
            V27="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #36 総合判定
        elif [ $U1 == 36 ] && [ "$V36" != "$U" ] && [ "$V36" != "$C" ]; then
          #36 上判定
          if [ "$V31" = "$U" ] && [ "$V32" = "$C" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V35="$U"
            V34="$U"
            V33="$U"
            V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V35="$U"
            V34="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V35="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V35="$U"
          else
					X=1
          fi
          #36 右上判定
          if [ "$V81" = "$U" ] && [ "$V72" = "$C" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V45="$U"
            V54="$U"
            V63="$U"
            V72="$U"
          elif [ "$V72" = "$U" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V45="$U"
            V54="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V45="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V45="$U"
          else
					X=1
          fi
          #36 右判定
          if [ "$V86" = "$U" ] && [ "$V76" = "$C" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V46="$U"
            V56="$U"
            V66="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V46="$U"
            V56="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V56" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V46="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V46="$U"
          else
					X=1
          fi
          #36右下判定
          if [ "$V58" = "$U" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V47="$U"
          else
					X=1
          fi
          #36下判定
          if [ "$V38" = "$U" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V37="$U"
          else
					X=1
          fi
          #36左下判定
          if [ "$V18" = "$U" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V27="$U"
          else
					X=1
          fi
          #36左判定
          if [ "$V16" = "$U" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V26="$U"
          else
					X=1
          fi
          #36左上判定
          if [ "$V14" = "$U" ] && [ "$V25" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$U"
            V25="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #46 総合判定
        elif [ $U1 == 46 ] && [ "$V46" != "$U" ] && [ "$V46" != "$C" ]; then
          #46 上判定
          if [ "$V41" = "$U" ] && [ "$V42" = "$C" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V45="$U"
            V44="$U"
            V43="$U"
            V42="$U"
          elif [ "$V42" = "$U" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V45="$U"
            V44="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V45="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V45="$U"
          else
					X=1
          fi
          #46 右上判定
          if [ "$V82" = "$U" ] && [ "$V73" = "$C" ] && [ "$V64" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V55="$U"
            V64="$U"
            V73="$U"
          elif [ "$V73" = "$U" ] && [ "$V64" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V55="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V55="$U"
          else
					X=1
          fi
          #46 右判定
          if [ "$V86" = "$U" ] && [ "$V76" = "$C" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V56="$U"
            V66="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V66" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V56="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V56="$U"
          else
					X=1
          fi
          #46右下判定
          if [ "$V68" = "$U" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V77="$U"
          else
					X=1
          fi
          #46下判定
          if [ "$V48" = "$U" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V47="$U"
          else
					X=1
          fi
          #46左下判定
          if [ "$V28" = "$U" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V37="$U"
          else
					X=1
          fi
          #46左判定
          if [ "$V16" = "$U" ] && [ "$V26" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V36="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V36="$U"
          else
					X=1
          fi
          #46左上判定
          if [ "$V13" = "$U" ] && [ "$V24" = "$C" ] && [ "$V35" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V35="$U"
            V24="$U"
          elif [ "$V26" = "$U" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$U"
            V35="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #56 総合判定
        elif [ $U1 == 56 ] && [ "$V56" != "$U" ] && [ "$V56" != "$C" ]; then
          #56 上判定
          if [ "$V51" = "$U" ] && [ "$V52" = "$C" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V55="$U"
            V54="$U"
            V53="$U"
            V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V55="$U"
            V54="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V55="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V55="$U"
          else
					X=1
          fi
          #56 右上判定
          if [ "$V83" = "$U" ] && [ "$V74" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V65="$U"
            V74="$U"
            V83="$U"
          elif [ "$V74" = "$U" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V65="$U"
            V74="$U"
          else
					X=1
          fi
          #56 右判定
          if [ "$V86" = "$U" ] && [ "$V76" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V66="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V66="$U"
          else
					X=1
          fi
          #56右下判定
          if [ "$V78" = "$U" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V67="$U"
          else
					X=1
          fi
          #56下判定
          if [ "$V58" = "$U" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V57="$U"
          else
					X=1
          fi
          #56左下判定
          if [ "$V38" = "$U" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V47="$U"
          else
					X=1
          fi
          #56左判定
          if [ "$V16" = "$U" ] && [ "$V26" = "$C" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V46="$U"
            V36="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V46="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V46="$U"
          else
					X=1
          fi
          #56左上判定
          if [ "$V12" = "$U" ] && [ "$V23" = "$C" ] && [ "$V34" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V45="$U"
            V34="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V34" = "$C" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V45="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V45" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$U"
            V45="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #66 総合判定
        elif [ $U1 == 66 ] && [ "$V66" != "$U" ] && [ "$V66" != "$C" ]; then
          #66 上判定
          if [ "$V61" = "$U" ] && [ "$V62" = "$C" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V65="$U"
            V64="$U"
            V63="$U"
            V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V65="$U"
            V64="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V65="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V65="$U"
          else
					X=1
          fi
          #66 右上判定
          if [ "$V84" = "$U" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V75="$U"
          else
					X=1
          fi
          #66 右判定
          if [ "$V86" = "$U" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V76="$U"
          else
					X=1
          fi
          #66右下判定
          if [ "$V88" = "$U" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V77="$U"
          else
					X=1
          fi
          #66下判定
          if [ "$V68" = "$U" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V67="$U"
          else
					X=1
          fi
          #66左下判定
          if [ "$V48" = "$U" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V57="$U"
          else
					X=1
          fi
          #66左判定
          if [ "$V16" = "$U" ] && [ "$V26" = "$C" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V56="$U"
            V46="$U"
            V36="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V56="$U"
            V46="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V56="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V56="$U"
          else
					X=1
          fi
          #66左上判定
          if [ "$V11" = "$U" ] && [ "$V22" = "$C" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V55="$U"
            V44="$U"
            V33="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V55="$U"
            V44="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V55="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V55" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$U"
            V55="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #76 総合判定
        elif [ $U1 == 76 ] && [ "$V76" != "$U" ] && [ "$V76" != "$C" ]; then
          #76 上判定
          if [ "$V71" = "$U" ] && [ "$V72" = "$C" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V75="$U"
            V74="$U"
            V73="$U"
            V72="$U"
          elif [ "$V72" = "$U" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V75="$U"
            V74="$U"
            V73="$U"
          elif [ "$V73" = "$U" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V75="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V75="$U"
          else
					X=1
          fi
          #76下判定
          if [ "$V78" = "$U" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V77="$U"
          else
					X=1
          fi
          #76左下判定
          if [ "$V58" = "$U" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V67="$U"
          else
					X=1
          fi
          #76左判定
          if [ "$V16" = "$U" ] && [ "$V26" = "$C" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V66="$U"
            V56="$U"
            V46="$U"
            V36="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V66="$U"
            V56="$U"
            V46="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V66="$U"
            V56="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V66="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V66="$U"
          else
					X=1
          fi
          #76左上判定
          if [ "$V21" = "$U" ] && [ "$V32" = "$C" ] && [ "$V43" = "$C" ] && [ "$V54" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V65="$U"
            V54="$U"
            V43="$U"
            V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V43" = "$C" ] && [ "$V54" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V65="$U"
            V54="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V54" = "$C" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V65="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V65" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$U"
            V65="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #86 総合判定
        elif [ $U1 == 86 ] && [ "$V86" != "$U" ] && [ "$V86" != "$C" ]; then
          #86 上判定
          if [ "$V81" = "$U" ] && [ "$V82" = "$C" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V85="$U"
            V84="$U"
            V83="$U"
            V82="$U"
          elif [ "$V82" = "$U" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V85="$U"
            V84="$U"
            V83="$U"
          elif [ "$V83" = "$U" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V85="$U"
            V84="$U"
          elif [ "$V84" = "$U" ] && [ "$V85" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V85="$U"
          else
					X=1
          fi
          #86下判定
          if [ "$V88" = "$U" ] && [ "$V87" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V87="$U"
          else
					X=1
          fi
          #86左下判定
          if [ "$V68" = "$U" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V77="$U"
          else
					X=1
          fi
          #86左判定
          if [ "$V16" = "$U" ] && [ "$V26" = "$C" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V76="$U"
            V66="$U"
            V56="$U"
            V46="$U"
            V36="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V36" = "$C" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V76="$U"
            V66="$U"
            V56="$U"
            V46="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V46" = "$C" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V76="$U"
            V66="$U"
            V56="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V56" = "$C" ] && [ "$V66" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V76="$U"
            V66="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V66" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V76="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V76="$U"
          else
					X=1
          fi
          #86左上判定
          if [ "$V31" = "$U" ] && [ "$V42" = "$C" ] && [ "$V53" = "$C" ] && [ "$V64" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V75="$U"
            V64="$U"
            V53="$U"
            V42="$U"
          elif [ "$V42" = "$U" ] && [ "$V53" = "$C" ] && [ "$V64" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V75="$U"
            V64="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V64" = "$C" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V75="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V75" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$U"
            V75="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #17 総合判定
        elif [ $U1 == 17 ] && [ "$V17" != "$U" ] && [ "$V17" != "$C" ]; then
          #17 上判定
          if [ "$V11" = "$U" ] && [ "$V12" = "$C" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V16="$U"
            V15="$U"
            V14="$U"
            V13="$U"
            V12="$U"
          elif [ "$V12" = "$U" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V16="$U"
            V15="$U"
            V14="$U"
            V13="$U"
          elif [ "$V13" = "$U" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V16="$U"
            V15="$U"
            V14="$U"
          elif [ "$V14" = "$U" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V16="$U"
            V15="$U"
          elif [ "$V15" = "$U" ] && [ "$V16" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V16="$U"
          else
					X=1
          fi
          #17右上判定
          if [ "$V71" = "$U" ] && [ "$V62" = "$C" ] && [ "$V53" = "$C" ] && [ "$V44" = "$C" ] && [ "$V35" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V26="$U"
            V35="$U"
            V44="$U"
            V53="$U"
            V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V53" = "$C" ] && [ "$V44" = "$C" ] && [ "$V35" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V26="$U"
            V35="$U"
            V44="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V44" = "$C" ] && [ "$V35" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V26="$U"
            V35="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V35" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V26="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V26="$U"
          else
					X=1
          fi
          #17右判定
          if [ "$V87" = "$U" ] && [ "$V77" = "$C" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V27="$U"
            V37="$U"
            V47="$U"
            V57="$U"
            V67="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V27="$U"
            V37="$U"
            V47="$U"
            V57="$U"
            V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V27="$U"
            V37="$U"
            V47="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V27="$U"
            V37="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V37" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V27="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$U"
            V27="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #27 総合判定
        elif [ $U1 == 27 ] && [ "$V27" != "$U" ] && [ "$V27" != "$C" ]; then
          #27 上判定
          if [ "$V21" = "$U" ] && [ "$V22" = "$C" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V26="$U"
            V25="$U"
            V24="$U"
            V23="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V26="$U"
            V25="$U"
            V24="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V26="$U"
            V25="$U"
            V24="$U"
          elif [ "$V24" = "$U" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V26="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V26="$U"
          else
					X=1
          fi
          #27右上判定
          if [ "$V81" = "$U" ] && [ "$V72" = "$C" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V36="$U"
            V45="$U"
            V54="$U"
            V63="$U"
            V72="$U"
          elif [ "$V72" = "$U" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V36="$U"
            V45="$U"
            V54="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V36="$U"
            V45="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V36="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V36="$U"
          else
					X=1
          fi
          #27右判定
          if [ "$V87" = "$U" ] && [ "$V77" = "$C" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V37="$U"
            V47="$U"
            V57="$U"
            V67="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V37="$U"
            V47="$U"
            V57="$U"
            V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V37="$U"
            V47="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V47" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V37="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$U"
            V37="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #37 総合判定
        elif [ $U1 == 37 ] && [ "$V37" != "$U" ] && [ "$V37" != "$C" ]; then
          #37 上判定
          if [ "$V31" = "$U" ] && [ "$V32" = "$C" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V36="$U"
            V35="$U"
            V34="$U"
            V33="$U"
            V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V36="$U"
            V35="$U"
            V34="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V36="$U"
            V35="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V36="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V36="$U"
          else
					X=1
          fi
          #37右上判定
          if [ "$V82" = "$U" ] && [ "$V73" = "$C" ] && [ "$V64" = "$C" ] && [ "$V55" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V46="$U"
            V55="$U"
            V64="$U"
            V73="$U"
          elif [ "$V73" = "$U" ] && [ "$V64" = "$C" ] && [ "$V55" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V46="$U"
            V55="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V55" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V46="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V46="$U"
          else
					X=1
          fi
          #37右判定
          if [ "$V87" = "$U" ] && [ "$V77" = "$C" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V47="$U"
            V57="$U"
            V67="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V47="$U"
            V57="$U"
            V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V57" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V47="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V47="$U"
          else
					X=1
          fi
          #37左判定
          if [ "$V17" = "$U" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V27="$U"
          else
					X=1
          fi
          #37左上判定
          if [ "$V15" = "$U" ] && [ "$V26" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$U"
            V26="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #47 総合判定
        elif [ $U1 == 47 ] && [ "$V47" != "$U" ] && [ "$V47" != "$C" ]; then
          #47 上判定
          if [ "$V41" = "$U" ] && [ "$V42" = "$C" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V46="$U"
            V45="$U"
            V44="$U"
            V43="$U"
            V42="$U"
          elif [ "$V42" = "$U" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V46="$U"
            V45="$U"
            V44="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V46="$U"
            V45="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V46="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V46="$U"
          else
					X=1
          fi
          #47右上判定
          if [ "$V83" = "$U" ] && [ "$V74" = "$C" ] && [ "$V65" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V56="$U"
            V65="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V65" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V56="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V56="$U"
          else
					X=1
          fi
          #47右判定
          if [ "$V87" = "$U" ] && [ "$V77" = "$C" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V57="$U"
            V67="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V67" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V57="$U"
            V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V57="$U"
          else
					X=1
          fi
          #47左判定
          if [ "$V17" = "$U" ] && [ "$V27" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V37="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V37="$U"
          else
					X=1
          fi
          #47左上判定
          if [ "$V14" = "$U" ] && [ "$V25" = "$C" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V36="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V36" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$U"
            V36="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #57 総合判定
        elif [ $U1 == 57 ] && [ "$V57" != "$U" ] && [ "$V57" != "$C" ]; then
          #57 上判定
          if [ "$V51" = "$U" ] && [ "$V52" = "$C" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V56="$U"
            V55="$U"
            V54="$U"
            V53="$U"
            V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V56="$U"
            V55="$U"
            V54="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V56="$U"
            V55="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V56="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V56="$U"
          else
					X=1
          fi
          #57右上判定
          if [ "$V84" = "$U" ] && [ "$V75" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V66="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V66="$U"
          else
					X=1
          fi
          #57右判定
          if [ "$V87" = "$U" ] && [ "$V77" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V67="$U"
            V77="$U"
          elif [ "$V77" = "$U" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V67="$U"
          else
					X=1
          fi
          #57左判定
          if [ "$V17" = "$U" ] && [ "$V27" = "$C" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V47="$U"
            V37="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V47="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V47="$U"
          else
					X=1
          fi
          #57左上判定
          if [ "$V13" = "$U" ] && [ "$V24" = "$C" ] && [ "$V35" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V46="$U"
            V35="$U"
            V24="$U"
          elif [ "$V24" = "$U" ] && [ "$V35" = "$C" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V46="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V46" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$U"
            V46="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #67 総合判定
        elif [ $U1 == 67 ] && [ "$V67" != "$U" ] && [ "$V67" != "$C" ]; then
          #67 上判定
          if [ "$V61" = "$U" ] && [ "$V62" = "$C" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V66="$U"
            V65="$U"
            V64="$U"
            V63="$U"
            V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V66="$U"
            V65="$U"
            V64="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V66="$U"
            V65="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V66="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V66="$U"
          else
					X=1
          fi
          #67右上判定
          if [ "$V85" = "$U" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V76="$U"
          else
					X=1
          fi
          #67右判定
          if [ "$V87" = "$U" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V77="$U"
          else
					X=1
          fi
          #67左判定
          if [ "$V17" = "$U" ] && [ "$V27" = "$C" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V57="$U"
            V47="$U"
            V37="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V57="$U"
            V47="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V57="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V57="$U"
          else
					X=1
          fi
          #67左上判定
          if [ "$V12" = "$U" ] && [ "$V23" = "$C" ] && [ "$V34" = "$C" ] && [ "$V45" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V56="$U"
            V45="$U"
            V34="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V34" = "$C" ] && [ "$V45" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V56="$U"
            V45="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V45" = "$C" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V56="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V56" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$U"
            V56="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #77 総合判定
        elif [ $U1 == 77 ] && [ "$V77" != "$U" ] && [ "$V77" != "$C" ]; then
          #77 上判定
          if [ "$V71" = "$U" ] && [ "$V72" = "$C" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V76="$U"
            V75="$U"
            V74="$U"
            V73="$U"
            V72="$U"
          elif [ "$V72" = "$U" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V76="$U"
            V75="$U"
            V74="$U"
            V73="$U"
          elif [ "$V73" = "$U" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V76="$U"
            V75="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V76="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V76="$U"
          else
					X=1
          fi
          #77左判定
          if [ "$V17" = "$U" ] && [ "$V27" = "$C" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V67="$U"
            V57="$U"
            V47="$U"
            V37="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V67="$U"
            V57="$U"
            V47="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V67="$U"
            V57="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V67="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V67="$U"
          else
					X=1
          fi
          #77左上判定
          if [ "$V11" = "$U" ] && [ "$V22" = "$C" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V66="$U"
            V55="$U"
            V44="$U"
            V33="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V66="$U"
            V55="$U"
            V44="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V66="$U"
            V55="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V66="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V66" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$U"
            V66="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #87 総合判定
        elif [ $U1 == 87 ] && [ "$V87" != "$U" ] && [ "$V87" != "$C" ]; then
          #87 上判定
          if [ "$V81" = "$U" ] && [ "$V82" = "$C" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V86="$U"
            V85="$U"
            V84="$U"
            V83="$U"
            V82="$U"
          elif [ "$V82" = "$U" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V86="$U"
            V85="$U"
            V84="$U"
            V83="$U"
          elif [ "$V83" = "$U" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V86="$U"
            V85="$U"
            V84="$U"
          elif [ "$V84" = "$U" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V86="$U"
            V85="$U"
          elif [ "$V85" = "$U" ] && [ "$V86" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V86="$U"
          else
					X=1
          fi
          #87左判定
          if [ "$V17" = "$U" ] && [ "$V27" = "$C" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V77="$U"
            V67="$U"
            V57="$U"
            V47="$U"
            V37="$U"
            V27="$U"
          elif [ "$V27" = "$U" ] && [ "$V37" = "$C" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V77="$U"
            V67="$U"
            V57="$U"
            V47="$U"
            V37="$U"
          elif [ "$V37" = "$U" ] && [ "$V47" = "$C" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V77="$U"
            V67="$U"
            V57="$U"
            V47="$U"
          elif [ "$V47" = "$U" ] && [ "$V57" = "$C" ] && [ "$V67" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V77="$U"
            V67="$U"
            V57="$U"
          elif [ "$V57" = "$U" ] && [ "$V67" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V77="$U"
            V67="$U"
          elif [ "$V67" = "$U" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V77="$U"
          else
					X=1
          fi
          #87左上判定
          if [ "$V21" = "$U" ] && [ "$V32" = "$C" ] && [ "$V43" = "$C" ] && [ "$V54" = "$C" ] && [ "$V65" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V76="$U"
            V65="$U"
            V54="$U"
            V43="$U"
            V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V43" = "$C" ] && [ "$V54" = "$C" ] && [ "$V65" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V76="$U"
            V65="$U"
            V54="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V54" = "$C" ] && [ "$V65" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V76="$U"
            V65="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V65" = "$C" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V76="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V76" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$U"
            V76="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #18 総合判定
        elif [ $U1 == 18 ] && [ "$V18" != "$U" ] && [ "$V18" != "$C" ]; then
          #18 上判定
          if [ "$V11" = "$U" ] && [ "$V12" = "$C" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] && [ "$V17" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V17="$U"
            V16="$U"
            V15="$U"
            V14="$U"
            V13="$U"
            V12="$U"
          elif [ "$V12" = "$U" ] && [ "$V13" = "$C" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] && [ "$V17" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V17="$U"
            V16="$U"
            V15="$U"
            V14="$U"
            V13="$U"
          elif [ "$V13" = "$U" ] && [ "$V14" = "$C" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] && [ "$V17" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V17="$U"
            V16="$U"
            V15="$U"
            V14="$U"
          elif [ "$V14" = "$U" ] && [ "$V15" = "$C" ] && [ "$V16" = "$C" ] && [ "$V17" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V17="$U"
            V16="$U"
            V15="$U"
          elif [ "$V15" = "$U" ] && [ "$V16" = "$C" ] && [ "$V17" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V17="$U"
            V16="$U"
          elif [ "$V16" = "$U" ] && [ "$V17" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V17="$U"
          else
					X=1
          fi
          #18右上判定
          if [ "$V81" = "$U" ] && [ "$V72" = "$C" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V27="$U"
            V36="$U"
            V45="$U"
            V54="$U"
            V63="$U"
            V72="$U"
          elif [ "$V72" = "$U" ] && [ "$V63" = "$C" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V27="$U"
            V36="$U"
            V45="$U"
            V54="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V54" = "$C" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V27="$U"
            V36="$U"
            V45="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V45" = "$C" ] && [ "$V36" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V27="$U"
            V36="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V36" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V27="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V27="$U"
          else
					X=1
          fi
          #18右判定
          if [ "$V88" = "$U" ] && [ "$V78" = "$C" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] && [ "$V28" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V28="$U"
            V38="$U"
            V48="$U"
            V58="$U"
            V68="$U"
            V78="$U"
          elif [ "$V78" = "$U" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] && [ "$V28" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V28="$U"
            V38="$U"
            V48="$U"
            V58="$U"
            V68="$U"
          elif [ "$V68" = "$U" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] && [ "$V28" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V28="$U"
            V38="$U"
            V48="$U"
            V58="$U"
          elif [ "$V58" = "$U" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] && [ "$V28" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V28="$U"
            V38="$U"
            V48="$U"
          elif [ "$V48" = "$U" ] && [ "$V38" = "$C" ] && [ "$V28" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V28="$U"
            V38="$U"
          elif [ "$V38" = "$U" ] && [ "$V28" = "$C" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$U"
            V28="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #28 総合判定
        elif [ $U1 == 28 ] && [ "$V28" != "$U" ] && [ "$V28" != "$C" ]; then
          #28 上判定 途中
          if [ "$V21" = "$U" ] && [ "$V22" = "$C" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V27="$U"
            V26="$U"
            V25="$U"
            V24="$U"
            V23="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V23" = "$C" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V27="$U"
            V26="$U"
            V25="$U"
            V24="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V24" = "$C" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V27="$U"
            V26="$U"
            V25="$U"
            V24="$U"
          elif [ "$V24" = "$U" ] && [ "$V25" = "$C" ] && [ "$V26" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V27="$U"
            V26="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V26" = "$C" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V27="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V27="$U"
          else
					X=1
          fi
          #28右上判定
          if [ "$V82" = "$U" ] && [ "$V73" = "$C" ] && [ "$V64" = "$C" ] && [ "$V55" = "$C" ] && [ "$V46" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V37="$U"
            V46="$U"
            V55="$U"
            V64="$U"
            V73="$U"
            V82="$U"
          elif [ "$V73" = "$U" ] && [ "$V64" = "$C" ] && [ "$V55" = "$C" ] && [ "$V46" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V37="$U"
            V46="$U"
            V55="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V55" = "$C" ] && [ "$V46" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V37="$U"
            V46="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V46" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V37="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V37="$U"
          else
					X=1
          fi
          #28右判定
          if [ "$V88" = "$U" ] && [ "$V78" = "$C" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V38="$U"
            V48="$U"
            V58="$U"
            V68="$U"
            V78="$U"
          elif [ "$V78" = "$U" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V38="$U"
            V48="$U"
            V58="$U"
            V68="$U"
          elif [ "$V68" = "$U" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V38="$U"
            V48="$U"
            V58="$U"
          elif [ "$V58" = "$U" ] && [ "$V48" = "$C" ] && [ "$V38" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V38="$U"
            V48="$U"
          elif [ "$V48" = "$U" ] && [ "$V38" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V38="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #38 総合判定
        elif [ $U1 == 38 ] && [ "$V38" != "$U" ] && [ "$V38" != "$C" ]; then
          #38 上判定 途中
          if [ "$V31" = "$U" ] && [ "$V32" = "$C" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V37="$U"
            V36="$U"
            V35="$U"
            V34="$U"
            V33="$U"
            V32="$U"
          elif [ "$V32" = "$U" ] && [ "$V33" = "$C" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V37="$U"
            V36="$U"
            V35="$U"
            V34="$U"
            V33="$U"
          elif [ "$V33" = "$u" ] && [ "$V34" = "$C" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V37="$U"
            V36="$U"
            V35="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V35" = "$C" ] && [ "$V36" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V37="$U"
            V36="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V36" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V37="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V37="$U"
          else
					X=1
          fi
          #38右上判定
          if [ "$V83" = "$U" ] && [ "$V74" = "$C" ] && [ "$V65" = "$C" ] && [ "$V56" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V47="$U"
            V56="$U"
            V65="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V65" = "$C" ] && [ "$V56" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V47="$U"
            V56="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V56" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V47="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V47="$U"
          else
					X=1
          fi
          #38右判定
          if [ "$V88" = "$U" ] && [ "$V78" = "$C" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V48="$U"
            V58="$U"
            V68="$U"
            V78="$U"
          elif [ "$V78" = "$U" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V48="$U"
            V58="$U"
            V68="$U"
          elif [ "$V68" = "$U" ] && [ "$V58" = "$C" ] && [ "$V48" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V48="$U"
            V58="$U"
          elif [ "$V58" = "$U" ] && [ "$V48" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V48="$U"
          elif [ "$V48" = "$U" ] && [ "$V38" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$U"
            V38="$U"
          else
					X=1
          fi
          #38左判定
          if [ "$V18" = "$U" ] && [ "$V28" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V28="$U"
          else
					X=1
          fi
          #38左上判定
          if [ "$V16" = "$U" ] && [ "$V27" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$U"
            V27="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #48 総合判定
        elif [ $U1 == 48 ] && [ "$V48" != "$U" ] && [ "$V48" != "$C" ]; then
          #48 上判定 途中
          if [ "$V41" = "$U" ] && [ "$V42" = "$C" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V47="$U"
            V46="$U"
            V45="$U"
            V44="$U"
            V43="$U"
            V42="$U"
          elif [ "$V42" = "$U" ] && [ "$V43" = "$C" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V47="$U"
            V46="$U"
            V45="$U"
            V44="$U"
            V43="$U"
          elif [ "$V43" = "$U" ] && [ "$V44" = "$C" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V47="$U"
            V46="$U"
            V45="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V45" = "$C" ] && [ "$V46" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V47="$U"
            V46="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V46" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V47="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V47="$U"
          else
					X=1
          fi
          #48右上判定
          if [ "$V84" = "$U" ] && [ "$V75" = "$C" ] && [ "$V66" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V57="$U"
            V66="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V66" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V57="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V57="$U"
          else
					X=1
          fi
          #48右判定
          if [ "$V88" = "$U" ] && [ "$V78" = "$C" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V58="$U"
            V68="$U"
            V78="$U"
          elif [ "$V78" = "$U" ] && [ "$V68" = "$C" ] && [ "$V58" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V58="$U"
            V68="$U"
          elif [ "$V68" = "$U" ] && [ "$V58" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V58="$U"
          else
					X=1
          fi
          #48左判定
          if [ "$V18" = "$U" ] && [ "$V28" = "$C" ] && [ "$V38" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V38="$U"
            V28="$U"
          elif [ "$V28" = "$U" ] && [ "$V38" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V38="$U"
          else
					X=1
          fi
          #48左上判定
          if [ "$V15" = "$U" ] && [ "$V26" = "$C" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V37="$U"
            V26="$U"
          elif [ "$V26" = "$U" ] && [ "$V37" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$U"
            V37="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #58 総合判定
        elif [ $U1 == 58 ] && [ "$V58" != "$U" ] && [ "$V58" != "$C" ]; then
          #58 上判定
          if [ "$V51" = "$U" ] && [ "$V52" = "$C" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V57="$U"
            V56="$U"
            V55="$U"
            V54="$U"
            V53="$U"
            V52="$U"
          elif [ "$V52" = "$U" ] && [ "$V53" = "$C" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V57="$U"
            V56="$U"
            V55="$U"
            V54="$U"
            V53="$U"
          elif [ "$V53" = "$U" ] && [ "$V54" = "$C" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V57="$U"
            V56="$U"
            V55="$U"
            V54="$U"
          elif [ "$V54" = "$U" ] && [ "$V55" = "$C" ] && [ "$V56" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V57="$U"
            V56="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V56" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V57="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V57="$U"
          else
					X=1
          fi
          #58右上判定
          if [ "$V85" = "$U" ] && [ "$V76" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V67="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V67="$U"
          else
					X=1
          fi
          #58右判定
          if [ "$V88" = "$U" ] && [ "$V78" = "$C" ] && [ "$V68" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V68="$U"
            V78="$U"
          elif [ "$V78" = "$U" ] && [ "$V68" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V68="$U"
          else
					X=1
          fi
          #58左判定
          if [ "$V18" = "$U" ] && [ "$V28" = "$C" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V48="$U"
            V38="$U"
            V28="$U"
          elif [ "$V28" = "$U" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V48="$U"
            V38="$U"
          elif [ "$V38" = "$U" ] && [ "$V48" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V48="$U"
          else
					X=1
          fi
          #58左上判定 ここまで
          if [ "$V14" = "$U" ] && [ "$V25" = "$C" ] && [ "$V36" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V47="$U"
            V36="$U"
            V25="$U"
          elif [ "$V25" = "$U" ] && [ "$V36" = "$C" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V47="$U"
            V36="$U"
          elif [ "$V36" = "$U" ] && [ "$V47" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$U"
            V47="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #68 総合判定
        elif [ $U1 == 68 ] && [ "$V68" != "$U" ] && [ "$V68" != "$C" ]; then
          #68 上判定
          if [ "$V61" = "$U" ] && [ "$V62" = "$C" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V67="$U"
            V66="$U"
            V65="$U"
            V64="$U"
            V63="$U"
            V62="$U"
          elif [ "$V62" = "$U" ] && [ "$V63" = "$C" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V67="$U"
            V66="$U"
            V65="$U"
            V64="$U"
            V63="$U"
          elif [ "$V63" = "$U" ] && [ "$V64" = "$C" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V67="$U"
            V66="$U"
            V65="$U"
            V64="$U"
          elif [ "$V64" = "$U" ] && [ "$V65" = "$C" ] && [ "$V66" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V67="$U"
            V66="$U"
            V65="$U"
          elif [ "$V65" = "$U" ] && [ "$V66" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V67="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V67="$U"
          else
					X=1
          fi
          #68右上判定
          if [ "$V86" = "$U" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V77="$U"
          else
					X=1
          fi
          #68右判定
          if [ "$V88" = "$U" ] && [ "$V78" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V78="$U"
          else
					X=1
          fi
          #68左判定
          if [ "$V18" = "$U" ] && [ "$V28" = "$C" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V58="$U"
            V48="$U"
            V38="$U"
            V28="$U"
          elif [ "$V28" = "$U" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V58="$U"
            V48="$U"
            V38="$U"
          elif [ "$V38" = "$U" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V58="$U"
            V48="$U"
          elif [ "$V48" = "$U" ] && [ "$V58" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V58="$U"
          else
					X=1
          fi
          #68左上判定 ここまで
          if [ "$V13" = "$U" ] && [ "$V24" = "$C" ] && [ "$V35" = "$C" ] && [ "$V46" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V57="$U"
            V46="$U"
            V35="$U"
            V24="$U"
          elif [ "$V24" = "$U" ] && [ "$V35" = "$C" ] && [ "$V46" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V57="$U"
            V46="$U"
            V35="$U"
          elif [ "$V35" = "$U" ] && [ "$V46" = "$C" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V57="$U"
            V46="$U"
          elif [ "$V46" = "$U" ] && [ "$V57" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$U"
            V57="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #78 総合判定
        elif [ $U1 == 78 ] && [ "$V78" != "$U" ] && [ "$V78" != "$C" ]; then
          #78 上判定
          if [ "$V71" = "$U" ] && [ "$V72" = "$C" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V77="$U"
            V76="$U"
            V75="$U"
            V74="$U"
            V73="$U"
            V72="$U"
          elif [ "$V72" = "$U" ] && [ "$V73" = "$C" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V77="$U"
            V76="$U"
            V75="$U"
            V74="$U"
            V73="$U"
          elif [ "$V73" = "$U" ] && [ "$V74" = "$C" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V77="$U"
            V76="$U"
            V75="$U"
            V74="$U"
          elif [ "$V74" = "$U" ] && [ "$V75" = "$C" ] && [ "$V76" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V77="$U"
            V76="$U"
            V75="$U"
          elif [ "$V75" = "$U" ] && [ "$V76" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V77="$U"
            V76="$U"
          elif [ "$V76" = "$U" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V77="$U"
          else
					X=1
          fi
          #78左判定
          if [ "$V18" = "$U" ] && [ "$V28" = "$C" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V68="$U"
            V58="$U"
            V48="$U"
            V38="$U"
            V28="$U"
          elif [ "$V28" = "$U" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V68="$U"
            V58="$U"
            V48="$U"
            V38="$U"
          elif [ "$V38" = "$U" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V68="$U"
            V58="$U"
            V48="$U"
          elif [ "$V48" = "$U" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V68="$U"
            V58="$U"
          elif [ "$V58" = "$U" ] && [ "$V68" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V68="$U"
          else
					X=1
          fi
          #78左上判定
          if [ "$V12" = "$U" ] && [ "$V23" = "$C" ] && [ "$V34" = "$C" ] && [ "$V45" = "$C" ] && [ "$V56" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V67="$U"
            V56="$U"
            V45="$U"
            V34="$U"
            V23="$U"
          elif [ "$V23" = "$U" ] && [ "$V34" = "$C" ] && [ "$V45" = "$C" ] && [ "$V56" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V67="$U"
            V56="$U"
            V45="$U"
            V34="$U"
          elif [ "$V34" = "$U" ] && [ "$V45" = "$C" ] && [ "$V56" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V67="$U"
            V56="$U"
            V45="$U"
          elif [ "$V45" = "$U" ] && [ "$V56" = "$C" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V67="$U"
            V56="$U"
          elif [ "$V56" = "$U" ] && [ "$V67" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$U"
            V67="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #88 総合判定
        elif [ $U1 == 88 ] && [ "$V88" != "$U" ] && [ "$V88" != "$C" ]; then
          #88 上判定
          if [ "$V81" = "$U" ] && [ "$V82" = "$C" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] && [ "$V87" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V87="$U"
            V86="$U"
            V85="$U"
            V84="$U"
            V83="$U"
            V82="$U"
          elif [ "$V82" = "$U" ] && [ "$V83" = "$C" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] && [ "$V87" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V87="$U"
            V86="$U"
            V85="$U"
            V84="$U"
            V83="$U"
          elif [ "$V83" = "$U" ] && [ "$V84" = "$C" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] && [ "$V87" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V87="$U"
            V86="$U"
            V85="$U"
            V84="$U"
          elif [ "$V84" = "$U" ] && [ "$V85" = "$C" ] && [ "$V86" = "$C" ] && [ "$V87" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V87="$U"
            V86="$U"
            V85="$U"
          elif [ "$V85" = "$U" ] && [ "$V86" = "$C" ] && [ "$V87" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V87="$U"
            V86="$U"
          elif [ "$V86" = "$U" ] && [ "$V87" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V87="$U"
          else
					X=1
          fi
          #88左判定
          if [ "$V18" = "$U" ] && [ "$V28" = "$C" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] && [ "$V78" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V78="$U"
            V68="$U"
            V58="$U"
            V48="$U"
            V38="$U"
            V28="$U"
          elif [ "$V28" = "$U" ] && [ "$V38" = "$C" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] && [ "$V78" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V78="$U"
            V68="$U"
            V58="$U"
            V48="$U"
            V38="$U"
          elif [ "$V38" = "$U" ] && [ "$V48" = "$C" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] && [ "$V78" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V78="$U"
            V68="$U"
            V58="$U"
            V48="$U"
          elif [ "$V48" = "$U" ] && [ "$V58" = "$C" ] && [ "$V68" = "$C" ] && [ "$V78" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V78="$U"
            V68="$U"
            V58="$U"
          elif [ "$V58" = "$U" ] && [ "$V68" = "$C" ] && [ "$V78" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V78="$U"
            V68="$U"
          elif [ "$V68" = "$U" ] && [ "$V78" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V78="$U"
          else
					X=1
          fi
          #88左上判定
          if [ "$V11" = "$U" ] && [ "$V22" = "$C" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V77="$U"
            V66="$U"
            V55="$U"
            V44="$U"
            V33="$U"
            V22="$U"
          elif [ "$V22" = "$U" ] && [ "$V33" = "$C" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V77="$U"
            V66="$U"
            V55="$U"
            V44="$U"
            V33="$U"
          elif [ "$V33" = "$U" ] && [ "$V44" = "$C" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V77="$U"
            V66="$U"
            V55="$U"
            V44="$U"
          elif [ "$V44" = "$U" ] && [ "$V55" = "$C" ] && [ "$V66" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V77="$U"
            V66="$U"
            V55="$U"
          elif [ "$V55" = "$U" ] && [ "$V66" = "$C" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V77="$U"
            V66="$U"
          elif [ "$V66" = "$U" ] && [ "$V77" = "$C" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$U"
            V77="$U"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        echo "その場所には既に駒があるもしくは、ルール上置けない場所です"
        fi
        else
					X=1 #入力数値判定否の場合
            echo "正しい座標を入力してください"
        fi
    #----------------------------------------------------------------------------------------------------------------------
    done
  else
					X=1
    echo "駒黒が置ける場所がない為パスします"
  fi
  #----------------------------------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------------------------------
  clear
  table
  #----------------------------------------------------------------------------------------------------------------------
  #ユーザー不正入力判定初期化
  user_input_flag=0
  continue_flag_white=0
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #11 総合判定
    if [ "$V11" = " " ] ; then
      #11横判定
      if [ "$V81" = "$C" ] && [ "$V71" = "$U" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] && [ "$V21" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V71" = "$C" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] && [ "$V21" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V61" = "$C" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] && [ "$V21" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V51" = "$C" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] && [ "$V21" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V41" = "$C" ] && [ "$V31" = "$U" ] && [ "$V21" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V31" = "$C" ] && [ "$V21" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #11斜判定
      if [ "$V88" = "$C" ] && [ "$V77" = "$U" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V33" = "$U" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #11縦判定
      if [ "$V18" = "$C" ] && [ "$V17" = "$U" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] && [ "$V12" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V17" = "$C" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] && [ "$V12" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V16" = "$C" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] && [ "$V12" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V15" = "$C" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] && [ "$V12" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V14" = "$C" ] && [ "$V13" = "$U" ] && [ "$V12" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V13" = "$C" ] && [ "$V12" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #21 総合判定
    if [ "$V21" = " " ] ; then
      #21横判定
      if [ "$V81" = "$C" ] && [ "$V71" = "$U" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V71" = "$C" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V61" = "$C" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V51" = "$C" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V41" = "$C" ] && [ "$V31" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #21右下判定
      if [ "$V87" = "$C" ] && [ "$V76" = "$U" ] && [ "$V65" = "$U" ] && [ "$V54" = "$U" ] && [ "$V43" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V65" = "$U" ] && [ "$V54" = "$U" ] && [ "$V43" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V54" = "$U" ] && [ "$V43" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V43" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #21縦判定
      if [ "$V28" = "$C" ] && [ "$V27" = "$U" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V23" = "$U" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #31 総合判定
    if [ "$V31" = " " ] ; then
      #31右横判定
      if [ "$V81" = "$C" ] && [ "$V71" = "$U" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V71" = "$C" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V61" = "$C" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V51" = "$C" ] && [ "$V41" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #31右斜判定
      if [ "$V86" = "$C" ] && [ "$V75" = "$U" ] && [ "$V64" = "$U" ] && [ "$V53" = "$U" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V64" = "$U" ] && [ "$V53" = "$U" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V53" = "$U" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #31縦判定
      if [ "$V38" = "$C" ] && [ "$V37" = "$U" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V33" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #31左斜判定
      if [ "$V13" = "$C" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #31左横判定
      if [ "$V11" = "$C" ] && [ "$V21" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #41 総合判定
    if [ "$V41" = " " ] ; then
      #41右横判定
      if [ "$V81" = "$C" ] && [ "$V71" = "$U" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V71" = "$C" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V61" = "$C" ] && [ "$V51" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #41右下斜判定
      if [ "$V85" = "$C" ] && [ "$V74" = "$U" ] && [ "$V63" = "$U" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V63" = "$U" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #41縦判定
      if [ "$V48" = "$C" ] && [ "$V47" = "$U" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V43" = "$U" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #41左下判定
      if [ "$V14" = "$C" ] && [ "$V23" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #41左判定
      if [ "$V11" = "$C" ] && [ "$V21" = "$U" ] && [ "$V31" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V21" = "$C" ] && [ "$V31" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #---------------------------------------------------------------------------------------------------------------------------------------------------------------- 
    #51 総合判定
    if [ "$V51" = " " ] ; then
      #51右判定
      if [ "$V81" = "$C" ] && [ "$V71" = "$U" ] && [ "$V61" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V71" = "$C" ] && [ "$V61" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      else
					X=1
        X=1
      fi
      #51右下判定
      if [ "$V84" = "$C" ] && [ "$V73" = "$U" ] && [ "$V62" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V62" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      else
					X=1
        X=1
      fi
      #51縦判定
      if [ "$V58" = "$C" ] && [ "$V57" = "$U" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] && [ "$V52" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] && [ "$V52" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] && [ "$V52" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] && [ "$V52" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V53" = "$U" ] && [ "$V52" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V52" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      else
					X=1
        X=1
      fi
      #51左下判定
      if [ "$V15" = "$C" ] && [ "$V24" = "$U" ] && [ "$V33" = "$U" ] && [ "$V42" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V33" = "$U" ] && [ "$V42" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V42" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      else
					X=1
        X=1
      fi
      #51左判定
      if [ "$V11" = "$C" ] && [ "$V21" = "$U" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] ; then
        #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V21" = "$C" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] ; then
        #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V31" = "$C" ] && [ "$V41" = "$U" ] ; then
        #ひっくり返し実行
      continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #61 総合判定
    if [ "$V61" = " " ] ; then
      #61右判定
      if [ "$V81" = "$C" ] && [ "$V71" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      else
					X=1
        X=1
      fi
      #61右下判定
      if [ "$V83" = "$C" ] && [ "$V72" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      else
					X=1
        X=1
      fi
      #61縦判定
      if [ "$V68" = "$C" ] && [ "$V67" = "$U" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] && [ "$V62" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V63" = "$U" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
      continue_flag_white=1
      else
					X=1
        X=1
      fi
      #61左下判定
      if [ "$V16" = "$C" ] && [ "$V25" = "$U" ] && [ "$V34" = "$U" ] && [ "$V43" = "$U" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V34" = "$U" ] && [ "$V43" = "$U" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V43" = "$U" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
      continue_flag_white=1
      else
					X=1
        X=1
      fi
      #61左判定
      if [ "$V11" = "$C" ] && [ "$V21" = "$U" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V21" = "$C" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V31" = "$C" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      elif [ "$V41" = "$C" ] && [ "$V51" = "$U" ] ; then
      #ひっくり返し実行
      continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #71 総合判定
    if [ "$V71" = " " ] ; then
      #71縦判定
      if [ "$V78" = "$C" ] && [ "$V77" = "$U" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V73" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #71左下判定
      if [ "$V17" = "$C" ] && [ "$V26" = "$U" ] && [ "$V35" = "$U" ] && [ "$V44" = "$U" ] && [ "$V53" = "$U" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V35" = "$U" ] && [ "$V44" = "$U" ] && [ "$V53" = "$U" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V44" = "$U" ] && [ "$V53" = "$U" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V53" = "$U" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #71左判定
      if [ "$V11" = "$C" ] && [ "$V21" = "$U" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V21" = "$C" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V31" = "$C" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V41" = "$C" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V51" = "$C" ] && [ "$V61" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #81 総合判定
    if [ "$V81" = " " ] ; then
      #81縦判定
      if [ "$V88" = "$C" ] && [ "$V87" = "$U" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] && [ "$V82" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V87" = "$C" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] && [ "$V82" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V86" = "$C" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] && [ "$V82" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V85" = "$C" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] && [ "$V82" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V84" = "$C" ] && [ "$V83" = "$U" ] && [ "$V82" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V83" = "$C" ] && [ "$V82" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #81左下判定
      if [ "$V18" = "$C" ] && [ "$V27" = "$U" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V63" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #81左判定
      if [ "$V11" = "$C" ] && [ "$V21" = "$U" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] && [ "$V71" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V21" = "$C" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] && [ "$V71" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V31" = "$C" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] && [ "$V71" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V41" = "$C" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] && [ "$V71" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V51" = "$C" ] && [ "$V61" = "$U" ] && [ "$V71" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V61" = "$C" ] && [ "$V71" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #12 総合判定
    if [ "$V12" = " " ] ; then
      #12右判定
      if [ "$V82" = "$C" ] && [ "$V72" = "$U" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] && [ "$V22" = "$U" ] ; then
      #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] && [ "$V22" = "$U" ] ; then
      #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] && [ "$V22" = "$U" ] ; then
      #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] && [ "$V22" = "$U" ] ; then
      #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V32" = "$U" ] && [ "$V22" = "$U" ] ; then
      #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V22" = "$U" ] ; then
      #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #12右下判定
      if [ "$V78" = "$C" ] && [ "$V67" = "$U" ] && [ "$V56" = "$U" ] && [ "$V45" = "$U" ] && [ "$V34" = "$U" ] && [ "$V23" = "$U" ] ; then
      #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V56" = "$U" ] && [ "$V45" = "$U" ] && [ "$V34" = "$U" ] && [ "$V23" = "$U" ] ; then
      #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V45" = "$U" ] && [ "$V34" = "$U" ] && [ "$V23" = "$U" ] ; then
      #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V34" = "$U" ] && [ "$V23" = "$U" ] ; then
      #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V23" = "$U" ] ; then
      #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #12下判定
      if [ "$V18" = "$C" ] && [ "$V17" = "$U" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V17" = "$C" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V16" = "$C" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V15" = "$C" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V14" = "$C" ] && [ "$V13" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #22 総合判定
    if [ "$V22" = " " ] ; then
      #22右判定
      if [ "$V82" = "$C" ] && [ "$V72" = "$U" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #22右下判定
      if [ "$V88" = "$C" ] && [ "$V77" = "$U" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #22下判定
      if [ "$V28" = "$C" ] && [ "$V27" = "$U" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #32 総合判定
    if [ "$V32" = " " ] ; then
      #32右判定
      if [ "$V82" = "$C" ] && [ "$V72" = "$U" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #32右下判定
      if [ "$V87" = "$C" ] && [ "$V76" = "$U" ] && [ "$V65" = "$U" ] && [ "$V54" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V65" = "$U" ] && [ "$V54" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V54" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #32下判定
      if [ "$V38" = "$C" ] && [ "$V37" = "$U" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #32左下判定
      if [ "$V14" = "$C" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #32左判定
      if [ "$V12" = "$C" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #42 総合判定
    if [ "$V42" = " " ] ; then
      #42右判定
      if [ "$V82" = "$C" ] && [ "$V72" = "$U" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #42右下判定
      if [ "$V86" = "$C" ] && [ "$V75" = "$U" ] && [ "$V64" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V64" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #42下判定
      if [ "$V48" = "$C" ] && [ "$V47" = "$U" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #42左下判定
      if [ "$V15" = "$C" ] && [ "$V24" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #42左判定
      if [ "$V12" = "$C" ] && [ "$V22" = "$U" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V33" = "$U" ] ; then
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #52 総合判定
    if [ "$V52" = " " ] ; then
      #52右判定
      if [ "$V82" = "$C" ] && [ "$V72" = "$U" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #52右下判定
      if [ "$V85" = "$C" ] && [ "$V74" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #52下判定
      if [ "$V58" = "$C" ] && [ "$V57" = "$U" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #52左下判定
      if [ "$V16" = "$C" ] && [ "$V25" = "$U" ] && [ "$V34" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V34" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #52左判定
      if [ "$V12" = "$C" ] && [ "$V22" = "$U" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------  
    #62 総合判定
    if [ "$V62" = " " ] ; then
      #62右判定
      if [ "$V82" = "$C" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #62右下判定
      if [ "$V84" = "$C" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #62下判定
      if [ "$V68" = "$C" ] && [ "$V67" = "$U" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #62左下判定
      if [ "$V17" = "$C" ] && [ "$V26" = "$U" ] && [ "$V35" = "$U" ] && [ "$V44" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V35" = "$U" ] && [ "$V44" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V44" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #62左判定
      if [ "$V12" = "$C" ] && [ "$V22" = "$U" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------    
    #72 総合判定
    if [ "$V72" = " " ] ; then
      #72下判定
      if [ "$V78" = "$C" ] && [ "$V77" = "$U" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #72左下判定
      if [ "$V18" = "$C" ] && [ "$V27" = "$U" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #72左判定
      if [ "$V12" = "$C" ] && [ "$V22" = "$U" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ]; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ]; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ]; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V62" = "$U" ]; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #82 総合判定
    if [ "$V82" = " " ] ; then
      #82下判定
      if [ "$V88" = "$C" ] && [ "$V87" = "$U" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V87" = "$C" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V86" = "$C" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V85" = "$C" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V84" = "$C" ] && [ "$V83" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #82左下判定
      if [ "$V28" = "$C" ] && [ "$V37" = "$U" ] && [ "$V46" = "$U" ] && [ "$V55" = "$U" ] && [ "$V64" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V37" = "$" ] && [ "$V46" = "$U" ] && [ "$V55" = "$U" ] && [ "$V64" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V55" = "$U" ] && [ "$V64" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V64" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #82左判定
      if [ "$V12" = "$C" ] && [ "$V22" = "$U" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V62" = "$U" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #13 総合判定
    if [ "$V13" = " " ] ; then
      #13上判定
      if [ "$V11" = "$C" ] && [ "$V12" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #13右上判定
      if [ "$V31" = "$C" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #13右判定
      if [ "$V83" = "$C" ] && [ "$V73" = "$U" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V33" = "$U" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #13右下判定
      if [ "$V68" = "$C" ] && [ "$V57" = "$U" ] && [ "$V46" = "$U" ] && [ "$V35" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V46" = "$U" ] && [ "$V35" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V35" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #13下判定
      if [ "$V18" = "$C" ] && [ "$V17" = "$U" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V17" = "$C" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V16" = "$C" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V15" = "$C" ] && [ "$V14" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #23 総合判定
    if [ "$V23" = " " ] ; then
      #23上判定
      if [ "$V21" = "$C" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #23右上判定
      if [ "$V41" = "$C" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #23右判定
      if [ "$V83" = "$C" ] && [ "$V73" = "$U" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #23右下判定
      if [ "$V78" = "$C" ] && [ "$V67" = "$U" ] && [ "$V56" = "$U" ] && [ "$V45" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V56" = "$U" ] && [ "$V45" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V45" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #23下判定
      if [ "$V28" = "$C" ] && [ "$V27" = "$U" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #33 総合判定
    if [ "$V33" = " " ] ; then
      #33 上判定
      if [ "$V31" = "$C" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #33右上判定
      if [ "$V51" = "$C" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #33右判定 ここまで
      if [ "$V83" = "$C" ] && [ "$V73" = "$U" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #33右下判定
      if [ "$V88" = "$C" ] && [ "$V77" = "$U" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #33下判定
      if [ "$V38" = "$C" ] && [ "$V37" = "$U" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #33左下判定
      if [ "$V15" = "$C" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #33左判定
      if [ "$V13" = "$C" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #33左上判定
      if [ "$V11" = "$C" ] && [ "$V22" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #43 総合判定
    if [ "$V43" = " " ] ; then
      #43 上判定
      if [ "$V41" = "$C" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #43右上判定
      if [ "$V61" = "$C" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #43右判定
      if [ "$V83" = "$C" ] && [ "$V73" = "$U" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #43右下判定
      if [ "$V87" = "$C" ] && [ "$V76" = "$U" ] && [ "$V65" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V65" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #43下判定
      if [ "$V48" = "$C" ] && [ "$V47" = "$U" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #43左下判定
      if [ "$V16" = "$C" ] && [ "$V25" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #43左判定
      if [ "$V13" = "$C" ] && [ "$V23" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #43左上判定
      if [ "$V21" = "$C" ] && [ "$V32" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #53 総合判定
    if [ "$V53" = " " ] ; then
      #53 上判定
      if [ "$V51" = "$C" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #53右上判定
      if [ "$V71" = "$C" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #53右判定
      if [ "$V83" = "$C" ] && [ "$V73" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #53右下判定
      if [ "$V86" = "$C" ] && [ "$V75" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #53下判定
      if [ "$V58" = "$C" ] && [ "$V57" = "$U" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #53左下判定
      if [ "$V17" = "$C" ] && [ "$V26" = "$U" ] && [ "$V35" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V35" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #53左判定
      if [ "$V13" = "$C" ] && [ "$V23" = "$U" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #53左上判定
      if [ "$V31" = "$C" ] && [ "$V42" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #63 総合判定
    if [ "$V63" = " " ] ; then
      #63 上判定
      if [ "$V61" = "$C" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #63右上判定
      if [ "$V81" = "$C" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #63右判定
      if [ "$V83" = "$C" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #63右下判定
      if [ "$V85" = "$C" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #63下判定
      if [ "$V68" = "$C" ] && [ "$V67" = "$U" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #63左下判定
      if [ "$V18" = "$C" ] && [ "$V27" = "$U" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #63左判定
      if [ "$V13" = "$C" ] && [ "$V23" = "$U" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #63左上判定
      if [ "$V41" = "$C" ] && [ "$V52" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #73 総合判定
    if [ "$V73" = " " ] ; then
      #73 上判定
      if [ "$V71" = "$C" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #73下判定
      if [ "$V78" = "$C" ] && [ "$V77" = "$U" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #73左下判定
      if [ "$V28" = "$C" ] && [ "$V37" = "$U" ] && [ "$V46" = "$U" ] && [ "$V55" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V46" = "$U" ] && [ "$V55" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V55" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #73左判定
      if [ "$V13" = "$C" ] && [ "$V23" = "$U" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #73左上判定
      if [ "$V51" = "$C" ] && [ "$V62" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #83 総合判定
    if [ "$V83" = " " ] ; then
      #83 上判定
      if [ "$V81" = "$C" ] && [ "$V82" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #83下判定
      if [ "$V88" = "$C" ] && [ "$V87" = "$U" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V87" = "$C" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V86" = "$C" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V85" = "$C" ] && [ "$V84" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #83左下判定
      if [ "$V38" = "$C" ] && [ "$V47" = "$U" ] && [ "$V56" = "$U" ] && [ "$V65" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V56" = "$U" ] && [ "$V65" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V65" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #83左判定
      if [ "$V13" = "$C" ] && [ "$V23" = "$U" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V63" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #83左上判定
      if [ "$V61" = "$C" ] && [ "$V72" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #---------------------------------------------------------------------------------------------------------------------------------------------------------------- 
    #14 総合判定
    if [ "$V14" = " " ] ; then
      #14 上判定
      if [ "$V11" = "$C" ] && [ "$V12" = "$U" ] && [ "$V13" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V12" = "$C" ] && [ "$V13" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #14右上判定
      if [ "$V41" = "$C" ] && [ "$V32" = "$U" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #14右判定
      if [ "$V84" = "$C" ] && [ "$V74" = "$U" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V34" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #14右下判定
      if [ "$V58" = "$C" ] && [ "$V47" = "$U" ] && [ "$V36" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V36" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #14下判定
      if [ "$V18" = "$C" ] && [ "$V17" = "$U" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V17" = "$C" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V16" = "$C" ] && [ "$V15" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #24 総合判定
    if [ "$V24" = " " ] ; then
      #24 上判定
      if [ "$V21" = "$C" ] && [ "$V22" = "$U" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #24右上判定
      if [ "$V51" = "$C" ] && [ "$V42" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #24右判定
      if [ "$V84" = "$C" ] && [ "$V74" = "$U" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #24右下判定
      if [ "$V68" = "$C" ] && [ "$V57" = "$U" ] && [ "$V46" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V46" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #24下判定
      if [ "$V28" = "$C" ] && [ "$V27" = "$U" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #34 総合判定
    if [ "$V34" = " " ] ; then
      #34 上判定
      if [ "$V31" = "$C" ] && [ "$V32" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #34右上判定
      if [ "$V61" = "$C" ] && [ "$V52" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #34右判定
      if [ "$V84" = "$C" ] && [ "$V74" = "$U" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #34右下判定
      if [ "$V78" = "$C" ] && [ "$V67" = "$U" ] && [ "$V56" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V56" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #34下判定
      if [ "$V38" = "$C" ] && [ "$V37" = "$U" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #34左下判定
      if [ "$V16" = "$C" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #34左判定
      if [ "$V14" = "$C" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #34左上判定
      if [ "$V12" = "$C" ] && [ "$V23" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #44 総合判定
    if [ "$V44" = " " ] ; then
      #44 上判定
      if [ "$V41" = "$C" ] && [ "$V42" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #44右上判定
      if [ "$V71" = "$C" ] && [ "$V62" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #44右判定
      if [ "$V84" = "$C" ] && [ "$V74" = "$U" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #44右下判定
      if [ "$V88" = "$C" ] && [ "$V77" = "$U" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #44下判定
      if [ "$V48" = "$C" ] && [ "$V47" = "$U" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #44左下判定
      if [ "$V17" = "$C" ] && [ "$V26" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #44左判定
      if [ "$V14" = "$C" ] && [ "$V24" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #44左上判定
      if [ "$V11" = "$C" ] && [ "$V22" = "$U" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V33" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #54 総合判定
    if [ "$V54" = " " ] ; then
      #54 上判定
      if [ "$V51" = "$C" ] && [ "$V52" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #54右上判定
      if [ "$V81" = "$C" ] && [ "$V72" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #54右判定
      if [ "$V84" = "$C" ] && [ "$V74" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #54右下判定
      if [ "$V87" = "$C" ] && [ "$V76" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #54下判定
      if [ "$V58" = "$C" ] && [ "$V57" = "$U" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #54左下判定
      if [ "$V18" = "$C" ] && [ "$V27" = "$U" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #54左判定
      if [ "$V14" = "$C" ] && [ "$V24" = "$U" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #54左上判定
      if [ "$V21" = "$C" ] && [ "$V32" = "$U" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V43" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #64 総合判定
    if [ "$V64" = " " ] ; then
      #64 上判定
      if [ "$V61" = "$C" ] && [ "$V62" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #64右上判定
      if [ "$V82" = "$C" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #64右判定
      if [ "$V84" = "$C" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #64右下判定
      if [ "$V86" = "$C" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #64下判定
      if [ "$V68" = "$C" ] && [ "$V67" = "$U" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #64左下判定
      if [ "$V28" = "$C" ] && [ "$V37" = "$U" ] && [ "$V46" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V46" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #64左判定
      if [ "$V14" = "$C" ] && [ "$V24" = "$U" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #64左上判定
      if [ "$V31" = "$C" ] && [ "$V42" = "$U" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V53" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #74 総合判定
    if [ "$V74" = " " ] ; then
      #74 上判定
      if [ "$V71" = "$C" ] && [ "$V72" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #74下判定
      if [ "$V78" = "$C" ] && [ "$V77" = "$U" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #74左下判定
      if [ "$V38" = "$C" ] && [ "$V47" = "$U" ] && [ "$V56" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V56" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #74左判定
      if [ "$V14" = "$C" ] && [ "$V24" = "$U" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #74左上判定
      if [ "$V41" = "$C" ] && [ "$V52" = "$U" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V63" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #84 総合判定
    if [ "$V84" = " " ] ; then
      #84 上判定
      if [ "$V81" = "$C" ] && [ "$V82" = "$U" ] && [ "$V83" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V82" = "$C" ] && [ "$V83" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #84下判定
      if [ "$V88" = "$C" ] && [ "$V87" = "$U" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V87" = "$C" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V86" = "$C" ] && [ "$V85" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #84左下判定
      if [ "$V48" = "$C" ] && [ "$V57" = "$U" ] && [ "$V66" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V66" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #84左判定
      if [ "$V14" = "$C" ] && [ "$V24" = "$U" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V64" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #84左上判定
      if [ "$V51" = "$C" ] && [ "$V62" = "$U" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V73" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #15 総合判定
    if [ "$V15" = " " ] ; then
      #15 上判定
      if [ "$V11" = "$C" ] && [ "$V12" = "$U" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V12" = "$C" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V13" = "$C" ] && [ "$V14" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #15 右上判定
      if [ "$V51" = "$C" ] && [ "$V42" = "$U" ] && [ "$V33" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V33" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #15 右判定
      if [ "$V85" = "$C" ] && [ "$V75" = "$U" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V35" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #15 右下判定
      if [ "$V48" = "$C" ] && [ "$V37" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #15下判定
      if [ "$V18" = "$C" ] && [ "$V17" = "$U" ] && [ "$V16" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V17" = "$C" ] && [ "$V16" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #25 総合判定
    if [ "$V25" = " " ] ; then
      #25 上判定
      if [ "$V21" = "$C" ] && [ "$V22" = "$U" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #25 右上判定
      if [ "$V61" = "$C" ] && [ "$V52" = "$U" ] && [ "$V43" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V43" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #25 右判定
      if [ "$V85" = "$C" ] && [ "$V75" = "$U" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #25 右下判定
      if [ "$V58" = "$C" ] && [ "$V47" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #25下判定
      if [ "$V28" = "$C" ] && [ "$V27" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #35 総合判定
    if [ "$V35" = " " ] ; then
      #35 上判定
      if [ "$V31" = "$C" ] && [ "$V32" = "$U" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #35 右上判定
      if [ "$V71" = "$C" ] && [ "$V62" = "$U" ] && [ "$V53" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V53" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #35 右判定
      if [ "$V85" = "$C" ] && [ "$V75" = "$U" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #35 右下判定
      if [ "$V68" = "$C" ] && [ "$V57" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #35下判定
      if [ "$V38" = "$C" ] && [ "$V37" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #35 左下判定
      if [ "$V13" = "$C" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #35 左判定
      if [ "$V15" = "$C" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #35 左上判定
      if [ "$V13" = "$C" ] && [ "$V24" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #45 総合判定
    if [ "$V45" = " " ] ; then
      #45 上判定
      if [ "$V41" = "$C" ] && [ "$V42" = "$U" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #45 右上判定
      if [ "$V81" = "$C" ] && [ "$V72" = "$U" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #45 右判定
      if [ "$V85" = "$C" ] && [ "$V75" = "$U" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #45 右下判定
      if [ "$V78" = "$C" ] && [ "$V67" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #45下判定
      if [ "$V48" = "$C" ] && [ "$V47" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #45 左下判定
      if [ "$V18" = "$C" ] && [ "$V27" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #45 左判定
      if [ "$V15" = "$C" ] && [ "$V25" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #45 左上判定
      if [ "$V12" = "$C" ] && [ "$V23" = "$U" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V34" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #55 総合判定
    if [ "$V55" = " " ] ; then
      #55 上判定
      if [ "$V51" = "$C" ] && [ "$V52" = "$U" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #55 右上判定
      if [ "$V82" = "$C" ] && [ "$V73" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #55 右判定
      if [ "$V85" = "$C" ] && [ "$V75" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #55 右下判定
      if [ "$V88" = "$C" ] && [ "$V77" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #55下判定
      if [ "$V58" = "$C" ] && [ "$V57" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #55 左下判定
      if [ "$V28" = "$C" ] && [ "$V37" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #55 左判定
      if [ "$V15" = "$C" ] && [ "$V25" = "$U" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #55 左上判定
      if [ "$V11" = "$C" ] && [ "$V22" = "$U" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V44" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #65 総合判定
    if [ "$V65" = " " ] ; then
      #65 上判定
      if [ "$V61" = "$C" ] && [ "$V62" = "$U" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #65 右上判定
      if [ "$V83" = "$C" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #65 右判定
      if [ "$V85" = "$C" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #65 右下判定
      if [ "$V87" = "$C" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #65下判定
      if [ "$V68" = "$C" ] && [ "$V67" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #65 左下判定
      if [ "$V38" = "$C" ] && [ "$V47" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #65 左判定
      if [ "$V15" = "$C" ] && [ "$V25" = "$U" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V55" = "$U" ] ; then
          #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #65 左上判定
      if [ "$V21" = "$C" ] && [ "$V32" = "$U" ] && [ "$V43" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V43" = "$U" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V54" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #75 総合判定
    if [ "$V75" = " " ] ; then
      #75 上判定
      if [ "$V71" = "$C" ] && [ "$V72" = "$U" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #75下判定
      if [ "$V78" = "$C" ] && [ "$V77" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #75 左下判定
      if [ "$V48" = "$C" ] && [ "$V57" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #75 左判定
      if [ "$V15" = "$C" ] && [ "$V25" = "$U" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #75 左上判定
      if [ "$V31" = "$C" ] && [ "$V42" = "$U" ] && [ "$V53" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V53" = "$U" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V64" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #85 総合判定
    if [ "$V85" = " " ] ; then
      #85 上判定
      if [ "$V81" = "$C" ] && [ "$V82" = "$U" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V82" = "$C" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V83" = "$C" ] && [ "$V84" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #85下判定
      if [ "$V88" = "$C" ] && [ "$V87" = "$U" ] && [ "$V86" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V87" = "$C" ] && [ "$V86" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #85 左下判定
      if [ "$V48" = "$C" ] && [ "$V57" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #85 左判定
      if [ "$V15" = "$C" ] && [ "$V25" = "$U" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V65" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #85 左上判定
      if [ "$V41" = "$C" ] && [ "$V52" = "$U" ] && [ "$V63" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V63" = "$U" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V74" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #16 総合判定
    if [ "$V16" = " " ] ; then
      #16 上判定
      if [ "$V11" = "$C" ] && [ "$V12" = "$U" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V12" = "$C" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V13" = "$C" ] && [ "$V14" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #16 右上判定
      if [ "$V61" = "$C" ] && [ "$V52" = "$U" ] && [ "$V43" = "$U" ] && [ "$V34" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V43" = "$U" ] && [ "$V34" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V34" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #16 右判定
      if [ "$V86" = "$C" ] && [ "$V76" = "$U" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V36" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #16右下判定
      if [ "$V38" = "$C" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #16下判定
      if [ "$V18" = "$C" ] && [ "$V17" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #26 総合判定
    if [ "$V26" = " " ] ; then
      #26 上判定
      if [ "$V21" = "$C" ] && [ "$V22" = "$U" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #26 右上判定
      if [ "$V71" = "$C" ] && [ "$V62" = "$U" ] && [ "$V53" = "$U" ] && [ "$V44" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V53" = "$U" ] && [ "$V44" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V44" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #26 右判定
      if [ "$V86" = "$C" ] && [ "$V76" = "$U" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #26右下判定
      if [ "$V48" = "$C" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #26下判定
      if [ "$V28" = "$C" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #36 総合判定
    if [ "$V36" = " " ] ; then
      #36 上判定
      if [ "$V31" = "$C" ] && [ "$V32" = "$U" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #36 右上判定
      if [ "$V81" = "$C" ] && [ "$V72" = "$U" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #36 右判定
      if [ "$V86" = "$C" ] && [ "$V76" = "$U" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #36右下判定
      if [ "$V58" = "$C" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #36下判定
      if [ "$V38" = "$C" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #36左下判定
      if [ "$V18" = "$C" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #36左判定
      if [ "$V16" = "$C" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #36左上判定
      if [ "$V14" = "$C" ] && [ "$V25" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #46 総合判定
    if [ "$V46" = " " ] ; then
      #46 上判定
      if [ "$V41" = "$C" ] && [ "$V42" = "$U" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #46 右上判定
      if [ "$V82" = "$C" ] && [ "$V73" = "$U" ] && [ "$V64" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V64" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #46 右判定
      if [ "$V86" = "$C" ] && [ "$V76" = "$U" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #46右下判定
      if [ "$V68" = "$C" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #46下判定
      if [ "$V48" = "$C" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #46左下判定
      if [ "$V28" = "$C" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #46左判定
      if [ "$V16" = "$C" ] && [ "$V26" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #46左上判定
      if [ "$V13" = "$C" ] && [ "$V24" = "$U" ] && [ "$V35" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #56 総合判定
    if [ "$V56" = " " ] ; then
      #56 上判定
      if [ "$V51" = "$C" ] && [ "$V52" = "$U" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #56 右上判定
      if [ "$V83" = "$C" ] && [ "$V74" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #56 右判定
      if [ "$V86" = "$C" ] && [ "$V76" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #56右下判定
      if [ "$V78" = "$C" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #56下判定
      if [ "$V58" = "$C" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #56左下判定
      if [ "$V38" = "$C" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #56左判定
      if [ "$V16" = "$C" ] && [ "$V26" = "$U" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #56左上判定
      if [ "$V12" = "$C" ] && [ "$V23" = "$U" ] && [ "$V34" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V34" = "$U" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V45" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #66 総合判定
    if [ "$V66" = " " ] ; then
      #66 上判定
      if [ "$V61" = "$C" ] && [ "$V62" = "$U" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #66 右上判定
      if [ "$V84" = "$C" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #66 右判定
      if [ "$V86" = "$C" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #66右下判定
      if [ "$V88" = "$C" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #66下判定
      if [ "$V68" = "$C" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #66左下判定
      if [ "$V48" = "$C" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #66左判定
      if [ "$V16" = "$C" ] && [ "$V26" = "$U" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #66左上判定
      if [ "$V11" = "$C" ] && [ "$V22" = "$U" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V55" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #76 総合判定
    if [ "$V76" = " " ] ; then
      #76 上判定
      if [ "$V71" = "$C" ] && [ "$V72" = "$U" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #76下判定
      if [ "$V78" = "$C" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #76左下判定
      if [ "$V58" = "$C" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #76左判定
      if [ "$V16" = "$C" ] && [ "$V26" = "$U" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #76左上判定
      if [ "$V21" = "$C" ] && [ "$V32" = "$U" ] && [ "$V43" = "$U" ] && [ "$V54" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V43" = "$U" ] && [ "$V54" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V54" = "$U" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #86 総合判定
    if [ "$V86" = " " ] ; then
      #86 上判定
      if [ "$V81" = "$C" ] && [ "$V82" = "$U" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V82" = "$C" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V83" = "$C" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V84" = "$C" ] && [ "$V85" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #86下判定
      if [ "$V88" = "$C" ] && [ "$V87" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #86左下判定
      if [ "$V68" = "$C" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #86左判定
      if [ "$V16" = "$C" ] && [ "$V26" = "$U" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V66" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #86左上判定
      if [ "$V31" = "$C" ] && [ "$V42" = "$U" ] && [ "$V53" = "$U" ] && [ "$V64" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V53" = "$U" ] && [ "$V64" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V64" = "$U" ] && [ "$V75" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V65" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #17 総合判定
    if [ "$V17" = " " ] ; then
      #17 上判定
      if [ "$V11" = "$C" ] && [ "$V12" = "$U" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V12" = "$C" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V13" = "$C" ] && [ "$V14" = "$U" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V14" = "$C" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V15" = "$C" ] && [ "$V16" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #17右上判定
      if [ "$V71" = "$C" ] && [ "$V62" = "$U" ] && [ "$V53" = "$U" ] && [ "$V44" = "$U" ] && [ "$V35" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V53" = "$U" ] && [ "$V44" = "$U" ] && [ "$V35" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V44" = "$U" ] && [ "$V35" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V35" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #17右判定
      if [ "$V87" = "$C" ] && [ "$V77" = "$U" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V37" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #27 総合判定
    if [ "$V27" = " " ] ; then
      #27 上判定
      if [ "$V21" = "$C" ] && [ "$V22" = "$U" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #27右上判定
      if [ "$V81" = "$C" ] && [ "$V72" = "$U" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #27右判定
      if [ "$V87" = "$C" ] && [ "$V77" = "$U" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #37 総合判定
    if [ "$V37" = " " ] ; then
      #37 上判定
      if [ "$V31" = "$C" ] && [ "$V32" = "$U" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #37右上判定
      if [ "$V82" = "$C" ] && [ "$V73" = "$U" ] && [ "$V64" = "$U" ] && [ "$V55" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V64" = "$U" ] && [ "$V55" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V55" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #37右判定
      if [ "$V87" = "$C" ] && [ "$V77" = "$U" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #37左判定
      if [ "$V17" = "$C" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #37左上判定
      if [ "$V15" = "$C" ] && [ "$V26" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #47 総合判定
    if [ "$V47" = " " ] ; then
      #47 上判定
      if [ "$V41" = "$C" ] && [ "$V42" = "$U" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #47右上判定
      if [ "$V83" = "$C" ] && [ "$V74" = "$U" ] && [ "$V65" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V65" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #47右判定
      if [ "$V87" = "$C" ] && [ "$V77" = "$U" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #47左判定
      if [ "$V17" = "$C" ] && [ "$V27" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #47左上判定
      if [ "$V14" = "$C" ] && [ "$V25" = "$U" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V36" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #57 総合判定
    if [ "$V57" = " " ] ; then
      #57 上判定
      if [ "$V51" = "$C" ] && [ "$V52" = "$U" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #57右上判定
      if [ "$V84" = "$C" ] && [ "$V75" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #57右判定
      if [ "$V87" = "$C" ] && [ "$V77" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V77" = "$C" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #57左判定
      if [ "$V17" = "$C" ] && [ "$V27" = "$U" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #57左上判定
      if [ "$V13" = "$C" ] && [ "$V24" = "$U" ] && [ "$V35" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V35" = "$U" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V46" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #67 総合判定
    if [ "$V67" = " " ] ; then
      #67 上判定
      if [ "$V61" = "$C" ] && [ "$V62" = "$U" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #67右上判定
      if [ "$V85" = "$C" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #67右判定
      if [ "$V87" = "$C" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #67左判定
      if [ "$V17" = "$C" ] && [ "$V27" = "$U" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #67左上判定
      if [ "$V12" = "$C" ] && [ "$V23" = "$U" ] && [ "$V34" = "$U" ] && [ "$V45" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V34" = "$U" ] && [ "$V45" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V45" = "$U" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V56" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #77 総合判定
    if [ "$V77" = " " ] ; then
      #77 上判定
      if [ "$V71" = "$C" ] && [ "$V72" = "$U" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #77左判定
      if [ "$V17" = "$C" ] && [ "$V27" = "$U" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #77左上判定
      if [ "$V11" = "$C" ] && [ "$V22" = "$U" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V66" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #87 総合判定
    if [ "$V87" = " " ] ; then
      #87 上判定
      if [ "$V81" = "$C" ] && [ "$V82" = "$U" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V82" = "$C" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V83" = "$C" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V84" = "$C" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V85" = "$C" ] && [ "$V86" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #87左判定
      if [ "$V17" = "$C" ] && [ "$V27" = "$U" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V27" = "$C" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V37" = "$C" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V47" = "$C" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V57" = "$C" ] && [ "$V67" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V67" = "$C" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #87左上判定
      if [ "$V21" = "$C" ] && [ "$V32" = "$U" ] && [ "$V43" = "$U" ] && [ "$V54" = "$U" ] && [ "$V65" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V32" = "$C" ] && [ "$V43" = "$U" ] && [ "$V54" = "$U" ] && [ "$V65" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V54" = "$U" ] && [ "$V65" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V65" = "$U" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V76" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #18 総合判定
    if [ "$V18" = " " ] ; then
      #18 上判定
      if [ "$V11" = "$C" ] && [ "$V12" = "$U" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] && [ "$V17" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V12" = "$C" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] && [ "$V17" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V13" = "$C" ] && [ "$V14" = "$U" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] && [ "$V17" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V14" = "$C" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] && [ "$V17" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V15" = "$C" ] && [ "$V16" = "$U" ] && [ "$V17" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V16" = "$C" ] && [ "$V17" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #18右上判定
      if [ "$V81" = "$C" ] && [ "$V72" = "$U" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V36" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
      #18右判定
      if [ "$V88" = "$C" ] && [ "$V78" = "$U" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] && [ "$V28" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V78" = "$C" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] && [ "$V28" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V68" = "$C" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] && [ "$V28" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V58" = "$C" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] && [ "$V28" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V48" = "$C" ] && [ "$V38" = "$U" ] && [ "$V28" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      elif [ "$V38" = "$C" ] && [ "$V28" = "$U" ] ; then
        #ひっくり返し実行
          continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #28 総合判定
    if [ "$V28" = " " ] ; then
      #28 上判定 途中
      if [ "$V21" = "$C" ] && [ "$V22" = "$U" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V26" = "$U" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #28右上判定
      if [ "$V82" = "$C" ] && [ "$V73" = "$U" ] && [ "$V64" = "$U" ] && [ "$V55" = "$U" ] && [ "$V46" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V64" = "$U" ] && [ "$V55" = "$U" ] && [ "$V46" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V55" = "$U" ] && [ "$V46" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V46" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #28右判定
      if [ "$V88" = "$C" ] && [ "$V78" = "$U" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V78" = "$C" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V68" = "$C" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V58" = "$C" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V48" = "$C" ] && [ "$V38" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #38 総合判定
    if [ "$V38" = " " ] ; then
      #38 上判定 途中
      if [ "$V31" = "$C" ] && [ "$V32" = "$U" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V32" = "$U" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$U" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$U" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$U" ] && [ "$V36" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #38右上判定
      if [ "$V83" = "$C" ] && [ "$V74" = "$U" ] && [ "$V65" = "$U" ] && [ "$V56" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V65" = "$U" ] && [ "$V56" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V56" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #38右判定
      if [ "$V88" = "$C" ] && [ "$V78" = "$U" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V78" = "$C" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V68" = "$C" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V58" = "$C" ] && [ "$V48" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #38左判定
      if [ "$V18" = "$C" ] && [ "$V28" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #38左上判定
      if [ "$V16" = "$C" ] && [ "$V27" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #48 総合判定
    if [ "$V48" = " " ] ; then
      #48 上判定 途中
      if [ "$V41" = "$C" ] && [ "$V42" = "$U" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V42" = "$C" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V43" = "$C" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V46" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #48右上判定
      if [ "$V84" = "$C" ] && [ "$V75" = "$U" ] && [ "$V66" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V66" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #48右判定
      if [ "$V88" = "$C" ] && [ "$V78" = "$U" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V78" = "$C" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V68" = "$C" ] && [ "$V58" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #48左判定
      if [ "$V18" = "$C" ] && [ "$V28" = "$U" ] && [ "$V38" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V28" = "$C" ] && [ "$V38" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #48左上判定
      if [ "$V15" = "$C" ] && [ "$V26" = "$U" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V26" = "$C" ] && [ "$V37" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #58 総合判定
    if [ "$V58" = " " ] ; then
      #58 上判定
      if [ "$V51" = "$C" ] && [ "$V52" = "$U" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V52" = "$C" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V53" = "$C" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V54" = "$C" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V56" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #58右上判定
      if [ "$V85" = "$C" ] && [ "$V76" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #58右判定
      if [ "$V88" = "$C" ] && [ "$V78" = "$U" ] && [ "$V68" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V78" = "$C" ] && [ "$V68" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #58左判定
      if [ "$V18" = "$C" ] && [ "$V28" = "$U" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V28" = "$C" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V38" = "$C" ] && [ "$V48" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #58左上判定 ここまで
      if [ "$V14" = "$C" ] && [ "$V25" = "$U" ] && [ "$V36" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V25" = "$C" ] && [ "$V36" = "$U" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V36" = "$C" ] && [ "$V47" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #68 総合判定
    if [ "$V68" = " " ] ; then
      #68 上判定
      if [ "$V61" = "$C" ] && [ "$V62" = "$U" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V62" = "$C" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V63" = "$C" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V64" = "$C" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V65" = "$C" ] && [ "$V66" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #68右上判定
      if [ "$V86" = "$C" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #68右判定
      if [ "$V88" = "$C" ] && [ "$V78" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #68左判定
      if [ "$V18" = "$C" ] && [ "$V28" = "$U" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V28" = "$C" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V38" = "$C" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V48" = "$C" ] && [ "$V58" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #68左上判定 ここまで
      if [ "$V13" = "$C" ] && [ "$V24" = "$U" ] && [ "$V35" = "$U" ] && [ "$V46" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V24" = "$C" ] && [ "$V35" = "$U" ] && [ "$V46" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V35" = "$C" ] && [ "$V46" = "$U" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V46" = "$C" ] && [ "$V57" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #78 総合判定
    if [ "$V78" = " " ] ; then
      #78 上判定
      if [ "$V71" = "$C" ] && [ "$V72" = "$U" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V72" = "$C" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V73" = "$C" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V74" = "$C" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V75" = "$C" ] && [ "$V76" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V76" = "$C" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #78左判定
      if [ "$V18" = "$C" ] && [ "$V28" = "$U" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V28" = "$C" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V38" = "$C" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V48" = "$C" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V58" = "$C" ] && [ "$V68" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #78左上判定
      if [ "$V12" = "$C" ] && [ "$V23" = "$U" ] && [ "$V34" = "$U" ] && [ "$V45" = "$U" ] && [ "$V56" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V23" = "$C" ] && [ "$V34" = "$U" ] && [ "$V45" = "$U" ] && [ "$V56" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V34" = "$C" ] && [ "$V45" = "$U" ] && [ "$V56" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V45" = "$C" ] && [ "$V56" = "$U" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V56" = "$C" ] && [ "$V67" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #88 総合判定
    if [ "$V88" = " " ] ; then
      #88 上判定
      if [ "$V81" = "$C" ] && [ "$V82" = "$U" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] && [ "$V87" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V82" = "$C" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] && [ "$V87" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V83" = "$C" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] && [ "$V87" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V84" = "$C" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] && [ "$V87" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V85" = "$C" ] && [ "$V86" = "$U" ] && [ "$V87" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V86" = "$C" ] && [ "$V87" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #88左判定
      if [ "$V18" = "$C" ] && [ "$V28" = "$U" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] && [ "$V78" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V28" = "$C" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] && [ "$V78" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V38" = "$C" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] && [ "$V78" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V48" = "$C" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] && [ "$V78" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V58" = "$C" ] && [ "$V68" = "$U" ] && [ "$V78" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V68" = "$C" ] && [ "$V78" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
      #88左上判定
      if [ "$V11" = "$C" ] && [ "$V22" = "$U" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V22" = "$C" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V33" = "$C" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V44" = "$C" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V55" = "$C" ] && [ "$V66" = "$U" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      elif [ "$V66" = "$C" ] && [ "$V77" = "$U" ] ; then
        #ひっくり返し実行
        continue_flag_white=1
      else
					X=1
        X=1
      fi
    else
					X=1
      X=1
    fi
    #----------------------------------------------------------------------------------------------------------------------------------------------------------------
    #場所無しスキップフラグ
    if [ $continue_flag_white = 1 ] ; then
    #座標入力待　白
    while [ $user_input_flag -eq 0 ] #0なら繰り返し
    do
      echo "ユーザー2  駒白　座標を入力してください"
      read U2
      if [ "$U2" == 11 ] || [ "$U2" == 12 ] || [ "$U2" == 13 ] || [ "$U2" == 14 ] || [ "$U2" == 15 ] || [ "$U2" == 16 ] || [ "$U2" == 17 ] || [ "$U2" == 18 ] ||
      [ "$U2" == 21 ] || [ "$U2" == 22 ] || [ "$U2" == 23 ] || [ "$U2" == 24 ] || [ "$U2" == 25 ] || [ "$U2" == 26 ] || [ "$U2" == 27 ] || [ "$U2" == 28 ] ||
      [ "$U2" == 31 ] || [ "$U2" == 32 ] || [ "$U2" == 33 ] || [ "$U2" == 34 ] || [ "$U2" == 35 ] || [ "$U2" == 36 ] || [ "$U2" == 37 ] || [ "$U2" == 38 ] ||
      [ "$U2" == 41 ] || [ "$U2" == 42 ] || [ "$U2" == 43 ] || [ "$U2" == 44 ] || [ "$U2" == 45 ] || [ "$U2" == 46 ] || [ "$U2" == 47 ] || [ "$U2" == 48 ] ||
      [ "$U2" == 51 ] || [ "$U2" == 52 ] || [ "$U2" == 53 ] || [ "$U2" == 54 ] || [ "$U2" == 55 ] || [ "$U2" == 56 ] || [ "$U2" == 57 ] || [ "$U2" == 58 ] ||
      [ "$U2" == 61 ] || [ "$U2" == 62 ] || [ "$U2" == 63 ] || [ "$U2" == 64 ] || [ "$U2" == 65 ] || [ "$U2" == 66 ] || [ "$U2" == 67 ] || [ "$U2" == 68 ] ||
      [ "$U2" == 71 ] || [ "$U2" == 72 ] || [ "$U2" == 73 ] || [ "$U2" == 74 ] || [ "$U2" == 75 ] || [ "$U2" == 76 ] || [ "$U2" == 77 ] || [ "$U2" == 78 ] ||
      [ "$U2" == 81 ] || [ "$U2" == 82 ] || [ "$U2" == 83 ] || [ "$U2" == 84 ] || [ "$U2" == 85 ] || [ "$U2" == 86 ] || [ "$U2" == 87 ] || [ "$U2" == 88 ] ; then
        #メインロジック
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #11 総合判定
        if [ $U2 == 11 ] && [ "$V11" != "$C" ] && [ "$V11" != "$U" ] ; then
          #11横判定
          if [ "$V81" = "$C" ] && [ "$V71" = "$U" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] && [ "$V21" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V21="$C"
            V31="$C"
            V41="$C"
            V51="$C"
            V61="$C"
            V71="$C"
          elif [ "$V71" = "$C" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] && [ "$V21" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V21="$C"
            V31="$C"
            V41="$C"
            V51="$C"
            V61="$C"
          elif [ "$V61" = "$C" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] && [ "$V21" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V21="$C"
            V31="$C"
            V41="$C"
            V51="$C"
          elif [ "$V51" = "$C" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] && [ "$V21" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V21="$C"
            V31="$C"
            V41="$C"
          elif [ "$V41" = "$C" ] && [ "$V31" = "$U" ] && [ "$V21" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V21="$C"
            V31="$C"
            user_input_flag=1
          elif [ "$V31" = "$C" ] && [ "$V21" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V21="$C"
          else
					X=1
          fi
          #11斜判定
          if [ "$V88" = "$C" ] && [ "$V77" = "$U" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V22="$C"
            V33="$C"
            V44="$C"
            V55="$C"
            V66="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V22="$C"
            V33="$C"
            V44="$C"
            V55="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V22="$C"
            V33="$C"
            V44="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V22="$C"
            V33="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V33" = "$U" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V22="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V22="$C"
          else
					X=1
          fi
          #11縦判定
          if [ "$V18" = "$C" ] && [ "$V17" = "$U" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] && [ "$V12" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V12="$C"
            V13="$C"
            V14="$C"
            V15="$C"
            V16="$C"
            V17="$C"
          elif [ "$V17" = "$C" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] && [ "$V12" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V12="$C"
            V13="$C"
            V14="$C"
            V15="$C"
            V16="$C"
          elif [ "$V16" = "$C" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] && [ "$V12" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V12="$C"
            V13="$C"
            V14="$C"
            V15="$C"
          elif [ "$V15" = "$C" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] && [ "$V12" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V12="$C"
            V13="$C"
            V14="$C"
          elif [ "$V14" = "$C" ] && [ "$V13" = "$U" ] && [ "$V12" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V12="$C"
            V13="$C"
          elif [ "$V13" = "$C" ] && [ "$V12" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V11="$C"
            V12="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #21 総合判定
        elif [ $U2 == 21 ] && [ "$V21" != "$C" ] && [ "$V21" != "$U" ] ; then
          #21右判定
          if [ "$V81" = "$C" ] && [ "$V71" = "$U" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V31="$C"
            V41="$C"
            V51="$C"
            V61="$C"
            V71="$C"
          elif [ "$V71" = "$C" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V31="$C"
            V41="$C"
            V51="$C"
            V61="$C"
          elif [ "$V61" = "$C" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V31="$C"
            V41="$C"
            V51="$C"
          elif [ "$V51" = "$C" ] && [ "$V41" = "$U" ] && [ "$V31" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V31="$C"
            V41="$C"
          elif [ "$V41" = "$C" ] && [ "$V31" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V31="$C"
          else
					X=1
          fi
          #21右下判定
          if [ "$V87" = "$C" ] && [ "$V76" = "$U" ] && [ "$V65" = "$U" ] && [ "$V54" = "$U" ] && [ "$V43" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V32="$C"
            V43="$C"
            V54="$C"
            V65="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V65" = "$U" ] && [ "$V54" = "$U" ] && [ "$V43" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V32="$C"
            V43="$C"
            V54="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V54" = "$U" ] && [ "$V43" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V32="$C"
            V43="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V43" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V32="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V32="$C"
          else
					X=1
          fi
          #21下判定
          if [ "$V28" = "$C" ] && [ "$V27" = "$U" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V22="$C"
            V23="$C"
            V24="$C"
            V25="$C"
            V26="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V22="$C"
            V23="$C"
            V24="$C"
            V25="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V22="$C"
            V23="$C"
            V24="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V22="$C"
            V23="$C"
            V24="$C"
          elif [ "$V24" = "$C" ] && [ "$V23" = "$U" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V22="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V21="$C"
            V22="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #31 総合判定
        elif [ $U2 == 31 ] && [ "$V31" != "$C" ] && [ "$V31" != "$U" ] ; then
          #31右横判定
          if [ "$V81" = "$C" ] && [ "$V71" = "$U" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V41="$C"
            V51="$C"
            V61="$C"
            V71="$C"
          elif [ "$V71" = "$C" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V41="$C"
            V51="$C"
            V61="$C"
          elif [ "$V61" = "$C" ] && [ "$V51" = "$U" ] && [ "$V41" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V41="$C"
            V51="$C"
          elif [ "$V51" = "$C" ] && [ "$V41" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V41="$C"
          else
					X=1
          fi
          #31右斜判定
          if [ "$V86" = "$C" ] && [ "$V75" = "$U" ] && [ "$V64" = "$U" ] && [ "$V53" = "$U" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V42="$C"
            V53="$C"
            V64="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V64" = "$U" ] && [ "$V53" = "$U" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V42="$C"
            V53="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V53" = "$U" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V42="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V42="$C"
          else
					X=1
          fi
          #31縦判定
          if [ "$V38" = "$C" ] && [ "$V37" = "$U" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V32="$C"
            V33="$C"
            V34="$C"
            V35="$C"
            V36="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V32="$C"
            V33="$C"
            V34="$C"
            V35="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V32="$C"
            V33="$C"
            V34="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V32="$C"
            V33="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V33" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V32="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V32="$C"
          else
					X=1
          fi
          #31左斜判定
          if [ "$V13" = "$C" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V22="$C"
          else
					X=1
          fi
          #31左横判定
          if [ "$V11" = "$C" ] && [ "$V21" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V31="$C"
            V21="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #41 総合判定
        elif [ $U2 == 41 ] && [ "$V41" != "$C" ] && [ "$V41" != "$U" ] ; then
          #41右横判定
          if [ "$V81" = "$C" ] && [ "$V71" = "$U" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V51="$C"
            V61="$C"
            V71="$C"
          elif [ "$V71" = "$C" ] && [ "$V61" = "$U" ] && [ "$V51" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V51="$C"
            V61="$C"
          elif [ "$V61" = "$C" ] && [ "$V51" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V51="$C"
          else
					X=1
          fi
          #41右下斜判定
          if [ "$V85" = "$C" ] && [ "$V74" = "$U" ] && [ "$V63" = "$U" ] && [ "$V52" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V52="$C"
            V63="$C"
            V74="$C"
          elif [ "$V74" = "$C" ] && [ "$V63" = "$U" ] && [ "$V52" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V52="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V52" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V52="$C"
          else
					X=1
          fi
          #41縦判定
          if [ "$V48" = "$C" ] && [ "$V47" = "$U" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V42="$C"
            V43="$C"
            V44="$C"
            V45="$C"
            V46="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V42="$C"
            V43="$C"
            V44="$C"
            V45="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V42="$C"
            V43="$C"
            V44="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V42="$C"
            V43="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V43" = "$U" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V42="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V42="$C"
          else
					X=1
          fi
          #41左下判定
          if [ "$V14" = "$C" ] && [ "$V23" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V32="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V32="$C"
          else
					X=1
          fi
          #41左判定
          if [ "$V11" = "$C" ] && [ "$V21" = "$U" ] && [ "$V31" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V31="$C"
            V21="$C"
          elif [ "$V21" = "$C" ] && [ "$V31" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V31="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #51 総合判定
        elif [ "$U2" == 51 ] && [ "$V51" != "$C" ] && [ "$V51" != "$U" ] ; then
            #51右判定
            if [ "$V81" = "$C" ] && [ "$V71" = "$U" ] && [ "$V61" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V61="$C"
              V71="$C"
            elif [ "$V71" = "$C" ] && [ "$V61" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V61="$C"
            else
					X=1
            fi
            #51右下判定
            if [ "$V84" = "$C" ] && [ "$V73" = "$U" ] && [ "$V62" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V62="$C"
              V73="$C"
            elif [ "$V73" = "$C" ] && [ "$V62" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V62="$C"
            else
					X=1
            fi
            #51縦判定
            if [ "$V58" = "$C" ] && [ "$V57" = "$U" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] && [ "$V52" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V52="$C"
              V53="$C"
              V54="$C"
              V55="$C"
              V56="$C"
              V57="$C"
            elif [ "$V57" = "$C" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] && [ "$V52" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V52="$C"
              V53="$C"
              V54="$C"
              V55="$C"
              V56="$C"
            elif [ "$V56" = "$C" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] && [ "$V52" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V52="$C"
              V53="$C"
              V54="$C"
              V55="$C"
            elif [ "$V55" = "$C" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] && [ "$V52" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V52="$C"
              V53="$C"
              V54="$C"
            elif [ "$V54" = "$C" ] && [ "$V53" = "$U" ] && [ "$V52" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V52="$C"
              V53="$C"
            elif [ "$V53" = "$C" ] && [ "$V52" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V52="$C"
            else
					X=1
            fi
            #51左下判定
            if [ "$V15" = "$C" ] && [ "$V24" = "$U" ] && [ "$V33" = "$U" ] && [ "$V42" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V42="$C"
              V33="$C"
              V24="$C"
            elif [ "$V24" = "$C" ] && [ "$V33" = "$U" ] && [ "$V42" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V42="$C"
              V33="$C"
            elif [ "$V33" = "$C" ] && [ "$V42" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V42="$C"
            else
					X=1
            fi
            #51左判定
            if [ "$V11" = "$C" ] && [ "$V21" = "$U" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V41="$C"
              V31="$C"
              V21="$C"
            elif [ "$V21" = "$C" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V41="$C"
              V31="$C"
            elif [ "$V31" = "$C" ] && [ "$V41" = "$U" ] ; then
              #ひっくり返し実行
            user_input_flag=1
              V51="$C"
              V41="$C"
            else
					X=1
            fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #61 総合判定
        elif [ $U2 == 61 ] && [ "$V61" != "$C" ] && [ "$V61" != "$U" ] ; then
              #61右判定
              if [ "$V81" = "$C" ] && [ "$V71" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V71="$C"
              else
					X=1
              fi
              #61右下判定
              if [ "$V83" = "$C" ] && [ "$V72" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V72="$C"
              else
					X=1
              fi
              #61縦判定
              if [ "$V68" = "$C" ] && [ "$V67" = "$U" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] && [ "$V62" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V62="$C"
                V63="$C"
                V64="$C"
                V65="$C"
                V66="$C"
                V67="$C"
              elif [ "$V67" = "$C" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] && [ "$V62" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V62="$C"
                V63="$C"
                V64="$C"
                V65="$C"
                V66="$C"
              elif [ "$V66" = "$C" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] && [ "$V62" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V62="$C"
                V63="$C"
                V64="$C"
                V65="$C"
              elif [ "$V65" = "$C" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] && [ "$V62" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V62="$C"
                V63="$C"
                V64="$C"
              elif [ "$V64" = "$C" ] && [ "$V63" = "$U" ] && [ "$V62" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V62="$C"
                V63="$C"
              elif [ "$V63" = "$C" ] && [ "$V62" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V62="$C"
              else
					X=1
              fi
              #61左下判定
              if [ "$V16" = "$C" ] && [ "$V25" = "$U" ] && [ "$V34" = "$U" ] && [ "$V43" = "$U" ] && [ "$V52" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V52="$C"
                V43="$C"
                V34="$C"
                V25="$C"
              elif [ "$V25" = "$C" ] && [ "$V34" = "$U" ] && [ "$V43" = "$U" ] && [ "$V52" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V52="$C"
                V43="$C"
                V34="$C"
              elif [ "$V34" = "$C" ] && [ "$V43" = "$U" ] && [ "$V52" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V52="$C"
                V43="$C"
              elif [ "$V43" = "$C" ] && [ "$V52" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V52="$C"
              else
					X=1
              fi
              #61左判定
              if [ "$V11" = "$C" ] && [ "$V21" = "$U" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V51="$C"
                V41="$C"
                V31="$C"
                V21="$C"
              elif [ "$V21" = "$C" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V51="$C"
                V41="$C"
                V31="$C"
              elif [ "$V31" = "$C" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V51="$C"
                V41="$C"
              elif [ "$V41" = "$C" ] && [ "$V51" = "$U" ] ; then
                #ひっくり返し実行
            user_input_flag=1
                V61="$C"
                V51="$C"
              else
					X=1
              fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #71 総合判定
        elif [ $U2 == 71 ] && [ "$V71" != "$C" ] && [ "$V71" != "$U" ] ; then
          #71縦判定
          if [ "$V78" = "$C" ] && [ "$V77" = "$U" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V72="$C"
            V73="$C"
            V74="$C"
            V75="$C"
            V76="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V72="$C"
            V73="$C"
            V74="$C"
            V75="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V72="$C"
            V73="$C"
            V74="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V72="$C"
            V73="$C"
            V74="$C"
          elif [ "$V74" = "$C" ] && [ "$V73" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V72="$C"
            V73="$C"
          elif [ "$V73" = "$C" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V72="$C"
          else
					X=1
          fi
          #71左下判定
          if [ "$V17" = "$C" ] && [ "$V26" = "$U" ] && [ "$V35" = "$U" ] && [ "$V44" = "$U" ] && [ "$V53" = "$U" ] && [ "$V62" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V62="$C"
            V53="$C"
            V44="$C"
            V35="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V35" = "$U" ] && [ "$V44" = "$U" ] && [ "$V53" = "$U" ] && [ "$V62" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V62="$C"
            V53="$C"
            V44="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V44" = "$U" ] && [ "$V53" = "$U" ] && [ "$V62" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V62="$C"
            V53="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V53" = "$U" ] && [ "$V62" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V62="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V62" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V62="$C"
          else
					X=1
          fi
          #71左判定
          if [ "$V11" = "$C" ] && [ "$V21" = "$U" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V61="$C"
            V51="$C"
            V41="$C"
            V31="$C"
            V21="$C"
          elif [ "$V21" = "$C" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V61="$C"
            V51="$C"
            V41="$C"
            V31="$C"
          elif [ "$V31" = "$C" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V61="$C"
            V51="$C"
            V41="$C"
          elif [ "$V41" = "$C" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V61="$C"
            V51="$C"
          elif [ "$V51" = "$C" ] && [ "$V61" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V71="$C"
            V61="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #81 総合判定
        elif [ $U2 == 81 ] && [ "$V81" != "$C" ] && [ "$V81" != "$U" ] ; then
          #81縦判定
          if [ "$V88" = "$C" ] && [ "$V87" = "$U" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] && [ "$V82" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V82="$C"
            V83="$C"
            V84="$C"
            V85="$C"
            V86="$C"
            V87="$C"
          elif [ "$V87" = "$C" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] && [ "$V82" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V82="$C"
            V83="$C"
            V84="$C"
            V85="$C"
            V86="$C"
          elif [ "$V86" = "$C" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] && [ "$V82" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V82="$C"
            V83="$C"
            V84="$C"
            V85="$C"
          elif [ "$V85" = "$C" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] && [ "$V82" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V82="$C"
            V83="$C"
            V84="$C"
          elif [ "$V84" = "$C" ] && [ "$V83" = "$U" ] && [ "$V82" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V83="$C"
          elif [ "$V83" = "$C" ] && [ "$V82" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V82="$C"
          else
					X=1
          fi
          #81左下判定
          if [ "$V18" = "$C" ] && [ "$V27" = "$U" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V72="$C"
            V63="$C"
            V54="$C"
            V45="$C"
            V36="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V72="$C"
            V63="$C"
            V54="$C"
            V45="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V72="$C"
            V63="$C"
            V54="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V72="$C"
            V63="$C"
            V54="$C"
          elif [ "$V53" = "$C" ] && [ "$V63" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V72="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V72="$C"
          else
					X=1
          fi
          #81左判定
          if [ "$V11" = "$C" ] && [ "$V21" = "$U" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] && [ "$V71" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V71="$C"
            V61="$C"
            V51="$C"
            V41="$C"
            V31="$C"
            V21="$C"
          elif [ "$V21" = "$C" ] && [ "$V31" = "$U" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] && [ "$V71" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V71="$C"
            V61="$C"
            V51="$C"
            V41="$C"
            V31="$C"
          elif [ "$V31" = "$C" ] && [ "$V41" = "$U" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] && [ "$V71" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V71="$C"
            V61="$C"
            V51="$C"
            V41="$C"
          elif [ "$V41" = "$C" ] && [ "$V51" = "$U" ] && [ "$V61" = "$U" ] && [ "$V71" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V71="$C"
            V61="$C"
            V51="$C"
          elif [ "$V51" = "$C" ] && [ "$V61" = "$U" ] && [ "$V71" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V71="$C"
            V61="$C"
          elif [ "$V61" = "$C" ] && [ "$V71" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V81="$C"
            V71="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #12 総合判定
        elif [ $U2 == 12 ] && [ "$V12" != "$C" ] && [ "$V12" != "$U" ]; then
          #12横判定
          if [ "$V82" = "$C" ] && [ "$V72" = "$U" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] && [ "$V22" = "$U" ] ; then
          #ひっくり返し実行
            user_input_flag=1
            V12="$C"
            V22="$C"
            V32="$C"
            V42="$C"
            V52="$C"
            V62="$C"
            V72="$C"
          elif [ "$V72" = "$C" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] && [ "$V22" = "$U" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$C"
          V22="$C"
          V32="$C"
          V42="$C"
          V52="$C"
          V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] && [ "$V22" = "$U" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$C"
          V22="$C"
          V32="$C"
          V42="$C"
          V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] && [ "$V22" = "$U" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$C"
          V22="$C"
          V32="$C"
          V42="$C"
          elif [ "$V42" = "$C" ] && [ "$V32" = "$U" ] && [ "$V22" = "$U" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$C"
          V22="$C"
          V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V22" = "$U" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$C"
          V22="$C"
          else
					X=1
          fi
          #12右下判定
          if [ "$V78" = "$C" ] && [ "$V67" = "$U" ] && [ "$V56" = "$U" ] && [ "$V45" = "$U" ] && [ "$V34" = "$U" ] && [ "$V23" = "$U" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$C"
          V23="$C"
          V34="$C"
          V45="$C"
          V56="$C"
          V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V56" = "$U" ] && [ "$V45" = "$U" ] && [ "$V34" = "$U" ] && [ "$V23" = "$U" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$C"
          V23="$C"
          V34="$C"
          V45="$C"
          V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V45" = "$U" ] && [ "$V34" = "$U" ] && [ "$V23" = "$U" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$C"
          V23="$C"
          V34="$C"
          V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V34" = "$U" ] && [ "$V23" = "$U" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$C"
          V23="$C"
          V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V23" = "$U" ] ; then
          #ひっくり返し実行
            user_input_flag=1
          V12="$C"
          V23="$C"
          else
					X=1
          fi
          #12下判定
          if [ "$V18" = "$C" ] && [ "$V17" = "$U" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V12="$C"
            V13="$C"
            V14="$C"
            V15="$C"
            V16="$C"
            V17="$C"
          elif [ "$V17" = "$C" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V12="$C"
            V13="$C"
            V14="$C"
            V15="$C"
            V16="$C"
          elif [ "$V16" = "$C" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V12="$C"
            V13="$C"
            V14="$C"
            V15="$C"
          elif [ "$V15" = "$C" ] && [ "$V14" = "$U" ] && [ "$V13" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V12="$C"
            V13="$C"
            V14="$C"
          elif [ "$V14" = "$C" ] && [ "$V13" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V12="$C"
            V13="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #22 総合判定
        elif [ $U2 == 22 ] && [ "$V22" != "$C" ] && [ "$V22" != "$U" ]; then
          #22右判定
          if [ "$V82" = "$C" ] && [ "$V72" = "$U" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V32="$C"
            V42="$C"
            V52="$C"
            V62="$C"
            V72="$C"
          elif [ "$V72" = "$C" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V32="$C"
            V42="$C"
            V52="$C"
            V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V32="$C"
            V42="$C"
            V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V42" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V32="$C"
            V42="$C"
          elif [ "$V42" = "$C" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V32="$C"
          else
					X=1
          fi
          #22右下判定
          if [ "$V88" = "$C" ] && [ "$V77" = "$U" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V33="$C"
            V44="$C"
            V55="$C"
            V66="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V33="$C"
            V44="$C"
            V55="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V33="$C"
            V44="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V44" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V33="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V33="$C"
          else
					X=1
          fi
          #22下判定
          if [ "$V28" = "$C" ] && [ "$V27" = "$U" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V23="$C"
            V24="$C"
            V25="$C"
            V26="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V23="$C"
            V24="$C"
            V25="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V23="$C"
            V24="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V24" = "$U" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V23="$C"
            V24="$C"
          elif [ "$V24" = "$C" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V22="$C"
            V23="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #32 総合判定
        elif [ $U2 == 32 ] && [ "$V32" != "$C" ] && [ "$V32" != "$U" ]; then
          #32右判定
          if [ "$V82" = "$C" ] && [ "$V72" = "$U" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V42="$C"
            V52="$C"
            V62="$C"
            V72="$C"
          elif [ "$V72" = "$C" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V42="$C"
            V52="$C"
            V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V52" = "$U" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V42="$C"
            V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V42="$C"
          else
					X=1
          fi
          #32右下判定
          if [ "$V87" = "$C" ] && [ "$V76" = "$U" ] && [ "$V65" = "$U" ] && [ "$V54" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V43="$C"
            V54="$C"
            V65="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V65" = "$U" ] && [ "$V54" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V43="$C"
            V54="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V54" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V43="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V43="$C"
          else
					X=1
          fi
          #32下判定
          if [ "$V38" = "$C" ] && [ "$V37" = "$U" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V33="$C"
            V34="$C"
            V35="$C"
            V36="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V33="$C"
            V34="$C"
            V35="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V33="$C"
            V34="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V34" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V33="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V33="$C"
          else
					X=1
          fi
          #32左下判定
          if [ "$V14" = "$C" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V23="$C"
          else
					X=1
          fi
          #32左判定
          if [ "$V12" = "$C" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V32="$C"
            V22="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #42 総合判定
        elif [ $U2 == 42 ] && [ "$V42" != "$C" ] && [ "$V42" != "$U" ]; then
          #42右判定
          if [ "$V82" = "$C" ] && [ "$V72" = "$U" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V52="$C"
            V62="$C"
            V72="$C"
          elif [ "$V72" = "$C" ] && [ "$V62" = "$U" ] && [ "$V52" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V52="$C"
            V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V52" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V52="$C"
          else
					X=1
          fi
          #42右下判定
          if [ "$V86" = "$C" ] && [ "$V75" = "$U" ] && [ "$V64" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V53="$C"
            V64="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V64" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V53="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V53="$C"
          else
					X=1
          fi
          #42下判定
          if [ "$V48" = "$C" ] && [ "$V47" = "$U" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V43="$C"
            V44="$C"
            V45="$C"
            V46="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V43="$C"
            V44="$C"
            V45="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V43="$C"
            V44="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V44" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V43="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V43="$C"
          else
					X=1
          fi
          #42左下判定
          if [ "$V15" = "$C" ] && [ "$V24" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V33="$C"
            V24="$C"
          elif [ "$V24" = "$C" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V33="$C"
          else
					X=1
          fi
          #42左判定
          if [ "$V12" = "$C" ] && [ "$V22" = "$U" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V42="$C"
            V32="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V32" = "$U" ] ; then
            V42="$C"
            V32="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #52 総合判定
        elif [ $U2 == 52 ] && [ "$V52" != "$C" ] && [ "$V52" != "$U" ]; then
          #52右判定
          if [ "$V82" = "$C" ] && [ "$V72" = "$U" ] && [ "$V62" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V62="$C"
            V72="$C"
          elif [ "$V72" = "$C" ] && [ "$V62" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V62="$C"
          else
					X=1
          fi
          #52右下判定
          if [ "$V85" = "$C" ] && [ "$V74" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V63="$C"
            V74="$C"
          elif [ "$V75" = "$C" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V63="$C"
          else
					X=1
          fi
          #52下判定
          if [ "$V58" = "$C" ] && [ "$V57" = "$U" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V53="$C"
            V54="$C"
            V55="$C"
            V56="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V53="$C"
            V54="$C"
            V55="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V53="$C"
            V54="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V54" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V53="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V53="$C"
          else
					X=1
          fi
          #52左下判定
          if [ "$V16" = "$C" ] && [ "$V25" = "$U" ] && [ "$V34" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V43="$C"
            V34="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V34" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V43="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V43="$C"
          else
					X=1
          fi
          #52左判定
          if [ "$V12" = "$C" ] && [ "$V22" = "$U" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V42="$C"
            V32="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V42="$C"
            V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V52="$C"
            V42="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #62 総合判定
        elif [ $U2 == 62 ] && [ "$V62" != "$C" ] && [ "$V62" != "$U" ]; then
          #62右判定
          if [ "$V82" = "$C" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V72="$C"
          else
					X=1
          fi
          #62右下判定
          if [ "$V84" = "$C" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V73="$C"
          else
					X=1
          fi
          #62下判定
          if [ "$V68" = "$C" ] && [ "$V67" = "$U" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V63="$C"
            V64="$C"
            V65="$C"
            V66="$C"
            V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V63="$C"
            V64="$C"
            V65="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V63="$C"
            V64="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V64" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V63="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V63="$C"
          else
					X=1
          fi
          #62左下判定
          if [ "$V17" = "$C" ] && [ "$V26" = "$U" ] && [ "$V35" = "$U" ] && [ "$V44" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V53="$C"
            V44="$C"
            V35="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V35" = "$U" ] && [ "$V44" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V53="$C"
            V44="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V44" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V53="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V53="$C"
          else
					X=1
          fi
          #62左判定
          if [ "$V12" = "$C" ] && [ "$V22" = "$U" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V52="$C"
            V42="$C"
            V32="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V52="$C"
            V42="$C"
            V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V52="$C"
            V42="$C"
          elif [ "$V42" = "$C" ] && [ "$V52" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V62="$C"
            V52="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #72 総合判定
        elif [ $U2 == 72 ] && [ "$V72" != "$C" ] && [ "$V72" != "$U" ]; then
          #72下判定
          if [ "$V78" = "$C" ] && [ "$V77" = "$U" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V73="$C"
            V74="$C"
            V75="$C"
            V76="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V73="$C"
            V74="$C"
            V75="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V73="$C"
            V74="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V74" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V73="$C"
            V74="$C"
          elif [ "$V74" = "$C" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V73="$C"
          else
					X=1
          fi
          #72左下判定
          if [ "$V18" = "$C" ] && [ "$V27" = "$U" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V63="$C"
            V54="$C"
            V45="$C"
            V36="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V63="$C"
            V54="$C"
            V45="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V63="$C"
            V54="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V54" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V63="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V63="$C"
          else
					X=1
          fi
          #72左判定
          if [ "$V12" = "$C" ] && [ "$V22" = "$U" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V62="$C"
            V52="$C"
            V42="$C"
            V32="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ]; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V62="$C"
            V52="$C"
            V42="$C"
            V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ]; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V62="$C"
            V52="$C"
            V42="$C"
          elif [ "$V42" = "$C" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ]; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V62="$C"
            V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V62" = "$U" ]; then
            #ひっくり返し実行
            user_input_flag=1
            V72="$C"
            V62="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #82 総合判定
        elif [ $U2 == 82 ] && [ "$V82" != "$C" ] && [ "$V82" != "$U" ]; then
          #82下判定
          if [ "$V88" = "$C" ] && [ "$V87" = "$U" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V83="$C"
            V84="$C"
            V85="$C"
            V86="$C"
            V87="$C"
          elif [ "$V87" = "$C" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V83="$C"
            V84="$C"
            V85="$C"
            V86="$C"
          elif [ "$V86" = "$C" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V83="$C"
            V84="$C"
            V85="$C"
          elif [ "$V85" = "$C" ] && [ "$V84" = "$U" ] && [ "$V83" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V83="$C"
            V84="$C"
          elif [ "$V84" = "$C" ] && [ "$V83" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V83="$C"
          else
					X=1
          fi
          #82左下判定
          if [ "$V28" = "$C" ] && [ "$V37" = "$U" ] && [ "$V46" = "$U" ] && [ "$V55" = "$U" ] && [ "$V64" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V73="$C"
            V64="$C"
            V55="$C"
            V46="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V46" = "$U" ] && [ "$V55" = "$U" ] && [ "$V64" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V73="$C"
            V64="$C"
            V55="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V55" = "$U" ] && [ "$V64" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V73="$C"
            V64="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V64" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V73="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V73="$C"
          else
					X=1
          fi
          #82左判定
          if [ "$V12" = "$C" ] && [ "$V22" = "$U" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V72="$C"
            V62="$C"
            V52="$C"
            V42="$C"
            V32="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V32" = "$U" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V72="$C"
            V62="$C"
            V52="$C"
            V42="$C"
            V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V42" = "$U" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V72="$C"
            V62="$C"
            V52="$C"
            V42="$C"
          elif [ "$V42" = "$C" ] && [ "$V52" = "$U" ] && [ "$V62" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V72="$C"
            V62="$C"
            V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V62" = "$U" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V72="$C"
            V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V82="$C"
            V72="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #13 総合判定
        elif [ $U2 == 13 ] && [ "$V13" != "$C" ] && [ "$V13" != "$U" ]; then
          #13上判定
          if [ "$V11" = "$C" ] && [ "$V12" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V12="$C"
          else
					X=1
          fi
          #13右上判定
          if [ "$V31" = "$C" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V22="$C"
          else
					X=1
          fi
          #13右判定
          if [ "$V83" = "$C" ] && [ "$V73" = "$U" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V23="$C"
            V33="$C"
            V43="$C"
            V53="$C"
            V63="$C"
            V73="$C"
          elif [ "$V73" = "$C" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V23="$C"
            V33="$C"
            V43="$C"
            V53="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V23="$C"
            V33="$C"
            V43="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V23="$C"
            V33="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V33" = "$U" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V23="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V23="$C"
          else
					X=1
            X=1
          fi
          #13右下判定
          if [ "$V68" = "$C" ] && [ "$V57" = "$U" ] && [ "$V46" = "$U" ] && [ "$V35" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V24="$C"
            V35="$C"
            V46="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V46" = "$U" ] && [ "$V35" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V24="$C"
            V35="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V35" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V24="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V24="$C"
          else
					X=1
            X=1
          fi
          #13下判定
          if [ "$V18" = "$C" ] && [ "$V17" = "$U" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V14="$C"
            V15="$C"
            V16="$C"
            V17="$C"
          elif [ "$V17" = "$C" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V14="$C"
            V15="$C"
            V16="$C"
          elif [ "$V16" = "$C" ] && [ "$V15" = "$U" ] && [ "$V14" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V14="$C"
            V15="$C"
          elif [ "$V15" = "$C" ] && [ "$V14" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V13="$C"
            V14="$C"
          else
					X=1
            X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #23 総合判定
        elif [ $U2 == 23 ] && [ "$V23" != "$C" ] && [ "$V23" != "$U" ]; then
          #23上判定
          if [ "$V21" = "$C" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V22="$C"
          else
					X=1
            X=1
          fi
          #23右上判定
          if [ "$V41" = "$C" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V32="$C"
          else
					X=1
            X=1
          fi
          #23右判定
          if [ "$V83" = "$C" ] && [ "$V73" = "$U" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V33="$C"
            V43="$C"
            V53="$C"
            V63="$C"
            V73="$C"
          elif [ "$V73" = "$C" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V33="$C"
            V43="$C"
            V53="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V33="$C"
            V43="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V43" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V33="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V33="$C"
          else
					X=1
            X=1
          fi
          #23右下判定
          if [ "$V78" = "$C" ] && [ "$V67" = "$U" ] && [ "$V56" = "$U" ] && [ "$V45" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V34="$C"
            V45="$C"
            V56="$C"
            V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V56" = "$U" ] && [ "$V45" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V34="$C"
            V45="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V45" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V34="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V34="$C"
          else
					X=1
            X=1
          fi
          #23下判定
          if [ "$V28" = "$C" ] && [ "$V27" = "$U" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V24="$C"
            V25="$C"
            V26="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V24="$C"
            V25="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V25" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V24="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V23="$C"
            V24="$C"
          else
					X=1
            X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #33 総合判定
        elif [ $U2 == 33 ] && [ "$V33" != "$C" ] && [ "$V33" != "$U" ]; then
          #33 上判定
          if [ "$V31" = "$C" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V32="$C"
          else
					X=1
          fi
          #33右上判定
          if [ "$V51" = "$C" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V42="$C"
          else
					X=1
          fi
          #33右判定 ここまで
          if [ "$V83" = "$C" ] && [ "$V73" = "$U" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V43="$C"
            V53="$C"
            V63="$C"
            V73="$C"
          elif [ "$V73" = "$C" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V43="$C"
            V53="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V53" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V43="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V43="$C"
          else
					X=1
          fi
          #33右下判定
          if [ "$V88" = "$C" ] && [ "$V77" = "$U" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V44="$C"
            V55="$C"
            V66="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V44="$C"
            V55="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V55" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V44="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V44="$C"
          else
					X=1
          fi
          #33下判定
          if [ "$V38" = "$C" ] && [ "$V37" = "$U" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V34="$C"
            V35="$C"
            V36="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V34="$C"
            V35="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V35" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V34="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V34="$C"
          else
					X=1
          fi
          #33左下判定
          if [ "$V15" = "$C" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V24="$C"
          else
					X=1
          fi
          #33左判定
          if [ "$V13" = "$C" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V23="$C"
          else
					X=1
          fi
          #33左上判定
          if [ "$V11" = "$C" ] && [ "$V22" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V33="$C"
            V22="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #43 総合判定
        elif [ $U2 == 43 ] && [ "$V43" != "$C" ] && [ "$V43" != "$U" ]; then
          #43 上判定
          if [ "$V41" = "$C" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V42="$C"
          else
					X=1
          fi
          #43右上判定
          if [ "$V61" = "$C" ] && [ "$V52" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V52="$C"
          else
					X=1
          fi
          #43右判定
          if [ "$V83" = "$C" ] && [ "$V73" = "$U" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V53="$C"
            V63="$C"
            V73="$C"
          elif [ "$V73" = "$C" ] && [ "$V63" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V53="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V53="$C"
          else
					X=1
          fi
          #43右下判定
          if [ "$V87" = "$C" ] && [ "$V76" = "$U" ] && [ "$V65" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V54="$C"
            V65="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V65" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V54="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V54="$C"
          else
					X=1
          fi
          #43下判定
          if [ "$V48" = "$C" ] && [ "$V47" = "$U" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V44="$C"
            V45="$C"
            V46="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V44="$C"
            V45="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V45" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V44="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V44="$C"
          else
					X=1
          fi
          #43左下判定
          if [ "$V16" = "$C" ] && [ "$V25" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V34="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V34="$C"
          else
					X=1
          fi
          #43左判定
          if [ "$V13" = "$C" ] && [ "$V23" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V33="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V33="$C"
          else
					X=1
          fi
          #43左上判定
          if [ "$V21" = "$C" ] && [ "$V32" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V43="$C"
            V32="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #53 総合判定
        elif [ $U2 == 53 ] && [ "$V53" != "$C" ] && [ "$V53" != "$U" ]; then
          #53 上判定
          if [ "$V51" = "$C" ] && [ "$V52" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V52="$C"
          else
					X=1
          fi
          #53右上判定
          if [ "$V71" = "$C" ] && [ "$V62" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V62="$C"
          else
					X=1
          fi
          #53右判定
          if [ "$V83" = "$C" ] && [ "$V73" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V63="$C"
            V73="$C"
          elif [ "$V73" = "$C" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V63="$C"
          else
					X=1
          fi
          #53右下判定
          if [ "$V86" = "$C" ] && [ "$V75" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V64="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V64="$C"
          else
					X=1
          fi
          #53下判定
          if [ "$V58" = "$C" ] && [ "$V57" = "$U" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V54="$C"
            V55="$C"
            V56="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V54="$C"
            V55="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V55" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V54="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V54="$C"
          else
					X=1
          fi
          #53左下判定
          if [ "$V17" = "$C" ] && [ "$V26" = "$U" ] && [ "$V35" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V44="$C"
            V35="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V35" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V44="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V44="$C"
          else
					X=1
          fi
          #53左判定
          if [ "$V13" = "$C" ] && [ "$V23" = "$U" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V43="$C"
            V33="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V43="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V43="$C"
          else
					X=1
          fi
          #53左上判定
          if [ "$V31" = "$C" ] && [ "$V42" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V53="$C"
            V42="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #63 総合判定
        elif [ $U2 == 63 ] && [ "$V63" != "$C" ] && [ "$V63" != "$U" ]; then
          #63 上判定
          if [ "$V61" = "$C" ] && [ "$V62" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V62="$C"
          else
					X=1
          fi
          #63右上判定
          if [ "$V81" = "$C" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V72="$C"
          else
					X=1
          fi
          #63右判定
          if [ "$V83" = "$C" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V73="$C"
          else
					X=1
          fi
          #63右下判定
          if [ "$V85" = "$C" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V74="$C"
          else
					X=1
          fi
          #63下判定
          if [ "$V68" = "$C" ] && [ "$V67" = "$U" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V64="$C"
            V65="$C"
            V66="$C"
            V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V64="$C"
            V65="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V65" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V64="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V64="$C"
          else
					X=1
          fi
          #63左下判定
          if [ "$V18" = "$C" ] && [ "$V27" = "$U" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V54="$C"
            V45="$C"
            V36="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V54="$C"
            V45="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V45" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V54="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V54="$C"
          else
					X=1
          fi
          #63左判定
          if [ "$V13" = "$C" ] && [ "$V23" = "$U" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V53="$C"
            V43="$C"
            V33="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V53="$C"
            V43="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V53="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V53="$C"
          else
					X=1
          fi
          #63左上判定
          if [ "$V41" = "$C" ] && [ "$V52" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V63="$C"
            V52="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #73 総合判定
        elif [ $U2 == 73 ] && [ "$V73" != "$C" ] && [ "$V73" != "$U" ]; then
          #73 上判定
          if [ "$V71" = "$C" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V72="$C"
          else
					X=1
          fi
          #73下判定
          if [ "$V78" = "$C" ] && [ "$V77" = "$U" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V74="$C"
            V75="$C"
            V76="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V74="$C"
            V75="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V75" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V74="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V74="$C"
          else
					X=1
          fi
          #73左下判定
          if [ "$V28" = "$C" ] && [ "$V37" = "$U" ] && [ "$V46" = "$U" ] && [ "$V55" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V64="$C"
            V55="$C"
            V46="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V46" = "$U" ] && [ "$V55" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V64="$C"
            V55="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V55" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V64="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V64="$C"
          else
					X=1
          fi
          #73左判定
          if [ "$V13" = "$C" ] && [ "$V23" = "$U" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V63="$C"
            V53="$C"
            V43="$C"
            V33="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V63="$C"
            V53="$C"
            V43="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V63="$C"
            V53="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V63="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V63="$C"
          else
					X=1
          fi
          #73左上判定
          if [ "$V51" = "$C" ] && [ "$V62" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V73="$C"
            V62="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #83 総合判定
        elif [ $U2 == 83 ] && [ "$V83" != "$C" ] && [ "$V83" != "$U" ]; then
          #83 上判定
          if [ "$V81" = "$C" ] && [ "$V82" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V82="$C"
          else
					X=1
          fi
          #83下判定
          if [ "$V88" = "$C" ] && [ "$V87" = "$U" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V84="$C"
            V85="$C"
            V86="$C"
            V87="$C"
          elif [ "$V87" = "$C" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V84="$C"
            V85="$C"
            V86="$C"
          elif [ "$V86" = "$C" ] && [ "$V85" = "$U" ] && [ "$V84" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V84="$C"
            V85="$C"
          elif [ "$V85" = "$C" ] && [ "$V84" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V84="$C"
          else
					X=1
          fi
          #83左下判定
          if [ "$V38" = "$C" ] && [ "$V47" = "$U" ] && [ "$V56" = "$U" ] && [ "$V65" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V74="$C"
            V65="$C"
            V56="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V56" = "$U" ] && [ "$V65" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V74="$C"
            V65="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V74" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V74="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V74="$C"
          else
					X=1
          fi
          #83左判定
          if [ "$V13" = "$C" ] && [ "$V23" = "$U" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V73="$C"
            V63="$C"
            V53="$C"
            V43="$C"
            V33="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V33" = "$U" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V73="$C"
            V63="$C"
            V53="$C"
            V43="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V43" = "$U" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V73="$C"
            V63="$C"
            V53="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V53" = "$U" ] && [ "$V63" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V73="$C"
            V63="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V63" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V73="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V73="$C"
          else
					X=1
          fi
          #83左上判定
          if [ "$V61" = "$C" ] && [ "$V72" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V83="$C"
            V72="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #14 総合判定
        elif [ $U2 == 14 ] && [ "$V14" != "$C" ] && [ "$V14" != "$U" ]; then
          #14 上判定
          if [ "$V11" = "$C" ] && [ "$V12" = "$U" ] && [ "$V13" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V13="$C"
            V12="$C"
          elif [ "$V12" = "$C" ] && [ "$V13" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V13="$C"
          else
					X=1
          fi
          #14右上判定
          if [ "$V41" = "$C" ] && [ "$V32" = "$U" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V32="$C"
            V23="$C"
          elif [ "$V32" = "$C" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V41="$C"
            V32="$C"
          else
					X=1
          fi
          #14右判定
          if [ "$V84" = "$C" ] && [ "$V74" = "$U" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V24="$C"
            V34="$C"
            V44="$C"
            V54="$C"
            V64="$C"
            V74="$C"
          elif [ "$V74" = "$C" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V24="$C"
            V34="$C"
            V44="$C"
            V54="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V24="$C"
            V34="$C"
            V44="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V24="$C"
            V34="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V34" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V24="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V24="$C"
          else
					X=1
          fi
          #14右下判定
          if [ "$V58" = "$C" ] && [ "$V47" = "$U" ] && [ "$V36" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V25="$C"
            V36="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V36" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V25="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V25="$C"
          else
					X=1
          fi
          #14下判定
          if [ "$V18" = "$C" ] && [ "$V17" = "$U" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V15="$C"
            V16="$C"
            V17="$C"
          elif [ "$V17" = "$C" ] && [ "$V16" = "$U" ] && [ "$V15" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V15="$C"
            V16="$C"
          elif [ "$V16" = "$C" ] && [ "$V15" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V14="$C"
            V15="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #24 総合判定
        elif [ $U2 == 24 ] && [ "$V24" != "$C" ] && [ "$V24" != "$U" ]; then
          #24 上判定
          if [ "$V21" = "$C" ] && [ "$V22" = "$U" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V23="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V23="$C"
          else
					X=1
          fi
          #24右上判定
          if [ "$V51" = "$C" ] && [ "$V42" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V33="$C"
            V22="$C"
          elif [ "$V42" = "$C" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V33="$C"
          else
					X=1
          fi
          #24右判定
          if [ "$V84" = "$C" ] && [ "$V74" = "$U" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V34="$C"
            V44="$C"
            V54="$C"
            V64="$C"
            V74="$C"
          elif [ "$V74" = "$C" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V34="$C"
            V44="$C"
            V54="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V34="$C"
            V44="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V44" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V34="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V34="$C"
          else
					X=1
          fi
          #24右下判定
          if [ "$V68" = "$C" ] && [ "$V57" = "$U" ] && [ "$V46" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V35="$C"
            V46="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V46" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V35="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V35="$C"
          else
					X=1
          fi
          #24下判定
          if [ "$V28" = "$C" ] && [ "$V27" = "$U" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V25="$C"
            V26="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V26" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V25="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V24="$C"
            V25="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #34 総合判定
        elif [ $U2 == 34 ] && [ "$V34" != "$C" ] && [ "$V34" != "$U" ]; then
          #34 上判定
          if [ "$V31" = "$C" ] && [ "$V32" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V34="$C"
            V33="$C"
            V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V34="$C"
            V33="$C"
          else
					X=1
          fi
          #34右上判定
          if [ "$V61" = "$C" ] && [ "$V52" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V43="$C"
            V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V43="$C"
          else
					X=1
          fi
          #34右判定
          if [ "$V84" = "$C" ] && [ "$V74" = "$U" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V44="$C"
            V54="$C"
            V64="$C"
            V74="$C"
          elif [ "$V74" = "$C" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V44="$C"
            V54="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V54" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V44="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V44="$C"
          else
					X=1
          fi
          #34右下判定
          if [ "$V78" = "$C" ] && [ "$V67" = "$U" ] && [ "$V56" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V45="$C"
            V56="$C"
            V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V56" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V45="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V45="$C"
          else
					X=1
          fi
          #34下判定
          if [ "$V38" = "$C" ] && [ "$V37" = "$U" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V35="$C"
            V36="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V36" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V35="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V35="$C"
          else
					X=1
          fi
          #34左下判定
          if [ "$V16" = "$C" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V25="$C"
          else
					X=1
          fi
          #34左判定
          if [ "$V14" = "$C" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V24="$C"
          else
					X=1
          fi
          #34左上判定
          if [ "$V12" = "$C" ] && [ "$V23" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V34="$C"
            V23="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #44 総合判定
        elif [ $U2 == 44 ] && [ "$V44" != "$C" ] && [ "$V44" != "$U" ]; then
          #44 上判定
          if [ "$V41" = "$C" ] && [ "$V42" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V42="$C"
            V43="$C"
          elif [ "$V42" = "$C" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V43="$C"
          else
					X=1
          fi
          #44右上判定
          if [ "$V71" = "$C" ] && [ "$V62" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V53="$C"
            V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V53="$C"
          else
					X=1
          fi
          #44右判定
          if [ "$V84" = "$C" ] && [ "$V74" = "$U" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V54="$C"
            V64="$C"
            V74="$C"
          elif [ "$V74" = "$C" ] && [ "$V64" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V54="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V54="$C"
          else
					X=1
          fi
          #44右下判定
          if [ "$V88" = "$C" ] && [ "$V77" = "$U" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V55="$C"
            V66="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V66" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V55="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V55="$C"
          else
					X=1
          fi
          #44下判定
          if [ "$V48" = "$C" ] && [ "$V47" = "$U" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V45="$C"
            V46="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V46" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V45="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V45="$C"
          else
					X=1
          fi
          #44左下判定
          if [ "$V17" = "$C" ] && [ "$V26" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V35="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V35="$C"
          else
					X=1
          fi
          #44左判定
          if [ "$V14" = "$C" ] && [ "$V24" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V24="$C"
            V34="$C"
          elif [ "$V24" = "$C" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V34="$C"
          else
					X=1
          fi
          #44左上判定
          if [ "$V11" = "$C" ] && [ "$V22" = "$U" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V33="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V33" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            v33="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #54 総合判定
        elif [ $U2 == 54 ] && [ "$V54" != "$C" ] && [ "$V54" != "$U" ]; then
          #54 上判定
          if [ "$V51" = "$C" ] && [ "$V52" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V52="$C"
            V53="$C"
          elif [ "$V52" = "$C" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V53="$C"
          else
					X=1
          fi
          #54右上判定
          if [ "$V81" = "$C" ] && [ "$V72" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V53="$C"
            V62="$C"
          elif [ "$V72" = "$C" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V44="$C"
            V53="$C"
          else
					X=1
          fi
          #54右判定
          if [ "$V84" = "$C" ] && [ "$V74" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V64="$C"
            V74="$C"
          elif [ "$V74" = "$C" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V64="$C"
          else
					X=1
          fi
          #54右下判定
          if [ "$V87" = "$C" ] && [ "$V76" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V65="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V65="$C"
          else
					X=1
          fi
          #54下判定
          if [ "$V58" = "$C" ] && [ "$V57" = "$U" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V55="$C"
            V56="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V56" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V55="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V55="$C"
          else
					X=1
          fi
          #54左下判定
          if [ "$V18" = "$C" ] && [ "$V27" = "$U" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V45="$C"
            V36="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V36" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V45="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V45="$C"
          else
					X=1
          fi
          #54左判定
          if [ "$V14" = "$C" ] && [ "$V24" = "$U" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V44="$C"
            V34="$C"
            V24="$C"
          elif [ "$V24" = "$C" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V44="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V44="$C"
          else
					X=1
          fi
          #54左上判定
          if [ "$V21" = "$C" ] && [ "$V32" = "$U" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            V43="$C"
            V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V43" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V54="$C"
            v43="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #64 総合判定
        elif [ $U2 == 64 ] && [ "$V64" != "$C" ] && [ "$V64" != "$U" ]; then
          #64 上判定
          if [ "$V61" = "$C" ] && [ "$V62" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V62="$C"
            V63="$C"
          elif [ "$V62" = "$C" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V63="$C"
          else
					X=1
          fi
          #64右上判定
          if [ "$V82" = "$C" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V73="$C"
          else
					X=1
          fi
          #64右判定
          if [ "$V84" = "$C" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V74="$C"
          else
					X=1
          fi
          #64右下判定
          if [ "$V86" = "$C" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V75="$C"
          else
					X=1
          fi
          #64下判定
          if [ "$V68" = "$C" ] && [ "$V67" = "$U" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V65="$C"
            V66="$C"
            V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V66" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V65="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V65="$C"
          else
					X=1
          fi
          #64左下判定
          if [ "$V28" = "$C" ] && [ "$V37" = "$U" ] && [ "$V46" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V55="$C"
            V46="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V46" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V55="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V55="$C"
          else
					X=1
          fi
          #64左判定
          if [ "$V14" = "$C" ] && [ "$V24" = "$U" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V54="$C"
            V44="$C"
            V34="$C"
            V24="$C"
          elif [ "$V24" = "$C" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V54="$C"
            V44="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V54="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V54="$C"
          else
					X=1
          fi
          #64左上判定
          if [ "$V31" = "$C" ] && [ "$V42" = "$U" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V53="$C"
            V42="$C"
          elif [ "$V42" = "$C" ] && [ "$V53" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V64="$C"
            V53="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #74 総合判定
        elif [ $U2 == 74 ] && [ "$V74" != "$C" ] && [ "$V74" != "$U" ]; then
          #74 上判定
          if [ "$V71" = "$C" ] && [ "$V72" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V72="$C"
            V73="$C"
          elif [ "$V72" = "$C" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V73="$C"
          else
					X=1
          fi
          #74下判定
          if [ "$V78" = "$C" ] && [ "$V77" = "$U" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V75="$C"
            V76="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V76" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V75="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V75="$C"
          else
					X=1
          fi
          #74左下判定
          if [ "$V38" = "$C" ] && [ "$V47" = "$U" ] && [ "$V56" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V65="$C"
            V56="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V56" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V65="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V65="$C"
          else
					X=1
          fi
          #74左判定
          if [ "$V14" = "$C" ] && [ "$V24" = "$U" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V64="$C"
            V54="$C"
            V44="$C"
            V34="$C"
            V24="$C"
          elif [ "$V24" = "$C" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V64="$C"
            V54="$C"
            V44="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V64="$C"
            V54="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V64="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V64="$C"
          else
					X=1
          fi
          #74左上判定
          if [ "$V41" = "$C" ] && [ "$V52" = "$U" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V63="$C"
            V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V63" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V74="$C"
            V63="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #84 総合判定
        elif [ $U2 == 84 ] && [ "$V84" != "$C" ] && [ "$V84" != "$U" ]; then
          #84 上判定
          if [ "$V81" = "$C" ] && [ "$V82" = "$U" ] && [ "$V83" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V82="$C"
            V83="$C"
          elif [ "$V82" = "$C" ] && [ "$V83" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V83="$C"
          else
					X=1
          fi
          #84下判定
          if [ "$V88" = "$C" ] && [ "$V87" = "$U" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V85="$C"
            V86="$C"
            V87="$C"
          elif [ "$V87" = "$C" ] && [ "$V86" = "$U" ] && [ "$V85" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V85="$C"
            V86="$C"
          elif [ "$V86" = "$C" ] && [ "$V85" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V85="$C"
          else
					X=1
          fi
          #84左下判定
          if [ "$V48" = "$C" ] && [ "$V57" = "$U" ] && [ "$V66" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V75="$C"
            V66="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V66" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V75="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V75="$C"
          else
					X=1
          fi
          #84左判定
          if [ "$V14" = "$C" ] && [ "$V24" = "$U" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V74="$C"
            V64="$C"
            V54="$C"
            V44="$C"
            V34="$C"
            V24="$C"
          elif [ "$V24" = "$C" ] && [ "$V34" = "$U" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V74="$C"
            V64="$C"
            V54="$C"
            V44="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V44" = "$U" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V74="$C"
            V64="$C"
            V54="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V54" = "$U" ] && [ "$V64" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V74="$C"
            V64="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V64" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V74="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V74="$C"
          else
					X=1
          fi
          #84左上判定
          if [ "$V51" = "$C" ] && [ "$V62" = "$U" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V73="$C"
            V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V73" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V84="$C"
            V73="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #15 総合判定
        elif [ $U2 == 15 ] && [ "$V15" != "$C" ] && [ "$V15" != "$U" ]; then
          #15 上判定
          if [ "$V11" = "$C" ] && [ "$V12" = "$U" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V14="$C"
            V13="$C"
            V12="$C"
          elif [ "$V12" = "$C" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V14="$C"
            V13="$C"
          elif [ "$V13" = "$C" ] && [ "$V14" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V14="$C"
          else
					X=1
          fi
          #15 右上判定
          if [ "$V51" = "$C" ] && [ "$V42" = "$U" ] && [ "$V33" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V24="$C"
            V33="$C"
            V42="$C"
          elif [ "$V42" = "$C" ] && [ "$V33" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V24="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V24="$C"
          else
					X=1
          fi
          #15 右判定
          if [ "$V85" = "$C" ] && [ "$V75" = "$U" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V25="$C"
            V35="$C"
            V45="$C"
            V55="$C"
            V65="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V25="$C"
            V35="$C"
            V45="$C"
            V55="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V25="$C"
            V35="$C"
            V45="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V25="$C"
            V35="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V35" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V25="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V25="$C"
          else
					X=1
          fi
          #15 右下判定
          if [ "$V48" = "$C" ] && [ "$V37" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V26="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V26="$C"
          else
					X=1
          fi
          #15下判定
          if [ "$V18" = "$C" ] && [ "$V17" = "$U" ] && [ "$V16" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V16="$C"
            V17="$C"
          elif [ "$V17" = "$C" ] && [ "$V16" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V16="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #25 総合判定
        elif [ $U2 == 25 ] && [ "$V25" != "$C" ] && [ "$V25" != "$U" ]; then
          #25 上判定
          if [ "$V21" = "$C" ] && [ "$V22" = "$U" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V24="$C"
            V23="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V24="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V24="$C"
          else
					X=1
          fi
          #25 右上判定
          if [ "$V61" = "$C" ] && [ "$V52" = "$U" ] && [ "$V43" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V34="$C"
            V43="$C"
            V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V43" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V34="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V34="$C"
          else
					X=1
          fi
          #25 右判定
          if [ "$V85" = "$C" ] && [ "$V75" = "$U" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V35="$C"
            V45="$C"
            V55="$C"
            V65="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V35="$C"
            V45="$C"
            V55="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V35="$C"
            V45="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V45" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V35="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V35="$C"
          else
					X=1
          fi
          #25 右下判定
          if [ "$V58" = "$C" ] && [ "$V47" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V36="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V36="$C"
          else
					X=1
          fi
          #25下判定
          if [ "$V28" = "$C" ] && [ "$V27" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V26="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V25="$C"
            V26="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #35 総合判定
        elif [ $U2 == 35 ] && [ "$V35" != "$C" ] && [ "$V35" != "$U" ]; then
          #35 上判定
          if [ "$V31" = "$C" ] && [ "$V32" = "$U" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V34="$C"
            V33="$C"
            V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V34="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V34="$C"
          else
					X=1
          fi
          #35 右上判定
          if [ "$V71" = "$C" ] && [ "$V62" = "$U" ] && [ "$V53" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V44="$C"
            V53="$C"
            V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V53" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V44="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V44="$C"
          else
					X=1
          fi
          #35 右判定
          if [ "$V85" = "$C" ] && [ "$V75" = "$U" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V45="$C"
            V55="$C"
            V65="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V45="$C"
            V55="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V55" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V45="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V45="$C"
          else
					X=1
          fi
          #35 右下判定
          if [ "$V68" = "$C" ] && [ "$V57" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V46="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V46="$C"
          else
					X=1
          fi
          #35下判定
          if [ "$V38" = "$C" ] && [ "$V37" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V36="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V36="$C"
          else
					X=1
          fi
          #35 左下判定
          if [ "$V13" = "$C" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V24="$C"
          else
					X=1
          fi
          #35 左判定
          if [ "$V15" = "$C" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V25="$C"
          else
					X=1
          fi
          #35 左上判定
          if [ "$V13" = "$C" ] && [ "$V24" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V35="$C"
            V24="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #45 総合判定
        elif [ $U2 == 45 ] && [ "$V45" != "$C" ] && [ "$V45" != "$U" ]; then
          #45 上判定
          if [ "$V41" = "$C" ] && [ "$V42" = "$U" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V44="$C"
            V43="$C"
            V42="$C"
          elif [ "$V42" = "$C" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V44="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V44="$C"
          else
					X=1
          fi
          #45 右上判定
          if [ "$V81" = "$C" ] && [ "$V72" = "$U" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V54="$C"
            V63="$C"
            V72="$C"
          elif [ "$V72" = "$C" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V54="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V54="$C"
          else
					X=1
          fi
          #45 右判定
          if [ "$V85" = "$C" ] && [ "$V75" = "$U" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V55="$C"
            V65="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V65" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V55="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V55="$C"
          else
					X=1
          fi
          #45 右下判定
          if [ "$V78" = "$C" ] && [ "$V67" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V56="$C"
            V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V56="$C"
          else
					X=1
          fi
          #45下判定
          if [ "$V48" = "$C" ] && [ "$V47" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V46="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V46="$C"
          else
					X=1
          fi
          #45 左下判定
          if [ "$V18" = "$C" ] && [ "$V27" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V36="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V36="$C"
          else
					X=1
          fi
          #45 左判定
          if [ "$V15" = "$C" ] && [ "$V25" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V35="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V35="$C"
          else
					X=1
          fi
          #45 左上判定
          if [ "$V12" = "$C" ] && [ "$V23" = "$U" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V34="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V34" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V45="$C"
            V34="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #55 総合判定
        elif [ $U2 == 55 ] && [ "$V55" != "$C" ] && [ "$V55" != "$U" ]; then
          #55 上判定
          if [ "$V51" = "$C" ] && [ "$V52" = "$U" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V54="$C"
            V53="$C"
            V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V54="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V54="$C"
          else
					X=1
          fi
          #55 右上判定
          if [ "$V82" = "$C" ] && [ "$V73" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V64="$C"
            V73="$C"
          elif [ "$V73" = "$C" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V64="$C"
          else
					X=1
          fi
          #55 右判定
          if [ "$V85" = "$C" ] && [ "$V75" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V65="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V65="$C"
          else
					X=1
          fi
          #55 右下判定
          if [ "$V88" = "$C" ] && [ "$V77" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V66="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V66="$C"
          else
					X=1
          fi
          #55下判定
          if [ "$V58" = "$C" ] && [ "$V57" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V56="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V56="$C"
          else
					X=1
          fi
          #55 左下判定
          if [ "$V28" = "$C" ] && [ "$V37" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V46="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V46="$C"
          else
					X=1
          fi
          #55 左判定
          if [ "$V15" = "$C" ] && [ "$V25" = "$U" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V45="$C"
            V35="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V45="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V45="$C"
          else
					X=1
          fi
          #55 左上判定
          if [ "$V11" = "$C" ] && [ "$V22" = "$U" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V44="$C"
            V33="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V44="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V44" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V55="$C"
            V44="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #65 総合判定
        elif [ $U2 == 65 ] && [ "$V65" != "$C" ] && [ "$V65" != "$U" ]; then
          #65 上判定
          if [ "$V61" = "$C" ] && [ "$V62" = "$U" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V64="$C"
            V63="$C"
            V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V64="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V64="$C"
          else
					X=1
          fi
          #65 右上判定
          if [ "$V83" = "$C" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V74="$C"
          else
					X=1
          fi
          #65 右判定
          if [ "$V85" = "$C" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V75="$C"
          else
					X=1
          fi
          #65 右下判定
          if [ "$V87" = "$C" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V76="$C"
          else
					X=1
          fi
          #65下判定
          if [ "$V68" = "$C" ] && [ "$V67" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V66="$C"
            V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V66="$C"
          else
					X=1
          fi
          #65 左下判定
          if [ "$V38" = "$C" ] && [ "$V47" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V56="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V56="$C"
          else
					X=1
          fi
          #65 左判定
          if [ "$V15" = "$C" ] && [ "$V25" = "$U" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V55="$C"
            V45="$C"
            V35="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V55="$C"
            V45="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V55="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V55" = "$U" ] ; then
              #ひっくり返し実行
              user_input_flag=1
              V65="$C"
              V55="$C"
          else
					X=1
          fi
          #65 左上判定
          if [ "$V21" = "$C" ] && [ "$V32" = "$U" ] && [ "$V43" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V54="$C"
            V43="$C"
            V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V43" = "$U" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V54="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V54" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V65="$C"
            V54="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #75 総合判定
        elif [ $U2 == 75 ] && [ "$V75" != "$C" ] && [ "$V75" != "$U" ] ; then
          #75 上判定
          if [ "$V71" = "$C" ] && [ "$V72" = "$U" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V74="$C"
            V73="$C"
            V72="$C"
          elif [ "$V72" = "$C" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V74="$C"
            V73="$C"
          elif [ "$V73" = "$C" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V74="$C"
          else
					X=1
          fi
          #75下判定
          if [ "$V78" = "$C" ] && [ "$V77" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V76="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V76="$C"
          else
					X=1
          fi
          #75 左下判定
          if [ "$V48" = "$C" ] && [ "$V57" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V66="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V66="$C"
          else
					X=1
          fi
          #75 左判定
          if [ "$V15" = "$C" ] && [ "$V25" = "$U" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V65="$C"
            V55="$C"
            V45="$C"
            V35="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V65="$C"
            V55="$C"
            V45="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V65="$C"
            V55="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V65="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V65="$C"
          else
					X=1
          fi
          #75 左上判定
          if [ "$V31" = "$C" ] && [ "$V42" = "$U" ] && [ "$V53" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V64="$C"
            V53="$C"
            V42="$C"
          elif [ "$V42" = "$C" ] && [ "$V53" = "$U" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V64="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V64" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V75="$C"
            V64="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #85 総合判定
        elif [ $U2 == 85 ] && [ "$V85" != "$C" ] && [ "$V85" != "$U" ] ; then
          #85 上判定
          if [ "$V81" = "$C" ] && [ "$V82" = "$U" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V84="$C"
            V83="$C"
            V82="$C"
          elif [ "$V82" = "$C" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V84="$C"
            V83="$C"
          elif [ "$V83" = "$C" ] && [ "$V84" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V84="$C"
          else
					X=1
          fi
          #85下判定
          if [ "$V88" = "$C" ] && [ "$V87" = "$U" ] && [ "$V86" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V86="$C"
            V87="$C"
          elif [ "$V87" = "$C" ] && [ "$V86" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V86="$C"
          else
					X=1
          fi
          #85 左下判定
          if [ "$V58" = "$C" ] && [ "$V67" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V76="$C"
            V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V76="$C"
          else
					X=1
          fi
          #85 左判定
          if [ "$V15" = "$C" ] && [ "$V25" = "$U" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V75="$C"
            V65="$C"
            V55="$C"
            V45="$C"
            V35="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V35" = "$U" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V75="$C"
            V65="$C"
            V55="$C"
            V45="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V45" = "$U" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V75="$C"
            V65="$C"
            V55="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V55" = "$U" ] && [ "$V65" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V75="$C"
            V65="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V65" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V75="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V75="$C"
          else
					X=1
          fi
          #85 左上判定
          if [ "$V41" = "$C" ] && [ "$V52" = "$U" ] && [ "$V63" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V74="$C"
            V63="$C"
            V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V63" = "$U" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V74="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V74" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V85="$C"
            V74="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #16 総合判定
        elif [ $U2 == 16 ] && [ "$V16" != "$C" ] && [ "$V16" != "$U" ] ; then
          #16 上判定
          if [ "$V11" = "$C" ] && [ "$V12" = "$U" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V14="$C"
            V13="$C"
            V12="$C"
          elif [ "$V12" = "$C" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V14="$C"
            V13="$C"
          elif [ "$V13" = "$C" ] && [ "$V14" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V15="$C"
            V14="$C"
          else
					X=1
          fi
          #16 右上判定
          if [ "$V61" = "$C" ] && [ "$V52" = "$U" ] && [ "$V43" = "$U" ] && [ "$V34" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$C"
            V25="$C"
            V34="$C"
            V43="$C"
            V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V43" = "$U" ] && [ "$V34" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$C"
            V25="$C"
            V34="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V34" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$C"
            V25="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$C"
            V25="$C"
          else
					X=1
          fi
          #16 右判定
          if [ "$V86" = "$C" ] && [ "$V76" = "$U" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$C"
            V26="$C"
            V36="$C"
            V46="$C"
            V56="$C"
            V66="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$C"
            V26="$C"
            V36="$C"
            V46="$C"
            V56="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$C"
            V26="$C"
            V36="$C"
            V46="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$C"
            V26="$C"
            V36="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V36" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$C"
            V26="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$C"
            V26="$C"
          else
					X=1
          fi
          #16右下判定
          if [ "$V38" = "$C" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$C"
            V27="$C"
          else
					X=1
          fi
          #16下判定
          if [ "$V18" = "$C" ] && [ "$V17" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V16="$C"
            V17="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #26 総合判定
        elif [ $U2 == 26 ] && [ "$V26" != "$C" ] && [ "$V26" != "$U" ] ; then
          #26 上判定
          if [ "$V21" = "$C" ] && [ "$V22" = "$U" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V25="$C"
            V24="$C"
            V23="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V25="$C"
            V24="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V25="$C"
            V24="$C"
          elif [ "$V24" = "$C" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V25="$C"
          else
					X=1
          fi
          #26 右上判定
          if [ "$V71" = "$C" ] && [ "$V62" = "$U" ] && [ "$V53" = "$U" ] && [ "$V44" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V35="$C"
            V44="$C"
            V53="$C"
            V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V53" = "$U" ] && [ "$V44" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V35="$C"
            V44="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V44" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V35="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V35="$C"
          else
					X=1
          fi
          #26 右判定
          if [ "$V86" = "$C" ] && [ "$V76" = "$U" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V36="$C"
            V46="$C"
            V56="$C"
            V66="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V36="$C"
            V46="$C"
            V56="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V36="$C"
            V46="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V46" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V36="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V36="$C"
          else
					X=1
          fi
          #26右下判定
          if [ "$V48" = "$C" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V37="$C"
          else
					X=1
          fi
          #26下判定
          if [ "$V28" = "$C" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V26="$C"
            V27="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #36 総合判定
        elif [ $U2 == 36 ] && [ "$V36" != "$C" ] && [ "$V36" != "$U" ] ; then
          #36 上判定
          if [ "$V31" = "$C" ] && [ "$V32" = "$U" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V35="$C"
            V34="$C"
            V33="$C"
            V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V35="$C"
            V34="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V35="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V35="$C"
          else
					X=1
          fi
          #36 右上判定
          if [ "$V81" = "$C" ] && [ "$V72" = "$U" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V45="$C"
            V54="$C"
            V63="$C"
            V72="$C"
          elif [ "$V72" = "$C" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V45="$C"
            V54="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V45="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V45="$C"
          else
					X=1
          fi
          #36 右判定
          if [ "$V86" = "$C" ] && [ "$V76" = "$U" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V46="$C"
            V56="$C"
            V66="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V46="$C"
            V56="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V56" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V46="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V46="$C"
          else
					X=1
          fi
          #36右下判定
          if [ "$V58" = "$C" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V47="$C"
          else
					X=1
          fi
          #36下判定
          if [ "$V38" = "$C" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V37="$C"
          else
					X=1
          fi
          #36左下判定
          if [ "$V18" = "$C" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V27="$C"
          else
					X=1
          fi
          #36左判定
          if [ "$V16" = "$C" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V26="$C"
          else
					X=1
          fi
          #36左上判定
          if [ "$V14" = "$C" ] && [ "$V25" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V36="$C"
            V25="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #46 総合判定
        elif [ $U2 == 46 ] && [ "$V46" != "$C" ] && [ "$V46" != "$U" ]; then
          #46 上判定
          if [ "$V41" = "$C" ] && [ "$V42" = "$U" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V45="$C"
            V44="$C"
            V43="$C"
            V42="$C"
          elif [ "$V42" = "$C" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V45="$C"
            V44="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V45="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V45="$C"
          else
					X=1
          fi
          #46 右上判定
          if [ "$V82" = "$C" ] && [ "$V73" = "$U" ] && [ "$V64" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V55="$C"
            V64="$C"
            V73="$C"
          elif [ "$V73" = "$C" ] && [ "$V64" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V55="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V55="$C"
          else
					X=1
          fi
          #46 右判定
          if [ "$V86" = "$C" ] && [ "$V76" = "$U" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V56="$C"
            V66="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V66" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V56="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V56="$C"
          else
					X=1
          fi
          #46右下判定
          if [ "$V68" = "$C" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V77="$C"
          else
					X=1
          fi
          #46下判定
          if [ "$V48" = "$C" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V47="$C"
          else
					X=1
          fi
          #46左下判定
          if [ "$V28" = "$C" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V37="$C"
          else
					X=1
          fi
          #46左判定
          if [ "$V16" = "$C" ] && [ "$V26" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V36="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V36="$C"
          else
					X=1
          fi
          #46左上判定
          if [ "$V13" = "$C" ] && [ "$V24" = "$U" ] && [ "$V35" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V35="$C"
            V24="$C"
          elif [ "$V26" = "$C" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V46="$C"
            V35="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #56 総合判定
        elif [ $U2 == 56 ] && [ "$V56" != "$C" ] && [ "$V56" != "$U" ]; then
          #56 上判定
          if [ "$V51" = "$C" ] && [ "$V52" = "$U" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V55="$C"
            V54="$C"
            V53="$C"
            V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V55="$C"
            V54="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V55="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V55="$C"
          else
					X=1
          fi
          #56 右上判定
          if [ "$V83" = "$C" ] && [ "$V74" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V65="$C"
            V74="$C"
            V83="$C"
          elif [ "$V74" = "$C" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V65="$C"
            V74="$C"
          else
					X=1
          fi
          #56 右判定
          if [ "$V86" = "$C" ] && [ "$V76" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V66="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V66="$C"
          else
					X=1
          fi
          #56右下判定
          if [ "$V78" = "$C" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V67="$C"
          else
					X=1
          fi
          #56下判定
          if [ "$V58" = "$C" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V57="$C"
          else
					X=1
          fi
          #56左下判定
          if [ "$V38" = "$C" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V47="$C"
          else
					X=1
          fi
          #56左判定
          if [ "$V16" = "$C" ] && [ "$V26" = "$U" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V46="$C"
            V36="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V46="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V46="$C"
          else
					X=1
          fi
          #56左上判定
          if [ "$V12" = "$C" ] && [ "$V23" = "$U" ] && [ "$V34" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V45="$C"
            V34="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V34" = "$U" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V45="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V45" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V56="$C"
            V45="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #66 総合判定
        elif [ $U2 == 66 ] && [ "$V66" != "$C" ] && [ "$V66" != "$U" ]; then
          #66 上判定
          if [ "$V61" = "$C" ] && [ "$V62" = "$U" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V65="$C"
            V64="$C"
            V63="$C"
            V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V65="$C"
            V64="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V65="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V65="$C"
          else
					X=1
          fi
          #66 右上判定
          if [ "$V84" = "$C" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V75="$C"
          else
					X=1
          fi
          #66 右判定
          if [ "$V86" = "$C" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V76="$C"
          else
					X=1
          fi
          #66右下判定
          if [ "$V88" = "$C" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V77="$C"
          else
					X=1
          fi
          #66下判定
          if [ "$V68" = "$C" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V67="$C"
          else
					X=1
          fi
          #66左下判定
          if [ "$V48" = "$C" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V57="$C"
          else
					X=1
          fi
          #66左判定
          if [ "$V16" = "$C" ] && [ "$V26" = "$U" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V56="$C"
            V46="$C"
            V36="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V56="$C"
            V46="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V56="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V56="$C"
          else
					X=1
          fi
          #66左上判定
          if [ "$V11" = "$C" ] && [ "$V22" = "$U" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V55="$C"
            V44="$C"
            V33="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V55="$C"
            V44="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V55="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V55" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V66="$C"
            V55="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #76 総合判定
        elif [ $U2 == 76 ] && [ "$V76" != "$C" ] && [ "$V76" != "$U" ]; then
          #76 上判定
          if [ "$V71" = "$C" ] && [ "$V72" = "$U" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V75="$C"
            V74="$C"
            V73="$C"
            V72="$C"
          elif [ "$V72" = "$C" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V75="$C"
            V74="$C"
            V73="$C"
          elif [ "$V73" = "$C" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V75="$C"
            V74="$C"
          elif [ "$V74" = "$C" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V75="$C"
          else
					X=1
          fi
          #76下判定
          if [ "$V78" = "$C" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V77="$C"
          else
					X=1
          fi
          #76左下判定
          if [ "$V58" = "$C" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V67="$C"
          else
					X=1
          fi
          #76左判定
          if [ "$V16" = "$C" ] && [ "$V26" = "$U" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V66="$C"
            V56="$C"
            V46="$C"
            V36="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V66="$C"
            V56="$C"
            V46="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V66="$C"
            V56="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V66="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V66="$C"
          else
					X=1
          fi
          #76左上判定
          if [ "$V21" = "$C" ] && [ "$V32" = "$U" ] && [ "$V43" = "$U" ] && [ "$V54" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V65="$C"
            V54="$C"
            V43="$C"
            V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V43" = "$U" ] && [ "$V54" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V65="$C"
            V54="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V54" = "$U" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V65="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V65" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V76="$C"
            V65="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #86 総合判定
        elif [ $U2 == 86 ] && [ "$V86" != "$C" ] && [ "$V86" != "$U" ]; then
          #86 上判定
          if [ "$V81" = "$C" ] && [ "$V82" = "$U" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V85="$C"
            V84="$C"
            V83="$C"
            V82="$C"
          elif [ "$V82" = "$C" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V85="$C"
            V84="$C"
            V83="$C"
          elif [ "$V83" = "$C" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V85="$C"
            V84="$C"
          elif [ "$V84" = "$C" ] && [ "$V85" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V85="$C"
          else
					X=1
          fi
          #86下判定
          if [ "$V88" = "$C" ] && [ "$V87" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V87="$C"
          else
					X=1
          fi
          #86左下判定
          if [ "$V68" = "$C" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V77="$C"
          else
					X=1
          fi
          #86左判定
          if [ "$V16" = "$C" ] && [ "$V26" = "$U" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V76="$C"
            V66="$C"
            V56="$C"
            V46="$C"
            V36="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V36" = "$U" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V76="$C"
            V66="$C"
            V56="$C"
            V46="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V46" = "$U" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V76="$C"
            V66="$C"
            V56="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V56" = "$U" ] && [ "$V66" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V76="$C"
            V66="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V66" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V76="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V76="$C"
          else
					X=1
          fi
          #86左上判定
          if [ "$V31" = "$C" ] && [ "$V42" = "$U" ] && [ "$V53" = "$U" ] && [ "$V64" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V75="$C"
            V64="$C"
            V53="$C"
            V42="$C"
          elif [ "$V42" = "$C" ] && [ "$V53" = "$U" ] && [ "$V64" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V75="$C"
            V64="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V64" = "$U" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V75="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V75" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V86="$C"
            V75="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #17 総合判定
        elif [ $U2 == 17 ] && [ "$V17" != "$C" ] && [ "$V17" != "$U" ]; then
          #17 上判定
          if [ "$V11" = "$C" ] && [ "$V12" = "$U" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V16="$C"
            V15="$C"
            V14="$C"
            V13="$C"
            V12="$C"
          elif [ "$V12" = "$C" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V16="$C"
            V15="$C"
            V14="$C"
            V13="$C"
          elif [ "$V13" = "$C" ] && [ "$V14" = "$U" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V16="$C"
            V15="$C"
            V14="$C"
          elif [ "$V14" = "$C" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V16="$C"
            V15="$C"
          elif [ "$V15" = "$C" ] && [ "$V16" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V16="$C"
          else
					X=1
          fi
          #17右上判定
          if [ "$V71" = "$C" ] && [ "$V62" = "$U" ] && [ "$V53" = "$U" ] && [ "$V44" = "$U" ] && [ "$V35" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V26="$C"
            V35="$C"
            V44="$C"
            V53="$C"
            V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V53" = "$U" ] && [ "$V44" = "$U" ] && [ "$V35" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V26="$C"
            V35="$C"
            V44="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V44" = "$U" ] && [ "$V35" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V26="$C"
            V35="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V35" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V26="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V26="$C"
          else
					X=1
          fi
          #17右判定
          if [ "$V87" = "$C" ] && [ "$V77" = "$U" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V27="$C"
            V37="$C"
            V47="$C"
            V57="$C"
            V67="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V27="$C"
            V37="$C"
            V47="$C"
            V57="$C"
            V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V27="$C"
            V37="$C"
            V47="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V27="$C"
            V37="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V37" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V27="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V17="$C"
            V27="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #27 総合判定
        elif [ $U2 == 27 ] && [ "$V27" != "$C" ] && [ "$V27" != "$U" ]; then
          #27 上判定
          if [ "$V21" = "$C" ] && [ "$V22" = "$U" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V26="$C"
            V25="$C"
            V24="$C"
            V23="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V26="$C"
            V25="$C"
            V24="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V26="$C"
            V25="$C"
            V24="$C"
          elif [ "$V24" = "$C" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V26="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V26="$C"
          else
					X=1
          fi
          #27右上判定
          if [ "$V81" = "$C" ] && [ "$V72" = "$U" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V36="$C"
            V45="$C"
            V54="$C"
            V63="$C"
            V72="$C"
          elif [ "$V72" = "$C" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V36="$C"
            V45="$C"
            V54="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V36="$C"
            V45="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V36="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V36="$C"
          else
					X=1
          fi
          #27右判定
          if [ "$V87" = "$C" ] && [ "$V77" = "$U" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V37="$C"
            V47="$C"
            V57="$C"
            V67="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V37="$C"
            V47="$C"
            V57="$C"
            V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V37="$C"
            V47="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V47" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V37="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V27="$C"
            V37="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #37 総合判定
        elif [ $U2 == 37 ] && [ "$V37" != "$C" ] && [ "$V37" != "$U" ]; then
          #37 上判定
          if [ "$V31" = "$C" ] && [ "$V32" = "$U" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V36="$C"
            V35="$C"
            V34="$C"
            V33="$C"
            V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V36="$C"
            V35="$C"
            V34="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V36="$C"
            V35="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V36="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V36="$C"
          else
					X=1
          fi
          #37右上判定
          if [ "$V82" = "$C" ] && [ "$V73" = "$U" ] && [ "$V64" = "$U" ] && [ "$V55" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V46="$C"
            V55="$C"
            V64="$C"
            V73="$C"
          elif [ "$V73" = "$C" ] && [ "$V64" = "$U" ] && [ "$V55" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V46="$C"
            V55="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V55" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V46="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V46="$C"
          else
					X=1
          fi
          #37右判定
          if [ "$V87" = "$C" ] && [ "$V77" = "$U" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V47="$C"
            V57="$C"
            V67="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V47="$C"
            V57="$C"
            V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V57" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V47="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V47="$C"
          else
					X=1
          fi
          #37左判定
          if [ "$V17" = "$C" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V27="$C"
          else
					X=1
          fi
          #37左上判定
          if [ "$V15" = "$C" ] && [ "$V26" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V37="$C"
            V26="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #47 総合判定
        elif [ $U2 == 47 ] && [ "$V47" != "$C" ] && [ "$V47" != "$U" ]; then
          #47 上判定
          if [ "$V41" = "$C" ] && [ "$V42" = "$U" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V46="$C"
            V45="$C"
            V44="$C"
            V43="$C"
            V42="$C"
          elif [ "$V42" = "$C" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V46="$C"
            V45="$C"
            V44="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V46="$C"
            V45="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V46="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V46="$C"
          else
					X=1
          fi
          #47右上判定
          if [ "$V83" = "$C" ] && [ "$V74" = "$U" ] && [ "$V65" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V56="$C"
            V65="$C"
            V74="$C"
          elif [ "$V74" = "$C" ] && [ "$V65" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V56="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V56="$C"
          else
					X=1
          fi
          #47右判定
          if [ "$V87" = "$C" ] && [ "$V77" = "$U" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V57="$C"
            V67="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V67" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V57="$C"
            V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V57="$C"
          else
					X=1
          fi
          #47左判定
          if [ "$V17" = "$C" ] && [ "$V27" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V37="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V37="$C"
          else
					X=1
          fi
          #47左上判定
          if [ "$V14" = "$C" ] && [ "$V25" = "$U" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V36="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V36" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V47="$C"
            V36="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #57 総合判定
        elif [ $U2 == 57 ] && [ "$V57" != "$C" ] && [ "$V57" != "$U" ]; then
          #57 上判定
          if [ "$V51" = "$C" ] && [ "$V52" = "$U" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V56="$C"
            V55="$C"
            V54="$C"
            V53="$C"
            V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V56="$C"
            V55="$C"
            V54="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V56="$C"
            V55="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V56="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V56="$C"
          else
					X=1
          fi
          #57右上判定
          if [ "$V84" = "$C" ] && [ "$V75" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V66="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V66="$C"
          else
					X=1
          fi
          #57右判定
          if [ "$V87" = "$C" ] && [ "$V77" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V67="$C"
            V77="$C"
          elif [ "$V77" = "$C" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V67="$C"
          else
					X=1
          fi
          #57左判定
          if [ "$V17" = "$C" ] && [ "$V27" = "$U" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V47="$C"
            V37="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V47="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V47="$C"
          else
					X=1
          fi
          #57左上判定
          if [ "$V13" = "$C" ] && [ "$V24" = "$U" ] && [ "$V35" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V46="$C"
            V35="$C"
            V24="$C"
          elif [ "$V24" = "$C" ] && [ "$V35" = "$U" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V46="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V46" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V57="$C"
            V46="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #67 総合判定
        elif [ $U2 == 67 ] && [ "$V67" != "$C" ] && [ "$V67" != "$U" ]; then
          #67 上判定
          if [ "$V61" = "$C" ] && [ "$V62" = "$U" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V66="$C"
            V65="$C"
            V64="$C"
            V63="$C"
            V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V66="$C"
            V65="$C"
            V64="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V66="$C"
            V65="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V66="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V66="$C"
          else
					X=1
          fi
          #67右上判定
          if [ "$V85" = "$C" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V76="$C"
          else
					X=1
          fi
          #67右判定
          if [ "$V87" = "$C" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V77="$C"
          else
					X=1
          fi
          #67左判定
          if [ "$V17" = "$C" ] && [ "$V27" = "$U" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V57="$C"
            V47="$C"
            V37="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V57="$C"
            V47="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V57="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V57="$C"
          else
					X=1
          fi
          #67左上判定
          if [ "$V12" = "$C" ] && [ "$V23" = "$U" ] && [ "$V34" = "$U" ] && [ "$V45" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V56="$C"
            V45="$C"
            V34="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V34" = "$U" ] && [ "$V45" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V56="$C"
            V45="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V45" = "$U" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V56="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V56" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V67="$C"
            V56="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #77 総合判定
        elif [ $U2 == 77 ] && [ "$V77" != "$C" ] && [ "$V77" != "$U" ]; then
          #77 上判定
          if [ "$V71" = "$C" ] && [ "$V72" = "$U" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V76="$C"
            V75="$C"
            V74="$C"
            V73="$C"
            V72="$C"
          elif [ "$V72" = "$C" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V76="$C"
            V75="$C"
            V74="$C"
            V73="$C"
          elif [ "$V73" = "$C" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V76="$C"
            V75="$C"
            V74="$C"
          elif [ "$V74" = "$C" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V76="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V76="$C"
          else
					X=1
          fi
          #77左判定
          if [ "$V17" = "$C" ] && [ "$V27" = "$U" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V67="$C"
            V57="$C"
            V47="$C"
            V37="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V67="$C"
            V57="$C"
            V47="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V67="$C"
            V57="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V67="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V67="$C"
          else
					X=1
          fi
          #77左上判定
          if [ "$V11" = "$C" ] && [ "$V22" = "$U" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V66="$C"
            V55="$C"
            V44="$C"
            V33="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V66="$C"
            V55="$C"
            V44="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V66="$C"
            V55="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V66="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V66" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V77="$C"
            V66="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #87 総合判定
        elif [ $U2 == 87 ] && [ "$V87" != "$C" ] && [ "$V87" != "$U" ]; then
          #87 上判定
          if [ "$V81" = "$C" ] && [ "$V82" = "$U" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V86="$C"
            V85="$C"
            V84="$C"
            V83="$C"
            V82="$C"
          elif [ "$V82" = "$C" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V86="$C"
            V85="$C"
            V84="$C"
            V83="$C"
          elif [ "$V83" = "$C" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V86="$C"
            V85="$C"
            V84="$C"
          elif [ "$V84" = "$C" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V86="$C"
            V85="$C"
          elif [ "$V85" = "$C" ] && [ "$V86" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V86="$C"
          else
					X=1
          fi
          #87左判定
          if [ "$V17" = "$C" ] && [ "$V27" = "$U" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V77="$C"
            V67="$C"
            V57="$C"
            V47="$C"
            V37="$C"
            V27="$C"
          elif [ "$V27" = "$C" ] && [ "$V37" = "$U" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V77="$C"
            V67="$C"
            V57="$C"
            V47="$C"
            V37="$C"
          elif [ "$V37" = "$C" ] && [ "$V47" = "$U" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V77="$C"
            V67="$C"
            V57="$C"
            V47="$C"
          elif [ "$V47" = "$C" ] && [ "$V57" = "$U" ] && [ "$V67" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V77="$C"
            V67="$C"
            V57="$C"
          elif [ "$V57" = "$C" ] && [ "$V67" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V77="$C"
            V67="$C"
          elif [ "$V67" = "$C" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V77="$C"
          else
					X=1
          fi
          #87左上判定
          if [ "$V21" = "$C" ] && [ "$V32" = "$U" ] && [ "$V43" = "$U" ] && [ "$V54" = "$U" ] && [ "$V65" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V76="$C"
            V65="$C"
            V54="$C"
            V43="$C"
            V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V43" = "$U" ] && [ "$V54" = "$U" ] && [ "$V65" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V76="$C"
            V65="$C"
            V54="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V54" = "$U" ] && [ "$V65" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V76="$C"
            V65="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V65" = "$U" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V76="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V76" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V87="$C"
            V76="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #18 総合判定
        elif [ $U2 == 18 ] && [ "$V18" != "$C" ] && [ "$V18" != "$U" ]; then
          #18 上判定
          if [ "$V11" = "$C" ] && [ "$V12" = "$U" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] && [ "$V17" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V18="$C"
            V17="$C"
            V16="$C"
            V15="$C"
            V14="$C"
            V13="$C"
            V12="$C"
          elif [ "$V12" = "$C" ] && [ "$V13" = "$U" ] && [ "$V14" = "$U" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] && [ "$V17" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V18="$C"
            V17="$C"
            V16="$C"
            V15="$C"
            V14="$C"
            V13="$C"
          elif [ "$V13" = "$C" ] && [ "$V14" = "$U" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] && [ "$V17" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V18="$C"
            V17="$C"
            V16="$C"
            V15="$C"
            V14="$C"
          elif [ "$V14" = "$C" ] && [ "$V15" = "$U" ] && [ "$V16" = "$U" ] && [ "$V17" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V18="$C"
            V17="$C"
            V16="$C"
            V15="$C"
          elif [ "$V15" = "$C" ] && [ "$V16" = "$U" ] && [ "$V17" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V17="$C"
            V16="$C"
          elif [ "$V16" = "$C" ] && [ "$V17" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V17="$C"
          else
					X=1
          fi
          #18右上判定
          if [ "$V81" = "$C" ] && [ "$V72" = "$U" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V27="$C"
            V36="$C"
            V45="$C"
            V54="$C"
            V63="$C"
            V72="$C"
          elif [ "$V72" = "$C" ] && [ "$V63" = "$U" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V27="$C"
            V36="$C"
            V45="$C"
            V54="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V54" = "$U" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V27="$C"
            V36="$C"
            V45="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V45" = "$U" ] && [ "$V36" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V27="$C"
            V36="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V36" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V27="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V27="$C"
          else
					X=1
          fi
          #18右判定
          if [ "$V88" = "$C" ] && [ "$V78" = "$U" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] && [ "$V28" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V28="$C"
            V38="$C"
            V48="$C"
            V58="$C"
            V68="$C"
            V78="$C"
          elif [ "$V78" = "$C" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] && [ "$V28" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V28="$C"
            V38="$C"
            V48="$C"
            V58="$C"
            V68="$C"
          elif [ "$V68" = "$C" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] && [ "$V28" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V28="$C"
            V38="$C"
            V48="$C"
            V58="$C"
          elif [ "$V58" = "$C" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] && [ "$V28" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V28="$C"
            V38="$C"
            V48="$C"
          elif [ "$V48" = "$C" ] && [ "$V38" = "$U" ] && [ "$V28" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V28="$C"
            V38="$C"
          elif [ "$V38" = "$C" ] && [ "$V28" = "$U" ] ; then
            #ひっくり返し実行
              user_input_flag=1
            V18="$C"
            V28="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #28 総合判定
        elif [ $U2 == 28 ] && [ "$V28" != "$C" ] && [ "$V28" != "$U" ]; then
          #28 上判定 途中
          if [ "$V21" = "$C" ] && [ "$V22" = "$U" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V27="$C"
            V26="$C"
            V25="$C"
            V24="$C"
            V23="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V23" = "$U" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V27="$C"
            V26="$C"
            V25="$C"
            V24="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V24" = "$U" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V27="$C"
            V26="$C"
            V25="$C"
            V24="$C"
          elif [ "$V24" = "$C" ] && [ "$V25" = "$U" ] && [ "$V26" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V27="$C"
            V26="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V26" = "$U" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V27="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V27="$C"
          else
					X=1
          fi
          #28右上判定
          if [ "$V82" = "$C" ] && [ "$V73" = "$U" ] && [ "$V64" = "$U" ] && [ "$V55" = "$U" ] && [ "$V46" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V37="$C"
            V46="$C"
            V55="$C"
            V64="$C"
            V73="$C"
            V82="$C"
          elif [ "$V73" = "$C" ] && [ "$V64" = "$U" ] && [ "$V55" = "$U" ] && [ "$V46" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V37="$C"
            V46="$C"
            V55="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V55" = "$U" ] && [ "$V46" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V37="$C"
            V46="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V46" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V37="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V37="$C"
          else
					X=1
          fi
          #28右判定
          if [ "$V88" = "$C" ] && [ "$V78" = "$U" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V38="$C"
            V48="$C"
            V58="$C"
            V68="$C"
            V78="$C"
          elif [ "$V78" = "$C" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V38="$C"
            V48="$C"
            V58="$C"
            V68="$C"
          elif [ "$V68" = "$C" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V38="$C"
            V48="$C"
            V58="$C"
          elif [ "$V58" = "$C" ] && [ "$V48" = "$U" ] && [ "$V38" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V38="$C"
            V48="$C"
          elif [ "$V48" = "$C" ] && [ "$V38" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V28="$C"
            V38="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #38 総合判定
        elif [ $U2 == 38 ] && [ "$V38" != "$C" ] && [ "$V38" != "$U" ]; then
          #38 上判定 途中
          if [ "$V31" = "$C" ] && [ "$V32" = "$U" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V37="$C"
            V36="$C"
            V35="$C"
            V34="$C"
            V33="$C"
            V32="$C"
          elif [ "$V32" = "$C" ] && [ "$V33" = "$U" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V37="$C"
            V36="$C"
            V35="$C"
            V34="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V34" = "$U" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V37="$C"
            V36="$C"
            V35="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V35" = "$U" ] && [ "$V36" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V37="$C"
            V36="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V36" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V37="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V37="$C"
          else
					X=1
          fi
          #38右上判定
          if [ "$V83" = "$C" ] && [ "$V74" = "$U" ] && [ "$V65" = "$U" ] && [ "$V56" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V47="$C"
            V56="$C"
            V65="$C"
            V74="$C"
          elif [ "$V74" = "$C" ] && [ "$V65" = "$U" ] && [ "$V56" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V47="$C"
            V56="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V56" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V47="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V47="$C"
          else
					X=1
          fi
          #38右判定
          if [ "$V88" = "$C" ] && [ "$V78" = "$U" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V48="$C"
            V58="$C"
            V68="$C"
            V78="$C"
          elif [ "$V78" = "$C" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V48="$C"
            V58="$C"
            V68="$C"
          elif [ "$V68" = "$C" ] && [ "$V58" = "$U" ] && [ "$V48" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V48="$C"
            V58="$C"
          elif [ "$V58" = "$C" ] && [ "$V48" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V48="$C"
          else
					X=1
          fi
          #38左判定
          if [ "$V18" = "$C" ] && [ "$V28" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V28="$C"
          else
					X=1
          fi
          #38左上判定
          if [ "$V16" = "$C" ] && [ "$V27" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V38="$C"
            V27="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #48 総合判定
        elif [ $U2 == 48 ] && [ "$V48" != "$C" ] && [ "$V48" != "$U" ]; then
          #48 上判定 途中
          if [ "$V41" = "$C" ] && [ "$V42" = "$U" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V47="$C"
            V46="$C"
            V45="$C"
            V44="$C"
            V43="$C"
            V42="$C"
          elif [ "$V42" = "$C" ] && [ "$V43" = "$U" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V47="$C"
            V46="$C"
            V45="$C"
            V44="$C"
            V43="$C"
          elif [ "$V43" = "$C" ] && [ "$V44" = "$U" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V47="$C"
            V46="$C"
            V45="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V45" = "$U" ] && [ "$V46" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V47="$C"
            V46="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V46" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V47="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V47="$C"
          else
					X=1
          fi
          #48右上判定
          if [ "$V84" = "$C" ] && [ "$V75" = "$U" ] && [ "$V66" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V57="$C"
            V66="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V66" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V57="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V57="$C"
          else
					X=1
          fi
          #48右判定
          if [ "$V88" = "$C" ] && [ "$V78" = "$U" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V58="$C"
            V68="$C"
            V78="$C"
          elif [ "$V78" = "$C" ] && [ "$V68" = "$U" ] && [ "$V58" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V58="$C"
            V68="$C"
          elif [ "$V68" = "$C" ] && [ "$V58" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V58="$C"
          else
					X=1
          fi
          #48左判定
          if [ "$V18" = "$C" ] && [ "$V28" = "$U" ] && [ "$V38" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V38="$C"
            V28="$C"
          elif [ "$V28" = "$C" ] && [ "$V38" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V38="$C"
          else
					X=1
          fi
          #48左上判定
          if [ "$V15" = "$C" ] && [ "$V26" = "$U" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V37="$C"
            V26="$C"
          elif [ "$V26" = "$C" ] && [ "$V37" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V48="$C"
            V37="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #58 総合判定
        elif [ $U2 == 58 ] && [ "$V58" != "$C" ] && [ "$V58" != "$U" ]; then
          #58 上判定
          if [ "$V51" = "$C" ] && [ "$V52" = "$U" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V57="$C"
            V56="$C"
            V55="$C"
            V54="$C"
            V53="$C"
            V52="$C"
          elif [ "$V52" = "$C" ] && [ "$V53" = "$U" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V57="$C"
            V56="$C"
            V55="$C"
            V54="$C"
            V53="$C"
          elif [ "$V53" = "$C" ] && [ "$V54" = "$U" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V57="$C"
            V56="$C"
            V55="$C"
            V54="$C"
          elif [ "$V54" = "$C" ] && [ "$V55" = "$U" ] && [ "$V56" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V57="$C"
            V56="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V56" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V57="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V57="$C"
          else
					X=1
          fi
          #58右上判定
          if [ "$V85" = "$C" ] && [ "$V76" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V67="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V67="$C"
          else
					X=1
          fi
          #58右判定
          if [ "$V88" = "$C" ] && [ "$V78" = "$U" ] && [ "$V68" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V68="$C"
            V78="$C"
          elif [ "$V78" = "$C" ] && [ "$V68" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V68="$C"
          else
					X=1
          fi
          #58左判定
          if [ "$V18" = "$C" ] && [ "$V28" = "$U" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V48="$C"
            V38="$C"
            V28="$C"
          elif [ "$V28" = "$C" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V48="$C"
            V38="$C"
          elif [ "$V38" = "$C" ] && [ "$V48" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V48="$C"
          else
					X=1
          fi
          #58左上判定 ここまで
          if [ "$V14" = "$C" ] && [ "$V25" = "$U" ] && [ "$V36" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V47="$C"
            V36="$C"
            V25="$C"
          elif [ "$V25" = "$C" ] && [ "$V36" = "$U" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V47="$C"
            V36="$C"
          elif [ "$V36" = "$C" ] && [ "$V47" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V58="$C"
            V47="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #68 総合判定
        elif [ $U2 == 68 ] && [ "$V68" != "$C" ] && [ "$V68" != "$U" ]; then
          #68 上判定
          if [ "$V61" = "$C" ] && [ "$V62" = "$U" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V67="$C"
            V66="$C"
            V65="$C"
            V64="$C"
            V63="$C"
            V62="$C"
          elif [ "$V62" = "$C" ] && [ "$V63" = "$U" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V67="$C"
            V66="$C"
            V65="$C"
            V64="$C"
            V63="$C"
          elif [ "$V63" = "$C" ] && [ "$V64" = "$U" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V67="$C"
            V66="$C"
            V65="$C"
            V64="$C"
          elif [ "$V64" = "$C" ] && [ "$V65" = "$U" ] && [ "$V66" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V67="$C"
            V66="$C"
            V65="$C"
          elif [ "$V65" = "$C" ] && [ "$V66" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V67="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V67="$C"
          else
					X=1
          fi
          #68右上判定
          if [ "$V86" = "$C" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V77="$C"
          else
					X=1
          fi
          #68右判定
          if [ "$V88" = "$C" ] && [ "$V78" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V78="$C"
          else
					X=1
          fi
          #68左判定
          if [ "$V18" = "$C" ] && [ "$V28" = "$U" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V58="$C"
            V48="$C"
            V38="$C"
            V28="$C"
          elif [ "$V28" = "$C" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V58="$C"
            V48="$C"
            V38="$C"
          elif [ "$V38" = "$C" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V58="$C"
            V48="$C"
          elif [ "$V48" = "$C" ] && [ "$V58" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V58="$C"
          else
					X=1
          fi
          #68左上判定 ここまで
          if [ "$V13" = "$C" ] && [ "$V24" = "$U" ] && [ "$V35" = "$U" ] && [ "$V46" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V57="$C"
            V46="$C"
            V35="$C"
            V24="$C"
          elif [ "$V24" = "$C" ] && [ "$V35" = "$U" ] && [ "$V46" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V57="$C"
            V46="$C"
            V35="$C"
          elif [ "$V35" = "$C" ] && [ "$V46" = "$U" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V57="$C"
            V46="$C"
          elif [ "$V46" = "$C" ] && [ "$V57" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V68="$C"
            V57="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #78 総合判定
        elif [ $U2 == 78 ] && [ "$V78" != "$C" ] && [ "$V78" != "$U" ]; then
          #78 上判定
          if [ "$V71" = "$C" ] && [ "$V72" = "$U" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V77="$C"
            V76="$C"
            V75="$C"
            V74="$C"
            V73="$C"
            V72="$C"
          elif [ "$V72" = "$C" ] && [ "$V73" = "$U" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V77="$C"
            V76="$C"
            V75="$C"
            V74="$C"
            V73="$C"
          elif [ "$V73" = "$C" ] && [ "$V74" = "$U" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V77="$C"
            V76="$C"
            V75="$C"
            V74="$C"
          elif [ "$V74" = "$C" ] && [ "$V75" = "$U" ] && [ "$V76" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V77="$C"
            V76="$C"
            V75="$C"
          elif [ "$V75" = "$C" ] && [ "$V76" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V77="$C"
            V76="$C"
          elif [ "$V76" = "$C" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V77="$C"
          else
					X=1
          fi
          #78左判定
          if [ "$V18" = "$C" ] && [ "$V28" = "$U" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V68="$C"
            V58="$C"
            V48="$C"
            V38="$C"
            V28="$C"
          elif [ "$V28" = "$C" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V68="$C"
            V58="$C"
            V48="$C"
            V38="$C"
          elif [ "$V38" = "$C" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V68="$C"
            V58="$C"
            V48="$C"
          elif [ "$V48" = "$C" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V68="$C"
            V58="$C"
          elif [ "$V58" = "$C" ] && [ "$V68" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V68="$C"
          else
					X=1
          fi
          #78左上判定
          if [ "$V12" = "$C" ] && [ "$V23" = "$U" ] && [ "$V34" = "$U" ] && [ "$V45" = "$U" ] && [ "$V56" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V67="$C"
            V56="$C"
            V45="$C"
            V34="$C"
            V23="$C"
          elif [ "$V23" = "$C" ] && [ "$V34" = "$U" ] && [ "$V45" = "$U" ] && [ "$V56" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V67="$C"
            V56="$C"
            V45="$C"
            V34="$C"
          elif [ "$V34" = "$C" ] && [ "$V45" = "$U" ] && [ "$V56" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V67="$C"
            V56="$C"
            V45="$C"
          elif [ "$V45" = "$C" ] && [ "$V56" = "$U" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V67="$C"
            V56="$C"
          elif [ "$V56" = "$C" ] && [ "$V67" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V78="$C"
            V67="$C"
          else
					X=1
          fi
        #----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #88 総合判定
        elif [ $U2 == 88 ] && [ "$V88" != "$C" ] && [ "$V88" != "$U" ]; then
          #88 上判定
          if [ "$V81" = "$C" ] && [ "$V82" = "$U" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] && [ "$V87" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V87="$C"
            V86="$C"
            V85="$C"
            V84="$C"
            V83="$C"
            V82="$C"
          elif [ "$V82" = "$C" ] && [ "$V83" = "$U" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] && [ "$V87" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V87="$C"
            V86="$C"
            V85="$C"
            V84="$C"
            V83="$C"
          elif [ "$V83" = "$C" ] && [ "$V84" = "$U" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] && [ "$V87" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V87="$C"
            V86="$C"
            V85="$C"
            V84="$C"
          elif [ "$V84" = "$C" ] && [ "$V85" = "$U" ] && [ "$V86" = "$U" ] && [ "$V87" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V87="$C"
            V86="$C"
            V85="$C"
          elif [ "$V85" = "$C" ] && [ "$V86" = "$U" ] && [ "$V87" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V87="$C"
            V86="$C"
          elif [ "$V86" = "$C" ] && [ "$V87" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V87="$C"
          else
					X=1
          fi
          #88左判定
          if [ "$V18" = "$C" ] && [ "$V28" = "$U" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] && [ "$V78" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V78="$C"
            V68="$C"
            V58="$C"
            V48="$C"
            V38="$C"
            V28="$C"
          elif [ "$V28" = "$C" ] && [ "$V38" = "$U" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] && [ "$V78" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V78="$C"
            V68="$C"
            V58="$C"
            V48="$C"
            V38="$C"
          elif [ "$V38" = "$C" ] && [ "$V48" = "$U" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] && [ "$V78" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V78="$C"
            V68="$C"
            V58="$C"
            V48="$C"
          elif [ "$V48" = "$C" ] && [ "$V58" = "$U" ] && [ "$V68" = "$U" ] && [ "$V78" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V78="$C"
            V68="$C"
            V58="$C"
          elif [ "$V58" = "$C" ] && [ "$V68" = "$U" ] && [ "$V78" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V78="$C"
            V68="$C"
          elif [ "$V68" = "$C" ] && [ "$V78" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V78="$C"
          else
					X=1
          fi
          #88左上判定
          if [ "$V11" = "$C" ] && [ "$V22" = "$U" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V77="$C"
            V66="$C"
            V55="$C"
            V44="$C"
            V33="$C"
            V22="$C"
          elif [ "$V22" = "$C" ] && [ "$V33" = "$U" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V77="$C"
            V66="$C"
            V55="$C"
            V44="$C"
            V33="$C"
          elif [ "$V33" = "$C" ] && [ "$V44" = "$U" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V77="$C"
            V66="$C"
            V55="$C"
            V44="$C"
          elif [ "$V44" = "$C" ] && [ "$V55" = "$U" ] && [ "$V66" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V77="$C"
            V66="$C"
            V55="$C"
          elif [ "$V55" = "$C" ] && [ "$V66" = "$U" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V77="$C"
            V66="$C"
          elif [ "$V66" = "$C" ] && [ "$V77" = "$U" ] ; then
            #ひっくり返し実行
            user_input_flag=1
            V88="$C"
            V77="$C"
          else
					X=1
          fi
        else
					X=1
          echo "総例外"
          echo "その場所には既に駒があるもしくは、ルール上置けない場所です"
        fi
      else
					X=1 #入力数値判定否の場合　連番判定
        echo "正しい座標を入力してください"
      fi
    done
    #----------------------------------------------------------------------------------------------------------------------
  else
					X=1    #場所無しスキップエンド
    echo "置ける場所がない為パスします"
  fi
  #----------------------------------------------------------------------------------------------------------------------
  clear
  if [ "$continue_flag_black" == 0 ] && [ "$continue_flag_white" == 0 ] ; then
    flag=1
  else
					X=1
    X=1
  fi
  #----------------------------------------------------------------------------------------------------------------------
done
#----------------------------------------------------------------------------------------------------------------------
#点数計算
  if [ "$V11" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V11" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V12" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V12" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V13" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V13" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V14" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V14" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V15" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V15" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V16" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V16" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V17" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V17" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V18" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V18" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  #------------------------------------------------------
  if [ "$V21" == "$U" ] ; then
    black=$(( black + 1 ))V11="$U"
  elif [ "$V21" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V22" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V22" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V23" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V23" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V24" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V24" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V25" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V25" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V26" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V26" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V27" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V27" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V28" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V28" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  #-----------------------------
  if [ "$V31" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V31" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V32" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V32" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V33" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V33" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V34" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V34" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V35" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V35" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V36" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V36" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V37" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V37" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V38" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V38" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  #----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  if [ "$V41" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V41" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V42" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V42" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V43" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V43" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V44" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V44" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V45" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V45" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V46" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V46" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V47" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V47" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V48" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V48" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  #-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  if [ "$V51" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V51" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V52" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V52" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V53" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V53" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V54" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V54" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V55" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V55" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V56" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V56" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V57" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V57" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V58" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V58" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V61" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V61" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V62" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V62" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V63" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V63" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V64" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V64" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V65" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V65" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V66" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V66" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V67" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V67" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V68" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V68" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V71" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V71" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V72" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V72" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V73" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V73" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V74" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V74" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V75" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V75" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V76" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V76" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V77" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V77" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V78" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V78" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V81" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V81" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V82" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V82" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V83" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V83" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V84" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V84" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V85" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V85" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V86" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V86" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V87" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V87" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
  if [ "$V88" == "$U" ] ; then
    black=$(( black + 1 ))
  elif [ "$V88" == "$C" ] ; then
    white=$(( white + 1 ))
  else
					X=1
    null=$(( null + 1 ))
  fi
#--------------------------------
#空白計算
if [ $black -lt $white ] ; then
  white=$(( white + null ))
else
					X=1
  black=$(( black + null ))
fi
#--------------------------------
#勝者表示
if [ $black -lt $white ] ; then
  echo "勝者　白"
  echo "黒"$black"個"
  echo "白"$white"個"
else
					X=1
  echo "勝者　黒"
  echo "黒"$black"個"
  echo "白"$white"個"
fi
#--------------------------------