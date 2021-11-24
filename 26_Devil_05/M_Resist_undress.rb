=begin
#######################################################################################################################
 ●『デビル（緑）』レジスト実行口上（衣装関連・対主人公）
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
class MsgDevil_A < MsgBase
 def msg_undress_05
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #レジスト成功
                              tx["md"] = "2" if $msg.tag == "Succubus strips the player." #脱衣できなかった
                              tx["md"] = "3" if $msg.tag == "Player strips the succubus." #相手を脱衣させた
                            when 3 #レジスト失敗
                              tx["md"] = "3" if $msg.tag == "Succubus strips the player." #脱衣させられた
                              tx["md"] = "2" if $msg.tag == "Player strips the succubus." #相手を脱衣できなかった
                            end
case $msg.tag
#====================================================================================================================
#■夢魔が主人公を脱衣させる
#====================================================================================================================
when "Succubus strips the player."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Hey, you should just take those clothes of yours off.\""
    tx["tx1"] = "\"Hey, you should just take those clothes of yours off.\n It ain't fair if only #{myname}'m naked, is it?\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "\"Oh, you won't lemme do it without a fight?\n Well, it wouldn't be any fun otherwise\\H\""
    tx["tx1"] = "\"Oh, you won't lemme do it without a fight?\n Well, it wouldn't be any fun otherwise\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    tx["tx1"] = "\"Hey yo, now you're trying to fight back?\n This deserves a punishment....\\H\"" if $game_switches[86] == true #空腹戦
    tx["md"] = "11" if $game_switches[89] == true
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "\"Hehehe....I don't see any point in fighting back.\""
    #▼自ら受け入れた場合
    tx["tx1"] = "\"Wha, so lame that you're not putting up any fight.\n It's not any fun without some fighting back.\"" if $game_switches[89] == true
    tx["md"] = "2" if $game_switches[89] == true
    tx["tx1"] = "\"Yes, humans are better off obedient\\H\"" if $game_switches[86] == true #空腹戦
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が夢魔を脱衣させる
#====================================================================================================================
when "Player strips the succubus."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Trying to take my clothes off here?\n Hehe, can't say if I'll go down so easily.\""
    tx["tx1"] = "\"Trying to take my clothes off here?\n Hehe, you mean you can't take it anymore?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
    tx["tx1"] = "\"#{giggle}\n You mean you want me to take mine off first?\"" if $game_switches[86] == true #空腹戦
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"You're good....\\H\n Now how're you gonna entertain me next?\""
    tx["tx1"] = "\"You're good....\\H\n Well, making you wait for so long won't be good either♪\"" if $msg.t_target.nude? #アクターが先に脱いでいた
    tx["tx1"] = "\"Here, is this enough for you?\n Then let's carry on quick....\\H\"" if $game_switches[86] == true #空腹戦
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"Hehe, too bad♪\n Maybe when things start picking up?\""
    tx["md"] = "12"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Wha, you need to be clear with what you want.\n There's nothing good about being shilly-shally.\"" if $game_switches[89] == true
    tx["md"] = "1" if $game_switches[89] == true
    tx["tx1"] = "\"But I refuse♪\n Maaan, I always wanted to say that.\n ....My bad, my bad. I'll be more serious next time.\"" if $game_switches[86] == true #空腹戦
    tx["md"] = "11" if $game_switches[86] == true #空腹戦
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "Player undresses themself."
  tx["tx1"] = "\"Oh, I see you're down for it.\n Then #{myname} can't fall behind either....\""
  tx["tx1"] = "\"Hehe, I see you're down for it.\n Now let's have some fun with each other....\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  tx["tx1"] = "\"Oh, I see you're on board with it♪\n Love the way you're thinking there....\\H\"" if $game_switches[86] == true #空腹戦
  #---------------------------------------------------
  #格納
  tx["md"] = "4"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"How is it?\n My body ain't too shabby either, right? \\H\""
  tx["tx1"] = "\"Hehe, sorry to keep you waiting\\H\n Now let's have some fun with each other....\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
 def msg_bedin_undress_05
#====================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #レジスト成功
                              tx["md"] = "2" if $msg.tag == "Succubus strips the player." #脱衣できなかった
                              tx["md"] = "3" if $msg.tag == "Player strips the succubus." #相手を脱衣させた
                            when 3 #レジスト失敗
                              tx["md"] = "3" if $msg.tag == "Succubus strips the player." #脱衣させられた
                              tx["md"] = "2" if $msg.tag == "Player strips the succubus." #相手を脱衣できなかった
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
#■夢魔が主人公を脱衣させる
#====================================================================================================================
when "Succubus strips the player."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Hey, I think you can take them off now.\""
    tx["tx1"] = "\"Hey, I think you can take them off now.\n　#{myname}だけ裸なのは不公平だぜ」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "\"Wha, no way you're getting embarrassed now.\""
    tx["tx1"] = "\"Wha, no way you're getting embarrassed now.\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "\"Heheh....I don't see any point in fighting back now.\""
    #▼自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Ahhh, this is making me weirdly nervous....\"" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が夢魔を脱衣させる
