# Othello
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
echo "最左下の場合88"
read -p "Enterキーで続行 "
clear
  #判定作り途中
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