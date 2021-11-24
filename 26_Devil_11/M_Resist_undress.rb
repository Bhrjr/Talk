=begin
#######################################################################################################################
 ●『デビル（緑）』レジスト実行口上（衣装関連・対主人公）
 ●性格：虚勢
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





#######################################################################################################################
#########################################★脱衣：主人公がメインの口上群################################################
#######################################################################################################################
class MsgDevil_A < MsgBase
 def msg_undress_11
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #レジスト成功
                              tx["md"] = "2" if $msg.tag == "夢魔が主人公を脱衣" #脱衣できなかった
                              tx["md"] = "3" if $msg.tag == "主人公が夢魔を脱衣" #相手を脱衣させた
                            when 3 #レジスト失敗
                              tx["md"] = "3" if $msg.tag == "夢魔が主人公を脱衣" #脱衣させられた
                              tx["md"] = "2" if $msg.tag == "主人公が夢魔を脱衣" #相手を脱衣できなかった
                            end
case $msg.tag
#====================================================================================================================
#■夢魔が主人公を脱衣させる
#====================================================================================================================
when "夢魔が主人公を脱衣"
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "「ほら、そんな服なんか脱いじまえよ」"
    tx["tx1"] = "「ほら、そんな服なんか脱いじまえよ。\n　#{myname}だけ裸なのは不公平ってもんだろ？」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "「おっと、簡単にはやらせないか。\n　ま、そうでなくっちゃ面白くない\\H」"
    tx["tx1"] = "「おっと、簡単にはやらせないか。\n　ま、そうでなくっちゃ面白くない\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    tx["tx1"] = "「おいおい、今更抵抗するのかよ？\n　こりゃ相当なお仕置きが必要だなあ……\\H」" if $game_switches[86] == true #空腹戦
    tx["md"] = "11" if $game_switches[89] == true
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "「ふふふ……抵抗は無駄だぜ？」"
    #▼自ら受け入れた場合
    tx["tx1"] = "「何だよ、無抵抗じゃ味気ないなぁ。\n　もっと抵抗しないと面白くないじゃないか」" if $game_switches[89] == true
    tx["md"] = "2" if $game_switches[89] == true
    tx["tx1"] = "「そうそう、人間素直が一番だぜ\\H」" if $game_switches[86] == true #空腹戦
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が夢魔を脱衣させる
#====================================================================================================================
when "主人公が夢魔を脱衣"
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "「#{myname}を脱がせようってのかい？\n　ふふ、そう簡単に行くかな？」"
    tx["tx1"] = "「#{myname}を脱がせようってのかい？\n　ふふ、もう我慢できなくなったのかな？」" if $msg.t_target.nude? #アクターが先に脱いでいた
    tx["tx1"] = "「#{giggle}\n　#{myname}から先に脱げってのかい？」" if $game_switches[86] == true #空腹戦
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "「やるね……\\H\n　さ、次は何で楽しませてくれるのかな？」"
    tx["tx1"] = "「やるね……\\H\n　ま、あまり待たせすぎるのも悪いしな♪」" if $msg.t_target.nude? #アクターが先に脱いでいた
    tx["tx1"] = "「ほれ、これでいいか？\n　さあ、早く続きといこうぜ……\\H」" if $game_switches[86] == true #空腹戦
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "「ふふっ、残念♪\n　ま、イイ線行ってるから、その内にな？」"
    tx["md"] = "12"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "「何だよ、どっちなのかはっきりしろよ。\n　優柔不断なのは困りモンだぜ？」" if $game_switches[89] == true
    tx["md"] = "1" if $game_switches[89] == true
    tx["tx1"] = "「だが、断るぜ♪\n　いやー、言ってみたかったんだよなこれ。\n　……悪い悪い、次はちゃんとするからよ」" if $game_switches[86] == true #空腹戦
    tx["md"] = "11" if $game_switches[86] == true #空腹戦
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "主人公が自ら脱衣"
  tx["tx1"] = "「おっ、やる気だね？\n　こりゃ#{myname}も負けてられないな……」"
  tx["tx1"] = "「ふふ、やる気だね？\n　さ、お互い楽しもうぜ……\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  tx["tx1"] = "「おっ、ヤる気だね♪\n　なかなか殊勝な心掛けじゃないか……\\H」" if $game_switches[86] == true #空腹戦
  #---------------------------------------------------
  #格納
  tx["md"] = "4"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "夢魔が自ら脱衣"
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "「どうだい？\n　#{myname}のカラダも悪くないだろ？\\H」"
  tx["tx1"] = "「ふふ、待たせたな\\H\n　さ、お互い楽しもうぜ……\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag
