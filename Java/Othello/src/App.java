import java.util.Scanner;

public class App {
    /**
     * @param args
     * @throws Exception
     */
    public static void main(String[] args) throws Exception {
        //変数定義
        String V11,V21,V31,V41,V51,V61,V71,V81;
        String V12,V22,V32,V42,V52,V62,V72,V82;
        String V13,V23,V33,V43,V53,V63,V73,V83;
        String V14,V24,V34,V44,V54,V64,V74,V84;
        String V15,V25,V35,V45,V55,V65,V75,V85;
        String V16,V26,V36,V46,V56,V66,V76,V86;
        String V17,V27,V37,V47,V57,V67,V77,V87;
        String V18,V28,V38,V48,V58,V68,V78,V88;
        String B,W;
        int input,inputloop=0,ruleexceptionflag=0;

        //盤面クリアー
        V11 =" ";
        V21 =" ";
        V31 =" ";
        V41 =" ";
        V51 =" ";
        V61 =" ";
        V71 =" ";
        V81 =" ";

        V12 =" ";
        V22 =" ";
        V32 =" ";
        V42 =" ";
        V52 =" ";
        V62 =" ";
        V72 =" ";
        V82 =" ";

        V13 =" ";
        V23 =" ";
        V33 =" ";
        V43 =" ";
        V53 =" ";
        V63 =" ";
        V73 =" ";
        V83 =" ";

        V14 =" ";
        V24 =" ";
        V34 =" ";
        V44 =" ";
        V54 =" ";
        V64 =" ";
        V74 =" ";
        V84 =" ";

        V15 =" ";
        V25 =" ";
        V35 =" ";
        V45 =" ";
        V55 =" ";
        V65 =" ";
        V75 =" ";
        V85 =" ";

        V16 =" ";
        V26 =" ";
        V36 =" ";
        V46 =" ";
        V56 =" ";
        V66 =" ";
        V76 =" ";
        V86 =" ";

        V17 =" ";
        V27 =" ";
        V37 =" ";
        V47 =" ";
        V57 =" ";
        V67 =" ";
        V77 =" ";
        V87 =" ";

        V18 =" ";
        V28 =" ";
        V38 =" ";
        V48 =" ";
        V58 =" ";
        V68 =" ";
        V78 =" ";
        V88 =" ";
        //駒定義
        B = "○";
        W = "●";
        //初期位置
        V44 = B;
        V45 = W;
        V54 = W;
        V55 = W;

        System.out.println("------------------");
        System.out.println(" |1|2|3|4|5|6|7|8|");
        System.out.println("------------------");
        System.out.println(1+"|"+V11+"|"+V21+"|"+V31+"|"+V41+"|"+V51+"|"+V61+"|"+V71+"|"+V81+"|");
        System.out.println("------------------");
        System.out.println(1+"|"+V12+"|"+V22+"|"+V32+"|"+V42+"|"+V52+"|"+V62+"|"+V72+"|"+V82+"|");
        System.out.println("------------------");
        System.out.println(1+"|"+V13+"|"+V23+"|"+V33+"|"+V43+"|"+V53+"|"+V63+"|"+V73+"|"+V83+"|");
        System.out.println("------------------");
        System.out.println(1+"|"+V14+"|"+V24+"|"+V34+"|"+V44+"|"+V54+"|"+V64+"|"+V74+"|"+V84+"|");
        System.out.println("------------------");
        System.out.println(1+"|"+V15+"|"+V25+"|"+V35+"|"+V45+"|"+V55+"|"+V65+"|"+V75+"|"+V85+"|");
        System.out.println("------------------");
        System.out.println(1+"|"+V16+"|"+V26+"|"+V36+"|"+V46+"|"+V56+"|"+V66+"|"+V76+"|"+V86+"|");
        System.out.println("------------------");
        System.out.println(1+"|"+V17+"|"+V27+"|"+V37+"|"+V47+"|"+V57+"|"+V67+"|"+V77+"|"+V87+"|");
        System.out.println("------------------");
        System.out.println(1+"|"+V18+"|"+V28+"|"+V38+"|"+V48+"|"+V58+"|"+V68+"|"+V78+"|"+V88+"|");
        System.out.println("------------------");
        
        Scanner sc = new Scanner(System.in);
        while (inputloop == 0) {
                System.out.println("駒座標を入力して下さい。＞");
                input = sc.nextInt();
                    if (input == 11 && V11 == " " || input == 12 && V12 == " " || input == 13 && V13 == " " || input == 14 && V14 == " " || input == 15 && V15 == " " || input == 16 && V16 == " " || input == 17 && V17 == " " || input == 18 && V18 == " "
                    || input == 21 && V21 == " " || input == 22 && V22 == " " || input == 23 && V23 == " " || input == 24 && V24 == " " || input == 25 && V25 == " " || input == 26 && V26 == " " || input == 27 && V27 == " " || input == 28 && V28 == " "
                    || input == 31 && V31 == " " || input == 32 && V32 == " " || input == 33 && V33 == " " || input == 34 && V34 == " " || input == 35 && V35 == " " || input == 36 && V36 == " " || input == 37 && V37 == " " || input == 38 && V38 == " "
                    || input == 41 && V41 == " " || input == 42 && V42 == " " || input == 43 && V43 == " " || input == 44 && V44 == " " || input == 45 && V45 == " " || input == 46 && V46 == " " || input == 47 && V47 == " " || input == 48 && V48 == " "
                    || input == 51 && V51 == " " || input == 52 && V52 == " " || input == 53 && V53 == " " || input == 54 && V54 == " " || input == 55 && V55 == " " || input == 56 && V56 == " " || input == 57 && V57 == " " || input == 58 && V58 == " "
                    || input == 61 && V61 == " " || input == 62 && V62 == " " || input == 63 && V63 == " " || input == 64 && V64 == " " || input == 65 && V65 == " " || input == 66 && V66 == " " || input == 67 && V67 == " " || input == 68 && V68 == " "
                    || input == 71 && V71 == " " || input == 72 && V72 == " " || input == 73 && V73 == " " || input == 74 && V74 == " " || input == 75 && V75 == " " || input == 76 && V76 == " " || input == 77 && V77 == " " || input == 78 && V78 == " "
                    || input == 81 && V81 == " " || input == 82 && V82 == " " || input == 83 && V83 == " " || input == 84 && V84 == " " || input == 85 && V85 == " " || input == 86 && V86 == " " || input == 87 && V87 == " " || input == 88 && V88 == " "
                    ){
                        //正常入力
                        inputloop = 1;
                    }else{
                        System.out.println("正しい座標を入力してください＞");
                        inputloop = 0;
                    }
        }
        //V11
        if (V81 == B && V71 == W && V61 == W && V51 == W && V41 == W && V31 == W && V21 == W) {//横
            V11 = B;
            V21 = B;
            V31 = B;
            V41 = B;
            V51 = B;
            V61 = B;
            V71 = B;
            } else if (V71 == B && V61 == W && V51 == W && V41 == W && V31 == W && V21 == W) {
            V11 = B;
            V21 = B;
            V31 = B;
            V41 = B;
            V51 = B;
            V61 = B;
            } else if (V61 == B && V51 == W && V41 == W && V31 == W && V21 == W) {
            V11 = B;
            V21 = B;
            V31 = B;
            V41 = B;
            V51 = B;
            } else if (V51 == B && V41 == W && V31 == W && V21 == W) {
            V11 = B;
            V21 = B;
            V31 = B;
            V41 = B;
            } else if (V41 == B && V31 == W && V21 == W) {
            V11 = B;
            V21 = B;
            V31 = B;
            } else if (V31 == B && V21 == W) {
            V11 = B;
            V21 = B;
            } else if (V88 == B && V77 == W && V66 == W && V55 == W && V44 == W && V33 == W && V22 == W) {//斜
            V11 = B;
            V22 = B;
            V33 = B;
            V44 = B;
            V55 = B;
            V66 = B;
            V77 = B;
            } else if (V77 == B && V66 == W && V55 == W && V44 == W && V33 == W && V22 == W) {
            V11 = B;
            V22 = B;
            V33 = B;
            V44 = B;
            V55 = B;
            V66 = B;
            } else if (V66 == B && V55 == W && V44 == W && V33 == W && V22 == W) {
            V11 = B;
            V22 = B;
            V33 = B;
            V44 = B;
            V55 = B;
            } else if (V55 == B && V44 == W && V33 == W && V22 == W) {
            V11 = B;
            V22 = B;
            V33 = B;
            V44 = B;
            } else if (V44 == B && V33 == W && V22 == W) {
            V11 = B;
            V22 = B;
            V33 = B;
            } else if (V33 == B && V22 == W) {
            V11 = B;
            V22 = B;
            } else if (V18 == B && V17 == W && V16 == W && V15 == W && V14 == W && V13 == W && V12 == W) {//縦
            V11 = B;
            V12 = B;
            V13 = B;
            V14 = B;
            V15 = B;
            V16 = B;
            V17 = B;
            } else if (V17 == B && V16 == W && V15 == W && V14 == W && V13 == W && V12 == W) {
            V11 = B;
            V12 = B;
            V13 = B;
            V14 = B;
            V15 = B;
            V16 = B;
            } else if (V16 == B && V15 == W && V14 == W && V13 == W && V12 == W) {
            V11 = B;
            V12 = B;
            V13 = B;
            V14 = B;
            V15 = B;
            } else if (V15 == B && V14 == W && V13 == W && V12 == W) {
            V11 = B;
            V12 = B;
            V13 = B;
            V14 = B;
            } else if (V14 == B && V13 == W && V12 == W) {
            V11 = B;
            V12 = B;
            V13 = B;
            } else if (V13 == B && V12 == W) {
            V11 = B;
            V12 = B;
            } else { 
            }
        //V21
        if (V81 == B && V71 == W && V61 == W && V51 == W && V41 == W && V31 == W) {//横
            V21 = B;
            V31 = B;
            V41 = B;
            V51 = B;
            V61 = B;
            V71 = B;
            } else if (V71 == B && V61 == W && V51 == W && V41 == W && V31 == W) {
            V21 = B;
            V31 = B;
            V41 = B;
            V51 = B;
            V61 = B;
            } else if (V61 == B && V51 == W && V41 == W && V31 == W) {
            V21 = B;
            V31 = B;
            V41 = B;
            V51 = B;
            } else if (V51 == B && V41 == W && V31 == W) {
            V21 = B;
            V31 = B;
            V41 = B;
            } else if (V41 == B && V31 == W) {
            V21 = B;
            V31 = B;
            } else if (V87 == B && V76 == W && V65 == W && V54 == W && V43 == W && V32 == W) {//斜
            V21 = B;
            V32 = B;
            V33 = B;
            V44 = B;
            V55 = B;
            V76 = B;
            V87 = B;
            } else if (V76 == B && V65 == W && V54 == W && V43 == W && V32 == W) {
            V11 = B;
            V22 = B;
            V33 = B;
            V44 = B;
            V55 = B;
            V66 = B;
            } else if (V66 == B && V55 == W && V44 == W && V33 == W && V22 == W) {
            V11 = B;
            V22 = B;
            V33 = B;
            V44 = B;
            V55 = B;
            } else if (V55 == B && V44 == W && V33 == W && V22 == W) {
            V11 = B;
            V22 = B;
            V33 = B;
            V44 = B;
            } else if (V44 == B && V33 == W && V22 == W) {
            V11 = B;
            V22 = B;
            V33 = B;
            } else if (V33 == B && V22 == W) {
            V11 = B;
            V22 = B;
            } else if (V18 == B && V17 == W && V16 == W && V15 == W && V14 == W && V13 == W && V12 == W) {//縦
            V11 = B;
            V12 = B;
            V13 = B;
            V14 = B;
            V15 = B;
            V16 = B;
            V17 = B;
            } else if (V17 == B && V16 == W && V15 == W && V14 == W && V13 == W && V12 == W) {
            V11 = B;
            V12 = B;
            V13 = B;
            V14 = B;
            V15 = B;
            V16 = B;
            } else if (V16 == B && V15 == W && V14 == W && V13 == W && V12 == W) {
            V11 = B;
            V12 = B;
            V13 = B;
            V14 = B;
            V15 = B;
            } else if (V15 == B && V14 == W && V13 == W && V12 == W) {
            V11 = B;
            V12 = B;
            V13 = B;
            V14 = B;
            } else if (V14 == B && V13 == W && V12 == W) {
            V11 = B;
            V12 = B;
            V13 = B;
            } else if (V13 == B && V12 == W) {
            V11 = B;
            V12 = B;
            } else {
            }
        //31
        if (V81 == B && V71 == W && V61 == W && V51 == W && V41 == W) {//右
            V31 = B;
            V41 = B;
            V51 = B;
            V61 = B;
            V71 = B;
            } else if (V71 == B && V61 == W && V51 == W && V41 == W) {
            V31 = B;
            V41 = B;
            V51 = B;
            V61 = B;
            } else if (V61 == B && V51 == W && V41 == W) {
            V31 = B;
            V41 = B;
            V51 = B;
            } else if (V51 == B && V41 == W) {
            V31 = B;
            V41 = B;
            } else if (V86 == B && V75 == W && V64 == W && V53 == W && V42 == W) {//右下
            V31 = B;
            V42 = B;
            V53 = B;
            V64 = B;
            V75 = B;
            } else if (V75 == B && V64 == W && V53 == W && V42 == W) {
            V31 = B;
            V42 = B;
            V53 = B;
            V64 = B;
            } else if (V64 == B && V53 == W && V42 == W) {
            V31 = B;
            V42 = B;
            V53 = B;
            } else if (V53 == B && V42 == W) {
            V31 = B;
            V42 = B;
            } else if (V38 == B && V37 == W && V36 == W && V35 == W && V34 == W && V33 == W && V32 == W) {//下
            V31 = B;
            V32 = B;
            V33 = B;
            V34 = B;
            V35 = B;
            V36 = B;
            V37 = B;
            } else if (V37 == B && V36 == W && V35 == W && V34 == W && V33 == W && V32 == W) {
            V31 = B;
            V32 = B;
            V33 = B;
            V34 = B;
            V35 = B;
            V36 = B;
            } else if (V36 == B && V35 == W && V34 == W && V33 == W && V32 == W) {
            V31 = B;
            V32 = B;
            V33 = B;
            V34 = B;
            V35 = B;
            } else if (V35 == B && V34 == W && V33 == W && V32 == W) {
            V31 = B;
            V32 = B;
            V33 = B;
            V34 = B;
            } else if (V34 == B && V33 == W && V32 == W) {
            V31 = B;
            V32 = B;
            V33 = B;
            } else if (V33 == B && V32 == W) {
            V31 = B;
            V32 = B;
            } else if (V13 == B && V22 == W) {//左下
            V31 = B;
            V22 = B;
            } else if (V33 == B && V32 == W) {//左
            V31 = B;
            V32 = B;
            } else {
            }
        //41
        if (V81 == B && V71 == W && V61 == W && V51 == W) {//右
            V41 = B;
            V51 = B;
            V61 = B;
            V71 = B;
            } else if (V71 == B && V61 == W && V51 == W) {
            V41 = B;
            V51 = B;
            V61 = B;
            } else if (V61 == B && V51 == W) {
            V31 = B;
            V41 = B;
            } else if (V85 == B && V74 == W && V63 == W && V52 == W) {//右下
            V41 = B;
            V52 = B;
            V63 = B;
            V74 = B;
            } else if (V74 == B && V63 == W && V52 == W) {
            V41 = B;
            V52 = B;
            V63 = B;
            } else if (V63 == B && V52 == W) {
            V41 = B;
            V52 = B;
            } else if (V48 == B && V47 == W && V46 == W && V45 == W && V44 == W && V43 == W && V42 == W) {//下
            V41 = B;
            V42 = B;
            V43 = B;
            V44 = B;
            V45 = B;
            V46 = B;
            V47 = B;
            } else if (V47 == B && V46 == W && V45 == W && V44 == W && V43 == W && V42 == W) {
            V41 = B;
            V42 = B;
            V43 = B;
            V44 = B;
            V45 = B;
            V46 = B;
            } else if (V46 == B && V45 == W && V44 == W && V43 == W && V42 == W) {
            V41 = B;
            V42 = B;
            V43 = B;
            V44 = B;
            V45 = B;
            } else if (V45 == B && V44 == W && V43 == W && V42 == W) {
            V41 = B;
            V42 = B;
            V43 = B;
            V44 = B;
            } else if (V44 == B && V43 == W && V42 == W) {
            V41 = B;
            V42 = B;
            V43 = B;
            } else if (V43 == B && V42 == W) {
            V41 = B;
            V42 = B;
            } else if (V14 == B && V23 == W && V32 == W) {//左下
            V41 = B;
            V32 = B;
            V23 = B;
            } else if (V23 == B && V32 == W) {
            V41 = B;
            V32 = B;
            } else if (V11 == B && V21 == W && V31 == W) {//左
            V41 = B;
            V31 = B;
            V21 = B;
            } else if (V21 == B && V31 == W) {
            V41 = B;
            V31 = B;
            } else {
            }
        //51
        if (V81 == B && V71 == W && V61 == W) {//右
            V51 = B;
            V61 = B;
            V71 = B;
            } else if (V71 == B && V61 == W) {
            V51 = B;
            V61 = B;
            } else if (V84 == B && V73 == W && V62 == W) {//右下
            V51 = B;
            V62 = B;
            V73 = B;
            } else if (V84 == B && V73 == W) {
            V51 = B;
            V62 = B;
            } else if (V58 == B && V57 == W && V56 == W && V55 == W && V54 == W && V53 == W && V52 == W) {//下
            V51 = B;
            V52 = B;
            V53 = B;
            V54 = B;
            V55 = B;
            V56 = B;
            V57 = B;
            } else if (V57 == B && V56 == W && V55 == W && V54 == W && V53 == W && V52 == W) {
            V51 = B;
            V52 = B;
            V53 = B;
            V54 = B;
            V55 = B;
            V56 = B;
            } else if (V56 == B && V55 == W && V54 == W && V53 == W && V52 == W) {
            V51 = B;
            V52 = B;
            V53 = B;
            V54 = B;
            V55 = B;
            } else if (V55 == B && V54 == W && V53 == W && V52 == W) {
            V51 = B;
            V52 = B;
            V53 = B;
            V54 = B;
            } else if (V54 == B && V53 == W && V52 == W) {
            V51 = B;
            V52 = B;
            V53 = B;
            } else if (V53 == B && V52 == W) {
            V51 = B;
            V52 = B;
            } else if (V15 == B && V24 == W && V33 == W && V42 == W) {//左下
            V51 = B;
            V42 = B;
            V33 = B;
            V24 = B;
            } else if (V24 == B && V33 == W && V42 == W) {
            V51 = B;
            V42 = B;
            V33 = B;
            } else if (V33 == B && V42 == W) {
            V51 = B;
            V42 = B;
            } else if (V11 == B && V21 == W && V31 == W && V41 == W) {//左
            V51 = B;
            V41 = B;
            V31 = B;
            V21 = B;
            } else if (V21 == B && V31 == W && V41 == W) {
            V51 = B;
            V41 = B;
            V31 = B;
            } else if (V31 == B && V41 == W) {
            V51 = B;
            V41 = B;
            } else {
            }
        //61
        if (V81 == B && V71 == W) {//右
            V61 = B;
            V71 = B;
            } else if (V83 == B && V72 == W) {//右下
            V61 = B;
            V72 = B;
            } else if (V68 == B && V67 == W && V66 == W && V65 == W && V64 == W && V63 == W && V62 == W) {//下
            V61 = B;
            V62 = B;
            V63 = B;
            V64 = B;
            V65 = B;
            V66 = B;
            V67 = B;
            } else if (V67 == B && V66 == W && V65 == W && V64 == W && V63 == W && V62 == W) {
            V61 = B;
            V62 = B;
            V63 = B;
            V64 = B;
            V65 = B;
            V66 = B;
            } else if (V66 == B && V65 == W && V64 == W && V63 == W && V62 == W) {
            V61 = B;
            V62 = B;
            V63 = B;
            V64 = B;
            V65 = B;
            } else if (V65 == B && V64 == W && V63 == W && V62 == W) {
            V61 = B;
            V62 = B;
            V63 = B;
            V64 = B;
            } else if (V64 == B && V63 == W && V62 == W) {
            V61 = B;
            V62 = B;
            V63 = B;
            } else if (V63 == B && V62 == W) {
            V61 = B;
            V62 = B;
            } else if (V16 == B && V25 == W && V34 == W && V43 == W && V52 == W) {//左下
            V61 = B;
            V52 = B;
            V43 = B;
            V34 = B;
            V25 = B;
            } else if (V25 == B && V34 == W && V43 == W && V52 == W) {
            V61 = B;
            V52 = B;
            V43 = B;
            V34 = B;
            } else if (V34 == B && V43 == W && V52 == W) {
            V61 = B;
            V52 = B;
            V43 = B;
            } else if (V43 == B && V52 == W) {
            V61 = B;
            V52 = B;
            } else if (V11 == B && V21 == W && V31 == W && V41 == W && V51 == W) {//左
            V61 = B;
            V51 = B;
            V41 = B;
            V31 = B;
            V21 = B;
            } else if (V21 == B && V31 == W && V41 == W && V51 == W) {
            V61 = B;
            V51 = B;
            V41 = B;
            V31 = B;
            } else if (V31 == B && V41 == W && V51 == W) {
            V61 = B;
            V51 = B;
            V41 = B;
            } else if (V41 == W && V51 == W) {
            V61 = B;
            V51 = B;
            } else {
            }
        //71
        if (V78 == B && V77 == W && V76 == W && V75 == W && V74 == W && V73 == W && V72 == W) {//下
            V71 = B;
            V72 = B;
            V73 = B;
            V74 = B;
            V75 = B;
            V76 = B;
            V77 = B;
            } else if (V77 == B && V76 == W && V75 == W && V74 == W && V73 == W && V72 == W) {
            V71 = B;
            V72 = B;
            V73 = B;
            V74 = B;
            V75 = B;
            V76 = B;
            } else if (V76 == B && V75 == W && V74 == W && V73 == W && V72 == W) {
            V71 = B;
            V72 = B;
            V73 = B;
            V74 = B;
            V75 = B;
            } else if (V75 == B && V74 == W && V73 == W && V72 == W) {
            V71 = B;
            V72 = B;
            V73 = B;
            V74 = B;
            } else if (V74 == B && V73 == W && V72 == W) {
            V71 = B;
            V72 = B;
            V73 = B;
            } else if (V73 == B && V72 == W) {
            V71 = B;
            V72 = B;
            } else if (V17 == B && V26 == W && V35 == W && V44 == W && V53 == W && V62 == W) {//左下
            V71 = B;
            V62 = B;
            V53 = B;
            V44 = B;
            V35 = B;
            V26 = B;
            } else if (V26 == B && V35 == W && V44 == W && V53 == W && V62 == W) {
            V71 = B;
            V62 = B;
            V53 = B;
            V44 = B;
            V35 = B;
            } else if (V35 == B && V44 == W && V53 == W && V62 == W) {
            V71 = B;
            V62 = B;
            V53 = B;
            V44 = B;
            } else if (V44 == B && V53 == W && V62 == W) {
            V71 = B;
            V62 = B;
            V53 = B;
            } else if (V53 == B && V62 == W) {
            V71 = B;
            V62 = B;
            } else if (V11 == B && V21 == W && V31 == W && V41 == W && V51 == W && V61 == W) {//左
            V71 = B;
            V61 = B;
            V51 = B;
            V41 = B;
            V31 = B;
            V21 = B;
            } else if (V21 == B && V31 == W && V41 == W && V51 == W && V61 == W) {
            V71 = B;
            V61 = B;
            V51 = B;
            V41 = B;
            V31 = B;
            } else if (V31 == B && V41 == W && V51 == W && V61 == W) {
            V71 = B;
            V61 = B;
            V51 = B;
            V41 = B;
            } else if (V41 == B && V51 == W && V61 == W) {
            V71 = B;
            V61 = B;
            V51 = B;
            } else if (V51 == B && V61 == W) {
            V71 = B;
            V61 = B;
            } else {
            }
        //81
        if (V88 == B && V87 == W && V86 == W && V85 == W && V84 == W && V83 == W && V82 == W) {//下
            V81 = B;
            V82 = B;
            V83 = B;
            V84 = B;
            V85 = B;
            V86 = B;
            V87 = B;
            } else if (V87 == B && V86 == W && V85 == W && V84 == W && V83 == W && V82 == W) {
            V81 = B;
            V82 = B;
            V83 = B;
            V84 = B;
            V85 = B;
            V86 = B;
            } else if (V86 == B && V85 == W && V84 == W && V83 == W && V82 == W) {
            V81 = B;
            V82 = B;
            V83 = B;
            V84 = B;
            V85 = B;
            } else if (V85 == B && V84 == W && V83 == W && V82 == W) {
            V81 = B;
            V82 = B;
            V83 = B;
            V84 = B;
            } else if (V84 == B && V83 == W && V82 == W) {
            V81 = B;
            V82 = B;
            V83 = B;
            } else if (V83 == B && V82 == W) {
            V81 = B;
            V82 = B;
            } else if (V18 == B && V27 == W && V36 == W && V45 == W && V54 == W && V63 == W && V72 == W) {//左下
            V81 = B;
            V72 = B;
            V63 = B;
            V54 = B;
            V45 = B;
            V36 = B;
            V27 = B;
            } else if (V27 == B && V36 == W && V45 == W && V54 == W && V63 == W && V72 == W) {
            V81 = B;
            V72 = B;
            V63 = B;
            V54 = B;
            V45 = B;
            V36 = B;
            } else if (V36 == B && V45 == W && V54 == W && V63 == W && V72 == W) {
            V81 = B;
            V72 = B;
            V63 = B;
            V54 = B;
            V45 = B;
            } else if (V45 == B && V54 == W && V63 == W && V72 == W) {
            V81 = B;
            V72 = B;
            V63 = B;
            V54 = B;
            } else if (V54 == B && V63 == W && V72 == W) {
            V81 = B;
            V72 = B;
            V63 = B;
            } else if (V63 == B && V72 == W) {
            V81 = B;
            V72 = B;
            } else if (V11 == B && V21 == W && V31 == W && V41 == W && V51 == W && V61 == W && V71 == W) {//左
            V81 = B;
            V71 = B;
            V61 = B;
            V51 = B;
            V41 = B;
            V31 = B;
            V21 = B;
            } else if (V21 == B && V31 == W && V41 == W && V51 == W && V61 == W && V71 == W) {
            V81 = B;
            V71 = B;
            V61 = B;
            V51 = B;
            V41 = B;
            V31 = B;
            } else if (V31 == B && V41 == W && V51 == W && V61 == W && V71 == W) {
            V81 = B;
            V71 = B;
            V61 = B;
            V51 = B;
            V41 = B;
            } else if (V41 == B && V51 == W && V61 == W && V71 == W) {
            V81 = B;
            V71 = B;
            V61 = B;
            V51 = B;
            } else if (V51 == B && V61 == W && V71 == W) {
            V81 = B;
            V71 = B;
            V61 = B;
            } else if (V61 == W && V71 == W) {
            V81 = B;
            V71 = B;
            } else {
            }
        //V12
        if (V82 == B && V72 == W && V62 == W && V52 == W && V42 == W && V32 == W && V22 == W) {//右
            V12 = B;
            V22 = B;
            V32 = B;
            V42 = B;
            V52 = B;
            V62 = B;
            V72 = B;
            } else if (V72 == B && V62 == W && V52 == W && V42 == W && V32 == W && V22 == W) {
            V12 = B;
            V22 = B;
            V32 = B;
            V42 = B;
            V52 = B;
            V62 = B;
            } else if (V62 == B && V52 == W && V42 == W && V32 == W && V22 == W) {
            V12 = B;
            V22 = B;
            V32 = B;
            V42 = B;
            V52 = B;
            } else if (V52 == B && V42 == W && V32 == W && V22 == W) {
            V12 = B;
            V22 = B;
            V32 = B;
            V42 = B;
            } else if (V42 == B && V32 == W && V22 == W) {
            V12 = B;
            V22 = B;
            V32 = B;
            } else if (V32 == B && V22 == W) {
            V12 = B;
            V22 = B;
            } else if (V78 == B && V67 == W && V56 == W && V45 == W && V34 == W && V23 == W) {//右下
            V12 = B;
            V23 = B;
            V34 = B;
            V45 = B;
            V56 = B;
            V67 = B;
            } else if (V67 == B && V56 == W && V45 == W && V34 == W && V23 == W) {
            V12 = B;
            V23 = B;
            V34 = B;
            V45 = B;
            V56 = B;
            } else if (V56 == B && V45 == W && V34 == W && V23 == W) {
            V12 = B;
            V23 = B;
            V34 = B;
            V45 = B;
            } else if (V45 == B && V34 == W && V23 == W) {
            V12 = B;
            V23 = B;
            V34 = B;
            } else if (V33 == B && V22 == W) {
            V12 = B;
            V23 = B;
            } else if (V18 == B && V17 == W && V16 == W && V15 == W && V14 == W && V13 == W) {//下
            V12 = B;
            V13 = B;
            V14 = B;
            V15 = B;
            V16 = B;
            V17 = B;
            } else if (V17 == B && V16 == W && V15 == W && V14 == W && V13 == W) {
            V12 = B;
            V13 = B;
            V14 = B;
            V15 = B;
            V16 = B;
            } else if (V16 == B && V15 == W && V14 == W && V13 == W) {
            V12 = B;
            V13 = B;
            V14 = B;
            V15 = B;
            } else if (V15 == B && V14 == W && V13 == W) {
            V12 = B;
            V13 = B;
            V14 = B;
            } else if (V14 == B && V13 == W) {
            V12 = B;
            V13 = B;
            } else { 
            }
        //V22
        if (V82 == B && V72 == W && V62 == W && V52 == W && V42 == W && V32 == W) {//横
            V22 = B;
            V32 = B;
            V42 = B;
            V52 = B;
            V62 = B;
            V72 = B;
            } else if (V72 == B && V62 == W && V52 == W && V42 == W && V32 == W) {
            V22 = B;
            V32 = B;
            V42 = B;
            V52 = B;
            V62 = B;
            } else if (V62 == B && V52 == W && V42 == W && V32 == W) {
            V22 = B;
            V32 = B;
            V42 = B;
            V52 = B;
            } else if (V52 == B && V42 == W && V32 == W) {
            V22 = B;
            V32 = B;
            V42 = B;
            } else if (V42 == B && V32 == W) {
            V22 = B;
            V32 = B;
            } else if (V88 == B && V77 == W && V66 == W && V55 == W && V44 == W && V33 == W) {//斜
            V22 = B;
            V33 = B;
            V44 = B;
            V55 = B;
            V66 = B;
            V77 = B;
            } else if (V77 == B && V66 == W && V55 == W && V44 == W && V33 == W) {
            V22 = B;
            V33 = B;
            V44 = B;
            V55 = B;
            V66 = B;
            } else if (V66 == B && V55 == W && V44 == W && V33 == W) {
            V22 = B;
            V33 = B;
            V44 = B;
            V55 = B;
            } else if (V55 == B && V44 == W && V33 == W) {
            V22 = B;
            V33 = B;
            V44 = B;
            } else if (V44 == B && V33 == W) {
            V22 = B;
            V33 = B;
            } else if (V28 == B && V27 == W && V26 == W && V25 == W && V24 == W && V23 == W) {//縦
            V22 = B;
            V23 = B;
            V24 = B;
            V25 = B;
            V26 = B;
            V27 = B;
            } else if (V27 == B && V26 == W && V25 == W && V24 == W && V23 == W) {
            V22 = B;
            V23 = B;
            V24 = B;
            V25 = B;
            V26 = B;
            } else if (V26 == B && V25 == W && V24 == W && V23 == W) {
            V22 = B;
            V23 = B;
            V24 = B;
            V25 = B;
            } else if (V25 == B && V24 == W && V23 == W) {
            V22 = B;
            V23 = B;
            V24 = B;
            } else if (V24 == B && V23 == W) {
            V22 = B;
            V23 = B;
            }else{
            }
        //32
        if (V82 == B && V72 == W && V62 == W && V52 == W && V42 == W) {//右
            V32 = B;
            V42 = B;
            V52 = B;
            V62 = B;
            V72 = B;
            } else if (V72 == B && V62 == W && V52 == W && V42 == W) {
            V32 = B;
            V42 = B;
            V52 = B;
            V62 = B;
            } else if (V62 == B && V52 == W && V42 == W) {
            V32 = B;
            V42 = B;
            V52 = B;
            } else if (V52 == B && V42 == W) {
            V32 = B;
            V42 = B;
            } else if (V87 == B && V76 == W && V65 == W && V54 == W && V43 == W) {//右下
            V32 = B;
            V43 = B;
            V54 = B;
            V65 = B;
            V76 = B;
            } else if (V76 == B && V65 == W && V54 == W && V43 == W) {
            V32 = B;
            V43 = B;
            V54 = B;
            V65 = B;
            } else if (V65 == B && V54 == W && V43 == W) {
            V32 = B;
            V43 = B;
            V54 = B;
            } else if (V54 == B && V43 == W) {
            V32 = B;
            V43 = B;
            } else if (V38 == B && V37 == W && V36 == W && V35 == W && V34 == W && V33 == W) {//下
            V32 = B;
            V33 = B;
            V34 = B;
            V35 = B;
            V36 = B;
            V37 = B;
            } else if (V37 == B && V36 == W && V35 == W && V34 == W && V33 == W) {
            V32 = B;
            V33 = B;
            V34 = B;
            V35 = B;
            V36 = B;
            } else if (V36 == B && V35 == W && V34 == W && V33 == W) {
            V32 = B;
            V33 = B;
            V34 = B;
            V35 = B;
            } else if (V35 == B && V34 == W && V33 == W) {
            V32 = B;
            V33 = B;
            V34 = B;
            } else if (V34 == B && V33 == W) {
            V32 = B;
            V33 = B;
            } else if (V14 == B && V23 == W) {//左下
            V32 = B;
            V23 = B;
            } else if (V12 == B && V22 == W) {//左
            V32 = B;
            V22 = B;
            } else {
            }
        //42
        if (V82 == B && V72 == W && V62 == W && V52 == W) {//右
            V42 = B;
            V52 = B;
            V62 = B;
            V72 = B;
            } else if (V72 == B && V62 == W && V52 == W) {
            V42 = B;
            V52 = B;
            V62 = B;
            } else if (V62 == B && V52 == W) {
            V42 = B;
            V52 = B;
            } else if (V86 == B && V75 == W && V64 == W && V53 == W) {//右下
            V42 = B;
            V53 = B;
            V64 = B;
            V75 = B;
            } else if (V75 == B && V64 == W && V53 == W) {
            V42 = B;
            V53 = B;
            V64 = B;
            } else if (V64 == B && V53 == W) {
            V42 = B;
            V53 = B;
            } else if (V48 == B && V47 == W && V46 == W && V45 == W && V44 == W && V43 == W) {//下
            V42 = B;
            V43 = B;
            V44 = B;
            V45 = B;
            V46 = B;
            V47 = B;
            } else if (V47 == B && V46 == W && V45 == W && V44 == W && V43 == W) {
            V42 = B;
            V43 = B;
            V44 = B;
            V45 = B;
            V46 = B;
            } else if (V46 == B && V45 == W && V44 == W && V43 == W) {
            V42 = B;
            V43 = B;
            V44 = B;
            V45 = B;
            } else if (V45 == B && V44 == W && V43 == W) {
            V42 = B;
            V43 = B;
            V44 = B;
            } else if (V44 == B && V43 == W) {
            V42 = B;
            V43 = B;
            } else if (V15 == B && V24 == W && V33 == W) {//左下
            V42 = B;
            V33 = B;
            V24 = B;
            } else if (V24 == B && V33 == W) {
            V42 = B;
            V33 = B;
            } else if (V12 == B && V22 == W && V32 == W) {//左
            V42 = B;
            V32 = B;
            V22 = B;
            } else if (V22 == B && V32 == W) {
            V42 = B;
            V32 = B;
            } else {
            }
        //52
        if (V82 == B && V72 == W && V62 == W) {//右
            V52 = B;
            V62 = B;
            V72 = B;
            } else if (V72 == B && V62 == W) {
            V52 = B;
            V62 = B;
            } else if (V85 == B && V74 == W && V63 == W) {//右下
            V52 = B;
            V63 = B;
            V74 = B;
            } else if (V74 == B && V63 == W) {
            V52 = B;
            V63 = B;
            } else if (V58 == B && V57 == W && V56 == W && V55 == W && V54 == W && V53 == W) {//下
            V52 = B;
            V53 = B;
            V54 = B;
            V55 = B;
            V56 = B;
            V57 = B;
            } else if (V57 == B && V56 == W && V55 == W && V54 == W && V53 == W) {
            V52 = B;
            V53 = B;
            V54 = B;
            V55 = B;
            V56 = B;
            } else if (V56 == B && V55 == W && V54 == W && V53 == W) {
            V52 = B;
            V53 = B;
            V54 = B;
            V55 = B;
            } else if (V55 == B && V54 == W && V53 == W) {
            V52 = B;
            V53 = B;
            V54 = B;
            } else if (V54 == B && V53 == W) {
            V52 = B;
            V53 = B;
            } else if (V16 == B && V25 == W && V34 == W && V43 == W) {//左下
            V52 = B;
            V43 = B;
            V34 = B;
            V25 = B;
            } else if (V25 == B && V34 == W && V43 == W) {
            V52 = B;
            V43 = B;
            V34 = B;
            } else if (V34 == B && V43 == W) {
            V52 = B;
            V43 = B;
            } else if (V12 == B && V22 == W && V32 == W && V42 == W) {//左
            V52 = B;
            V42 = B;
            V32 = B;
            V22 = B;
            } else if (V22 == B && V32 == W && V42 == W) {
            V52 = B;
            V42 = B;
            V32 = B;
            } else if (V32 == B && V42 == W) {
            V52 = B;
            V42 = B;
            } else {
            }
        //62
        if (V82 == B && V72 == W) {//右
            V62 = B;
            V72 = B;
            } else if (V84 == B && V73 == W) {//右下
            V62 = B;
            V73 = B;
            } else if (V68 == B && V67 == W && V66 == W && V65 == W && V64 == W && V63 == W) {//下
            V62 = B;
            V63 = B;
            V64 = B;
            V65 = B;
            V66 = B;
            V67 = B;
            } else if (V67 == B && V66 == W && V65 == W && V64 == W && V63 == W) {
            V62 = B;
            V63 = B;
            V64 = B;
            V65 = B;
            V66 = B;
            } else if (V66 == B && V65 == W && V64 == W && V63 == W) {
            V62 = B;
            V63 = B;
            V64 = B;
            V65 = B;
            } else if (V65 == B && V64 == W && V63 == W) {
            V62 = B;
            V63 = B;
            V64 = B;
            } else if (V64 == B && V63 == W) {
            V62 = B;
            V63 = B;
            } else if (V17 == B && V26 == W && V35 == W && V44 == W && V53 == W) {//左下
            V62 = B;
            V53 = B;
            V44 = B;
            V35 = B;
            V26 = B;
            } else if (V26 == B && V35 == W && V44 == W && V53 == W) {
            V62 = B;
            V53 = B;
            V44 = B;
            V35 = B;
            } else if (V35 == B && V44 == W && V53 == W) {
            V62 = B;
            V53 = B;
            V44 = B;
            } else if (V44 == B && V53 == W) {
            V62 = B;
            V53 = B;
            } else if (V12 == B && V22 == W && V32 == W && V42 == W && V52 == W) {//左
            V62 = B;
            V52 = B;
            V42 = B;
            V32 = B;
            V22 = B;
            } else if (V22 == B && V32 == W && V42 == W && V52 == W) {
            V62 = B;
            V52 = B;
            V42 = B;
            V32 = B;
            } else if (V32 == B && V42 == W && V52 == W) {
            V62 = B;
            V52 = B;
            V42 = B;
            } else if (V42 == B && V52 == W) {
            V62 = B;
            V52 = B;
            }else{
            }
        //72
        if (V78 == B && V77 == W && V76 == W && V75 == W && V74 == W && V73 == W) {//下
            V72 = B;
            V73 = B;
            V74 = B;
            V75 = B;
            V76 = B;
            V77 = B;
            } else if (V77 == B && V76 == W && V75 == W && V74 == W && V73 == W) {
            V72 = B;
            V73 = B;
            V74 = B;
            V75 = B;
            V76 = B;
            } else if (V76 == B && V75 == W && V74 == W && V73 == W) {
            V72 = B;
            V73 = B;
            V74 = B;
            V75 = B;
            } else if (V75 == B && V74 == W && V73 == W) {
            V72 = B;
            V73 = B;
            V74 = B;
            } else if (V74 == B && V73 == W) {
            V73 = B;
            V74 = B;
            } else if (V18 == B && V27 == W && V36 == W && V45 == W && V54 == W && V63 == W) {//左下
            V72 = B;
            V63 = B;
            V54 = B;
            V45 = B;
            V36 = B;
            V27 = B;
            } else if (V27 == B && V36 == W && V45 == W && V54 == W && V63 == W) {
            V72 = B;
            V63 = B;
            V54 = B;
            V45 = B;
            V36 = B;
            } else if (V36 == B && V45 == W && V54 == W && V63 == W) {
            V72 = B;
            V63 = B;
            V54 = B;
            V45 = B;
            } else if (V45 == B && V54 == W && V63 == W) {
            V72 = B;
            V63 = B;
            V54 = B;
            } else if (V54 == B && V63 == W) {
            V72 = B;
            V63 = B;
            } else if (V12 == B && V22 == W && V32 == W && V42 == W && V52 == W && V62 == W) {//左ここから
            V72 = B;
            V62 = B;
            V52 = B;
            V42 = B;
            V32 = B;
            V22 = B;
            } else if (V22 == B && V32 == W && V42 == W && V52 == W && V62 == W) {
            V72 = B;
            V62 = B;
            V52 = B;
            V42 = B;
            V32 = B;
            } else if (V32 == B && V42 == W && V52 == W && V62 == W) {
            V72 = B;
            V62 = B;
            V52 = B;
            V42 = B;
            } else if (V42 == B && V52 == W && V62 == W) {
            V72 = B;
            V62 = B;
            V52 = B;
            } else if (V52 == B && V62 == W) {
            V72 = B;
            V62 = B;
            } else {
            }
        //82
        if (V88 == B && V87 == W && V86 == W && V85 == W && V84 == W && V83 == W) {//下
            V82 = B;
            V83 = B;
            V84 = B;
            V85 = B;
            V86 = B;
            V87 = B;
            } else if (V87 == B && V86 == W && V85 == W && V84 == W && V83 == W) {
            V82 = B;
            V83 = B;
            V84 = B;
            V85 = B;
            V86 = B;
            } else if (V86 == B && V85 == W && V84 == W && V83 == W) {
            V82 = B;
            V83 = B;
            V84 = B;
            V85 = B;
            } else if (V85 == B && V84 == W && V83 == W) {
            V82 = B;
            V83 = B;
            V84 = B;
            } else if (V84 == B && V83 == W) {
            V82 = B;
            V83 = B;
            } else if (V28 == B && V37 == W && V46 == W && V55 == W && V64 == W && V73 == W) {//左下
            V82 = B;
            V73 = B;
            V64 = B;
            V55 = B;
            V46 = B;
            V37 = B;
            } else if (V37 == B && V46 == W && V55 == W && V64 == W && V73 == W) {
            V82 = B;
            V73 = B;
            V64 = B;
            V55 = B;
            V46 = B;
            } else if (V46 == B && V55 == W && V64 == W && V73 == W) {
            V82 = B;
            V73 = B;
            V64 = B;
            V55 = B;
            } else if (V55 == B && V64 == W && V73 == W) {
            V82 = B;
            V73 = B;
            V64 = B;
            } else if (V64 == B && V73 == W) {
            V82 = B;
            V73 = B;
            } else if (V12 == B && V22 == W && V32 == W && V42 == W && V52 == W && V62 == W && V72 == W) {//左
            V82 = B;
            V72 = B;
            V62 = B;
            V52 = B;
            V42 = B;
            V32 = B;
            V22 = B;
            } else if (V22 == B && V32 == W && V42 == W && V52 == W && V62 == W && V72 == W) {
            V82 = B;
            V72 = B;
            V62 = B;
            V52 = B;
            V42 = B;
            V32 = B;
            } else if (V32 == B && V42 == W && V52 == W && V62 == W && V72 == W) {
            V82 = B;
            V72 = B;
            V62 = B;
            V52 = B;
            V42 = B;
            } else if (V42 == B && V52 == W && V62 == W && V72 == W) {
            V82 = B;
            V72 = B;
            V62 = B;
            V52 = B;
            } else if (V52 == B && V62 == W && V72 == W) {
            V82 = B;
            V72 = B;
            V62 = B;
            } else if (V62 == B && V72 == W) {
            V82 = B;
            V72 = B;
            } else {
            }
        //V13
        if (V11 == B && V12 == W) {//上
            V13 = B;
            V12 = B;
            } else if (V31 == B && V22 ==W) {//右上
            V13 = B;
            V22 = B;
            } else if (V83 == B && V73 == W && V63 == W && V53 == W && V43 == W && V33 == W && V23 == W) {//右
            V13 = B;
            V23 = B;
            V33 = B;
            V43 = B;
            V53 = B;
            V63 = B;
            V73 = B;
            } else if (V73 == B && V63 == W && V53 == W && V43 == W && V33 == W && V23 == W) {
            V13 = B;
            V23 = B;
            V33 = B;
            V43 = B;
            V53 = B;
            V63 = B;
            } else if (V63 == B && V53 == W && V43 == W && V33 == W && V23 == W) {
            V13 = B;
            V23 = B;
            V33 = B;
            V43 = B;
            V53 = B;
            } else if (V53 == B && V43 == W && V33 == W && V23 == W) {
            V13 = B;
            V23 = B;
            V33 = B;
            V43 = B;
            } else if (V43 == B && V33 == W && V23 == W) {
            V13 = B;
            V23 = B;
            V33 = B;
            } else if (V33 == B && V23 == W) {
            V13 = B;
            V23 = B;
            } else if (V68 == B && V57 == W && V46 == W && V35 == W && V24 == W) {//右下
            V13 = B;
            V24 = B;
            V35 = B;
            V46 = B;
            V57 = B;
            } else if (V57 == B && V46 == W && V35 == W && V24 == W) {
            V13 = B;
            V24 = B;
            V35 = B;
            V46 = B;
            } else if (V46 == B && V35 == W && V24 == W) {
            V13 = B;
            V24 = B;
            V35 = B;
            } else if (V35 == B && V24 == W) {
            V13 = B;
            V24 = B;
            } else if (V18 == B && V17 == W && V16 == W && V15 == W && V14 == W) {//下
            V13 = B;
            V14 = B;
            V15 = B;
            V16 = B;
            V17 = B;
            } else if (V17 == B && V16 == W && V15 == W && V14 == W) {
            V13 = B;
            V14 = B;
            V15 = B;
            V16 = B;
            } else if (V16 == B && V15 == W && V14 == W) {
            V13 = B;
            V14 = B;
            V15 = B;
            } else if (V14 == W && V13 == W) {
            V13 = B;
            V14 = B;
            } else { 
            }
        //V23
        if (V21 == B && V22 == W){//上
            V23 = B;
            V22 = B;
        }else if (V41 == B && V32 == W){//右上
            V23 = B;
            V32 = B;
        }else if (V83 == B && V73 == W && V63 == W && V53 == W && V43 == W && V33 == W) {//右
                V23 = B;
                V33 = B;
                V43 = B;
                V53 = B;
                V63 = B;
                V73 = B;
            } else if (V73 == B && V63 == W && V53 == W && V43 == W && V33 == W) {
            V23 = B;
            V33 = B;
            V43 = B;
            V53 = B;
            V63 = B;
            } else if (V63 == B && V53 == W && V43 == W && V33 == W) {
            V23 = B;
            V33 = B;
            V43 = B;
            V53 = B;
            } else if (V53 == B && V43 == W && V33 == W) {
            V23 = B;
            V33 = B;
            V43 = B;
            } else if (V43 == B && V33 == W) {
            V23 = B;
            V33 = B;
            } else if (V78 == B && V67 == W && V56 == W && V45 == W && V34 == W) {//右下
            V23 = B;
            V34 = B;
            V45 = B;
            V56 = B;
            V67 = B;
            } else if (V67 == B && V56 == W && V45 == W && V34 == W) {
            V23 = B;
            V34 = B;
            V45 = B;
            V56 = B;
            } else if (V56 == B && V45 == W && V34 == W) {
            V23 = B;
            V34 = B;
            V45 = B;
            } else if (V45 == B && V34 == W) {
            V23 = B;
            V34 = B;
            } else if (V28 == B && V27 == W && V26 == W && V25 == W && V24 == W && V23 == W) {//下
            V23 = B;
            V24 = B;
            V25 = B;
            V26 = B;
            V27 = B;
            } else if (V27 == B && V26 == W && V25 == W && V24 == W && V23 == W) {
            V23 = B;
            V24 = B;
            V25 = B;
            V26 = B;
            } else if (V26 == B && V25 == W && V24 == W && V23 == W) {
            V22 = B;
            V23 = B;
            V24 = B;
            V25 = B;
            } else if (V25 == B && V24 == W && V23 == W) {
            V22 = B;
            V23 = B;
            V24 = B;
            } else if (V24 == B && V23 == W) {
            V22 = B;
            V23 = B;
            }else{
            }
        //33
        if (V31 == B && V32 == W) {//上
            V33 = B;
            V32 = B;
            }else if (V51 == B && V42 == W) {//右上
            V33 = B;
            V42 = B;
            }else if (V83 == B && V73 == W && V63 == W && V53 == W && V43 == W) {//右
            V33 = B;
            V43 = B;
            V53 = B;
            V63 = B;
            V73 = B;
            } else if (V73 == B && V63 == W && V53 == W && V43 == W) {
            V33 = B;
            V43 = B;
            V53 = B;
            V63 = B;
            } else if (V63 == B && V53 == W && V43 == W) {
            V33 = B;
            V43 = B;
            V53 = B;
            } else if (V53 == B && V43 == W) {
            V33 = B;
            V43 = B;
            } else if (V88 == B && V77 == W && V66 == W && V55 == W && V44 == W) {//右下
            V33 = B;
            V44 = B;
            V55 = B;
            V66 = B;
            V77 = B;
            } else if (V77 == B && V66 == W && V55 == W && V44 == W) {
            V33 = B;
            V44 = B;
            V55 = B;
            V66 = B;
            } else if (V66 == B && V55 == W && V44 == W) {
            V33 = B;
            V44 = B;
            V55 = B;
            } else if (V55 == B && V44 == W) {
            V33 = B;
            V44 = B;
            } else if (V38 == B && V37 == W && V36 == W && V35 == W && V34 == W) {//下
            V33 = B;
            V34 = B;
            V35 = B;
            V36 = B;
            V37 = B;
            } else if (V37 == B && V36 == W && V35 == W && V34 == W) {
            V33 = B;
            V34 = B;
            V35 = B;
            V36 = B;
            } else if (V36 == B && V35 == W && V34 == W) {
            V33 = B;
            V34 = B;
            V35 = B;
            } else if (V35 == B && V34 == W) {
            V33 = B;
            V34 = B;
            } else if (V15 == B && V24 == W) {//左下
            V33 = B;
            V24 = B;
            } else if (V13 == B && V23 == W) {//左
            V33 = B;
            V23 = B;
            } else {
            }
        //43
        if (V41 == B && V42 == W) {//上
            V43 = B;
            V42 = B;
            }else if (V41 ==B &&V32 == W) {//右上
            V43 = B;
            V32 = B;
            }else if (V83 == B && V73 == W && V63 == W && V53 == W) {//右
            V43 = B;
            V53 = B;
            V63 = B;
            V73 = B;
            } else if (V73 == B && V63 == W && V53 == W) {
            V43 = B;
            V53 = B;
            V63 = B;
            } else if (V63 == B && V53 == W) {
            V43 = B;
            V52 = B;
            } else if (V87 == B && V76 == W && V65 == W && V54 == W) {//右下
            V43 = B;
            V54 = B;
            V65 = B;
            V76 = B;
            } else if (V76 == B && V65 == W && V54 == W) {
            V43 = B;
            V54 = B;
            V65 = B;
            } else if (V65 == B && V54 == W) {
            V43 = B;
            V54 = B;
            } else if (V48 == B && V47 == W && V46 == W && V45 == W && V44 == W) {//下
            V43 = B;
            V44 = B;
            V45 = B;
            V46 = B;
            V47 = B;
            } else if (V47 == B && V46 == W && V45 == W && V44 == W) {
            V43 = B;
            V44 = B;
            V45 = B;
            V46 = B;
            } else if (V46 == B && V45 == W && V44 == W) {
            V43 = B;
            V44 = B;
            V45 = B;
            } else if (V45 == B && V44 == W) {
            V43 = B;
            V44 = B;
            } else if (V16 == B && V25 == W && V34 == W) {//左下
            V43 = B;
            V34 = B;
            V25 = B;
            } else if (V25 == B && V34 == W) {
            V43 = B;
            V34 = B;
            } else if (V13 == B && V23 == W && V33 == W) {//左
            V43 = B;
            V33 = B;
            V23 = B;
            } else if (V23 == B && V33 == W) {
            V43 = B;
            V33 = B;
            } else if (V21 == B && V32 == W) {//左上
            V43 = B;
            V32 = B;
            } else {
            }
        //53
        if (V51 == B && V52 == W) {//上
            V53 = B;
            V52 = B;
            } else if(V71 == B && V62 == W) {//右上
            V53 = B;
            V52 = B;
            } else if(V83 == B && V73 == W && V63 == W) {//右
            V53 = B;
            V63 = B;
            V73 = B;
            } else if (V73 == B && V63 == W) {
            V53 = B;
            V63 = B;
            } else if (V86 == B && V75 == W && V64 == W) {//右下
            V53 = B;
            V64 = B;
            V75 = B;
            } else if (V75 == B && V64 == W) {
            V53 = B;
            V64 = B;
            } else if (V58 == B && V57 == W && V56 == W && V55 == W && V54 == W) {//下
            V53 = B;
            V54 = B;
            V55 = B;
            V56 = B;
            V57 = B;
            } else if (V57 == B && V56 == W && V55 == W && V54 == W) {
            V53 = B;
            V54 = B;
            V55 = B;
            V56 = B;
            } else if (V56 == B && V55 == W && V54 == W) {
            V53 = B;
            V54 = B;
            V55 = B;
            } else if (V55 == B && V54 == W) {
            V53 = B;
            V54 = B;
            } else if (V17 == B && V26 == W && V35 == W && V44 == W) {//左下
            V53 = B;
            V44 = B;
            V35 = B;
            V26 = B;
            } else if (V26 == B && V35 == W && V44 == W) {
            V53 = B;
            V44 = B;
            V35 = B;
            } else if (V35 == B && V44 == W) {
            V53 = B;
            V44 = B;
            } else if (V13 == B && V23 == W && V33 == W && V43 == W) {//左
            V53 = B;
            V43 = B;
            V33 = B;
            V23 = B;
            } else if (V23 == B && V33 == W && V43 == W) {
            V53 = B;
            V43 = B;
            V33 = B;
            } else if (V33 == B && V43 == W) {
            V53 = B;
            V43 = B;
            } else if (V31 == B && V42 == W) {
                V53 = B;
                V42 = B;
            } else {
            }
        //63
        if (V61 == B && V62 == W){//上
            V63 = B;
            V62 = B;
            }else if(V81 == B && V72 == W){//右上
            V63 = B;
            V72 = B;
            }else if(V83 == B && V73 == W) {//右
            V63 = B;
            V73 = B;
            } else if (V85 == B && V74 == W) {//右下
            V63 = B;
            V74 = B;
            } else if (V68 == B && V67 == W && V66 == W && V65 == W && V64 == W) {//下
            V63 = B;
            V64 = B;
            V65 = B;
            V66 = B;
            V67 = B;
            } else if (V67 == B && V66 == W && V65 == W && V64 == W) {
            V63 = B;
            V64 = B;
            V65 = B;
            V66 = B;
            } else if (V66 == B && V65 == W && V64 == W) {
            V63 = B;
            V64 = B;
            V65 = B;
            } else if (V65 == B && V64 == W) {
            V63 = B;
            V64 = B;
            } else if (V18 == B && V27 == W && V36 == W && V45 == W && V54 == W) {//左下
            V63 = B;
            V54 = B;
            V45 = B;
            V36 = B;
            V27 = B;
            } else if (V27 == B && V36 == W && V45 == W && V54 == W) {
            V63 = B;
            V54 = B;
            V45 = B;
            V36 = B;
            } else if (V36 == B && V45 == W && V54 == W) {
            V63 = B;
            V54 = B;
            V45 = B;
            } else if (V45 == B && V54 == W) {
            V63 = B;
            V54 = B;
            } else if (V13 == B && V23 == W && V33 == W && V43 == W && V53 == W) {//左
            V63 = B;
            V53 = B;
            V43 = B;
            V33 = B;
            V23 = B;
            } else if (V23 == B && V33 == W && V43 == W && V53 == W) {
            V63 = B;
            V53 = B;
            V43 = B;
            V33 = B;
            } else if (V33 == B && V43 == W && V53 == W) {
            V63 = B;
            V53 = B;
            V43 = B;
            } else if (V43 == B && V53 == W) {
            V63 = B;
            V53 = B;
            }else{
            }
        //73
        if (V71 == B && V72 == W){//上
            V73 = B;
            V72 = B;
        }else if (V78 == B && V77 == W && V76 == W && V75 == W && V74 == W) {//下
            V73 = B;
            V74 = B;
            V75 = B;
            V76 = B;
            V77 = B;
            } else if (V77 == B && V76 == W && V75 == W && V74 == W) {
            V73 = B;
            V74 = B;
            V75 = B;
            V76 = B;
            } else if (V76 == B && V75 == W && V74 == W) {
            V73 = B;
            V74 = B;
            V75 = B;
            } else if (V75 == B && V74 == W) {
            V73 = B;
            V74 = B;
            } else if (V28 == B && V37 == W && V46 == W && V55 == W && V64 == W) {//左下
            V73 = B;
            V64 = B;
            V55 = B;
            V46 = B;
            V37 = B;
            } else if (V37 == B && V46 == W && V55 == W && V64 == W) {
            V73 = B;
            V64 = B;
            V55 = B;
            V46 = B;
            } else if (V46 == B && V55 == W && V64 == W) {
            V73 = B;
            V64 = B;
            V55 = B;
            } else if (V55 == B && V64 == W) {
            V73 = B;
            V64 = B;
            } else if (V13 == B && V23 == W && V33 == W && V43 == W && V53 == W && V62 == W) {//左
            V73 = B;
            V63 = B;
            V53 = B;
            V43 = B;
            V33 = B;
            V23 = B;
            } else if (V23 == B && V33 == W && V43 == W && V53 == W && V63 == W) {
            V73 = B;
            V63 = B;
            V53 = B;
            V43 = B;
            V33 = B;
            } else if (V33 == B && V43 == W && V53 == W && V63 == W) {
            V73 = B;
            V63 = B;
            V53 = B;
            V43 = B;
            } else if (V43 == B && V53 == W && V63 == W) {
            V73 = B;
            V63 = B;
            V53 = B;
            } else if (V53 == B && V63 == W) {
            V73 = B;
            V63 = B;
            } else if (V51 == B && V62 == W){//左上
            V73 = B;
            V62 = B;
            } else {
            }
        //83
        if (V81 == B && V82 == W) {// 上
            V83 = B;
            V84 = B;
            }else if (V88 == B && V87 == W && V86 == W && V85 == W && V84 == W) {//下
            V83 = B;
            V84 = B;
            V85 = B;
            V86 = B;
            V87 = B;
            } else if (V87 == B && V86 == W && V85 == W && V84 == W) {
            V83 = B;
            V84 = B;
            V85 = B;
            V86 = B;
            } else if (V86 == B && V85 == W && V84 == W) {
            V83 = B;
            V84 = B;
            V85 = B;
            } else if (V86 == B && V85 == W) {
            V83 = B;
            V84 = B;
            } else if (V38 == B && V47 == W && V56 == W && V65 == W && V74 == W) {//左下
            V83 = B;
            V74 = B;
            V65 = B;
            V56 = B;
            V47 = B;
            } else if (V47 == B && V56 == W && V65 == W && V74 == W) {
            V83 = B;
            V74 = B;
            V65 = B;
            V56 = B;
            } else if (V56 == B && V65 == W && V74 == W) {
            V83 = B;
            V74 = B;
            V65 = B;
            } else if (V65 == B && V74 == W) {
            V83 = B;
            V74 = B;
            } else if (V13 == B && V23 == W && V33 == W && V43 == W && V53 == W && V63 == W && V73 == W) {//左
            V83 = B;
            V73 = B;
            V63 = B;
            V53 = B;
            V43 = B;
            V33 = B;
            V23 = B;
            } else if (V23 == B && V33 == W && V43 == W && V53 == W && V63 == W && V73 == W) {
            V83 = B;
            V73 = B;
            V63 = B;
            V53 = B;
            V43 = B;
            V33 = B;
            } else if (V32 == B && V42 == W && V52 == W && V62 == W && V72 == W) {
            V83 = B;
            V73 = B;
            V63 = B;
            V53 = B;
            V43 = B;
            } else if (V43 == B && V53 == W && V63 == W && V73 == W) {
            V83 = B;
            V73 = B;
            V63 = B;
            V53 = B;
            } else if (V53 == B && V63 == W && V73 == W) {
            V83 = B;
            V73 = B;
            V63 = B;
            } else if (V63 == B && V73 == W) {
            V83 = B;
            V73 = B;
            } else {
            }
        //V14
        if (V11 == B && V12 == W && V13 == W) {//上
            V14 = B;
            V13 = B;
            V12 = B;
            }else if (V12 == B && V13 == W) {
            V14 = B;
            V13 = B;
            } else if (V41 == B && V32 == W && V23 ==W ) {//右上
            V14 = B;
            V23 = B;
            V32 = B;
            } else if (V32 == B && V23 ==W ) {
            V14 = B;
            V23 = B;
            } else if (V84 == B && V74 == W && V64 == W && V54 == W && V44 == W && V34 == W && V24 == W) {//右
            V14 = B;
            V24 = B;
            V34 = B;
            V44 = B;
            V54 = B;
            V64 = B;
            V74 = B;
            } else if (V74 == B && V64 == W && V54 == W && V44 == W && V34 == W && V24 == W) {
            V14 = B;
            V24 = B;
            V34 = B;
            V44 = B;
            V54 = B;
            V64 = B;
            } else if (V64 == B && V54 == W && V44 == W && V34 == W && V24 == W) {
            V14 = B;
            V24 = B;
            V34 = B;
            V44 = B;
            V54 = B;
            } else if (V54 == B && V44 == W && V34 == W && V24 == W) {
            V14 = B;
            V24 = B;
            V34 = B;
            V44 = B;
            } else if (V44 == B && V34 == W && V24 == W) {
            V14 = B;
            V24 = B;
            V34 = B;
            } else if (V34 == B && V24 == W) {
            V14 = B;
            V24 = B;
            } else if (V58 == B && V47 == W && V36 == W && V25 == W) {//右下
            V14 = B;
            V25 = B;
            V36 = B;
            V47 = B;
            } else if (V47 == B && V36 == W && V25 == W) {
            V14 = B;
            V25 = B;
            V36 = B;
            } else if (V36 == B && V25 == W) {
            V14 = B;
            V25 = B;
            } else if (V18 == B && V17 == W && V16 == W && V15 == W) {//下
            V14 = B;
            V15 = B;
            V16 = B;
            V17 = B;
            } else if (V17 == B && V16 == W && V15 == W) {
            V14 = B;
            V15 = B;
            V16 = B;
            } else if (V16 == B && V15 == W) {
            V14 = B;
            V15 = B;
            } else { 
            }
        //V24
        if (V21 == B && V22 == W && V23 == W) {//上
            V24 = B;
            V23 = B;
            V22 = B;
        } else if (V22 == B && V23 == W) {
            V24 = B;
            V23 = B;
        }else if (V51 == B && V42 == W && V33 == W){//右上
            V24 = B;
            V33 = B;
            V42 = B;
        }else if (V42 == B && V33 == W){
            V24 = B;
            V33 = B;
        }else if (V84 == B && V74 == W && V64 == W && V54 == W && V44 == W && V34 == W) {//右
            V24 = B;
            V34 = B;
            V44 = B;
            V54 = B;
            V64 = B;
            V74 = B;
            } else if (V74 == B && V64 == W && V54 == W && V44 == W && V34 == W) {
            V24 = B;
            V34 = B;
            V44 = B;
            V54 = B;
            V64 = B;
            } else if (V64 == B && V54 == W && V44 == W && V34 == W) {
            V24 = B;
            V34 = B;
            V44 = B;
            V54 = B;
            } else if (V54 == B && V44 == W && V34 == W) {
            V24 = B;
            V34 = B;
            V44 = B;
            } else if (V44 == B && V34 == W) {
            V24 = B;
            V34 = B;
            } else if (V78 == B && V67 == W && V56 == W && V45 == W && V34 == W) {//右下 ここから
            V23 = B;
            V34 = B;
            V45 = B;
            V56 = B;
            V67 = B;
            } else if (V67 == B && V56 == W && V45 == W && V34 == W) {
            V23 = B;
            V34 = B;
            V45 = B;
            V56 = B;
            } else if (V56 == B && V45 == W && V34 == W) {
            V23 = B;
            V34 = B;
            V45 = B;
            } else if (V45 == B && V34 == W) {
            V23 = B;
            V34 = B;
            } else if (V28 == B && V27 == W && V26 == W && V25 == W && V24 == W && V23 == W) {//下
            V23 = B;
            V24 = B;
            V25 = B;
            V26 = B;
            V27 = B;
            } else if (V27 == B && V26 == W && V25 == W && V24 == W && V23 == W) {
            V23 = B;
            V24 = B;
            V25 = B;
            V26 = B;
            } else if (V26 == B && V25 == W && V24 == W && V23 == W) {
            V22 = B;
            V23 = B;
            V24 = B;
            V25 = B;
            } else if (V25 == B && V24 == W && V23 == W) {
            V22 = B;
            V23 = B;
            V24 = B;
            } else if (V24 == B && V23 == W) {
            V22 = B;
            V23 = B;
            }else{
            }
        //33
        if (V31 == B && V32 == W) {//上
            V33 = B;
            V32 = B;
            }else if (V51 == B && V42 == W) {//右上
            V33 = B;
            V42 = B;
            }else if (V83 == B && V73 == W && V63 == W && V53 == W && V43 == W) {//右
            V33 = B;
            V43 = B;
            V53 = B;
            V63 = B;
            V73 = B;
            } else if (V73 == B && V63 == W && V53 == W && V43 == W) {
            V33 = B;
            V43 = B;
            V53 = B;
            V63 = B;
            } else if (V63 == B && V53 == W && V43 == W) {
            V33 = B;
            V43 = B;
            V53 = B;
            } else if (V53 == B && V43 == W) {
            V33 = B;
            V43 = B;
            } else if (V88 == B && V77 == W && V66 == W && V55 == W && V44 == W) {//右下
            V33 = B;
            V44 = B;
            V55 = B;
            V66 = B;
            V77 = B;
            } else if (V77 == B && V66 == W && V55 == W && V44 == W) {
            V33 = B;
            V44 = B;
            V55 = B;
            V66 = B;
            } else if (V66 == B && V55 == W && V44 == W) {
            V33 = B;
            V44 = B;
            V55 = B;
            } else if (V55 == B && V44 == W) {
            V33 = B;
            V44 = B;
            } else if (V38 == B && V37 == W && V36 == W && V35 == W && V34 == W) {//下
            V33 = B;
            V34 = B;
            V35 = B;
            V36 = B;
            V37 = B;
            } else if (V37 == B && V36 == W && V35 == W && V34 == W) {
            V33 = B;
            V34 = B;
            V35 = B;
            V36 = B;
            } else if (V36 == B && V35 == W && V34 == W) {
            V33 = B;
            V34 = B;
            V35 = B;
            } else if (V35 == B && V34 == W) {
            V33 = B;
            V34 = B;
            } else if (V15 == B && V24 == W) {//左下
            V33 = B;
            V24 = B;
            } else if (V13 == B && V23 == W) {//左
            V33 = B;
            V23 = B;
            } else {
            }
        //43
        if (V41 == B && V42 == W) {//上
            V43 = B;
            V42 = B;
            }else if (V41 ==B &&V32 == W) {//右上
            V43 = B;
            V32 = B;
            }else if (V83 == B && V73 == W && V63 == W && V53 == W) {//右
            V43 = B;
            V53 = B;
            V63 = B;
            V73 = B;
            } else if (V73 == B && V63 == W && V53 == W) {
            V43 = B;
            V53 = B;
            V63 = B;
            } else if (V63 == B && V53 == W) {
            V43 = B;
            V52 = B;
            } else if (V87 == B && V76 == W && V65 == W && V54 == W) {//右下
            V43 = B;
            V54 = B;
            V65 = B;
            V76 = B;
            } else if (V76 == B && V65 == W && V54 == W) {
            V43 = B;
            V54 = B;
            V65 = B;
            } else if (V65 == B && V54 == W) {
            V43 = B;
            V54 = B;
            } else if (V48 == B && V47 == W && V46 == W && V45 == W && V44 == W) {//下
            V43 = B;
            V44 = B;
            V45 = B;
            V46 = B;
            V47 = B;
            } else if (V47 == B && V46 == W && V45 == W && V44 == W) {
            V43 = B;
            V44 = B;
            V45 = B;
            V46 = B;
            } else if (V46 == B && V45 == W && V44 == W) {
            V43 = B;
            V44 = B;
            V45 = B;
            } else if (V45 == B && V44 == W) {
            V43 = B;
            V44 = B;
            } else if (V16 == B && V25 == W && V34 == W) {//左下
            V43 = B;
            V34 = B;
            V25 = B;
            } else if (V25 == B && V34 == W) {
            V43 = B;
            V34 = B;
            } else if (V13 == B && V23 == W && V33 == W) {//左
            V43 = B;
            V33 = B;
            V23 = B;
            } else if (V23 == B && V33 == W) {
            V43 = B;
            V33 = B;
            } else if (V21 == B && V32 == W) {//左上
            V43 = B;
            V32 = B;
            } else {
            }
        //53
        if (V51 == B && V52 == W) {//上
            V53 = B;
            V52 = B;
            } else if(V71 == B && V62 == W) {//右上
            V53 = B;
            V52 = B;
            } else if(V83 == B && V73 == W && V63 == W) {//右
            V53 = B;
            V63 = B;
            V73 = B;
            } else if (V73 == B && V63 == W) {
            V53 = B;
            V63 = B;
            } else if (V86 == B && V75 == W && V64 == W) {//右下
            V53 = B;
            V64 = B;
            V75 = B;
            } else if (V75 == B && V64 == W) {
            V53 = B;
            V64 = B;
            } else if (V58 == B && V57 == W && V56 == W && V55 == W && V54 == W) {//下
            V53 = B;
            V54 = B;
            V55 = B;
            V56 = B;
            V57 = B;
            } else if (V57 == B && V56 == W && V55 == W && V54 == W) {
            V53 = B;
            V54 = B;
            V55 = B;
            V56 = B;
            } else if (V56 == B && V55 == W && V54 == W) {
            V53 = B;
            V54 = B;
            V55 = B;
            } else if (V55 == B && V54 == W) {
            V53 = B;
            V54 = B;
            } else if (V17 == B && V26 == W && V35 == W && V44 == W) {//左下
            V53 = B;
            V44 = B;
            V35 = B;
            V26 = B;
            } else if (V26 == B && V35 == W && V44 == W) {
            V53 = B;
            V44 = B;
            V35 = B;
            } else if (V35 == B && V44 == W) {
            V53 = B;
            V44 = B;
            } else if (V13 == B && V23 == W && V33 == W && V43 == W) {//左
            V53 = B;
            V43 = B;
            V33 = B;
            V23 = B;
            } else if (V23 == B && V33 == W && V43 == W) {
            V53 = B;
            V43 = B;
            V33 = B;
            } else if (V33 == B && V43 == W) {
            V53 = B;
            V43 = B;
            } else if (V31 == B && V42 == W) {
                V53 = B;
                V42 = B;
            } else {
            }
        //63
        if (V61 == B && V62 == W){//上
            V63 = B;
            V62 = B;
            }else if(V81 == B && V72 == W){//右上
            V63 = B;
            V72 = B;
            }else if(V83 == B && V73 == W) {//右
            V63 = B;
            V73 = B;
            } else if (V85 == B && V74 == W) {//右下
            V63 = B;
            V74 = B;
            } else if (V68 == B && V67 == W && V66 == W && V65 == W && V64 == W) {//下
            V63 = B;
            V64 = B;
            V65 = B;
            V66 = B;
            V67 = B;
            } else if (V67 == B && V66 == W && V65 == W && V64 == W) {
            V63 = B;
            V64 = B;
            V65 = B;
            V66 = B;
            } else if (V66 == B && V65 == W && V64 == W) {
            V63 = B;
            V64 = B;
            V65 = B;
            } else if (V65 == B && V64 == W) {
            V63 = B;
            V64 = B;
            } else if (V18 == B && V27 == W && V36 == W && V45 == W && V54 == W) {//左下
            V63 = B;
            V54 = B;
            V45 = B;
            V36 = B;
            V27 = B;
            } else if (V27 == B && V36 == W && V45 == W && V54 == W) {
            V63 = B;
            V54 = B;
            V45 = B;
            V36 = B;
            } else if (V36 == B && V45 == W && V54 == W) {
            V63 = B;
            V54 = B;
            V45 = B;
            } else if (V45 == B && V54 == W) {
            V63 = B;
            V54 = B;
            } else if (V13 == B && V23 == W && V33 == W && V43 == W && V53 == W) {//左
            V63 = B;
            V53 = B;
            V43 = B;
            V33 = B;
            V23 = B;
            } else if (V23 == B && V33 == W && V43 == W && V53 == W) {
            V63 = B;
            V53 = B;
            V43 = B;
            V33 = B;
            } else if (V33 == B && V43 == W && V53 == W) {
            V63 = B;
            V53 = B;
            V43 = B;
            } else if (V43 == B && V53 == W) {
            V63 = B;
            V53 = B;
            }else{
            }
        //73
        if (V71 == B && V72 == W){//上
            V73 = B;
            V72 = B;
        }else if (V78 == B && V77 == W && V76 == W && V75 == W && V74 == W) {//下
            V73 = B;
            V74 = B;
            V75 = B;
            V76 = B;
            V77 = B;
            } else if (V77 == B && V76 == W && V75 == W && V74 == W) {
            V73 = B;
            V74 = B;
            V75 = B;
            V76 = B;
            } else if (V76 == B && V75 == W && V74 == W) {
            V73 = B;
            V74 = B;
            V75 = B;
            } else if (V75 == B && V74 == W) {
            V73 = B;
            V74 = B;
            } else if (V28 == B && V37 == W && V46 == W && V55 == W && V64 == W) {//左下
            V73 = B;
            V64 = B;
            V55 = B;
            V46 = B;
            V37 = B;
            } else if (V37 == B && V46 == W && V55 == W && V64 == W) {
            V73 = B;
            V64 = B;
            V55 = B;
            V46 = B;
            } else if (V46 == B && V55 == W && V64 == W) {
            V73 = B;
            V64 = B;
            V55 = B;
            } else if (V55 == B && V64 == W) {
            V73 = B;
            V64 = B;
            } else if (V13 == B && V23 == W && V33 == W && V43 == W && V53 == W && V62 == W) {//左
            V73 = B;
            V63 = B;
            V53 = B;
            V43 = B;
            V33 = B;
            V23 = B;
            } else if (V23 == B && V33 == W && V43 == W && V53 == W && V63 == W) {
            V73 = B;
            V63 = B;
            V53 = B;
            V43 = B;
            V33 = B;
            } else if (V33 == B && V43 == W && V53 == W && V63 == W) {
            V73 = B;
            V63 = B;
            V53 = B;
            V43 = B;
            } else if (V43 == B && V53 == W && V63 == W) {
            V73 = B;
            V63 = B;
            V53 = B;
            } else if (V53 == B && V63 == W) {
            V73 = B;
            V63 = B;
            } else if (V51 == B && V62 == W){//左上
            V73 = B;
            V62 = B;
            } else {
            }
        //83
        if (V81 == B && V82 == W) {// 上
            V83 = B;
            V84 = B;
            }else if (V88 == B && V87 == W && V86 == W && V85 == W && V84 == W) {//下
            V83 = B;
            V84 = B;
            V85 = B;
            V86 = B;
            V87 = B;
            } else if (V87 == B && V86 == W && V85 == W && V84 == W) {
            V83 = B;
            V84 = B;
            V85 = B;
            V86 = B;
            } else if (V86 == B && V85 == W && V84 == W) {
            V83 = B;
            V84 = B;
            V85 = B;
            } else if (V86 == B && V85 == W) {
            V83 = B;
            V84 = B;
            } else if (V38 == B && V47 == W && V56 == W && V65 == W && V74 == W) {//左下
            V83 = B;
            V74 = B;
            V65 = B;
            V56 = B;
            V47 = B;
            } else if (V47 == B && V56 == W && V65 == W && V74 == W) {
            V83 = B;
            V74 = B;
            V65 = B;
            V56 = B;
            } else if (V56 == B && V65 == W && V74 == W) {
            V83 = B;
            V74 = B;
            V65 = B;
            } else if (V65 == B && V74 == W) {
            V83 = B;
            V74 = B;
            } else if (V13 == B && V23 == W && V33 == W && V43 == W && V53 == W && V63 == W && V73 == W) {//左
            V83 = B;
            V73 = B;
            V63 = B;
            V53 = B;
            V43 = B;
            V33 = B;
            V23 = B;
            } else if (V23 == B && V33 == W && V43 == W && V53 == W && V63 == W && V73 == W) {
            V83 = B;
            V73 = B;
            V63 = B;
            V53 = B;
            V43 = B;
            V33 = B;
            } else if (V32 == B && V42 == W && V52 == W && V62 == W && V72 == W) {
            V83 = B;
            V73 = B;
            V63 = B;
            V53 = B;
            V43 = B;
            } else if (V43 == B && V53 == W && V63 == W && V73 == W) {
            V83 = B;
            V73 = B;
            V63 = B;
            V53 = B;
            } else if (V53 == B && V63 == W && V73 == W) {
            V83 = B;
            V73 = B;
            V63 = B;
            } else if (V63 == B && V73 == W) {
            V83 = B;
            V73 = B;
            } else {
            }
            
        
    }
}
