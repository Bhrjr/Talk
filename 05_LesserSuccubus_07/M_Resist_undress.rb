=begin
#######################################################################################################################
 ●『レッサーサキュバス（橙）』レジスト実行口上（衣装関連・対主人公）
 ●性格：陽気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
#########################################★脱衣：主人公がメインの口上群################################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase
 def msg_undress_07
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
    tx["tx1"] = "\"Hey, lemme get you naked!\n Hold still for a while♪\""
    tx["tx1"] = "\"Hey, you should get naked too, #{target}\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #主人公が抵抗した
    tx["tx1"] = "\"Whaaa?? Why??\""
    tx["tx1"] = "\"Whaaa?? Why??\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #主人公が脱衣した
    tx["tx1"] = "\"Aha...you look tasty\\H\""
    #▼自ら受け入れた場合
    tx["tx1"] = "\"Aha...you look tasty\\H\"" if $game_switches[89] == true
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
    tx["tx1"] = "\"Ah, you'll take it off for me?\""
    tx["tx1"] = "\"#{giggle}\n You don't wanna be the only one naked?\n Dunno if I should though\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"Here goes, sorry to make you wait\\H\n I took it all off....will this do it?\""
    tx["tx1"] = "\"Here goes, sorry to make you wait\\H\n I took it all off....will this do it?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"Not yet\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"H-Huh, what's wrong? Why'd you stop?\n ...Maybe you like it when I'm clothed better?\"" if $game_switches[89] == true
    tx["md"] = "11"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■主人公が自ら脱衣する
#====================================================================================================================
when "Player undresses themself."
  tx["tx1"] = "\"Whoa, you really know when to be assertive, #{target}♪\n #{myname}'m not falling behind either\\H\""
  tx["tx1"] = "\"#{giggle}\n Can't wait anymore, #{target}? \\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"#{giggle}\n Let's have some fun together\""
  tx["tx1"] = "\"Sorry to keep you waiting♪\n Let's have some fun together\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
