# Ruby 手抜きレシピ: CSV ファイルの結合

[paste(1)](http://linuxjm.sourceforge.jp/html/gnumaniak/man1/paste.1.html) コマンドと似たような挙動をするテキスト連結のサンプルスクリプトです。

以下のような 2 つの CSV ファイルがある時に、

    $ cat file1.csv
    1,2,3
    4,5,6
    7,8,9
    
    $ cat file2.csv
    A,B,C
    D,E,F
    G,H,I

こんなふうに連結しますよというもの。

    $ ruby join_csv.rb file1.csv file2.csv out.csv
    $ cat out.csv
    
    1,2,3,A,B,C
    4,5,6,D,E,F
    7,8,9,G,H,I

なお `join_csv_plain.rb` は `join.rb` で Ruby 特有の記法で書いてる部分を平易な記法に直したもの。
