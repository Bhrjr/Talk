=begin
#######################################################################################################################
 ●『レッサーサキュバス（橙）』レジスト実行口上（衣装関連・対パートナー）
 ●性格：陽気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
#########################################★脱衣：パートナーがメインの口上群################################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase
 def msg_female_undress_07
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #レジスト成功
                              tx["md"] = "2" if $msg.tag == "Succubus strips the partner." #脱衣できなかった
                              tx["md"] = "3" if $msg.tag == "Partner strips the succubus." #相手を脱衣させた
                            when 3 #レジスト失敗
                              tx["md"] = "3" if $msg.tag == "Succubus strips the partner." #脱衣させられた
                              tx["md"] = "2" if $msg.tag == "Partner strips the succubus." #相手を脱衣できなかった
                            end
case $msg.tag
#====================================================================================================================
#■夢魔がパートナーを脱衣させる
#====================================================================================================================
when "Succubus strips the partner."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Hey, lemme get you naked!\n Hold still for a while♪\""
    tx["tx1"] = "\"Hey, you should get naked too, #{target}\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #パートナーが抵抗した
    tx["tx1"] = "\"Huh???\n Does it matter? We're both girls anyway♪\""
    tx["tx1"] = "\"Huh???\n Does it matter? We're both girls anyway♪\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    tx["md"]  = "11"
  #---------------------------------------------------
  when 3 #パートナーが脱衣した
    tx["tx1"] = "\"Ah, this underwear's cute\\H\n Maybe I should take it for myself....\ Kidding, I'm just kidding♪\""
    #▼自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Didn't know you were that eager, #{target}\\H\"" if $msg.t_target.tribe_slime? #スライムには下着が無い
    tx["tx1"] = "\"#{giggle}\n Didn't know you were that eager, #{target}\\H\"" if $msg.t_target.tribe_gargoyle? #ガーゴイルには下着が無い
    tx["tx1"] = "\"#{giggle}\n Didn't know you were that eager, #{target}\\H\"" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが夢魔を脱衣させる
#====================================================================================================================
when "Partner strips the succubus."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Ah, you'll take it off for me?\""
    tx["tx1"] = "\"#{giggle}\n You don't wanna be the only one naked?\n Dunno if I should though\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"No helping it then...will this do it? \\H\""
    tx["tx1"] = "\"No helping it then...will this do it? \\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"Mmm, really think you should wait a bit more\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Mmm, don't keep me in suspense like that\\H\"" if $game_switches[89] == true
    tx["md"] = "11"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが自ら脱衣する
#====================================================================================================================
when "Partner undresses themself."
  tx["tx1"] = "\"#{giggle}\n You're gonna get naked before me, #{target}?\n Wonder if I'll fall behind?\""
  tx["tx1"] = "\"#{giggle}\n Wanna mingle with me, #{target}?\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"Hey, you should get naked too, #{target}♪\n We're supposed to be having fun\\H\""
  tx["tx1"] = "\"Sorry to keep you waiting♪\n Let's all have some fun together\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
#####################################★脱衣：パートナーがメインの口上群(ベッドイン)########################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase
 def msg_female_bedin_undress_07
#====================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #レジスト成功
                              tx["md"] = "2" if $msg.tag == "Succubus strips the partner." #脱衣できなかった
                              tx["md"] = "3" if $msg.tag == "Partner strips the succubus." #相手を脱衣させた
                            when 3 #レジスト失敗
                              tx["md"] = "3" if $msg.tag == "Succubus strips the partner." #脱衣させられた
                              tx["md"] = "2" if $msg.tag == "Partner strips the succubus." #相手を脱衣できなかった
                            end
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
case $msg.tag
#====================================================================================================================
#■夢魔がパートナーを脱衣させる
#====================================================================================================================
when "Succubus strips the partner."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Hey, lemme get you naked!\n Hold still for a while♪\""
    tx["tx1"] = "\"Hey, you should get naked too, #{target}\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #パートナーが抵抗した
    tx["tx1"] = "\"Huh???\n Does it matter? We're both girls anyway♪\""
    tx["tx1"] = "\"Huh???\n Does it matter? We're both girls anyway♪\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    tx["md"]  = "11"
  #---------------------------------------------------
  when 3 #パートナーが脱衣した
    tx["tx1"] = "\"Ah, this underwear's cute\\H\n Maybe I should take it for myself....\ Kidding, I'm just kidding♪\""
    #▼自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Didn't know you were that eager, #{target}\\H\"" if $msg.t_target.tribe_slime? #スライムには下着が無い
    tx["tx1"] = "\"#{giggle}\n Didn't know you were that eager, #{target}\\H\"" if $msg.t_target.tribe_gargoyle? #ガーゴイルには下着が無い
    tx["tx1"] = "\"#{giggle}\n Didn't know you were that eager, #{target}\\H\"" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが夢魔を脱衣させる
