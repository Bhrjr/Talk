=begin
#######################################################################################################################
 ●『サキュバス（橙）』レジスト実行口上（ホールド関連・対主人公）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





#######################################################################################################################
########################################★ホールド：主人公がメインの口上群#############################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
 def msg_hold_00
#==================================================================================================================
#■主人公が夢魔をホールドする
if $msg.tag == "Player binds the succubus."
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
    tx["tx1"] = "\"#{giggle}\n Wonder what you'll do to me? \\H\""
  when 2 #ホールド成功
    tx["tx1"] = "\"#{pleasure_s}\n Let's keep up the fun....\\H\""
  when 3 #ホールド失敗
    tx["tx1"] = "\"Come on, don't tease me like that....\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Come on, don't tease me like that....\\H\"" if $game_switches[89] == true
    tx["md"] = "11"
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼インサート▼****************************************************************************************
  #====================================================================================================================
  when "Insertion done by ♂"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Geez....don't be so impatient♪\""
      tx["tx1"] = "\"#{giggle}\n Wanna put it in? Right in my pussy down here....\\H\"" if $msg.t_enemy.lub_female > 30
      tx["tx1"] = "\"Hurry....hurry up....! \\H\"" if $game_switches[86] == true #空腹戦
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n Your cock's going all the way in, #{target}....\\H\""
      tx["tx1"] = "\"#{pleasure_s}\n Your cock's going all the way in, #{target}....\\H\"" if $msg.t_enemy.lub_female > 30
      tx["tx1"] = "\"#{pleasure_s}\n This was what I wanted....\\H\"" if $game_switches[86] == true #空腹戦
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n It's still to early. You need to take things more slowly....you know\\H\""
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\"" if $msg.t_enemy.lub_female > 30
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n No need to hurry, I'm not going anywhere.\n　Let's take our time and enjoy ourselves\\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"#{giggle}\n No need to hurry, I'm not going anywhere.\n　Let's take our time and enjoy ourselves\\H\"" if $game_switches[89] == true and $msg.t_enemy.lub_female > 30
      tx["tx1"] = "\"Augh, I don't like it when you tease me....!\n Hurry up and make a mess out of me....!\"" if $game_switches[86] == true #空腹戦
      tx["md"] = "11"
    end
    #格納
    ms.push(tx)
  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the user."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Augh, what's wrong？\""
    when 2 #ホールド成功
      tx["tx1"] = "\"You're stopping?\n That's a shame....\""
      tx["tx1"] = "\"Augh, why?\"" if $game_switches[86] == true #空腹戦
      tx["md"] = "11" unless $game_switches[86] == true #空腹戦でない場合
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n Can you leave it to me...?\n Let's make ourselves feel even better\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n That's it, just leave it to me, will you....?\n Let's make ourselves feel even better\\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"Ufufu....I'm not gonna let you go\\H\"" if $game_switches[86] == true #空腹戦
    end
    #格納
    ms.push(tx)
  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Huh....what's wrong?\n You want me focus on you....? \\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Can't do anything about that.\n Then I'll take you on\\H\""
      tx["md"] = "12"
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}.\n You'll get your chance\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}\n You'll get your chance\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  end
  #==================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
