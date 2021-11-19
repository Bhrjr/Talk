=begin
#######################################################################################################################
 ●『インプ（緑）』レジスト実行口上（衣装関連・対パートナー）
 ●性格：虚勢
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





#######################################################################################################################
#########################################★脱衣：パートナーがメインの口上群################################################
#######################################################################################################################
class MsgImp_A < MsgBase
 def msg_female_undress_11
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
    tx["tx1"] = "\"Lemme take it off for you♪\""
    tx["tx1"] = "\"You should get butt-naked too, #{target}♪\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #パートナーが抵抗した
    tx["tx1"] = "\"Oh come on!\n #{myname}'m gonna take it off for you!\""
    tx["tx1"] = "\"Oh come on!\n #{myname}'m gonna take it off for you!\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #パートナーが脱衣した
    tx["tx1"] = "\"#{giggle}\n Was #{myname} good at it?\""
    #▼自ら受け入れた場合
    if $game_switches[89] == true
      case $data_SDB[$msg.t_target.class_id].bust_size
      when 0,1
        tx["tx1"] = "\"#{giggle}\n What a flatty♪\n Just like me\\H\""
      when 2,3
        tx["tx1"] = "\"Whooa\\H\n Hey, how do you make breasts bigger?\n Will #{myname} be like that someday?\""
      when 4,5
        tx["tx1"] = "\"Whooa, so big\\H\n Hey, how do you make breasts that big?\n #{myname} wanna be like that too♪\""
      end
    end
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
    tx["tx1"] = "\"Ahahaha, that tickles♪\""
    tx["tx1"] = "\"Ahahaha, that tickles♪\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"Oh, you took it off.\n Hey, is it true that rubbing breasts make them expand?\""
    tx["tx1"] = "\"Oh, you took it off.\n Hey, is it true that rubbing breasts make them expand?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"Aieee, time to play tag♪\n C'mere if you can\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Aieee, time to play tag♪\n C'mere if you can\\H\"" if $game_switches[89] == true
    tx["md"] = "12"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが自ら脱衣する
#====================================================================================================================
when "Partner undresses themself."
  tx["tx1"] = "\"Aah, no fair!\n #{myname} was just gonna take them off.\""
  tx["tx1"] = "\"#{giggle}\n You're butt-naked now too♪\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"Ta-dah♪\""
  tx["tx1"] = "\"Ta-dah♪\n Sorry to keep you waiting\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
class MsgImp_A < MsgBase
 def msg_female_bedin_undress_11
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
    tx["tx1"] = "\"Lemme take it off for you♪\""
    tx["tx1"] = "\"You should get butt-naked too, #{target}♪\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #パートナーが抵抗した
    tx["tx1"] = "\"Oh come on!\n #{myname}'m gonna take it off for you!\""
    tx["tx1"] = "\"Oh come on!\n #{myname}'m gonna take it off for you!\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #パートナーが脱衣した
    tx["tx1"] = "\"#{giggle}\n Was #{myname} good at it?\""
    #▼自ら受け入れた場合
    if $game_switches[89] == true
      case $data_SDB[$msg.t_target.class_id].bust_size
      when 0,1
        tx["tx1"] = "\"#{giggle}\n What a flatty♪\n Just like me\\H\""
      when 2,3
        tx["tx1"] = "\"Whooa\\H\n Hey, how do you make breasts bigger?\n Will #{myname} be like that someday?\""
      when 4,5
        tx["tx1"] = "\"Whooa, so big\\H\n Hey, how do you make breasts that big?\n Tell me how♪\""
      end
    end
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
    tx["tx1"] = "\"Ahahaha, that tickles♪\""
    tx["tx1"] = "\"Ahahaha, that tickles♪\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"Ehehe, you did it♪\n You won't get away with that\\H\""
    tx["tx1"] = "\"Ehehe, you did it♪\n You won't get away with that\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"#{giggle}\n This time, #{myname}'m gonna do the tickling♪\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"#{giggle}\n This time, #{myname}'m gonna do the tickling♪\"" if $game_switches[89] == true
    tx["md"] = "12"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが自ら脱衣する