#====================================================================================================================
when "Player strips the succubus."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Whoa, you mean you'll take them off for me?\""
    tx["tx1"] = "\"Whoa, you mean you'll take them off for me?\n Or you just can't take it anymore, maybe?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"....Ugh, this is making me nervous for some reason....\n This never happens usually though.\""
    tx["tx1"] = "\"Here, is this enough for you?\n Then let's carry on quick....\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"H-Hang on a minute!\n I-I'll just them off by myself....yeah?\""
    tx["md"] = "12"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Wha, you need to be clear with what you want.\n There's nothing good about being shilly-shally.\"" if $game_switches[89] == true
    tx["md"] = "2" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "Player undresses themself."
  tx["tx1"] = "\"Whoa, don't just take your clothes off all of a sudden!\n ....Ah, what I'm trying to say is\n I'm not prepared for that yet, yeah?\""
  tx["tx1"] = "\"Hehe, I see you're down for it.\n Now let's have some fun with each other....\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "4"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"How is it?\n My body ain't too shabby either, right?\n Then time to have much enjoyment as possible with each other\\H\""
  tx["tx1"] = "\"Hehe, sorry to keep you waiting\\H\n Then time to have much enjoyment as possible with each other....\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
#■夢魔が主人公を脱衣させる
#====================================================================================================================
when "Succubus strips the player."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Hey, I think you can take them off now.\""
    tx["tx1"] = "\"Hey, I think you can take them off now.\n　#{myname}だけ裸なのは不公平だぜ」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "\"Wha, no way you're getting embarrassed now.\""
    tx["tx1"] = "\"Wha, no way you're getting embarrassed now.\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "\"Heheh....I don't see any point in fighting back now.\""
    #▼自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Ahhh, this is making me weirdly nervous....\"" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が夢魔を脱衣させる
#====================================================================================================================
when "Player strips the succubus."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Whoa, you mean you'll take them off for me?\""
    tx["tx1"] = "\"Whoa, you mean you'll take them off for me?\n Or you just can't take it anymore, maybe?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"....Ugh, this is making me nervous for some reason....\n This never happens usually though.\""
    tx["tx1"] = "\"Here, is this enough for you?\n Then let's carry on quick....\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"H-Hang on a minute!\n I-I'll just them off by myself....yeah?\""
    tx["md"] = "12"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Wha, you need to be clear with what you want.\n There's nothing good about being shilly-shally.\"" if $game_switches[89] == true
    tx["md"] = "2" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "Player undresses themself."
  tx["tx1"] = "\"Whoa, don't just take your clothes off all of a sudden!\n ....Ah, what I'm trying to say is\n I'm not prepared for that yet, yeah?\""
  tx["tx1"] = "\"Hehe, I see you're down for it.\n Now let's have some fun with each other....\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "4"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"How is it?\n My body ain't too shabby either, right?\n Then time to have much enjoyment as possible with each other\\H\""
  tx["tx1"] = "\"Hehe, sorry to keep you waiting\\H\n Then time to have much enjoyment as possible with each other....\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
when "Succubus strips the player."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Hey, I think you can take them off now.\""
    tx["tx1"] = "\"Hey, I think you can take them off now.\n　#{myname}だけ裸なのは不公平だぜ」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "\"Wha, no way you're getting embarrassed now.\""
    tx["tx1"] = "\"Wha, no way you're getting embarrassed now.\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "\"Heheh....I don't see any point in fighting back now.\""
    #▼自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Ahhh, this is making me weirdly nervous....\"" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が夢魔を脱衣させる
#====================================================================================================================
when "Player strips the succubus."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Whoa, you mean you'll take them off for me?\""
    tx["tx1"] = "\"Whoa, you mean you'll take them off for me?\n Or you just can't take it anymore, maybe?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"....Ugh, this is making me nervous for some reason....\n This never happens usually though.\""
    tx["tx1"] = "\"Here, is this enough for you?\n Then let's carry on quick....\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"H-Hang on a minute!\n I-I'll just them off by myself....yeah?\""
    tx["md"] = "12"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Wha, you need to be clear with what you want.\n There's nothing good about being shilly-shally.\"" if $game_switches[89] == true
    tx["md"] = "2" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "Player undresses themself."
  tx["tx1"] = "\"Whoa, don't just take your clothes off all of a sudden!\n ....Ah, what I'm trying to say is\n I'm not prepared for that yet, yeah?\""
  tx["tx1"] = "\"Hehe, I see you're down for it.\n Now let's have some fun with each other....\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "4"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"How is it?\n My body ain't too shabby either, right?\n Then time to have much enjoyment as possible with each other\\H\""
  tx["tx1"] = "\"Hehe, sorry to keep you waiting\\H\n Then time to have much enjoyment as possible with each other....\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
