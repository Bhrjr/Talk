=begin
#######################################################################################################################
 ●『デビル（緑）』レジスト実行口上（ホールド関連・対主人公）
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





#######################################################################################################################
########################################★ホールド：主人公がメインの口上群#############################################
#######################################################################################################################
class MsgDevil_A < MsgBase
 def msg_hold_05
#==================================================================================================================
#■主人公が夢魔をホールドする
if $msg.tag == "Player binds the succubus"
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
    tx["tx1"] = "\"Hehe....you're coming at me? \\H\""
  when 2 #ホールド成功
    tx["tx1"] = "\"Now then....\n Who's gonna throw in the sponge first?\""
  when 3 #ホールド失敗
    tx["tx1"] = "\"....It's too early for you to think so.\n Let's take our time, shall we?\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"Hey now, you ain't supposed to stop there, are you?\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Oh, you're down for it?\n ....#{giggle}\""
      tx["tx1"] = "\"So you're doing it....\\H\n I bet you're tired of waiting.\"" if $game_switches[86] == true #空腹戦
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\n Now, who's gonna throw in the sponge first....? \\H\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"Man, rushing it like that.\n You hafta be a bit more easygoing.\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Hey now, you mean you're gonna stop there?\"" if $game_switches[89] == true
      tx["md"] = "1" if $game_switches[89] == true
      tx["tx1"] = "\"....This ain't funny considering what state I'm in.\"" if $game_switches[86] == true #空腹戦
      tx["md"] = "1" if $game_switches[86] == true #空腹戦
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
      tx["tx1"] = "\"Hehe, you thought I'd let you go so easily?\n Just keep still like this and cum\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"....Damn, just when I was at the best part.\n This is gonna cost you a ton, you hear?\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\"" if $game_switches[89] == true
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
    tx["tx1"] = "\"Hey, can you like, keep still?\""
  when 2 #ホールドレジスト成功
    tx["tx1"] = "\"Whoa, trying to fight back here, are you?\n Well, that makes things more enjoyable.\""
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
  #▼アクセプト▼*****************************************************************************************
  #====================================================================================================================
  when "Insertion done by ♀"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"You know what....?\n Is now the time? \\H\""
      tx["tx1"] = "\"Now brace yourself....\\H\"" if $game_switches[86] == true #空腹戦
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Now look here, you know that's not how it goes.\n You gotta be better at reading the mood, #{target}.\""
      tx["tx1"] = "\"Can you just accept it and brace yourself?\n You're just gonna get eaten by hook or crook\\H\"" if $game_switches[86] == true #空腹戦
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\n Now, who's gonna throw in the sponge first....? \\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, not gonna fight back?\n Or you couldn't wait, maybe? \\H\"" if $game_switches[89] == true
      tx["tx1"] = "\"#{pleasure_s}\n Well, I'll be sure to have a nice meal\\H\"" if $game_switches[86] == true #空腹戦
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
      tx["tx1"] = "\"Oh, you got away....\n Oh well, guess we can't have fun without stuff like that.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Hehe, never should've let your guard down♪\n Maybe I should squish you flat like this?\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Hehe, guess that means you couldn't wait.\n Then how 'bout I answer that request of yours....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Hey, can you like, keep still?\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Whoa, trying to fight back here, are you?\n Well, that makes things more enjoyable.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n I ain't letting you get away so easily.\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)


  #▼胸系▼*********************************************************************************
  #====================================================================================================================
  when "Paizuri","Jiggly-Wiggly"
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
      tx["tx1"] = "\"#{giggle}\n I'll see how good you are at kissing\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"What, you mean you're not confident in it?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼オーラルアクセプト▼*********************************************************************************
  #====================================================================================================================
  when "♀ giving fellatio"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hold still as I make you moan.\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Oh, you got away....\n Oh well, guess we can't have fun without stuff like that.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインバック▼*********************************************************************************
  #====================================================================================================================
  when "Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Hey....just relax.\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Oh, you got away....\n Oh well, guess we can't have fun without stuff like that.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Now it's time to keep you entertained\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Now it's time to keep you entertained\\H\"" if $game_switches[89] == true
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
class MsgDevil_A < MsgBase
 def msg_bedin_hold_05
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
#■主人公が夢魔をホールドする
if $msg.tag == "Player binds the succubus"
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
    tx["tx1"] = "\"Hehe....you're coming at me? \\H\""
  when 2 #ホールド成功
    tx["tx1"] = "\"Now then....\n Who's gonna throw in the sponge first?\""
  when 3 #ホールド失敗
    tx["tx1"] = "\"....It's too early for you to think so.\n Let's take our time, shall we?\""
    #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Hey now, you ain't supposed to stop there, are you?\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n I've been waiting for this, come....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"Now look here, rushing it like that.\n #{myname}'m going anywhere.\""
      tx["md"] = "11" if $game_switches[89] == true
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Now look here, you can't just stop there.\"" if $game_switches[89] == true
      tx["md"] = "2" if $game_switches[89] == true
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
      tx["tx1"] = "\"What, you're giving up already?\n Oh well, still got a long way to go anyway. I ain't letting you go next time.\""
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "\"Hehe, what were you trying to do just now?\n I won't get mad, so just tell me, will you? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Hehe, I can't let you do that.\n Just keep still like this and cum\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"....Damn, just when I was at the best part.\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\"" if $game_switches[89] == true
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
    tx["tx1"] = "\"Hey, can you like, keep still?\""
  when 2 #ホールドレジスト成功
    tx["tx1"] = "\"Wha, don't see what's wrong with it.\n You don't wanna be the one that's attacked?\""
  when 3 #ホールドレジスト失敗
    tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\""
    #自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Here I go, #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Now look here, you know that's not how it goes.\n You gotta be better at reading the mood, #{target}.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, I want you to feel it good\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Hehe, you got away♪\n Not a fan of this stuff?\""
      tx["md"] = "11"
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
      tx["tx1"] = "\"Hey, can you like, keep still?\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Wha, don't see what's wrong with it.\n You don't wanna be the one that's attacked?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)


  #▼胸系▼*********************************************************************************
  #====================================================================================================================
  when "Paizuri","Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n #{myname}'ll make you succumb to my breasts....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Wha, don't see what's wrong with it.\n You don't wanna be the one that's attacked?\""
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
      tx["tx1"] = "\"#{giggle}\n #{target}, can I....kiss you? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Wha, don't see what's wrong with it.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼オーラルアクセプト▼*********************************************************************************
  #====================================================================================================================
  when "♀ giving fellatio"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hold still as I make you moan.\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Wha, don't see what's wrong with it.\n You don't wanna be the one that's attacked?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインバック▼*********************************************************************************
  #====================================================================================================================
  when "Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Hey....just relax.\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Oh, you got away....\n It's fine, you'll get hooked on it soon enough♪\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Now it's time to keep you entertained\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Now it's time to keep you entertained\\H\"" if $game_switches[89] == true
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
if $msg.tag == "Player binds the succubus"
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
    tx["tx1"] = "\"Hehe....you're coming at me? \\H\""
  when 2 #ホールド成功
    tx["tx1"] = "\"Now then....\n Who's gonna throw in the sponge first?\""
  when 3 #ホールド失敗
    tx["tx1"] = "\"....It's too early for you to think so.\n Let's take our time, shall we?\""
    #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Hey now, you ain't supposed to stop there, are you?\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n I've been waiting for this, come....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"Now look here, rushing it like that.\n #{myname}'m going anywhere.\""
      tx["md"] = "11" if $game_switches[89] == true
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Now look here, you can't just stop there.\"" if $game_switches[89] == true
      tx["md"] = "2" if $game_switches[89] == true
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
      tx["tx1"] = "\"What, you're giving up already?\n Oh well, still got a long way to go anyway. I ain't letting you go next time.\""
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "\"Hehe, what were you trying to do just now?\n I won't get mad, so just tell me, will you? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Hehe, I can't let you do that.\n Just keep still like this and cum\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"....Damn, just when I was at the best part.\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\"" if $game_switches[89] == true
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
    tx["tx1"] = "\"Hey, can you like, keep still?\""
  when 2 #ホールドレジスト成功
    tx["tx1"] = "\"Wha, don't see what's wrong with it.\n You don't wanna be the one that's attacked?\""
  when 3 #ホールドレジスト失敗
    tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\""
    #自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Here I go, #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Now look here, you know that's not how it goes.\n You gotta be better at reading the mood, #{target}.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, I want you to feel it good\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Hehe, you got away♪\n Not a fan of this stuff?\""
      tx["md"] = "11"
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
      tx["tx1"] = "\"Hey, can you like, keep still?\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Wha, don't see what's wrong with it.\n You don't wanna be the one that's attacked?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)


  #▼胸系▼*********************************************************************************
  #====================================================================================================================
  when "Paizuri","Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n #{myname}'ll make you succumb to my breasts....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Wha, don't see what's wrong with it.\n You don't wanna be the one that's attacked?\""
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
      tx["tx1"] = "\"#{giggle}\n #{target}, can I....kiss you? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Wha, don't see what's wrong with it.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼オーラルアクセプト▼*********************************************************************************
  #====================================================================================================================
  when "♀ giving fellatio"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hold still as I make you moan.\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Wha, don't see what's wrong with it.\n You don't wanna be the one that's attacked?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインバック▼*********************************************************************************
  #====================================================================================================================
  when "Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Hey....just relax.\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Oh, you got away....\n It's fine, you'll get hooked on it soon enough♪\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Now it's time to keep you entertained\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Now it's time to keep you entertained\\H\"" if $game_switches[89] == true
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
if $msg.tag == "Player binds the succubus"
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
    tx["tx1"] = "\"Hehe....you're coming at me? \\H\""
  when 2 #ホールド成功
    tx["tx1"] = "\"Now then....\n Who's gonna throw in the sponge first?\""
  when 3 #ホールド失敗
    tx["tx1"] = "\"....It's too early for you to think so.\n Let's take our time, shall we?\""
    #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Hey now, you ain't supposed to stop there, are you?\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n I've been waiting for this, come....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"#{pleasure_s}\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"Now look here, rushing it like that.\n #{myname}'m going anywhere.\""
      tx["md"] = "11" if $game_switches[89] == true
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Now look here, you can't just stop there.\"" if $game_switches[89] == true
      tx["md"] = "2" if $game_switches[89] == true
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
      tx["tx1"] = "\"What, you're giving up already?\n Oh well, still got a long way to go anyway. I ain't letting you go next time.\""
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "\"Hehe, what were you trying to do just now?\n I won't get mad, so just tell me, will you? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"Hehe, I can't let you do that.\n Just keep still like this and cum\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"....Damn, just when I was at the best part.\""
    when 3 #ホールド失敗
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\""
      #途中で行動をキャンセルした場合
      tx["tx1"] = "\"You just stay there and watch.\n Doing that's pretty stimulating too, isn't it? \\H\"" if $game_switches[89] == true
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
    tx["tx1"] = "\"Hey, can you like, keep still?\""
  when 2 #ホールドレジスト成功
    tx["tx1"] = "\"Wha, don't see what's wrong with it.\n You don't wanna be the one that's attacked?\""
  when 3 #ホールドレジスト失敗
    tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\""
    #自ら受け入れた場合
    tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"#{giggle}\n Here I go, #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Now look here, you know that's not how it goes.\n You gotta be better at reading the mood, #{target}.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{pleasure_s}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, I want you to feel it good\\H\"" if $game_switches[89] == true
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
      tx["tx1"] = "\"Hehe, you got away♪\n Not a fan of this stuff?\""
      tx["md"] = "11"
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
      tx["tx1"] = "\"Hey, can you like, keep still?\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Wha, don't see what's wrong with it.\n You don't wanna be the one that's attacked?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Just you wait and I'll leave you in bliss♪\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)


  #▼胸系▼*********************************************************************************
  #====================================================================================================================
  when "Paizuri","Jiggly-Wiggly"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n #{myname}'ll make you succumb to my breasts....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Wha, don't see what's wrong with it.\n You don't wanna be the one that's attacked?\""
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
      tx["tx1"] = "\"#{giggle}\n #{target}, can I....kiss you? \\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Wha, don't see what's wrong with it.\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{kiss_l}\n #{giggle}\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼オーラルアクセプト▼*********************************************************************************
  #====================================================================================================================
  when "♀ giving fellatio"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle}\n Hold still as I make you moan.\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Wha, don't see what's wrong with it.\n You don't wanna be the one that's attacked?\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Nnnmmph....\\H\n Hehe....*drool*....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼ディルドインバック▼*********************************************************************************
  #====================================================================================================================
  when "Ass Dildo'ed"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Hey....just relax.\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Oh, you got away....\n It's fine, you'll get hooked on it soon enough♪\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle}\n Now it's time to keep you entertained\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"#{giggle}\n Now it's time to keep you entertained\\H\"" if $game_switches[89] == true
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
