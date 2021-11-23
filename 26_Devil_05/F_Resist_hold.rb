=begin
#######################################################################################################################
 ●『デビル（緑）』レジスト実行口上（ホールド関連・対パートナー）
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





#######################################################################################################################
########################################★ホールド：パートナーがメインの口上群#############################################
#######################################################################################################################
class MsgDevil_A < MsgBase
 def msg_female_hold_05
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
    tx["tx1"] = "\"#{giggle}\n You're gonna keep me company?\""
  when 2 #ホールド成功
    tx["tx1"] = "\"Now then....\n Who's gonna throw in the sponge first?\""
  when 3 #ホールド失敗
    tx["tx1"] = "\"....It's too early for you to think so.\n Let's take our time, shall we?\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"What, you're stopping?\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Okay then, come....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, you gonna let me have a good time? \\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"You don't have to rush it.\n Not like I'm going anywhere.\""
      tx["md"] = "10"
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Oi....\n You don't just get me all excited and do that.\"" if $game_switches[89] == true
      tx["md"] = "2" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Hehe....that's a great view right there.\\H\n Now what're you gonna do to me?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, I'll go along with you for a bit\\H」"
    when 3 #ホールド失敗
      tx["tx1"] = "\"Just wait a little.\n I'm do it later even if you don't worry.\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"What, you're stopping?\n I wanted to see it for a while longer though.\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Whoa....is that....?\""
      tx["tx1"] = "\"#{giggle}\n What're you gonna do to me with that? \\H\"" if $msg.t_target.age <= 2
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{pleasure_s}\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Just wait a little.\n I'm do it later even if you don't worry.\""
      tx["tx1"] = "\"You're going a bit overboard with your toys.\n It's still too early for you.\"" if $msg.t_target.age <= 2
      #自ら受け入れた場合
      tx["tx1"] = "\"What, you're stopping?\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the user."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Whoa, what's wrong?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"What, you're giving up already?\n That's how it is, huh....\""
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "\"Hehe, what were you trying to do just now?\n I won't get mad, so just tell me, will you? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Hehe, did you think I'd let you go so easily?\n Just keep still like this and cum\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Whoa there, what?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"What, you want me to focus on you?\n No helping it then....\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\"" if $game_switches[89] == true
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
    tx["tx1"] = "\"#{giggle}\n Do you mind keeping me company?\""
  when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
  when 3 #ホールドレジスト失敗
    tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\""
    #自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Can you relax?\n I'll leave you squealing....\\H\""
    when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n Now it won't take much to make you cum....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Now it won't take much to make you cum....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted","Dark-sided"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n How you like the view....? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Whoa, that's not what you prefer?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Hehe, it's fine to lick it.\n Make me moan as well\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Hehe, it's fine to lick it.\n Make me moan as well\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
    tx["tx1"] = "\"#{giggle}\n Do you mind keeping me company?\""
    when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ヘブンリーフィール▼*********************************************************************************
  #====================================================================================================================
  when "Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n #{myname}'ll make you succumb to my breasts....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"What, you mean you're not interested in them?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Hehe, gotcha.\n I'm not letting you get away so simply.\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Hehe, guess that means you couldn't wait.\n Then how 'bout I answer that request of yours....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "Kiss"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Just relax as\n I leave you captivated....\\H\""
    when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hold still as I make you moan.\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインサート▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Relax....\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Hey, it went right in....\\H\""
      tx["tx1"] = "\"Hehe, clamp it tight, will you?\"" if $msg.tag == "Mouth Dildo'ed"
      tx["tx1"] = "\"Hey, it went right in....\\H\"" if $msg.tag == "Ass Dildo'ed"
      #自ら受け入れた場合
      tx["tx1"] = "\"Hey, it went right in....\\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"Hehe, clamp it tight, will you?\"" if $msg.tag == "Mouth Dildo'ed" and $game_switches[89] == true
      tx["tx1"] = "\"Hey, it went right in....\\H\"" if $msg.tag == "Ass Dildo'ed" and $game_switches[89] == true
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
class MsgDevil_A < MsgBase
 def msg_female_bedin_hold_05
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
    tx["tx1"] = "\"#{giggle}\n You're gonna keep me company?\""
  when 2 #ホールド成功
    tx["tx1"] = "\"Now then....\n Who's gonna throw in the sponge first?\""
  when 3 #ホールド失敗
    tx["tx1"] = "\"....It's too early for you to think so.\n Let's take our time, shall we?\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"What, you're stopping?\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Okay then, come....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, you gonna let me have a good time? \\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"You don't have to rush it.\n Not like I'm going anywhere.\""
      tx["md"] = "10"
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Oi....\n You don't just get me all excited and do that.\"" if $game_switches[89] == true
      tx["md"] = "2" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Hehe....that's a great view right there.\\H\n Now what're you gonna do to me?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, I'll go along with you for a bit\\H」"
    when 3 #ホールド失敗
      tx["tx1"] = "\"Just wait a little.\n I'm do it later even if you don't worry.\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"What, you're stopping?\n I wanted to see it for a while longer though.\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Whoa....is that....?\""
      tx["tx1"] = "\"#{giggle}\n What're you gonna do to me with that? \\H\"" if $msg.t_target.age <= 2
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{pleasure_s}\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Just wait a little.\n I'm do it later even if you don't worry.\""
      tx["tx1"] = "\"You're going a bit overboard with your toys.\n It's still too early for you.\"" if $msg.t_target.age <= 2
      #自ら受け入れた場合
      tx["tx1"] = "\"What, you're stopping?\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the user."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Whoa, what's wrong?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"What, you're giving up already?\n That's how it is, huh....\""
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "\"Hehe, what were you trying to do just now?\n I won't get mad, so just tell me, will you? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Hehe, did you think I'd let you go so easily?\n Just keep still like this and cum\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Whoa there, what?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"What, you want me to focus on you?\n No helping it then....\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\"" if $game_switches[89] == true
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
    tx["tx1"] = "\"#{giggle}\n Do you mind keeping me company?\""
  when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
  when 3 #ホールドレジスト失敗
    tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\""
    #自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Can you relax?\n I'll leave you squealing....\\H\""
    when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n Now it won't take much to make you cum....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Now it won't take much to make you cum....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted","Dark-sided"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n How you like the view....? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Whoa, that's not what you prefer?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Hehe, it's fine to lick it.\n Make me moan as well\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Hehe, it's fine to lick it.\n Make me moan as well\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
    tx["tx1"] = "\"#{giggle}\n Do you mind keeping me company?\""
    when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ヘブンリーフィール▼*********************************************************************************
  #====================================================================================================================
  when "Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n #{myname}'ll make you succumb to my breasts....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"What, you mean you're not interested in them?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "Kiss"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Just relax as\n I leave you captivated....\\H\""
    when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hold still as I make you moan.\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインサート▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Relax....\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Hey, it went right in....\\H\""
      tx["tx1"] = "\"Hehe, clamp it tight, will you?\"" if $msg.tag == "Mouth Dildo'ed"
      tx["tx1"] = "\"Hey, it went right in....\\H\"" if $msg.tag == "Ass Dildo'ed"
      #自ら受け入れた場合
      tx["tx1"] = "\"Hey, it went right in....\\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"Hehe, clamp it tight, will you?\"" if $msg.tag == "Mouth Dildo'ed" and $game_switches[89] == true
      tx["tx1"] = "\"Hey, it went right in....\\H\"" if $msg.tag == "Ass Dildo'ed" and $game_switches[89] == true
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
    tx["tx1"] = "\"#{giggle}\n You're gonna keep me company?\""
  when 2 #ホールド成功
    tx["tx1"] = "\"Now then....\n Who's gonna throw in the sponge first?\""
  when 3 #ホールド失敗
    tx["tx1"] = "\"....It's too early for you to think so.\n Let's take our time, shall we?\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"What, you're stopping?\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Okay then, come....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, you gonna let me have a good time? \\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"You don't have to rush it.\n Not like I'm going anywhere.\""
      tx["md"] = "10"
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Oi....\n You don't just get me all excited and do that.\"" if $game_switches[89] == true
      tx["md"] = "2" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Hehe....that's a great view right there.\\H\n Now what're you gonna do to me?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, I'll go along with you for a bit\\H」"
    when 3 #ホールド失敗
      tx["tx1"] = "\"Just wait a little.\n I'm do it later even if you don't worry.\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"What, you're stopping?\n I wanted to see it for a while longer though.\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Whoa....is that....?\""
      tx["tx1"] = "\"#{giggle}\n What're you gonna do to me with that? \\H\"" if $msg.t_target.age <= 2
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{pleasure_s}\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Just wait a little.\n I'm do it later even if you don't worry.\""
      tx["tx1"] = "\"You're going a bit overboard with your toys.\n It's still too early for you.\"" if $msg.t_target.age <= 2
      #自ら受け入れた場合
      tx["tx1"] = "\"What, you're stopping?\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the user."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Whoa, what's wrong?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"What, you're giving up already?\n That's how it is, huh....\""
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "\"Hehe, what were you trying to do just now?\n I won't get mad, so just tell me, will you? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Hehe, did you think I'd let you go so easily?\n Just keep still like this and cum\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Whoa there, what?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"What, you want me to focus on you?\n No helping it then....\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\"" if $game_switches[89] == true
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
    tx["tx1"] = "\"#{giggle}\n Do you mind keeping me company?\""
  when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
  when 3 #ホールドレジスト失敗
    tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\""
    #自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Can you relax?\n I'll leave you squealing....\\H\""
    when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n Now it won't take much to make you cum....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Now it won't take much to make you cum....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted","Dark-sided"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n How you like the view....? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Whoa, that's not what you prefer?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Hehe, it's fine to lick it.\n Make me moan as well\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Hehe, it's fine to lick it.\n Make me moan as well\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
    tx["tx1"] = "\"#{giggle}\n Do you mind keeping me company?\""
    when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ヘブンリーフィール▼*********************************************************************************
  #====================================================================================================================
  when "Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n #{myname}'ll make you succumb to my breasts....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"What, you mean you're not interested in them?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "Kiss"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Just relax as\n I leave you captivated....\\H\""
    when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hold still as I make you moan.\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインサート▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Relax....\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Hey, it went right in....\\H\""
      tx["tx1"] = "\"Hehe, clamp it tight, will you?\"" if $msg.tag == "Mouth Dildo'ed"
      tx["tx1"] = "\"Hey, it went right in....\\H\"" if $msg.tag == "Ass Dildo'ed"
      #自ら受け入れた場合
      tx["tx1"] = "\"Hey, it went right in....\\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"Hehe, clamp it tight, will you?\"" if $msg.tag == "Mouth Dildo'ed" and $game_switches[89] == true
      tx["tx1"] = "\"Hey, it went right in....\\H\"" if $msg.tag == "Ass Dildo'ed" and $game_switches[89] == true
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
    tx["tx1"] = "\"#{giggle}\n You're gonna keep me company?\""
  when 2 #ホールド成功
    tx["tx1"] = "\"Now then....\n Who's gonna throw in the sponge first?\""
  when 3 #ホールド失敗
    tx["tx1"] = "\"....It's too early for you to think so.\n Let's take our time, shall we?\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"What, you're stopping?\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Okay then, come....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, you gonna let me have a good time? \\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"You don't have to rush it.\n Not like I'm going anywhere.\""
      tx["md"] = "10"
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Oi....\n You don't just get me all excited and do that.\"" if $game_switches[89] == true
      tx["md"] = "2" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Hehe....that's a great view right there.\\H\n Now what're you gonna do to me?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, I'll go along with you for a bit\\H」"
    when 3 #ホールド失敗
      tx["tx1"] = "\"Just wait a little.\n I'm do it later even if you don't worry.\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"What, you're stopping?\n I wanted to see it for a while longer though.\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Whoa....is that....?\""
      tx["tx1"] = "\"#{giggle}\n What're you gonna do to me with that? \\H\"" if $msg.t_target.age <= 2
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"#{pleasure_s}\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Just wait a little.\n I'm do it later even if you don't worry.\""
      tx["tx1"] = "\"You're going a bit overboard with your toys.\n It's still too early for you.\"" if $msg.t_target.age <= 2
      #自ら受け入れた場合
      tx["tx1"] = "\"What, you're stopping?\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the user."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Whoa, what's wrong?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"What, you're giving up already?\n That's how it is, huh....\""
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "\"Hehe, what were you trying to do just now?\n I won't get mad, so just tell me, will you? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Hehe, did you think I'd let you go so easily?\n Just keep still like this and cum\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)
  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Whoa there, what?\""
    when 2 #ホールド成功
      tx["tx1"] = "\"What, you want me to focus on you?\n No helping it then....\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\"" if $game_switches[89] == true
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
    tx["tx1"] = "\"#{giggle}\n Do you mind keeping me company?\""
  when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
  when 3 #ホールドレジスト失敗
    tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\""
    #自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Can you relax?\n I'll leave you squealing....\\H\""
    when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n Now it won't take much to make you cum....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Now it won't take much to make you cum....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted","Dark-sided"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n How you like the view....? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Whoa, that's not what you prefer?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Hehe, it's fine to lick it.\n Make me moan as well\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Hehe, it's fine to lick it.\n Make me moan as well\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
    tx["tx1"] = "\"#{giggle}\n Do you mind keeping me company?\""
    when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ヘブンリーフィール▼*********************************************************************************
  #====================================================================================================================
  when "Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n #{myname}'ll make you succumb to my breasts....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"What, you mean you're not interested in them?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "Kiss"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Just relax as\n I leave you captivated....\\H\""
    when 2 #ホールドレジスト成功
    tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ドロウネクター▼*********************************************************************************
  #====================================================================================================================
  when "Cunnilingus"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hold still as I make you moan.\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインサート▼*********************************************************************************
  #====================================================================================================================
  when "Dildo'ed","Mouth Dildo'ed","Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Relax....\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"No?\n Good grief, you're too scared to, I see.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Hey, it went right in....\\H\""
      tx["tx1"] = "\"Hehe, clamp it tight, will you?\"" if $msg.tag == "Mouth Dildo'ed"
      tx["tx1"] = "\"Hey, it went right in....\\H\"" if $msg.tag == "Ass Dildo'ed"
      #自ら受け入れた場合
      tx["tx1"] = "\"Hey, it went right in....\\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"Hehe, clamp it tight, will you?\"" if $msg.tag == "Mouth Dildo'ed" and $game_switches[89] == true
      tx["tx1"] = "\"Hey, it went right in....\\H\"" if $msg.tag == "Ass Dildo'ed" and $game_switches[89] == true
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