#====================================================================================================================
when "Partner undresses themself."
  case $data_SDB[$msg.t_target.class_id].bust_size
  when 0,1
    tx["tx1"] = "\"#{giggle}\n What a flatty♪\n Just like me\\H\""
  when 2,3
    tx["tx1"] = "\"Oh, your boobs' all puffed up!\n Lucky you, #{myname} want my breasts to be bigger too.\""
  when 4
    tx["tx1"] = "\"Wow, your breasts' so big, #{target}\\H\n Can #{myname} become like you too?\""
  when 5
    tx["tx1"] = "\"Wowsers, your breasts' so big\\H\n Can #{myname} become like you too?\""
  end
  tx["tx1"] = "\"#{giggle}\n You're butt-naked now too♪\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"Ta-dah♪\""
  tx["tx1"] = "\"Ta-dah♪\n Sorry to keep you waiting\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
    tx["tx1"] = "\"Lemme take it off for you♪\""
    tx["tx1"] = "\"You should get butt-naked too, #{target}♪\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #パートナーが抵抗した
    tx["tx1"] = "\"Oh come on!\n #{myname}'m gonna take it off for you!\""
    tx["tx1"] = "\"Oh come on!\n #{myname}'m gonna take it off for you!\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #パートナーが脱衣した
    tx["tx1"] = "\"#{giggle}\n Was #{myname} good at it?\""
    #▼自ら受け入れた場合
    if $game_switches[89] == true
      case $data_SDB[$msg.t_target.class_id].bust_size
      when 0,1
        tx["tx1"] = "\"#{giggle}\n What a flatty♪\n Just like me\\H」"
      when 2,3
        tx["tx1"] = "\"Whooa\\H\n Hey, how do you make breasts bigger?\n Will #{myname} be like that someday?\""
      when 4,5
        tx["tx1"] = "\"Whooa, so big\\H\n Hey, how do you make breasts that big?\n #{myname} wanna be like that too♪\""
      end
    end
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
    tx["tx1"] = "\"Ahahaha, that tickles♪\""
    tx["tx1"] = "\"Ahahaha, that tickles♪\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"Ehehe, you did it♪\n You won't get away with that\\H\""
    tx["tx1"] = "\"Ehehe, you did it♪\n You won't get away with that\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"#{giggle}\n This time, #{myname}'m gonna do the tickling♪\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"#{giggle}\n This time, #{myname}'m gonna do the tickling♪\"" if $game_switches[89] == true
    tx["md"] = "12"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが自ら脱衣する
#====================================================================================================================
when "Partner undresses themself."
  case $data_SDB[$msg.t_target.class_id].bust_size
  when 0,1
    tx["tx1"] = "\"#{giggle}\n What a flatty♪\n Just like me\\H\""
  when 2,3
    tx["tx1"] = "\"Oh, your boobs' all puffed up!\n Lucky you, #{myname} want my breasts to be bigger too.\""
  when 4
    tx["tx1"] = "\"Wow, your breasts' so big, #{target}\\H\n Can #{myname} become like you too?\""
  when 5
    tx["tx1"] = "\"Wowsers, your breasts' so big\\H\n Can #{myname} become like you too?\""
  end
  tx["tx1"] = "\"#{giggle}\n You're butt-naked now too♪\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"Ta-dah♪\""
  tx["tx1"] = "\"Ta-dah♪\n Sorry to keep you waiting\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
    tx["tx1"] = "\"Lemme take it off for you♪\""
    tx["tx1"] = "\"You should get butt-naked too, #{target}♪\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #パートナーが抵抗した
    tx["tx1"] = "\"Oh come on!\n #{myname}'m gonna take it off for you!\""
    tx["tx1"] = "\"Oh come on!\n #{myname}'m gonna take it off for you!\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #パートナーが脱衣した
    tx["tx1"] = "\"#{giggle}\n Was #{myname} good at it?\""
    #▼自ら受け入れた場合
    if $game_switches[89] == true
      case $data_SDB[$msg.t_target.class_id].bust_size
      when 0,1
        tx["tx1"] = "\"#{giggle}\n What a flatty♪\n Just like me\\H」"
      when 2,3
        tx["tx1"] = "\"Whooa\\H\n Hey, how do you make breasts bigger?\n Will #{myname} be like that someday?\""
      when 4,5
        tx["tx1"] = "\"Whooa, so big\\H\n Hey, how do you make breasts that big?\n #{myname} wanna be like that too♪\""
      end
    end
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
    tx["tx1"] = "\"Ahahaha, that tickles♪\""
    tx["tx1"] = "\"Ahahaha, that tickles♪\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"Ehehe, you did it♪\n You won't get away with that\\H\""
    tx["tx1"] = "\"Ehehe, you did it♪\n You won't get away with that\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"#{giggle}\n This time, #{myname}'m gonna do the tickling♪\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"#{giggle}\n This time, #{myname}'m gonna do the tickling♪\"" if $game_switches[89] == true
    tx["md"] = "12"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが自ら脱衣する
#====================================================================================================================
when "Partner undresses themself."
  case $data_SDB[$msg.t_target.class_id].bust_size
  when 0,1
    tx["tx1"] = "\"#{giggle}\n What a flatty♪\n Just like me\\H\""
  when 2,3
    tx["tx1"] = "\"Oh, your boobs' all puffed up!\n Lucky you, #{myname} want my breasts to be bigger too.\""
  when 4
    tx["tx1"] = "\"Wow, your breasts' so big, #{target}\\H\n Can #{myname} become like you too?\""
  when 5
    tx["tx1"] = "\"Wowsers, your breasts' so big\\H\n Can #{myname} become like you too?\""
  end
  tx["tx1"] = "\"#{giggle}\n You're butt-naked now too♪\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"Ta-dah♪\""
  tx["tx1"] = "\"Ta-dah♪\n Sorry to keep you waiting\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
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
