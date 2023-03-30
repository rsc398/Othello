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
            
            
            


        
    }
}