#■夢魔が主人公をホールドする
elsif $msg.tag == "Succubus binds the player."
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
    tx["tx1"] = "\"Lemme make you squeal....\\H\""
  when 2 #ホールドレジスト成功
    tx["tx1"] = "\"Man....\n Can you like, not fight back?\""
  when 3 #ホールドレジスト失敗
    tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\""
    #自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\"" if $game_switches[89] == true
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼アクセプト▼*****************************************************************************************
  #====================================================================================================================
  when "Insertion done by ♀"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n　I might be rushing thing a little, but I'm gonna put it in....\\H\""
      tx["tx1"] = "\"#{giggle}\n Think it's time I put it in....\\H\"" if $msg.t_enemy.lub_female > 30
      tx["tx1"] = "\"I want #{target}'s dick so badly....!\n It's fine, right?\"" if $game_switches[86] == true #空腹戦
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n So hot and hard....\\H\""
      tx["tx1"] = "\"#{pleasure_s}\n So hot and hard....\\H\"" if $msg.t_enemy.lub_female > 30
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n How do you like my insides....?\\H」" if $game_switches[89] == true
      tx["tx1"] = "\"#{pleasure_s}\n How do you like my insides....?\\H」" if $game_switches[89] == true and $msg.t_enemy.lub_female > 30
      tx["tx1"] = "\"#{pleasure_s}\n This was what I wanted....\\H\"" if $game_switches[86] == true #空腹戦
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted","Dark-sided"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Say, wonder if you can lick me down here for me?\""
      tx["tx1"] = "\"#{giggle}\n I'm dripping wet down here....\\H\n Can't you lick it up for me....? \\H\"" if $msg.t_enemy.lub_female > 30
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n You can stick your tongue deeper if you wanna\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Ufufu, you're not fighting back at all.\n Are you a fan of stuff like this? \\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"#{pleasure_s}\n I'll go so hard that you can't breathe\\H\"" if $game_switches[86] == true #空腹戦
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Let's make love from closer up\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not fight back?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)


  #▼胸系▼*********************************************************************************
  #====================================================================================================================
  when "Paizuri","Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{myname}'ll make you get hooked on my breasts\\H\n Just relax and make yourself comfortable....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not fight back?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n How does my breasts feel....? \\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n If you're not fighting back, does that mean you do like boobies?\\H\n Then I'll let you have plenty of fun with it\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "Kiss"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hey, can you kiss me....?\n Enough that I can get a really good taste of #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼オーラルアクセプト▼*********************************************************************************
  #====================================================================================================================
  when "♀ giving fellatio"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n say, wanna fuck my mouth? \\H\""
      tx["tx1"] = "\"Hey, I can't take it anymore....\\H\n Let me give you a good sucking, #{target}....\\H\"" if $game_switches[86] == true #空腹戦
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on, it's not anything like, scary.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Mmmph....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Mmmph....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインバック▼*********************************************************************************
  #====================================================================================================================
  when "Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Let me show you a naughty way to have fun....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on, it's not anything like, scary.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Ufufu, it's in....\\H\n It might hurt at first,\n but you'll feel better in no time....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Ufufu, it's in....\\H\n It might hurt at first,\n but you'll feel better in no time....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #====================================================================================================================
  end
end
#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class




















#######################################################################################################################
####################################★ホールド：主人公がメインの口上群（ベッドイン）###################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
 def msg_bedin_hold_00
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
#■主人公が夢魔をホールドする
if $msg.tag == "Player binds the succubus."
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
    tx["tx1"] = "\"#{giggle}\n Wonder what you'll do to me? \\H\""
  when 2 #ホールド成功
    tx["tx1"] = "\"#{pleasure_s}\n Let's keep up the fun....\\H\""
  when 3 #ホールド失敗
    tx["tx1"] = "\"Come on, don't tease me like that....\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Come on, don't tease me like that....\\H\"" if $game_switches[89] == true
    tx["md"] = "11"
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼インサート▼****************************************************************************************
  #====================================================================================================================
  when "Insertion done by ♂"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Alright, come....\\H\""
      tx["tx1"] = "\"#{giggle}\n Alright, come....\\H\"" if $msg.t_enemy.lub_female > 30
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n Your cock's going all the way in, #{target}....\\H\""
      tx["tx1"] = "\"#{pleasure_s}\n Your cock's going all the way in, #{target}....\\H\"" if $msg.t_enemy.lub_female > 30
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\""
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\"" if $msg.t_enemy.lub_female > 30
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n No need to hurry, I'm not going anywhere.\n　Let's take our time and enjoy ourselves\\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"#{giggle}\n No need to hurry, I'm not going anywhere.\n　Let's take our time and enjoy ourselves\\H\"" if $game_switches[89] == true and $msg.t_enemy.lub_female > 30
      tx["md"] = "11"
    end
    #格納
    ms.push(tx)
  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Augh, what's wrong？\""
    when 2 #ホールド成功
      tx["tx1"] = "\"You're stopping?\n That's a shame....\""
      tx["md"] = "11"
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n Can you leave it to me...?\n Let's make ourselves feel even better\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n That's it, just leave it to me, will you....?\n Let's make ourselves feel even better\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Huh....what's wrong?\n Wanna join in too, #{target}?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Can't do anything about that.\n Then I'll take you on\\H\""
      tx["md"] = "12"
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}.\n You'll get your chance\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}.\n You'll get your chance\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  end
  #==================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
