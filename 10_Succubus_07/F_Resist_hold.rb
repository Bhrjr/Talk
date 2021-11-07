=begin
#######################################################################################################################
 ●『サキュバス（橙）』レジスト実行口上（ホールド関連・対パートナー）
 ●性格：陽気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





#######################################################################################################################
########################################★ホールド：パートナーがメインの口上群#############################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
 def msg_female_hold_00
#==================================================================================================================
#■パートナーが夢魔をホールドする
if $msg.tag == "Partner binds the succubus."
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
  #▼シェルマッチ▼****************************************************************************************
  #====================================================================================================================
  when "Tribadism"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Alright, come....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n That's it, rub it good....\\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\"" if $game_switches[89] == true
      tx["md"] = "10"
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Wanna give me a licking?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Nnnn....nfu....\\H\n I don't mind you lowering your hips more....ufufu\\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\"" if $game_switches[89] == true
      tx["md"] = "10"
    end
    #格納
    ms.push(tx)

  #▼ディルド系▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n You're gonna make me moan with that?\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Aaaaah....\\H\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}\n You'll get your chance\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}\n You'll get your chance\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  end

  #▼殆どのホールドは汎用口上で行う▼*************************************************************************
  #▼必要なら別途設定のこと▼*********************************************************************************
  #==================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がパートナーをホールドする
elsif $msg.tag == "Succubus binds the partner."
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
    tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
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
  #▼シェルマッチ▼*****************************************************************************************
  #====================================================================================================================
  when "Tribadism"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n You should be taking me in....\n What say we feel good together?\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on....\n You don't wanna feel good?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n I'm dripping wet down here....\\H\n Can't you lick it up for me....? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n You can stick your tongue deeper if you wanna\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Ufufu, you're not resisting at all.\n Are you a fan of stuff like this? \\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ヘブンリーフィール▼*********************************************************************************
  #====================================================================================================================
  when "Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{myname}'ll get you hooked on my breasts\\H\n Just relax and make yourself comfortable....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n How does my breasts feel....? \\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n If you aren't resisting, does that mean you like boobies?\\H\n Then I'll let you have plenty of fun with it\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "Kiss"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hey, can you kiss me....?\n You don't have to be reserved about it, since we're both girls....\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Let me give you a good sucking....\\H\""
      tx["tx1"] = "\"#{giggle}\n Your pussy's so wet\\H\n Let me suck it up for you with my mouth....\\H\"" if $msg.t_target.lub_female > 30
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Nfu....\\H\n It keeps flowing out....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Nfu....\\H\n It keeps flowing out....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインサート▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Starting now, I'm gonna fuck you with this....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on, it's not anything like, scary.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Hey, it went straight in....\\H\""
      tx["tx1"] = "\"Ufufu, are you licking it well?\n 'Cause then I'll reward you later\\H\"" if $msg.tag == "Mouth Dildo'ed"
      tx["tx1"] = "\"#{giggle}\n Hey, it's all the way in....\\H\"" if $msg.tag == "Ass Dildo'ed"
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Hey, it went straight in....\\H\"" if $game_switches[89] == true
     tx["tx1"] = "\"Ufufu, are you licking it well?\n 'Cause then I'll reward you later\\H\"" if $msg.tag == "Mouth Dildo'ed" and $game_switches[89] == true
      tx["tx1"] = "\"#{giggle}\n Hey, it's all the way in....\\H\"" if $msg.tag == "Ass Dildo'ed" and $game_switches[89] == true
      #特殊
      tx["tx1"] = "\"#{giggle}\n Maybe it was a bit too big for\n #{target}'s adorable pussy....\\H\"" if $msg.t_target.age <= 2
      tx["tx1"] = "\"Ufufu, are you licking it as best as you can?\n 'Cause then I'll reward you later\\H\"" if $msg.tag == "Mouth Dildo'ed" and $msg.t_target.age <= 2
      tx["tx1"] = "\"#{giggle}\n Maybe it was a bit too tight for\n #{target}'s adorable hole....\\H\"" if $msg.tag == "Ass Dildo'ed" and $msg.t_target.age <= 2
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
####################################★ホールド：パートナーがメインの口上群（ベッドイン）###################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
 def msg_female_bedin_hold_00
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
#■パートナーが夢魔をホールドする
if $msg.tag == "Partner binds the succubus."
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
  #▼シェルマッチ▼****************************************************************************************
  #====================================================================================================================
  when "Tribadism"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Alright, come....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n That's it, rub it good....\\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\"" if $game_switches[89] == true
      tx["md"] = "10"
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Wanna give me a licking?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Nnnn....nfu....\\H\n I don't mind you lowering your hips more....ufufu\\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\"" if $game_switches[89] == true
      tx["md"] = "10"
    end
    #格納
    ms.push(tx)

  #▼ディルド系▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n You're gonna make me moan with that?\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Aaaaah....\\H\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}\n You'll get your chance\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}\n You'll get your chance\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  end

  #▼殆どのホールドは汎用口上で行う▼*************************************************************************
  #▼必要なら別途設定のこと▼*********************************************************************************
  #==================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がパートナーをホールドする
