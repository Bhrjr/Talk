=begin
#######################################################################################################################
 ●『インプ（緑）』レジスト実行口上（衣装関連・対主人公）
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





#######################################################################################################################
#########################################★脱衣：主人公がメインの口上群################################################
#######################################################################################################################
class MsgImp_A < MsgBase
 def msg_undress_05
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
    tx["tx1"] = "「#{myname}が脱がせてあげる♪」"
    tx["tx1"] = "「#{target}もはだかんぼになろうよ♪」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "「も～！\n　#{myname}が脱がせるの～！」"
    tx["tx1"] = "「も～！\n　#{myname}が脱がせるの～！」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "「#{giggle}\n　#{myname}、じょうずだった？」"
    #▼自ら受け入れた場合
    tx["tx1"] = "「#{giggle}\n　#{myname}、じょうずだった？」" if $game_switches[89] == true
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
    tx["tx1"] = "「あはははっ、くすぐった～い♪」"
    tx["tx1"] = "「あはははっ、くすぐった～い♪」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "「ありゃ、脱げちゃったぁ。\n　も～、#{target}のえっちぃ\\H」"
    tx["tx1"] = "「ありゃ、脱げちゃったぁ。\n　も～、#{target}のえっちぃ\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "「きゃ～、鬼ごっこだぁ♪\n　ここまでお～いでっ\\H」"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "「きゃ～、鬼ごっこだぁ♪\n　ここまでお～いでっ\\H」" if $game_switches[89] == true
    tx["md"] = "12"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "主人公が自ら脱衣"
  tx["tx1"] = "「あ～っ、#{target}ずる～い！\n　#{myname}、脱がせたげようって思ったのにぃ」"
  tx["tx1"] = "「#{giggle}\n　#{target}もはだかんぼ～♪」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "夢魔が自ら脱衣"
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "「じゃじゃ～ん♪」"
  tx["tx1"] = "「じゃじゃ～ん♪\n　おまたせ～\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
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
class MsgImp_A < MsgBase
 def msg_bedin_undress_05
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
    tx["tx1"] = "「#{myname}が脱がせてあげる♪」"
    tx["tx1"] = "「#{target}もはだかんぼになろうよ♪」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "「も～！\n　#{myname}が脱がせるの～！」"
    tx["tx1"] = "「も～！\n　#{myname}が脱がせるの～！」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "「#{giggle}\n　#{myname}、じょうずだった？」"
    #▼自ら受け入れた場合
    tx["tx1"] = "「#{giggle}\n　#{myname}、じょうずだった？」" if $game_switches[89] == true
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
    tx["tx1"] = "「あはははっ、くすぐった～い♪」"
    tx["tx1"] = "「あはははっ、くすぐった～い♪」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "「#{giggle}\n　#{target}のえっちぃ\\H」"
    tx["tx1"] = "「#{giggle}\n　#{target}のえっちぃ\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "「#{giggle}\n　今度は#{myname}がくすぐっちゃうぞ～♪」"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "「#{giggle}\n　今度は#{myname}がくすぐっちゃうぞ～♪」" if $game_switches[89] == true
    tx["md"] = "12"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "主人公が自ら脱衣"
  tx["tx1"] = "「わ～、#{target}の、おっきい～\\H\n　ちゃんと#{myname}に入るかなぁ……？」"
  tx["tx1"] = "「#{giggle}\n　#{target}もはだかんぼ～♪」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "夢魔が自ら脱衣"
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "「じゃじゃ～ん♪」"
  tx["tx1"] = "「じゃじゃ～ん♪\n　おまたせ～\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
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
    tx["tx1"] = "「#{myname}が脱がせてあげる♪」"
    tx["tx1"] = "「#{target}もはだかんぼになろうよ♪」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "「も～！\n　#{myname}が脱がせるの～！」"
    tx["tx1"] = "「も～！\n　#{myname}が脱がせるの～！」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "「#{giggle}\n　#{myname}、じょうずだった？」"
    #▼自ら受け入れた場合
    tx["tx1"] = "「#{giggle}\n　#{myname}、じょうずだった？」" if $game_switches[89] == true
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
    tx["tx1"] = "「あはははっ、くすぐった～い♪」"
    tx["tx1"] = "「あはははっ、くすぐった～い♪」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "「#{giggle}\n　#{target}のえっちぃ\\H」"
    tx["tx1"] = "「#{giggle}\n　#{target}のえっちぃ\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "「#{giggle}\n　今度は#{myname}がくすぐっちゃうぞ～♪」"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "「#{giggle}\n　今度は#{myname}がくすぐっちゃうぞ～♪」" if $game_switches[89] == true
    tx["md"] = "12"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "主人公が自ら脱衣"
  tx["tx1"] = "「わ～、#{target}の、おっきい～\\H\n　ちゃんと#{myname}に入るかなぁ……？」"
  tx["tx1"] = "「#{giggle}\n　#{target}もはだかんぼ～♪」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "夢魔が自ら脱衣"
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "「じゃじゃ～ん♪」"
  tx["tx1"] = "「じゃじゃ～ん♪\n　おまたせ～\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
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
    tx["tx1"] = "「#{myname}が脱がせてあげる♪」"
    tx["tx1"] = "「#{target}もはだかんぼになろうよ♪」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "「も～！\n　#{myname}が脱がせるの～！」"
    tx["tx1"] = "「も～！\n　#{myname}が脱がせるの～！」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "「#{giggle}\n　#{myname}、じょうずだった？」"
    #▼自ら受け入れた場合
    tx["tx1"] = "「#{giggle}\n　#{myname}、じょうずだった？」" if $game_switches[89] == true
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
    tx["tx1"] = "「あはははっ、くすぐった～い♪」"
    tx["tx1"] = "「あはははっ、くすぐった～い♪」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "「#{giggle}\n　#{target}のえっちぃ\\H」"
    tx["tx1"] = "「#{giggle}\n　#{target}のえっちぃ\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "「#{giggle}\n　今度は#{myname}がくすぐっちゃうぞ～♪」"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "「#{giggle}\n　今度は#{myname}がくすぐっちゃうぞ～♪」" if $game_switches[89] == true
    tx["md"] = "12"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "主人公が自ら脱衣"
  tx["tx1"] = "「わ～、#{target}の、おっきい～\\H\n　ちゃんと#{myname}に入るかなぁ……？」"
  tx["tx1"] = "「#{giggle}\n　#{target}もはだかんぼ～♪」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "夢魔が自ら脱衣"
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "「じゃじゃ～ん♪」"
  tx["tx1"] = "「じゃじゃ～ん♪\n　おまたせ～\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
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