#■夢魔が主人公をホールドする
elsif $msg.tag == "Succubus binds the player."
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
    tx["tx1"] = "\"Lemme make you squeal....\\H\""
  when 2 #ホールドレジスト成功
    tx["tx1"] = "\"Augh, come on....\n This much is nothing.\""
  when 3 #ホールドレジスト失敗
    tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\""
    #自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\"" if $game_switches[89] == true
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼アクセプト▼*****************************************************************************************
  #====================================================================================================================
  when "Insertion done by ♀"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n　I might be rushing thing a little, but I'm gonna put it in....\\H\""
      tx["tx1"] = "\"#{giggle}\n Think it's time I put it in....\\H\"" if $msg.t_enemy.lub_female > 30
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n So hot and hard....\\H\""
      tx["tx1"] = "\"#{pleasure_s}\n So hot and hard....\\H\"" if $msg.t_enemy.lub_female > 30
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n How do you like my insides....?\\H」" if $game_switches[89] == true
      tx["tx1"] = "\"#{pleasure_s}\n How do you like my insides....?\\H」" if $game_switches[89] == true and $msg.t_enemy.lub_female > 30
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted","Dark-sided"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Say, wonder if you can lick me down here for me?\""
      tx["tx1"] = "\"#{giggle}\n I'm dripping wet down here....\\H\n Can't you lick it up for me....? \\H\"" if $msg.t_enemy.lub_female > 30
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n You can stick your tongue deeper if you wanna\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Ufufu, you're not fighting back at all.\n Are you a fan of stuff like this? \\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Let's make love from closer up\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not fight back?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)


  #▼胸系▼*********************************************************************************
  #====================================================================================================================
  when "Paizuri","Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{myname}'ll get you hooked on my breasts\\H\n Just relax and make yourself comfortable....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not fight back?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n How does my breasts feel....? \\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n If you're not fighting back, does that mean you do like boobies?\\H\n Then I'll let you have plenty of fun with it\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "Kiss"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hey, can you kiss me....?\n Enough that I can get a really good taste of #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼オーラルアクセプト▼*********************************************************************************
  #====================================================================================================================
  when "♀ giving fellatio"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n say, wanna fuck my mouth? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on, it's not anything like, scary.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Mmmph....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Mmmph....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインバック▼*********************************************************************************
  #====================================================================================================================
  when "Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Let me show you a naughty way to have fun....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on, it's not anything like, scary.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Ufufu, it's in....\\H\n It might hurt at first,\n but you'll feel better in no time....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Ufufu, it's in....\\H\n It might hurt at first,\n but you'll feel better in no time....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #====================================================================================================================
  end
end















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
#■主人公が夢魔をホールドする
if $msg.tag == "Player binds the succubus."
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
    tx["tx1"] = "\"#{giggle}\n Wonder what you'll do to me? \\H\""
  when 2 #ホールド成功
    tx["tx1"] = "\"#{pleasure_s}\n Let's keep up the fun....\\H\""
  when 3 #ホールド失敗
    tx["tx1"] = "\"Come on, don't tease me like that....\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Come on, don't tease me like that....\\H\"" if $game_switches[89] == true
    tx["md"] = "11"
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼インサート▼****************************************************************************************
  #====================================================================================================================
  when "Insertion done by ♂"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Alright, come....\\H\""
      tx["tx1"] = "\"#{giggle}\n Alright, come....\\H\"" if $msg.t_enemy.lub_female > 30
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n Your cock's going all the way in, #{target}....\\H\""
      tx["tx1"] = "\"#{pleasure_s}\n Your cock's going all the way in, #{target}....\\H\"" if $msg.t_enemy.lub_female > 30
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\""
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\"" if $msg.t_enemy.lub_female > 30
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n No need to hurry, I'm not going anywhere.\n　Let's take our time and enjoy ourselves\\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"#{giggle}\n No need to hurry, I'm not going anywhere.\n　Let's take our time and enjoy ourselves\\H\"" if $game_switches[89] == true and $msg.t_enemy.lub_female > 30
      tx["md"] = "11"
    end
    #格納
    ms.push(tx)
  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Augh, what's wrong？\""
    when 2 #ホールド成功
      tx["tx1"] = "\"You're stopping?\n That's a shame....\""
      tx["md"] = "11"
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n Can you leave it to me...?\n Let's make ourselves feel even better\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n That's it, just leave it to me, will you....?\n Let's make ourselves feel even better\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Huh....what's wrong?\n Wanna join in too, #{target}?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Can't do anything about that.\n Then I'll take you on\\H\""
      tx["md"] = "12"
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}.\n You'll get your chance\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}.\n You'll get your chance\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  end
  #==================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