#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class










#######################################################################################################################
#####################################★脱衣：主人公がメインの口上群(ベッドイン)########################################
#######################################################################################################################
class MsgDevil_A < MsgBase
 def msg_bedin_undress_11
#====================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #レジスト成功
                              tx["md"] = "2" if $msg.tag == "夢魔が主人公を脱衣" #脱衣できなかった
                              tx["md"] = "3" if $msg.tag == "主人公が夢魔を脱衣" #相手を脱衣させた
                            when 3 #レジスト失敗
                              tx["md"] = "3" if $msg.tag == "夢魔が主人公を脱衣" #脱衣させられた
                              tx["md"] = "2" if $msg.tag == "主人公が夢魔を脱衣" #相手を脱衣できなかった
                            end
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("大切な人")
#====================================================================================================================
case $msg.tag
#====================================================================================================================
#■夢魔が主人公を脱衣させる
#====================================================================================================================
when "夢魔が主人公を脱衣"
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "「なあ、そろそろ脱いでもいいだろ？」"
    tx["tx1"] = "「なあ、そろそろ脱いでもいいだろ？\n　#{myname}だけ裸なのは不公平だぜ」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "「何だよ、今更恥ずかしがるのは無しだぜ？」"
    tx["tx1"] = "「何だよ、今更恥ずかしがるのは無しだぜ？」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "「ふふふ……今更抵抗は無駄だぜ？」"
    #▼自ら受け入れた場合
    tx["tx1"] = "「#{giggle}\n　あー、何か妙に緊張するなあ……」" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が夢魔を脱衣させる
#====================================================================================================================
when "主人公が夢魔を脱衣"
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "「おっと、脱がせてくれるって？」"
    tx["tx1"] = "「おっと、脱がせてくれるって？\n　それとも、単に我慢できなくなっただけかな？」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "「……うー、何だろうな妙に緊張する……。\n　普段はこんな事無いんだがなぁ」"
    tx["tx1"] = "「ほれ、これでいいか？\n　さあ、早く続きといこうぜ……\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "「ちょ、ちょっと待った！\n　い、いや、自分で脱ぐからいいって……な？」"
    tx["md"] = "12"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "「何だよ、どっちなのかはっきりしろよ。\n　優柔不断なのは困りモンだぜ？」" if $game_switches[89] == true
    tx["md"] = "2" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "主人公が自ら脱衣"
  tx["tx1"] = "「うわっ、急に脱ぐなよなっ！\n　……あ、いやそうじゃなくてだな、\n　ちょっと心の準備ってやつがな？」"
  tx["tx1"] = "「ふふ、やる気だね？\n　さ、お互い楽しもうぜ……\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "4"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "夢魔が自ら脱衣"
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "「どうだい？\n　#{myname}のカラダも悪くないだろ？\n　さ、お互い目一杯楽しもうぜ\\H」"
  tx["tx1"] = "「ふふ、待たせたな\\H\n　さ、お互い目一杯楽しもうぜ……\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag










#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("寵愛")
#====================================================================================================================
case $msg.tag
#====================================================================================================================
#■夢魔が主人公を脱衣させる
#====================================================================================================================
when "夢魔が主人公を脱衣"
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "「なあ、そろそろ脱いでもいいだろ？」"
    tx["tx1"] = "「なあ、そろそろ脱いでもいいだろ？\n　#{myname}だけ裸なのは不公平だぜ」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "「何だよ、今更恥ずかしがるのは無しだぜ？」"
    tx["tx1"] = "「何だよ、今更恥ずかしがるのは無しだぜ？」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "「ふふふ……今更抵抗は無駄だぜ？」"
    #▼自ら受け入れた場合
    tx["tx1"] = "「#{giggle}\n　あー、何か妙に緊張するなあ……」" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が夢魔を脱衣させる