elsif $msg.tag == "Succubus binds the partner."
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
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
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
  #▼シェルマッチ▼*****************************************************************************************
  #====================================================================================================================
  when "Tribadism"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n You should be taking me in....\n What say we feel good together?\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on....\n You don't wanna feel good?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n I'm dripping wet down here....\\H\n Can't you lick it up for me....? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n You can stick your tongue deeper if you wanna\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Ufufu, you're not resisting at all.\n Are you a fan of stuff like this? \\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ヘブンリーフィール▼*********************************************************************************
  #====================================================================================================================
  when "Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{myname}'ll get you hooked on my breasts\\H\n Just relax and make yourself comfortable....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n How does my breasts feel....? \\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n If you aren't resisting, does that mean you like boobies?\\H\n Then I'll let you have plenty of fun with it\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "Kiss"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hey, can you kiss me....?\n You don't have to be reserved about it, since we're both girls....\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Let me give you a good sucking....\\H\""
      tx["tx1"] = "\"#{giggle}\n Your pussy's so wet\\H\n Let me suck it up for you with my mouth....\\H\"" if $msg.t_target.lub_female > 30
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Nfu....\\H\n It keeps flowing out....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Nfu....\\H\n It keeps flowing out....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインサート▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Starting now, I'm gonna fuck you with this....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on, it's not anything like, scary.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Hey, it went straight in....\\H\""
      tx["tx1"] = "\"Ufufu, are you licking it well?\n 'Cause then I'll reward you later\\H\"" if $msg.tag == "Mouth Dildo'ed"
      tx["tx1"] = "\"#{giggle}\n Hey, it's all the way in....\\H\"" if $msg.tag == "Ass Dildo'ed"
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Hey, it went straight in....\\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"Ufufu, are you licking it well?\n 'Cause then I'll reward you later\\H\"" if $msg.tag == "Mouth Dildo'ed" and $game_switches[89] == true
      tx["tx1"] = "\"#{giggle}\n Hey, it's all the way in....\\H\"" if $msg.tag == "Ass Dildo'ed" and $game_switches[89] == true
      #特殊
      tx["tx1"] = "\"#{giggle}\n Maybe it was a bit too big for\n #{target}'s adorable pussy....\\H\"" if $msg.t_target.age <= 2
      tx["tx1"] = "\"Ufufu, are you licking it as best as you can?\n 'Cause then I'll reward you later\\H\"" if $msg.tag == "Mouth Dildo'ed" and $msg.t_target.age <= 2
      tx["tx1"] = "\"#{giggle}\n Maybe it was a bit too tight for\n #{target}'s adorable hole....\\H\"" if $msg.tag == "Ass Dildo'ed" and $msg.t_target.age <= 2
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
#■パートナーが夢魔をホールドする
if $msg.tag == "Partner binds the succubus."
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
  #▼シェルマッチ▼****************************************************************************************
  #====================================================================================================================
  when "Tribadism"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Alright, come....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n That's it, rub it good....\\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\"" if $game_switches[89] == true
      tx["md"] = "10"
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Wanna give me a licking?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Nnnn....nfu....\\H\n I don't mind you lowering your hips more....ufufu\\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\"" if $game_switches[89] == true
      tx["md"] = "10"
    end
    #格納
    ms.push(tx)

  #▼ディルド系▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n You're gonna make me moan with that?\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Aaaaah....\\H\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}\n You'll get your chance\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}\n You'll get your chance\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  end

  #▼殆どのホールドは汎用口上で行う▼*************************************************************************
  #▼必要なら別途設定のこと▼*********************************************************************************
  #==================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がパートナーをホールドする