class MsgLessersuccubus_A < MsgBase
 def msg_bedin_undress_07
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
      tx["tx1"] = "\"#{giggle}\n Lemme get you naked now\\H\""
      tx["tx1"] = "\"Can you get undressed too, #{target}....? \\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
      tx["tx1"] = "\"#{pleasure_s}\n I can't take it anymore, #{myname}....\\H\"" if $msg.t_enemy.crisis?
    #---------------------------------------------------
    when 2 #主人公が抵抗した
      tx["tx1"] = "\"Oh come on....!\n Don't you tease me....\""
      tx["tx1"] = "\"Oh come on....!\n Don't you tease me....\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    when 3 #主人公が脱衣した
      tx["tx1"] = "\"I'm gonna eat you up!\n ....Just kidding♪\n Don't worry, I'll go easy on you\\H\""
      #▼自ら受け入れた場合
      tx["tx1"] = "\"Hurry....\n Hurry up and give me your cock....\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Oooh, hurry up and take it off....\\H\""
      tx["tx1"] = "\"Oooh, it's making me nervous....\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    when 2 #夢魔を脱衣させた
      tx["tx1"] = "\"#{giggle}\n Didn't know you'd be assertive in bed♪\n It'd be nice if you can be like that usually\\H\""
      tx["tx1"] = "\"#{giggle}\n Didn't know you'd be assertive in bed♪\n It'd be nice if you can be like that usually\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    when 3 #夢魔に抵抗された
      tx["tx1"] = "\"Augh, don't tease me....\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Huh, you stopped?\n Come on...you meanie, #{target}....\\H\"" if $game_switches[89] == true
    #---------------------------------------------------
    end
    #格納
    ms.push(tx)
  #====================================================================================================================
  #■主人公が自ら脱衣する
  #====================================================================================================================
  when "Player undresses themself."
    tx["tx1"] = "\"Whoa, so assertive, #{target}♪\n #{myname}'m not falling behind either\\H\""
    tx["tx1"] = "\"#{giggle}\n Can't wait anymore, #{target}? \\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    #格納
    tx["md"] = "3"
    ms.push(tx)
  #====================================================================================================================
  #■夢魔が自ら脱衣する
  #====================================================================================================================
  when "Succubus undresses herself."
    #------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Let's have some fun together\""
    tx["tx1"] = "\"Sorry to keep you waiting♪\n Let's have some fun together\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
      tx["tx1"] = "\"#{giggle}\n Lemme get you naked now\\H\""
      tx["tx1"] = "\"Can you get undressed too, #{target}....? \\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
      tx["tx1"] = "\"#{pleasure_s}\n I can't take it anymore, #{myname}....\\H\"" if $msg.t_enemy.crisis?
    #---------------------------------------------------
    when 2 #主人公が抵抗した
      tx["tx1"] = "\"Oh come on....!\n Don't you tease me....\""
      tx["tx1"] = "\"Oh come on....!\n Don't you tease me....\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    when 3 #主人公が脱衣した
      tx["tx1"] = "\"I'm gonna eat you up!\n ....Just kidding♪\n Don't worry, I'll go easy on you\\H\""
      #▼自ら受け入れた場合
      tx["tx1"] = "\"Hurry....\n Hurry up and give me your cock....\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Oooh, hurry up and take it off....\\H\""
      tx["tx1"] = "\"Oooh, it's making me nervous....\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    when 2 #夢魔を脱衣させた
      tx["tx1"] = "\"#{giggle}\n Didn't know you'd be assertive in bed♪\n It'd be nice if you can be like that usually\\H\""
      tx["tx1"] = "\"#{giggle}\n Didn't know you'd be assertive in bed♪\n It'd be nice if you can be like that usually\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    when 3 #夢魔に抵抗された
      tx["tx1"] = "\"Augh, don't tease me....\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Huh, you stopped?\n Come on...you meanie, #{target}....\\H\"" if $game_switches[89] == true
    #---------------------------------------------------
    end
    #格納
    ms.push(tx)
  #====================================================================================================================
  #■主人公が自ら脱衣する
  #====================================================================================================================
  when "Player undresses themself."
    tx["tx1"] = "\"Whoa, so assertive, #{target}♪\n #{myname}'m not falling behind either\\H\""
    tx["tx1"] = "\"#{giggle}\n Can't wait anymore, #{target}? \\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    #格納
    tx["md"] = "3"
    ms.push(tx)
  #====================================================================================================================
  #■夢魔が自ら脱衣する
  #====================================================================================================================
  when "Succubus undresses herself."
    #------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Let's have some fun together\""
    tx["tx1"] = "\"Sorry to keep you waiting♪\n Let's have some fun together\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
      tx["tx1"] = "\"#{giggle}\n Lemme get you naked now\\H\""
      tx["tx1"] = "\"Can you get undressed too, #{target}....? \\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
      tx["tx1"] = "\"#{pleasure_s}\n I can't take it anymore, #{myname}....\\H\"" if $msg.t_enemy.crisis?
    #---------------------------------------------------
    when 2 #主人公が抵抗した
      tx["tx1"] = "\"Oh come on....!\n Don't you tease me....\""
      tx["tx1"] = "\"Oh come on....!\n Don't you tease me....\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    when 3 #主人公が脱衣した
      tx["tx1"] = "\"I'm gonna eat you up!\n ....Just kidding♪\n Don't worry, I'll go easy on you\\H\""
      #▼自ら受け入れた場合
      tx["tx1"] = "\"Hurry....\n Hurry up and give me your cock....\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Oooh, hurry up and take it off....\\H\""
      tx["tx1"] = "\"Oooh, it's making me nervous....\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    when 2 #夢魔を脱衣させた
      tx["tx1"] = "\"#{giggle}\n Didn't know you'd be assertive in bed♪\n It'd be nice if you can be like that usually\\H\""
      tx["tx1"] = "\"#{giggle}\n Didn't know you'd be assertive in bed♪\n It'd be nice if you can be like that usually\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    when 3 #夢魔に抵抗された
      tx["tx1"] = "\"Augh, don't tease me....\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Huh, you stopped?\n Come on...you meanie, #{target}....\\H\"" if $game_switches[89] == true
    #---------------------------------------------------
    end
    #格納
    ms.push(tx)
  #====================================================================================================================
  #■主人公が自ら脱衣する
  #====================================================================================================================
  when "Player undresses themself."
    tx["tx1"] = "\"Whoa, so assertive, #{target}♪\n #{myname}'m not falling behind either\\H\""
    tx["tx1"] = "\"#{giggle}\n Can't wait anymore, #{target}? \\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    #格納
    tx["md"] = "3"
    ms.push(tx)
  #====================================================================================================================
  #■夢魔が自ら脱衣する
  #====================================================================================================================
  when "Succubus undresses herself."
    #------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Let's have some fun together\""
    tx["tx1"] = "\"Sorry to keep you waiting♪\n Let's have some fun together\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