#====================================================================================================================
when "主人公が夢魔を脱衣"
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "「おっと、脱がせてくれるって？」"
    tx["tx1"] = "「おっと、脱がせてくれるって？\n　それとも、単に我慢できなくなっただけかな？」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "「……うー、何だろうな妙に緊張する……。\n　普段はこんな事無いんだがなぁ」"
    tx["tx1"] = "「ほれ、これでいいか？\n　さあ、早く続きといこうぜ……\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "「ちょ、ちょっと待った！\n　い、いや、自分で脱ぐからいいって……な？」"
    tx["md"] = "12"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "「何だよ、どっちなのかはっきりしろよ。\n　優柔不断なのは困りモンだぜ？」" if $game_switches[89] == true
    tx["md"] = "2" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "主人公が自ら脱衣"
  tx["tx1"] = "「うわっ、急に脱ぐなよなっ！\n　……あ、いやそうじゃなくてだな、\n　ちょっと心の準備ってやつがな？」"
  tx["tx1"] = "「ふふ、やる気だね？\n　さ、お互い楽しもうぜ……\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "4"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "夢魔が自ら脱衣"
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "「どうだい？\n　#{myname}のカラダも悪くないだろ？\n　さ、お互い目一杯楽しもうぜ\\H」"
  tx["tx1"] = "「ふふ、待たせたな\\H\n　さ、お互い目一杯楽しもうぜ……\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag










#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
case $msg.tag
#====================================================================================================================
#■夢魔が主人公を脱衣させる
#====================================================================================================================
when "夢魔が主人公を脱衣"
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "「なあ、そろそろ脱いでもいいだろ？」"
    tx["tx1"] = "「なあ、そろそろ脱いでもいいだろ？\n　#{myname}だけ裸なのは不公平だぜ」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "「何だよ、今更恥ずかしがるのは無しだぜ？」"
    tx["tx1"] = "「何だよ、今更恥ずかしがるのは無しだぜ？」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "「ふふふ……今更抵抗は無駄だぜ？」"
    #▼自ら受け入れた場合
    tx["tx1"] = "「#{giggle}\n　あー、何か妙に緊張するなあ……」" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が夢魔を脱衣させる
#====================================================================================================================
when "主人公が夢魔を脱衣"
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "「おっと、脱がせてくれるって？」"
    tx["tx1"] = "「おっと、脱がせてくれるって？\n　それとも、単に我慢できなくなっただけかな？」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "「……うー、何だろうな妙に緊張する……。\n　普段はこんな事無いんだがなぁ」"
    tx["tx1"] = "「ほれ、これでいいか？\n　さあ、早く続きといこうぜ……\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "「ちょ、ちょっと待った！\n　い、いや、自分で脱ぐからいいって……な？」"
    tx["md"] = "12"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "「何だよ、どっちなのかはっきりしろよ。\n　優柔不断なのは困りモンだぜ？」" if $game_switches[89] == true
    tx["md"] = "2" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "主人公が自ら脱衣"
  tx["tx1"] = "「うわっ、急に脱ぐなよなっ！\n　……あ、いやそうじゃなくてだな、\n　ちょっと心の準備ってやつがな？」"
  tx["tx1"] = "「ふふ、やる気だね？\n　さ、お互い楽しもうぜ……\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "4"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "夢魔が自ら脱衣"
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "「どうだい？\n　#{myname}のカラダも悪くないだろ？\n　さ、お互い目一杯楽しもうぜ\\H」"
  tx["tx1"] = "「ふふ、待たせたな\\H\n　さ、お互い目一杯楽しもうぜ……\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag
end
#######################################################################################################################
  end #def
end #class