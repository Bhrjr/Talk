=begin
#######################################################################################################################
 ●『レッサーサキュバス（桃）』マップ口上(チャット)
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





class MsgLessersuccubus_B < MsgBase
 def msg_map_chat_00
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
#######################################################################################################################
################################################★マップチャット★#####################################################
#######################################################################################################################
#■空腹時口上(３段階)
if $msg.t_enemy.fed <= 20
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("Significant Other")
  #====================================================================================================================
    tx["tx1"] = "\"#{target}, #{myname} can't take it anymore....\n I want your cum, please....\\H\""
    tx["tx4"] = "#{speaker} is\nlooking passionately at #{master}'s lower half....!" + "TALKTEXT"

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    tx["tx1"] = "\"#{target}, #{myname} can't take it anymore....\n I want your cum, please....\\H\""
    tx["tx4"] = "#{speaker} is\nlooking passionately at #{master}'s lower half....!" + "TALKTEXT"

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    tx["tx1"] = "\#{target}, #{myname} can't take it anymore....\n I want your cum, please....\\H\""
    tx["tx4"] = "#{speaker} is\nlooking passionately at #{master}'s lower half....!" + "TALKTEXT"

  end
  #格納
  ms.push(tx)

#----------------------------------------------------------------------------------------------------------------------
#■気力体力減少中(３段階)
elsif $msg.t_enemy.spp <= 20 or $msg.t_enemy.hpp <= 20
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("Significant Other")
  #====================================================================================================================
    tx["tx1"] = "\"H-Hey, #{target}...let's go home already....\n I'm beat....\""
    tx["tx4"] = "#{speaker} pulled the hem of his clothes....\nLooks like she's worn out...." + "TALKTEXT"

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    tx["tx1"] = "\"H-Hey, #{target}...let's go home already....\n I'm beat....\""
    tx["tx4"] = "#{speaker} pulled the hem of his clothes....\nLooks like she's worn out...." + "TALKTEXT"

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    tx["tx1"] = "\"H-Hey, #{target}...let's go home already....\n I'm beat....\""
    tx["tx4"] = "#{speaker} pulled the hem of his clothes....\nLooks like she's worn out...." + "TALKTEXT"

  end
  #格納
  ms.push(tx)

#----------------------------------------------------------------------------------------------------------------------
#■通常時
else
  #★汎用口上(環境に関わらず出てくる)
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("Significant Other")
  #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "\"...........Hnn....\""
    tx["tx4"] = "#{speaker} is lost in deep thought. Let's leave her alone for now...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hmm, that's strange....\n Where could I have dropped it....?\""
    tx["tx4"] = "#{speaker} is crouching down and looking for something.\nHer plump tush shakes before #{master}'s eyes,\n as though enticing him...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hum-dee-hum....hum-hum♪\n Huh? What was I singing?\n Hehe, that's a secret\\H\""
    tx["tx4"] = "#{speaker} seems to be in a good mood...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Ah, #{target}, you've got something on your clothes.\n Come here and lemme get it off for you♪\""
    tx["tx3"] = "#{master} turns around, only to find #{speaker}'s face....!\n#{master}'s lips were met with a soft sensation...." + "TALKTEXT"
    tx["tx4"] = "\"#{giggle}\n You should never let your guards down, #{target}\\H\""
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Mmm, we've got so much time.\n Aren't there anything fun to do....?\""
    tx["tx4"] = "#{speaker} looks to be bored...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "\"...........Nnn....\""
    tx["tx4"] = "#{speaker} is lost in deep thought. Let's leave her alone for now...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hmm, that's strange....\n Where could I have dropped it....?\""
    tx["tx4"] = "#{speaker} is crouching down and looking for something.\nHer plump tush shakes before #{master}'s eyes,\n as though enticing him...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hum-dee-hum....hum-hum♪\n Huh? What was I singing?\n Hehe, that's a secret\\H\""
    tx["tx4"] = "#{speaker} seems to be in a good mood...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Ah, #{target}, you've got something on your clothes.\n Come here and lemme get it off for you♪\""
    tx["tx3"] = "#{master} turns around, only to find #{speaker}'s face....!\n#{master}'s lips were met with a soft sensation...." + "TALKTEXT"
    tx["tx4"] = "\"#{giggle}\n You should never let your guards down, #{target}\\H\""
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Mmm, we've got so much time.\n Aren't there anything fun to do....?\""
    tx["tx4"] = "#{speaker} looks to be bored...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "\"...........Hnn....\""
    tx["tx4"] = "#{speaker} is lost in deep thought. Let's leave her alone for now...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hmm, that's strange....\n Where could I have dropped it....?\""
    tx["tx4"] = "#{speaker} is crouching down and looking for something.\nHer plump tush shakes before #{master}'s eyes,\n as though enticing him...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hum-dee-hum....hum-hum♪\n Huh? What was I singing?\n Hehe, that's a secret\\H\""
    tx["tx4"] = "#{speaker} seems to be in a good mood...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Ah, #{target}, you've got something on your clothes.\n Come here and lemme get it off for you♪\""
    tx["tx3"] = "#{master} turns around, only to find #{speaker}'s face....!\n#{master}'s lips were met with a soft sensation...." + "TALKTEXT"
    tx["tx4"] = "\"#{giggle}\n You should never let your guards down, #{target}\\H\""
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Mmm, we've got so much time.\n Aren't there anything fun to do....?\""
    tx["tx4"] = "#{speaker} looks to be bored...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
  end





  #====================================================================================================================
  #▼マップ土地口上(説明台詞など)
  #====================================================================================================================
  case $game_map.signboard
  #================================#
  #▼浅き夢の瀬                    #
  #================================#
  when "Dream Shallows"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼ポート空間                    #
  #================================#
  when "Crystal Space"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼拠点                          #
  #================================#
  when "Hub"
    #▽屋内
    if $game_map.type.include?("Indoors")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    #▽屋外
    else
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
  #================================#
  #▼酒場                          #
  #================================#
  when "Pub"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼月明かりの樹海                #
  #================================#
  when "Moonlit Woodland"
    #▽森林
    if $game_map.type.include?("Forest")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
    #▽水場
    if $game_map.type.include?("Watering hole")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
    #▽暗所
    if $game_map.type.include?("Unlit area")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
  #================================#
  #▼闇洞窟                        #
  #================================#
  when "Dark Cavern"
    #▽ゴブタウン
    if $game_map.type.include?("Indoors")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    #▽洞窟内
    else
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
  #================================#
  #▼魔城トゥーロマンサ            #
  #================================#
  when "Teau Romanca Castle"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼獄界オルデオ                        #
  #================================#
  when "Ordeo Abyss"
    #▽胎内洞窟
    if $game_map.type.include?("Watering hole")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    #▽洞窟内
    else
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
  #================================#
  #▼教会図書館                    #
  #================================#
  when "Church Library"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼パルフィス密教会              #
  #================================#
  when "Palfau Secret Church"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼シルフェ屋敷                  #
  #================================#
  when "Sylphy Residence"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼混濁したレンディカ            #
  #================================#
  when "Chaotic Rendica"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼ラーミルテリトリー            #
  #================================#
  when "Ramil's Domain"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  end
end
#######################################################################################################################
 end #def
end #class