elsif $msg.tag == "Succubus binds the partner."
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
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
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
  #▼シェルマッチ▼*****************************************************************************************
  #====================================================================================================================
  when "Tribadism"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n You should be taking me in....\n What say we feel good together?\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on....\n You don't wanna feel good?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n I'm dripping wet down here....\\H\n Can't you lick it up for me....? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n You can stick your tongue deeper if you wanna\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Ufufu, you're not resisting at all.\n Are you a fan of stuff like this? \\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ヘブンリーフィール▼*********************************************************************************
  #====================================================================================================================
  when "Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{myname}'ll get you hooked on my breasts\\H\n Just relax and make yourself comfortable....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n How does my breasts feel....? \\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n If you aren't resisting, does that mean you like boobies?\\H\n Then I'll let you have plenty of fun with it\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "Kiss"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hey, can you kiss me....?\n You don't have to be reserved about it, since we're both girls....\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Let me give you a good sucking....\\H\""
      tx["tx1"] = "\"#{giggle}\n Your pussy's so wet\\H\n Let me suck it up for you with my mouth....\\H\"" if $msg.t_target.lub_female > 30
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Nfu....\\H\n It keeps flowing out....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Nfu....\\H\n It keeps flowing out....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインサート▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Starting now, I'm gonna fuck you with this....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on, it's not anything like, scary.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Hey, it went straight in....\\H\""
      tx["tx1"] = "\"Ufufu, are you licking it well?\n 'Cause then I'll reward you later\\H\"" if $msg.tag == "Mouth Dildo'ed"
      tx["tx1"] = "\"#{giggle}\n Hey, it's all the way in....\\H\"" if $msg.tag == "Ass Dildo'ed"
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Hey, it went straight in....\\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"Ufufu, are you licking it well?\n 'Cause then I'll reward you later\\H\"" if $msg.tag == "Mouth Dildo'ed" and $game_switches[89] == true
      tx["tx1"] = "\"#{giggle}\n Hey, it's all the way in....\\H\"" if $msg.tag == "Ass Dildo'ed" and $game_switches[89] == true
      #特殊
      tx["tx1"] = "\"#{giggle}\n Maybe it was a bit too big for\n #{target}'s adorable pussy....\\H\"" if $msg.t_target.age <= 2
      tx["tx1"] = "\"Ufufu, are you licking it as best as you can?\n 'Cause then I'll reward you later\\H\"" if $msg.tag == "Mouth Dildo'ed" and $msg.t_target.age <= 2
      tx["tx1"] = "\"#{giggle}\n Maybe it was a bit too tight for\n #{target}'s adorable hole....\\H\"" if $msg.tag == "Ass Dildo'ed" and $msg.t_target.age <= 2
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
#■パートナーが夢魔をホールドする
if $msg.tag == "Partner binds the succubus."
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
  #▼シェルマッチ▼****************************************************************************************
  #====================================================================================================================
  when "Tribadism"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Alright, come....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n That's it, rub it good....\\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\"" if $game_switches[89] == true
      tx["md"] = "10"
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Wanna give me a licking?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Nnnn....nfu....\\H\n I don't mind you lowering your hips more....ufufu\\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n You don't have to be shy about it\\H\"" if $game_switches[89] == true
      tx["md"] = "10"
    end
    #格納
    ms.push(tx)

  #▼ディルド系▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n You're gonna make me moan with that?\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Aaaaah....\\H\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n You need to ease up on the teasing and calm down more....\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}\n You'll get your chance\\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"#{giggle}\n Don't you worry, #{target}\n You'll get your chance\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  end

  #▼殆どのホールドは汎用口上で行う▼*************************************************************************
  #▼必要なら別途設定のこと▼*********************************************************************************
  #==================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がパートナーをホールドする
elsif $msg.tag == "Succubus binds the partner."
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
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
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
  #▼シェルマッチ▼*****************************************************************************************
  #====================================================================================================================
  when "Tribadism"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n You should be taking me in....\n What say we feel good together?\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on....\n You don't wanna feel good?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Let's have even more fun\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n I'm dripping wet down here....\\H\n Can't you lick it up for me....? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n You can stick your tongue deeper if you wanna\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Ufufu, you're not resisting at all.\n Are you a fan of stuff like this? \\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n I can feel your breath, #{target}....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ヘブンリーフィール▼*********************************************************************************
  #====================================================================================================================
  when "Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{myname}'ll get you hooked on my breasts\\H\n Just relax and make yourself comfortable....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n How does my breasts feel....? \\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n If you aren't resisting, does that mean you like boobies?\\H\n Then I'll let you have plenty of fun with it\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "Kiss"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hey, can you kiss me....?\n You don't have to be reserved about it, since we're both girls....\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Augh, quit teasing me, will you....?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n ....#{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Let me give you a good sucking....\\H\""
      tx["tx1"] = "\"#{giggle}\n Your pussy's so wet\\H\n Let me suck it up for you with my mouth....\\H\"" if $msg.t_target.lub_female > 30
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Man....\n Can you like, not resist it?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Nfu....\\H\n It keeps flowing out....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Nfu....\\H\n It keeps flowing out....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインサート▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Starting now, I'm gonna fuck you with this....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Come on, it's not anything like, scary.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Hey, it went straight in....\\H\""
      tx["tx1"] = "\"Ufufu, are you licking it well?\n 'Cause then I'll reward you later\\H\"" if $msg.tag == "Mouth Dildo'ed"
      tx["tx1"] = "\"#{giggle}\n Hey, it's all the way in....\\H\"" if $msg.tag == "Ass Dildo'ed"
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Hey, it went straight in....\\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"Ufufu, are you licking it well?\n 'Cause then I'll reward you later\\H\"" if $msg.tag == "Mouth Dildo'ed" and $game_switches[89] == true
      tx["tx1"] = "\"#{giggle}\n Hey, it's all the way in....\\H\"" if $msg.tag == "Ass Dildo'ed" and $game_switches[89] == true
      #特殊
      tx["tx1"] = "\"#{giggle}\n Maybe it was a bit too big for\n #{target}'s adorable pussy....\\H\"" if $msg.t_target.age <= 2
      tx["tx1"] = "\"Ufufu, are you licking it as best as you can?\n 'Cause then I'll reward you later\\H\"" if $msg.tag == "Mouth Dildo'ed" and $msg.t_target.age <= 2
      tx["tx1"] = "\"#{giggle}\n Maybe it was a bit too tight for\n #{target}'s adorable hole....\\H\"" if $msg.tag == "Ass Dildo'ed" and $msg.t_target.age <= 2
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
