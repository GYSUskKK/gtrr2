use strict;
use warnings;

#die関数はエラーが発生した場合にプログラムを終了させる
#エラーメッセージを表示する

open(DATAFILE, "< moto.txt") or die("Error!!!!:$!");

while(my $line = <DATAFILE>){
  chomp($line);
 
  #配列の要素を使用する場合はスカラ（ドルマーク）にする
  #Sで空白やタブ、＋でそれが連続していてもOK、になる
  my @retu = split(/\s+/,$line);
  print "$retu[1]\t$retu[0]\n";
}