#■夢魔が主人公をホールドする
elsif $msg.tag == "Succubus binds the player."
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
    tx["tx1"] = "\"Lemme make you squeal....\\H\""
  when 2 #ホールドレジスト成功
    tx["tx1"] = "\"Augh, come on....\n This much is nothing.\""
  when 3 #ホールドレジスト失敗
    tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\""
    #自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\"" if $game_switches[89] == true
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼アクセプト▼*****************************************************************************************
  #====================================================================================================================
  when "Insertion done by ♀"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n　I might be rushing thing a little, but I'm gonna put it in....\\H\""
      tx["tx1"] = "\"#{giggle}\n Think it's time I put it in....\\H\"" if $msg.t_enemy.lub_female > 30
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n So hot and hard....\\H\""
      tx["tx1"] = "\"#{pleasure_s}\n So hot and hard....\\H\"" if $msg.t_enemy.lub_female > 30
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n How do you like my insides....?\\H」" if $game_switches[89] == true
      tx["tx1"] = "\"#{pleasure_s}\n How do you like my insides....?\\H」" if $game_switches[89] == true and $msg.t_enemy.lub_female > 30
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted","Dark-sided"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Say, wonder if you can lick me down here for me?\""
      tx["tx1"] = "\"#{giggle}\n I'm dripping wet down here....\\H\n Can't you lick it up for me....? \\H\"" if $msg.t_enemy.lub_female > 30
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n You can stick your tongue deeper if you wanna\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Ufufu, you're not fighting back at all.\n Are you a fan of stuff like this? \\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Let's make love from closer up\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not fight back?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)


  #▼胸系▼*********************************************************************************
  #====================================================================================================================
  when "Paizuri","Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{myname}'ll get you hooked on my breasts\\H\n Just relax and make yourself comfortable....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not fight back?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n How does my breasts feel....? \\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n If you're not fighting back, does that mean you do like boobies?\\H\n Then I'll let you have plenty of fun with it\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "Kiss"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hey, can you kiss me....?\n Enough that I can get a really good taste of #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼オーラルアクセプト▼*********************************************************************************
  #====================================================================================================================
  when "♀ giving fellatio"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n say, wanna fuck my mouth? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on, it's not anything like, scary.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Mmmph....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Mmmph....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインバック▼*********************************************************************************
  #====================================================================================================================
  when "Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Let me show you a naughty way to have fun....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on, it's not anything like, scary.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Ufufu, it's in....\\H\n It might hurt at first,\n but you'll feel better in no time....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Ufufu, it's in....\\H\n It might hurt at first,\n but you'll feel better in no time....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #====================================================================================================================
  end
