=begin
#######################################################################################################################
 ●『サキュバス（橙）』レジスト実行口上（衣装関連・対主人公）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





#######################################################################################################################
#########################################★脱衣：主人公がメインの口上群################################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
 def msg_undress_00
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
    tx["tx1"] = "「さ、じっとしててね……\\H」"
    tx["tx1"] = "「#{giggle}\n　そろそろ#{target}も……ね\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    tx["tx1"] = "「ねぇ、早くぅ……\\H\n　焦らさないで……\\H」" if $game_switches[86] == true #▼空腹戦
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "「んもう……意外に強情なのね」"
    tx["tx1"] = "「んもう……あまり待たせないで？」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    tx["tx1"] = "「んもう……本気でやっちゃうわよ？」" if $game_switches[86] == true #▼空腹戦
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "「あらぁ……\\H\n　ふふっ、立派に男の子してるじゃない\\H」"
    #▼自ら受け入れた場合
    tx["tx1"] = "「あらぁ……\\H\n　ふふっ、立派に男の子してるじゃない\\H」" if $game_switches[89] == true
    tx["tx1"] = "「#{giggle}\n　今すぐ食べちゃおうかしら……\\H」" if $game_switches[86] == true #▼空腹戦
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
    tx["tx1"] = "「#{giggle}\n　脱がせてくれるの？」"
    tx["tx1"] = "「#{giggle}\n　我慢できなくなっちゃった？」" if $msg.t_target.nude? #アクターが先に脱いでいた
    tx["tx1"] = "「#{giggle}\n　早く脱がせてぇ……\\H」" if $game_switches[86] == true #▼空腹戦
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "「ありがと♪\n　さ、続きをしましょうか……\\H」"
    tx["tx1"] = "「そんなに#{myname}を犯したい……？\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
    tx["tx1"] = "「#{pleasure_s}\n　早く#{myname}を犯してぇ……\\H」" if $game_switches[86] == true #▼空腹戦
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "「だめよ、そんなにがっついちゃ……\\H」"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "「だめよ、そんなにがっついちゃ……\\H」" if $game_switches[89] == true
    tx["tx1"] = "「焦らしちゃいやぁ……」" if $game_switches[86] == true #▼空腹戦
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "主人公が自ら脱衣"
  tx["tx1"] = "「#{giggle}\n　積極的な男の子は好きよ\\H」"
  tx["tx1"] = "「#{giggle}\n　もう待ちきれないみたいね\\H\n　いいわ、いらっしゃい……\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  tx["tx1"] = "「あぁん、待ちきれなかったわぁ\\H」" if $game_switches[86] == true #▼空腹戦
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "夢魔が自ら脱衣"
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "「#{giggle}\n　さあ、もっと楽しみましょう\\H」"
  tx["tx1"] = "「#{giggle}\n　さあ、本番はこれからよ？\n　もっと楽しみましょう\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  tx["tx1"] = "「待ちきれなくなっちゃった……\\H」" if $game_switches[86] == true #▼空腹戦
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
class MsgSuccubus_A < MsgBase
 def msg_bedin_undress_00
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
    tx["tx1"] = "「#{giggle}\n　#{myname}が脱がせてあげる\\H」"
    tx["tx1"] = "「#{giggle}\n　そろそろ#{target}も……ね\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "「んもう……意地悪なんだから」"
    tx["tx1"] = "「んもう……あまり焦らさないで？」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "「#{giggle}\n　今すぐ食べちゃっていい……？\\H」"
    #▼自ら受け入れた場合
    tx["tx1"] = "「#{giggle}\n　もう準備万端なのね\\H\n　今すぐ食べちゃっていい……？\\H」" if $game_switches[89] == true
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
    tx["tx1"] = "「#{giggle}\n　早く脱がせて……\\H」"
    tx["tx1"] = "「#{giggle}\n　我慢できなくなっちゃった？」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "「ありがと♪\n　さ、続きをしましょうか……\\H」"
    tx["tx1"] = "「そんなに#{myname}を犯したい……？\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "「だめよ、そんなにがっついちゃ……\\H」"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "「だめよ、そんなにがっついちゃ……\\H」" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "主人公が自ら脱衣"
  tx["tx1"] = "「#{giggle}\n　積極的な男の子は好きよ\\H」"
  tx["tx1"] = "「#{giggle}\n　もう待ちきれないみたいね\\H\n　いいわ、いらっしゃい……\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "夢魔が自ら脱衣"
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "「#{giggle}\n　さあ、もっと楽しみましょう\\H」"
  tx["tx1"] = "「#{giggle}\n　さあ、本番はこれからよ？\n　もっと楽しみましょう\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
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
    tx["tx1"] = "「#{giggle}\n　#{myname}が脱がせてあげる\\H」"
    tx["tx1"] = "「#{giggle}\n　そろそろ#{target}も……ね\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "「んもう……意地悪なんだから」"
    tx["tx1"] = "「んもう……あまり焦らさないで？」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "「#{giggle}\n　今すぐ食べちゃっていい……？\\H」"
    #▼自ら受け入れた場合
    tx["tx1"] = "「#{giggle}\n　もう準備万端なのね\\H\n　今すぐ食べちゃっていい……？\\H」" if $game_switches[89] == true
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
    tx["tx1"] = "「#{giggle}\n　早く脱がせて……\\H」"
    tx["tx1"] = "「#{giggle}\n　我慢できなくなっちゃった？」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "「ありがと♪\n　さ、続きをしましょうか……\\H」"
    tx["tx1"] = "「そんなに#{myname}を犯したい……？\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "「だめよ、そんなにがっついちゃ……\\H」"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "「だめよ、そんなにがっついちゃ……\\H」" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "主人公が自ら脱衣"
  tx["tx1"] = "「#{giggle}\n　積極的な男の子は好きよ\\H」"
  tx["tx1"] = "「#{giggle}\n　もう待ちきれないみたいね\\H\n　いいわ、いらっしゃい……\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "夢魔が自ら脱衣"
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "「#{giggle}\n　さあ、もっと楽しみましょう\\H」"
  tx["tx1"] = "「#{giggle}\n　さあ、本番はこれからよ？\n　もっと楽しみましょう\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
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
    tx["tx1"] = "「#{giggle}\n　#{myname}が脱がせてあげる\\H」"
    tx["tx1"] = "「#{giggle}\n　そろそろ#{target}も……ね\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "「んもう……意地悪なんだから」"
    tx["tx1"] = "「んもう……あまり焦らさないで？」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "「#{giggle}\n　今すぐ食べちゃっていい……？\\H」"
    #▼自ら受け入れた場合
    tx["tx1"] = "「#{giggle}\n　もう準備万端なのね\\H\n　今すぐ食べちゃっていい……？\\H」" if $game_switches[89] == true
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
    tx["tx1"] = "「#{giggle}\n　早く脱がせて……\\H」"
    tx["tx1"] = "「#{giggle}\n　我慢できなくなっちゃった？」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "「ありがと♪\n　さ、続きをしましょうか……\\H」"
    tx["tx1"] = "「そんなに#{myname}を犯したい……？\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "「だめよ、そんなにがっついちゃ……\\H」"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "「だめよ、そんなにがっついちゃ……\\H」" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "主人公が自ら脱衣"
  tx["tx1"] = "「#{giggle}\n　積極的な男の子は好きよ\\H」"
  tx["tx1"] = "「#{giggle}\n　もう待ちきれないみたいね\\H\n　いいわ、いらっしゃい……\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "夢魔が自ら脱衣"
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "「#{giggle}\n　さあ、もっと楽しみましょう\\H」"
  tx["tx1"] = "「#{giggle}\n　さあ、本番はこれからよ？\n　もっと楽しみましょう\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
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
