=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』レジスト実行口上（ホールド関連・対パートナー）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,07/25     仮稿流し込み。
#######################################################################################################################
=end





#######################################################################################################################
########################################★ホールド：パートナーがメインの口上群#############################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
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
 #  tx["tx1"] = ""
  when 2 #ホールド成功
 #  tx["tx1"] = ""
  when 3 #ホールド失敗
 #  tx["tx1"] = ""
    #途中で行動をキャンセルした場合
 #  tx["tx1"] = "" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle_s}\\H\n Come here and I'll show you some fun....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{giggle_s}, you're great, #{target}\\H\n What say we share some fun to get along with each other....\\H\""
      tx["tx1"] = "\"Already so passionate....\\H\n #{giggle_s}, I want you to thirst for me as you wish.\n I'll do well to go along with it....\\H\"" if $msg.t_target.crisis? == true
    when 3 #ホールド失敗
      tx["tx1"] = "\"I don't want you hesitating.\n You should be aggressively seeking for me……\\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
      tx["tx1"] = "\"I don't want you hesitating.\n You should be aggressively seeking for me……\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"You want me to lick it?\n Ah, no, not so fiercely....!\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Mmmnn....!\n Gosh, talk about being pushy, #{target}....smooch\\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"I wouldn't really want to overdo it.\n I need you to be a little more gentle in luring me....yes? \\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"Gosh, you surprised me there....\n Not that I'd say I dislike it....\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"You want to do with me as you please?\n #{giggle_s}, try it if you can....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{giggle_s}, not too bad....\\H\n Now that you've got me,\n I just wonder what you'll do to me\\H\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle_s}....If you can, I said\\H\""
      tx["md"] = "0"
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{myname}'m not going or hiding anywhere.\n Don't be shy to come at me\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle_s}, you're interested in how #{myname} taste?\""
      tx["tx1"] = "\"So you want to taste my nectars....\\H\"" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "\"#{giggle_s}, even your breathing's getting heavy....\n You better suck it gently\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"This is the taste of a succubus' overbloated desire....\n Now to dig in to your heart's content\\H\""
      tx["tx1"] = "\"Ahah\\H Aaaaah, it's all flowing out....\\H\n #{myname} can clearly feel your tongue and breaths\n with my intimates down here....\\H\"" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "\"Aaannh\\H #{giggle_s}, oh, #{target}....\\H\n I'm hearing such vulgar noises\n from you sucking it as you desire....\\H\"" if $msg.t_target.crisis? == true
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"No, doing it now'd be a waste.\n I need you to be better at seducing me\\H\""
      tx["md"] = "0"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "\"You need to be a tad better at begging.\n I'll let you lick it once you do as told\\H\""
        tx["md"] = "0"
      end
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, pretending to not be interested....\n And you just couldn't\n stop looking at my body....\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼ディルド系▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Oh my, I see you've got something interesting there....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Aha, it's going all the way though....\\H\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Why don't we touch ourselves in a more direct manner? I haven't done so in a while, after all\\H\""
      tx["md"] = "0"
      #自ら受け入れた場合
      tx["tx1"] = "\"Oh, you're not going to? Shame.\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the user."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Don't struggle like that.\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Gosh....maybe that wasn't what you preferred?\""
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "\"That's as far as you go.\n Too bad I'm not letting you get away\\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"Nfufu, good girl.\n Let's get on with the fun\\H\""
        tx["md"] = "3"
      end
    end
    #格納
    ms.push(tx)

  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Did you get jealous of him?\n Ufufu, you've got a cute side to you....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"I'll let him go since I\n find you so adorable, #{target}.\n Of course, you'll entertain me in his place, won't you?\""
      tx["md"] = "0"
    when 3 #ホールド失敗
      tx["tx1"] = "\"That won't do. I'll deal with you next, #{target}.\n Just sit tight for a little\n and I'll be sure to entertain you\\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"You don't have to be so shy about it....\\H\n Then let's play with each other after this\\H\""
        tx["md"] = "0"
      end
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
 #  tx["tx1"] = ""
  when 2 #ホールドレジスト成功
 #  tx["tx1"] = ""
  when 3 #ホールドレジスト失敗
 #  tx["tx1"] = ""
    #自ら受け入れた場合
 #  tx["tx1"] = "" if $game_switches[89] == true
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
      tx["tx1"] = "\"Over here....\n I want to get a good feel of you, #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"How cold....\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle_s}....\\H\n I can feel your zeal from\n where we're kissing....\\H\""
      tx["tx1"] = "\"#{giggle_s}....\\H\n I feel like your crotch down here's going to\n melt from the wanton passion....\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      tx["tx1"] = "\"Ahah\\H So you're eager for it too, #{target}\\H\n #{giggle_s}, I was going to eat you up,\n but I think I'm going get eaten instead if I don't focus....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted","Dark-sided"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Could you lick me\n down here for me....? \\H\""
      tx["tx1"] = "\"Hey, lick it\\H\n Taste my nectar\n as you desire....\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"You'll hurt my feelings by refusing me like that....\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Mmmhh....\\H\n #{giggle_s}, be sure to get a full taste of it....\\H\""
      tx["tx1"] = "\"Fighting back it won't do anything....\n I'll be training you to\n accept the pleasure\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, talk about being greedy, #{target}\\H\n I don't dislike such girls....\\H\""
        tx["tx1"] = "\"#{giggle_s}....yes, you've got it\\H\n You're supposed to follow the urges seething from your heart and indulge in me....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"You're so pretty, #{target}....\n I just want to make you mine....\\H\""
      tx["tx1"] = "\"You should be on the edge now.\n I'll make you my captive like this....\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{giggle_s}, you've got it....\n Getting ahold of you will even let us share the happiness...\\H\""
      tx["md"] = "3"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "\"#{giggle_s}, fighting back so frantically....\n even when you're staying true to the burning sensation of your body....\\H\""
        tx["md"] = "0"
      end
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Got you....\\H\n I'll have you never forget\n the taste of my fingers....\\H\""
      tx["tx1"] = "\"#{myname}'ll etch the pleasure from me\n onto your body and mind that\n you'll never be able to break free from it....\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, to entrust your body on your own....\n What a harmful desire,\n willing to dance to someone's tune....\\H\""
        tx["tx1"] = "\"What a good girl you are, #{target}, so obedient....\\H\n As you wish, I'll submerge your mind in pleasure\n so much that you won't be able to leave....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼ヘブンリーフィール▼*********************************************************************************
  #====================================================================================================================
  when "Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "キッス"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"How about I get a taste of you\n for myself, #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{giggle_s}....too bad you're so prudish.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle_s}, now you can't hide it anymore.\n Starting now, I'm going to expose\n every last weak spot of yours for what they are....\\H\""
      tx["tx1"] = "\"#{giggle_s}....\\H\n Your anticipation and shameless wants\n are all overflowing as a sweet nectar....\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, I guess you're\n pretty confident about it, #{target}.\n I can't wait to try the sweetness of the overflowing nectar....\\H\""
        tx["tx1"] = "\"#{giggle_s}\\H\n Your shameful desires are overflowing and oozing out as a sweet nectar,\n where this shameful princess is just thirsting to open her mouth....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼ディルドインサート▼*********************************************************************************
  #====================================================================================================================
  when "ディルド♀挿入","ディルド口挿入","ディルド尻挿入"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
   #  tx["tx1"] = "" if $msg.tag == "ディルド口挿入"
   #  tx["tx1"] = "" if $msg.tag == "ディルド尻挿入"
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
   #  tx["tx1"] = "" if $msg.tag == "ディルド口挿入" and $game_switches[89] == true
   #  tx["tx1"] = "" if $msg.tag == "ディルド尻挿入" and $game_switches[89] == true
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
class MsgSuccubuslord_A < MsgBase
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
 #  tx["tx1"] = ""
  when 2 #ホールド成功
 #  tx["tx1"] = ""
  when 3 #ホールド失敗
 #  tx["tx1"] = ""
    #途中で行動をキャンセルした場合
 #  tx["tx1"] = "" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle_s}\\H\n Come here and I'll show you some fun....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{giggle_s}, you're great, #{target}\\H\n What say we share some fun to get along with each other....\\H\""
      tx["tx1"] = "\"Already so passionate....\\H\n #{giggle_s}, I want you to thirst for me as you wish.\n I'll do well to go along with it....\\H\"" if $msg.t_target.crisis? == true
    when 3 #ホールド失敗
      tx["tx1"] = "\"I don't want you hesitating.\n You should be aggressively seeking for me……\\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
      tx["tx1"] = "\"I don't want you hesitating.\n You should be aggressively seeking for me……\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"You want me to lick it?\n Ah, no, not so fiercely....!\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Mmmnn....!\n Gosh, talk about being pushy, #{target}....smooch\\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"I wouldn't really want to overdo it.\n I need you to be a little more gentle in luring me....yes? \\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"Gosh, you surprised me there....\n Not that I'd say I dislike it....\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"You want to do with me as you please?\n #{giggle_s}, try it if you can....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{giggle_s}, not too bad....\\H\n Now that you've got me,\n I just wonder what you'll do to me\\H\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle_s}....if you can, I said\\H\""
      tx["md"] = "0"
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{myname}'m not going or hiding anywhere.\n Don't be shy to come at me\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle_s}, you're interested in how #{myname} taste?\""
      tx["tx1"] = "\"So you want to taste my nectars....\\H\"" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "\"#{giggle_s}, even your breathing's getting heavy....\n You better suck it gently\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"This is the taste of a succubus' overbloated desire....\n Now to dig in to your heart's content\\H\""
      tx["tx1"] = "\"Ahah\\H Aaaaah, it's all flowing out....\\H\n #{myname} can clearly feel your tongue and breaths\n with my intimates down here....\\H\"" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "\"Aaannh\\H #{giggle_s}, oh, #{target}....\\H\n I'm hearing such vulgar noises\n from you sucking it as you desire....\\H\"" if $msg.t_target.crisis? == true
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"No, doing it now'd be a waste.\n I need you to be better at seducing me\\H\""
      tx["md"] = "0"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "\"You need to be a tad better at begging.\n I'll let you lick it once you do as told\\H\""
        tx["md"] = "0"
      end
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, pretending to not be interested....\n And you just couldn't\n stop looking at my body....\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼ディルド系▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Oh my, I see you've got something interesting there....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Aha, it's going all the way though....\\H\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Why don't we touch ourselves in a more direct manner? I haven't done so in a while, after all\\H\""
      tx["md"] = "0"
      #自ら受け入れた場合
      tx["tx1"] = "\"Oh, you're not going to? Shame.\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the user."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Don't struggle like that.\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Gosh....maybe that wasn't what you preferred?\""
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "\"That's as far as you go.\n Too bad I'm not letting you get away\\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"Nfufu, good girl.\n Let's get on with the fun\\H\""
        tx["md"] = "3"
      end
    end
    #格納
    ms.push(tx)

  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Did you get jealous of him?\n Ufufu, you've got a cute side to you....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"I'll let him go since I\n find you so adorable, #{target}.\n Of course, you'll entertain me in his place, won't you?\""
      tx["md"] = "0"
    when 3 #ホールド失敗
      tx["tx1"] = "\"That won't do. I'll deal with you next, #{target}.\n Just sit tight for a little\n and I'll be sure to entertain you\\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"You don't have to be so shy about it....\\H\n Then let's play with each other after this\\H\""
        tx["md"] = "0"
      end
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
 #  tx["tx1"] = ""
  when 2 #ホールドレジスト成功
 #  tx["tx1"] = ""
  when 3 #ホールドレジスト失敗
 #  tx["tx1"] = ""
    #自ら受け入れた場合
 #  tx["tx1"] = "" if $game_switches[89] == true
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
      tx["tx1"] = "\"Over here....\n I want to get a good feel of you, #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"How cold....\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle_s}....\\H\n I can feel your zeal from\n where we're kissing....\\H\""
      tx["tx1"] = "\"#{giggle_s}....\\H\n I feel like your crotch down here's going to\n melt from the wanton passion....\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      tx["tx1"] = "\"Ahah\\H So you're eager for it too, #{target}\\H\n #{giggle_s}, I was going to eat you up,\n but I think I'm going get eaten instead if I don't focus....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted","Dark-sided"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Could you lick me\n down here for me....? \\H\""
      tx["tx1"] = "\"Hey, lick it\\H\n Taste my nectar\n as you desire....\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"You'll hurt my feelings by refusing me like that....\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Mmmhh....\\H\n #{giggle_s}, be sure to get a full taste of it....\\H\""
      tx["tx1"] = "\"Fighting back it won't do anything....\n I'll be training you to\n accept the pleasure\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, talk about being greedy, #{target}\\H\n I don't dislike such girls....\\H\""
        tx["tx1"] = "\"#{giggle_s}....yes, you've got it\\H\n You're supposed to follow the urges seething from your heart and indulge in me....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"You're so pretty, #{target}....\n I just want to make you mine....\\H\""
      tx["tx1"] = "\"You should be on the edge now.\n I'll make you my captive like this....\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{giggle_s}, you've got it....\n Getting ahold of you will even let us share the happiness...\\H\""
      tx["md"] = "3"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "\"#{giggle_s}, fighting back so frantically....\n even when you're staying true to the burning sensation of your body....\\H\""
        tx["md"] = "0"
      end
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Got you....\\H\n I'll have you never forget\n the taste of my fingers....\\H\""
      tx["tx1"] = "\"#{myname}'ll etch the pleasure from me\n onto your body and mind that\n you'll never be able to break free from it....\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, to entrust your body on your own....\n What a harmful desire,\n willing to dance to someone's tune....\\H\""
        tx["tx1"] = "\"What a good girl you are, #{target}, so obedient....\\H\n As you wish, I'll submerge your mind in pleasure\n so much that you won't be able to leave....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼ヘブンリーフィール▼*********************************************************************************
  #====================================================================================================================
  when "ぱふぱふ"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "キッス"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"How about I get a taste of you\n for myself, #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{giggle_s}....too bad you're so prudish.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle_s}, now you can't hide it anymore.\n Starting now, I'm going to expose\n every last weak spot of yours for what they are....\\H\""
      tx["tx1"] = "\"#{giggle_s}....\\H\n Your anticipation and shameless wants\n are all overflowing as a sweet nectar....\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, I guess you're\n pretty confident about it, #{target}.\n I can't wait to try the sweetness of the overflowing nectar....\\H\""
        tx["tx1"] = "\"#{giggle_s}\\H\n Your shameful desires are overflowing and oozing out as a sweet nectar,\n where this shameful princess is just thirsting to open her mouth....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼ディルドインサート▼*********************************************************************************
  #====================================================================================================================
  when "ディルド♀挿入","ディルド口挿入","ディルド尻挿入"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
   #  tx["tx1"] = "" if $msg.tag == "ディルド口挿入"
   #  tx["tx1"] = "" if $msg.tag == "ディルド尻挿入"
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
   #  tx["tx1"] = "" if $msg.tag == "ディルド口挿入" and $game_switches[89] == true
   #  tx["tx1"] = "" if $msg.tag == "ディルド尻挿入" and $game_switches[89] == true
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
 #  tx["tx1"] = ""
  when 2 #ホールド成功
 #  tx["tx1"] = ""
  when 3 #ホールド失敗
 #  tx["tx1"] = ""
    #途中で行動をキャンセルした場合
 #  tx["tx1"] = "" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle_s}\\H\n Come here and I'll show you some fun....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{giggle_s}, you're great, #{target}\\H\n What say we share some fun to get along with each other....\\H\""
      tx["tx1"] = "\"Already so passionate....\\H\n #{giggle_s}, I want you to thirst for me as you wish.\n I'll do well to go along with it....\\H\"" if $msg.t_target.crisis? == true
    when 3 #ホールド失敗
      tx["tx1"] = "\"I don't want you hesitating.\n You should be aggressively seeking for me……\\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
      tx["tx1"] = "\"I don't want you hesitating.\n You should be aggressively seeking for me……\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"You want me to lick it?\n Ah, no, not so fiercely....!\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Mmmnn....!\n Gosh, talk about being pushy, #{target}....smooch\\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"I wouldn't really want to overdo it.\n I need you to be a little more gentle in luring me....yes? \\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"Gosh, you surprised me there....\n Not that I'd say I dislike it....\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"You want to do with me as you please?\n #{giggle_s}, try it if you can....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{giggle_s}, not too bad....\\H\n Now that you've got me,\n I just wonder what you'll do to me\\H\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle_s}....if you can, I said\\H\""
      tx["md"] = "0"
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{myname}'m not going or hiding anywhere.\n Don't be shy to come at me\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle_s}, you're interested in how #{myname} taste?\""
      tx["tx1"] = "\"So you want to taste my nectars....\\H\"" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "\"#{giggle_s}, even your breathing's getting heavy....\n You better suck it gently\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"This is the taste of a succubus' overbloated desire....\n Now to dig in to your heart's content\\H\""
      tx["tx1"] = "\"Ahah\\H Aaaaah, it's all flowing out....\\H\n #{myname} can clearly feel your tongue and breaths\n with my intimates down here....\\H\"" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "\"Aaannh\\H #{giggle_s}, oh, #{target}....\\H\n I'm hearing such vulgar noises\n from you sucking it as you desire....\\H\"" if $msg.t_target.crisis? == true
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"No, doing it now'd be a waste.\n I need you to be better at seducing me\\H\""
      tx["md"] = "0"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "\"You need to be a tad better at begging.\n I'll let you lick it once you do as told\\H\""
        tx["md"] = "0"
      end
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, pretending to not be interested....\n And you just couldn't\n stop looking at my body....\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼ディルド系▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Oh my, I see you've got something interesting there....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Aha, it's going all the way though....\\H\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Why don't we touch ourselves in a more direct manner? I haven't done so in a while, after all\\H\""
      tx["md"] = "0"
      #自ら受け入れた場合
      tx["tx1"] = "\"Oh, you're not going to? Shame.\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the user."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Don't struggle like that.\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Gosh....maybe that wasn't what you preferred?\""
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "\"That's as far as you go.\n Too bad I'm not letting you get away\\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"Nfufu, good girl.\n Let's get on with the fun\\H\""
        tx["md"] = "3"
      end
    end
    #格納
    ms.push(tx)

  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Did you get jealous of him?\n Ufufu, you've got a cute side to you....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"I'll let him go since I\n find you so adorable, #{target}.\n Of course, you'll entertain me in his place, won't you?\""
      tx["md"] = "0"
    when 3 #ホールド失敗
      tx["tx1"] = "\"That won't do. I'll deal with you next, #{target}.\n Just sit tight for a little\n and I'll be sure to entertain you\\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"You don't have to be so shy about it....\\H\n Then let's play with each other after this\\H\""
        tx["md"] = "0"
      end
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
 #  tx["tx1"] = ""
  when 2 #ホールドレジスト成功
 #  tx["tx1"] = ""
  when 3 #ホールドレジスト失敗
 #  tx["tx1"] = ""
    #自ら受け入れた場合
 #  tx["tx1"] = "" if $game_switches[89] == true
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
      tx["tx1"] = "\"Over here....\n I want to get a good feel of you, #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"How cold....\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle_s}....\\H\n I can feel your zeal from\n where we're kissing....\\H\""
      tx["tx1"] = "\"#{giggle_s}....\\H\n I feel like your crotch down here's going to\n melt from the wanton passion....\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      tx["tx1"] = "\"Ahah\\H So you're eager for it too, #{target}\\H\n #{giggle_s}, I was going to eat you up,\n but I think I'm going get eaten instead if I don't focus....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted","Dark-sided"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Could you lick me\n down here for me....? \\H\""
      tx["tx1"] = "\"Hey, lick it\\H\n Taste my nectar\n as you desire....\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"You'll hurt my feelings by refusing me like that....\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Mmmhh....\\H\n #{giggle_s}, be sure to get a full taste of it....\\H\""
      tx["tx1"] = "\"Fighting back it won't do anything....\n I'll be training you to\n accept the pleasure\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, talk about being greedy, #{target}\\H\n I don't dislike such girls....\\H\""
        tx["tx1"] = "\"#{giggle_s}....yes, you've got it\\H\n You're supposed to follow the urges seething from your heart and indulge in me....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"You're so pretty, #{target}....\n I just want to make you mine....\\H\""
      tx["tx1"] = "\"You should be on the edge now.\n I'll make you my captive like this....\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{giggle_s}, you've got it....\n Getting ahold of you will even let us share the happiness...\\H\""
      tx["md"] = "3"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "\"#{giggle_s}, fighting back so frantically....\n even when you're staying true to the burning sensation of your body....\\H\""
        tx["md"] = "0"
      end
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Got you....\\H\n I'll have you never forget\n the taste of my fingers....\\H\""
      tx["tx1"] = "\"#{myname}'ll etch the pleasure from me\n onto your body and mind that\n you'll never be able to break free from it....\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, to entrust your body on your own....\n What a harmful desire,\n willing to dance to someone's tune....\\H\""
        tx["tx1"] = "\"What a good girl you are, #{target}, so obedient....\\H\n As you wish, I'll submerge your mind in pleasure\n so much that you won't be able to leave....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼ヘブンリーフィール▼*********************************************************************************
  #====================================================================================================================
  when "ぱふぱふ"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "キッス"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"How about I get a taste of you\n for myself, #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{giggle_s}....too bad you're so prudish.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle_s}, now you can't hide it anymore.\n Starting now, I'm going to expose\n every last weak spot of yours for what they are....\\H\""
      tx["tx1"] = "\"#{giggle_s}....\\H\n Your anticipation and shameless wants\n are all overflowing as a sweet nectar....\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, I guess you're\n pretty confident about it, #{target}.\n I can't wait to try the sweetness of the overflowing nectar....\\H\""
        tx["tx1"] = "\"#{giggle_s}\\H\n Your shameful desires are overflowing and oozing out as a sweet nectar,\n where this shameful princess is just thirsting to open her mouth....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼ディルドインサート▼*********************************************************************************
  #====================================================================================================================
  when "ディルド♀挿入","ディルド口挿入","ディルド尻挿入"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
   #  tx["tx1"] = "" if $msg.tag == "ディルド口挿入"
   #  tx["tx1"] = "" if $msg.tag == "ディルド尻挿入"
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
   #  tx["tx1"] = "" if $msg.tag == "ディルド口挿入" and $game_switches[89] == true
   #  tx["tx1"] = "" if $msg.tag == "ディルド尻挿入" and $game_switches[89] == true
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
 #  tx["tx1"] = ""
  when 2 #ホールド成功
 #  tx["tx1"] = ""
  when 3 #ホールド失敗
 #  tx["tx1"] = ""
    #途中で行動をキャンセルした場合
 #  tx["tx1"] = "" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle_s}\\H\n Come here and I'll show you some fun....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{giggle_s}, you're great, #{target}\\H\n What say we share some fun to get along with each other....\\H\""
      tx["tx1"] = "\"Already so passionate....\\H\n #{giggle_s}, I want you to thirst for me as you wish.\n I'll do well to go along with it....\\H\"" if $msg.t_target.crisis? == true
    when 3 #ホールド失敗
      tx["tx1"] = "\"I don't want you hesitating.\n You should be aggressively seeking for me……\\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
      tx["tx1"] = "\"I don't want you hesitating.\n You should be aggressively seeking for me……\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"You want me to lick it?\n Ah, no, not so fiercely....!\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Mmmnn....!\n Gosh, talk about being pushy, #{target}....smooch\\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"I wouldn't really want to overdo it.\n I need you to be a little more gentle in luring me....yes? \\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"Gosh, you surprised me there....\n Not that I'd say I dislike it....\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"You want to do with me as you please?\n #{giggle_s}, try it if you can....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{giggle_s}, not too bad....\\H\n Now that you've got me,\n I just wonder what you'll do to me\\H\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle_s}....if you can, I said\\H\""
      tx["md"] = "0"
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{myname}'m not going or hiding anywhere.\n Don't be shy to come at me\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle_s}, you're interested in how #{myname} taste?\""
      tx["tx1"] = "\"So you want to taste my nectars....\\H\"" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "\"#{giggle_s}, even your breathing's getting heavy....\n You better suck it gently\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"This is the taste of a succubus' overbloated desire....\n Now to dig in to your heart's content\\H\""
      tx["tx1"] = "\"Ahah\\H Aaaaah, it's all flowing out....\\H\n #{myname} can clearly feel your tongue and breaths\n with my intimates down here....\\H\"" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "\"Aaannh\\H #{giggle_s}, oh, #{target}....\\H\n I'm hearing such vulgar noises\n from you sucking it as you desire....\\H\"" if $msg.t_target.crisis? == true
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"No, doing it now'd be a waste.\n I need you to be better at seducing me\\H\""
      tx["md"] = "0"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "\"You need to be a tad better at begging.\n I'll let you lick it once you do as told\\H\""
        tx["md"] = "0"
      end
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, pretending to not be interested....\n And you just couldn't\n stop looking at my body....\\H\""
        tx["md"] = "0"
      end
    end
    #格納
    ms.push(tx)

  #▼ディルド系▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Oh my, I see you've got something interesting there....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Aha, it's going all the way though....\\H\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Why don't we touch ourselves in a more direct manner? I haven't done so in a while, after all\\H\""
      tx["md"] = "0"
      #自ら受け入れた場合
      tx["tx1"] = "\"Oh, you're not going to? Shame.\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the user."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Don't struggle like that.\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Gosh....maybe that wasn't what you preferred?\""
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "\"That's as far as you go.\n Too bad I'm not letting you get away\\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"Nfufu, good girl.\n Let's get on with the fun\\H\""
        tx["md"] = "3"
      end
    end
    #格納
    ms.push(tx)

  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Did you get jealous of him?\n Ufufu, you've got a cute side to you....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"I'll let him go since I\n find you so adorable, #{target}.\n Of course, you'll entertain me in his place, won't you?\""
      tx["md"] = "0"
    when 3 #ホールド失敗
      tx["tx1"] = "\"That won't do. I'll deal with you next, #{target}.\n Just sit tight for a little\n and I'll be sure to entertain you\\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"You don't have to be so shy about it....\\H\n Then let's play with each other after this\\H\""
        tx["md"] = "0"
      end
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
 #  tx["tx1"] = ""
  when 2 #ホールドレジスト成功
 #  tx["tx1"] = ""
  when 3 #ホールドレジスト失敗
 #  tx["tx1"] = ""
    #自ら受け入れた場合
 #  tx["tx1"] = "" if $game_switches[89] == true
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
      tx["tx1"] = "\"Over here....\n I want to get a good feel of you, #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"How cold....\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle_s}....\\H\n I can feel your zeal from\n where we're kissing....\\H\""
      tx["tx1"] = "\"#{giggle_s}....\\H\n I feel like your crotch down here's going to\n melt from the wanton passion....\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      tx["tx1"] = "\"Ahah\\H So you're eager for it too, #{target}\\H\n #{giggle_s}, I was going to eat you up,\n but I think I'm going get eaten instead if I don't focus....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted","Dark-sided"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Could you lick me\n down here for me....? \\H\""
      tx["tx1"] = "\"Hey, lick it\\H\n Taste my nectar\n as you desire....\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"You'll hurt my feelings by refusing me like that....\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Mmmhh....\\H\n #{giggle_s}, be sure to get a full taste of it....\\H\""
      tx["tx1"] = "\"Fighting back it won't do anything....\n I'll be training you to\n accept the pleasure\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, talk about being greedy, #{target}\\H\n I don't dislike such girls....\\H\""
        tx["tx1"] = "\"#{giggle_s}....yes, you've got it\\H\n You're supposed to follow the urges seething from your heart and indulge in me....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"You're so pretty, #{target}....\n I just want to make you mine....\\H\""
      tx["tx1"] = "\"You should be on the edge now.\n I'll make you my captive like this....\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{giggle_s}, you've got it....\n Getting ahold of you will even let us share the happiness...\\H\""
      tx["md"] = "3"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "\"#{giggle_s}, fighting back so frantically....\n even when you're staying true to the burning sensation of your body....\\H\""
        tx["md"] = "0"
      end
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Got you....\\H\n I'll have you never forget\n the taste of my fingers....\\H\""
      tx["tx1"] = "\"#{myname}'ll etch the pleasure from me\n onto your body and mind that\n you'll never be able to break free from it....\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, to entrust your body on your own....\n What a harmful desire,\n willing to dance to someone's tune....\\H\""
        tx["tx1"] = "\"What a good girl you are, #{target}, so obedient....\\H\n As you wish, I'll submerge your mind in pleasure\n so much that you won't be able to leave....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼ヘブンリーフィール▼*********************************************************************************
  #====================================================================================================================
  when "ぱふぱふ"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "キッス"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"How about I get a taste of you\n for myself, #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{giggle_s}....too bad you're so prudish.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle_s}, now you can't hide it anymore.\n Starting now, I'm going to expose\n every last weak spot of yours for what they are....\\H\""
      tx["tx1"] = "\"#{giggle_s}....\\H\n Your anticipation and shameless wants\n are all overflowing as a sweet nectar....\\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"#{giggle_s}, I guess you're\n pretty confident about it, #{target}.\n I can't wait to try the sweetness of the overflowing nectar....\\H\""
        tx["tx1"] = "\"#{giggle_s}\\H\n Your shameful desires are overflowing and oozing out as a sweet nectar,\n where this shameful princess is just thirsting to open her mouth....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼ディルドインサート▼*********************************************************************************
  #====================================================================================================================
  when "ディルド♀挿入","ディルド口挿入","ディルド尻挿入"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
   #  tx["tx1"] = "" if $msg.tag == "ディルド口挿入"
   #  tx["tx1"] = "" if $msg.tag == "ディルド尻挿入"
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
   #  tx["tx1"] = "" if $msg.tag == "ディルド口挿入" and $game_switches[89] == true
   #  tx["tx1"] = "" if $msg.tag == "ディルド尻挿入" and $game_switches[89] == true
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