end














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
#■主人公が夢魔をホールドする
if $msg.tag == "Player binds the succubus."
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
    tx["tx1"] = "\"#{giggle}\n Wonder what you'll do to me? \\H\""
  when 2 #ホールド成功
    tx["tx1"] = "\"#{pleasure_s}\n Let's keep up the fun....\\H\""
  when 3 #ホールド失敗
    tx["tx1"] = "\"Come on, don't tease me like that....\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Come on, don't tease me like that....\\H\"" if $game_switches[89] == true
    tx["md"] = "11"
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼インサート▼****************************************************************************************
  #====================================================================================================================
  when "Insertion done by ♂"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Alright, come....\\H\""
      tx["tx1"] = "\"#{giggle}\n Alright, come....\\H\"" if $msg.t_enemy.lub_female > 30
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n Your cock's going all the way in, #{target}....\\H\""
      tx["tx1"] = "\"#{pleasure_s}\n Your cock's going all the way in, #{target}....\\H\"" if $msg.t_enemy.lub_female > 30
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\""
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\"" if $msg.t_enemy.lub_female > 30
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n No need to hurry, I'm not going anywhere.\n　Let's take our time and enjoy ourselves\\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"#{giggle}\n No need to hurry, I'm not going anywhere.\n　Let's take our time and enjoy ourselves\\H\"" if $game_switches[89] == true and $msg.t_enemy.lub_female > 30
      tx["md"] = "11"
    end
    #格納
    ms.push(tx)
  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Augh, what's wrong？\""
    when 2 #ホールド成功
      tx["tx1"] = "\"You're stopping?\n That's a shame....\""
      tx["md"] = "11"
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n Can you leave it to me...?\n Let's make ourselves feel even better\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n That's it, just leave it to me, will you....?\n Let's make ourselves feel even better\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Huh....what's wrong?\n Wanna join in too, #{target}?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Can't do anything about that.\n Then I'll take you on\\H\""
      tx["md"] = "12"
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}.\n You'll get your chance\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}.\n You'll get your chance\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  end
  #==================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
#■夢魔が主人公をホールドする
elsif $msg.tag == "Succubus binds the player."
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
    tx["tx1"] = "\"Lemme make you squeal....\\H\""
  when 2 #ホールドレジスト成功
    tx["tx1"] = "\"Augh, come on....\n This much is nothing.\""
  when 3 #ホールドレジスト失敗
    tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\""
    #自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\"" if $game_switches[89] == true
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼アクセプト▼*****************************************************************************************
  #====================================================================================================================
  when "Insertion done by ♀"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n　I might be rushing thing a little, but I'm gonna put it in....\\H\""
      tx["tx1"] = "\"#{giggle}\n Think it's time I put it in....\\H\"" if $msg.t_enemy.lub_female > 30
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n So hot and hard....\\H\""
      tx["tx1"] = "\"#{pleasure_s}\n So hot and hard....\\H\"" if $msg.t_enemy.lub_female > 30
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n How do you like my insides....?\\H」" if $game_switches[89] == true
      tx["tx1"] = "\"#{pleasure_s}\n How do you like my insides....?\\H」" if $game_switches[89] == true and $msg.t_enemy.lub_female > 30
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted","Dark-sided"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Say, wonder if you can lick me down here for me?\""
      tx["tx1"] = "\"#{giggle}\n I'm dripping wet down here....\\H\n Can't you lick it up for me....? \\H\"" if $msg.t_enemy.lub_female > 30
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n You can stick your tongue deeper if you wanna\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Ufufu, you're not fighting back at all.\n Are you a fan of stuff like this? \\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Let's make love from closer up\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not fight back?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)


  #▼胸系▼*********************************************************************************
  #====================================================================================================================
  when "Paizuri","Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{myname}'ll get you hooked on my breasts\\H\n Just relax and make yourself comfortable....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not fight back?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n How does my breasts feel....? \\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n If you're not fighting back, does that mean you do like boobies?\\H\n Then I'll let you have plenty of fun with it\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "Kiss"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hey, can you kiss me....?\n Enough that I can get a really good taste of #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼オーラルアクセプト▼*********************************************************************************
  #====================================================================================================================
  when "♀ giving fellatio"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n say, wanna fuck my mouth? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on, it's not anything like, scary.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Mmmph....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Mmmph....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインバック▼*********************************************************************************
  #====================================================================================================================
  when "Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Let me show you a naughty way to have fun....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on, it's not anything like, scary.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Ufufu, it's in....\\H\n It might hurt at first,\n but you'll feel better in no time....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Ufufu, it's in....\\H\n It might hurt at first,\n but you'll feel better in no time....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #====================================================================================================================
  end
end
#----------------------------------------------------------------------------------------------------------------------
end #ability
 end #def
end #class