#====================================================================================================================
when "Partner strips the succubus."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Ah, you'll take it off for me?\""
    tx["tx1"] = "\"#{giggle}\n You don't wanna be the only one naked?\n Dunno if I should though\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"No helping it then...will this do it? \\H\""
    tx["tx1"] = "\"No helping it then...will this do it? \\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"Mmm, really think you should wait a bit more\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Mmm, don't keep me in suspense like that\\H\"" if $game_switches[89] == true
    tx["md"] = "11"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが自ら脱衣する
#====================================================================================================================
when "Partner undresses themself."
  tx["tx1"] = "\"#{giggle}\n You're gonna get naked before me, #{target}?\n Wonder if I'll fall behind?\""
  tx["tx1"] = "\"#{giggle}\n Wanna mingle with me, #{target}?\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"Hey, you should get naked too, #{target}♪\n We're supposed to be having fun\\H\""
  tx["tx1"] = "\"Sorry to keep you waiting♪\n Let's all have some fun together\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag










#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
case $msg.tag
#====================================================================================================================
#■夢魔がパートナーを脱衣させる
#====================================================================================================================
when "Succubus strips the partner."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Hey, lemme get you naked!\n Hold still for a while♪\""
    tx["tx1"] = "\"Hey, you should get naked too, #{target}\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #パートナーが抵抗した
    tx["tx1"] = "\"Huh???\n Does it matter? We're both girls anyway♪\""
    tx["tx1"] = "\"Huh???\n Does it matter? We're both girls anyway♪\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    tx["md"]  = "11"
  #---------------------------------------------------
  when 3 #パートナーが脱衣した
    tx["tx1"] = "\"Ah, this underwear's cute\\H\n Maybe I should take it for myself....\ Kidding, I'm just kidding♪\""
    #▼自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Didn't know you were that eager, #{target}\\H\"" if $msg.t_target.tribe_slime? #スライムには下着が無い
    tx["tx1"] = "\"#{giggle}\n Didn't know you were that eager, #{target}\\H\"" if $msg.t_target.tribe_gargoyle? #ガーゴイルには下着が無い
    tx["tx1"] = "\"#{giggle}\n Didn't know you were that eager, #{target}\\H\"" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが夢魔を脱衣させる
#====================================================================================================================
when "Partner strips the succubus."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Ah, you'll take it off for me?\""
    tx["tx1"] = "\"#{giggle}\n You don't wanna be the only one naked?\n Dunno if I should though\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"No helping it then...will this do it? \\H\""
    tx["tx1"] = "\"No helping it then...will this do it? \\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"Mmm, really think you should wait a bit more\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Mmm, don't keep me in suspense like that\\H\"" if $game_switches[89] == true
    tx["md"] = "11"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが自ら脱衣する
#====================================================================================================================
when "Partner undresses themself."
  tx["tx1"] = "\"#{giggle}\n You're gonna get naked before me, Wonder if I'll fall behind?\""
  tx["tx1"] = "\"#{giggle}\n Wanna mingle with me, #{target}?\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"Hey, you should get naked too, #{target}♪\n We're supposed to be having fun\\H\""
  tx["tx1"] = "\"Sorry to keep you waiting♪\n Let's all have some fun together\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
#■夢魔がパートナーを脱衣させる
#====================================================================================================================
when "Succubus strips the partner."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Hey, lemme get you naked!\n Hold still for a while♪\""
    tx["tx1"] = "\"Hey, you should get naked too, #{target}\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #パートナーが抵抗した
    tx["tx1"] = "\"Huh???\n Does it matter? We're both girls anyway♪\""
    tx["tx1"] = "\"Huh???\n Does it matter? We're both girls anyway♪\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    tx["md"]  = "11"
  #---------------------------------------------------
  when 3 #パートナーが脱衣した
    tx["tx1"] = "\"Ah, this underwear's cute\\H\n Maybe I should take it for myself....\ Kidding, I'm just kidding♪\""
    #▼自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Didn't know you were that eager, #{target}\\H\"" if $msg.t_target.tribe_slime? #スライムには下着が無い
    tx["tx1"] = "\"#{giggle}\n Didn't know you were that eager, #{target}\\H\"" if $msg.t_target.tribe_gargoyle? #ガーゴイルには下着が無い
    tx["tx1"] = "\"#{giggle}\n Didn't know you were that eager, #{target}\\H\"" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが夢魔を脱衣させる
#====================================================================================================================
when "Partner strips the succubus."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Ah, you'll take it off for me?\""
    tx["tx1"] = "\"#{giggle}\n You don't wanna be the only one naked?\n Dunno if I should though\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"No helping it then...will this do it? \\H\""
    tx["tx1"] = "\"No helping it then...will this do it? \\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"Mmm, really think you should wait a bit more\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Mmm, don't keep me in suspense like that\\H\"" if $game_switches[89] == true
    tx["md"] = "11"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが自ら脱衣する
#====================================================================================================================
when "Partner undresses themself."
  tx["tx1"] = "\"#{giggle}\n You're gonna get naked before me, Wonder if I'll fall behind?\""
  tx["tx1"] = "\"#{giggle}\n Wanna mingle with me, #{target}?\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"Hey, you should get naked too, #{target}♪\n We're supposed to be having fun\\H\""
  tx["tx1"] = "\"Sorry to keep you waiting♪\n Let's all have some fun together\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
