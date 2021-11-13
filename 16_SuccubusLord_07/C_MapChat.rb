=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』マップ口上(チャット)
 ●性格：陽気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,08/18     1.01で同梱されるはずが入ってなかったので復活
#######################################################################################################################
=end





class MsgSuccubuslord_A < MsgBase
 def msg_map_chat_07
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
    tx["tx1"] = "\"#{target}....\\H\""
    tx["tx4"] = "She looks at him with eyes like she wants to say something....\n#{speaker} seems to be hungry...." + "TALKTEXT"

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    tx["tx1"] = "\"#{target}, I'm hungry....\""
    tx["tx4"] = "#{speaker} seems to be hungry...." + "TALKTEXT"

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    tx["tx1"] = "\"Hey, #{target}.\n When are we going to have a meal?\""
    tx["tx4"] = "#{speaker} seems to be hungry...." + "TALKTEXT"

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
    tx["tx1"] = "\"....What is it? Yeah, I'm alright.\n I'll be fine so long as\n you're worried for me....\\H\""
    tx["tx4"] = "Contrary to her words, a cold sweat is running on her forehead.\n#{speaker}'s in fatigue...." + "TALKTEXT"

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    tx["tx1"] = "\"Phew....have to admit, I'm exhausted.\""
    tx["tx4"] = "#{speaker}'s in fatigue...." + "TALKTEXT"

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    tx["tx1"] = "\"I'd like to....take a break now.\""
    tx["tx4"] = "#{speaker}'s in fatigue...." + "TALKTEXT"

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
    tx["tx1"] = "\"#{giggle_s}....is there something you need? \\H\""
    tx["tx4"] = "#{speaker} appears to be in good spirits...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"What is it, #{target}?\n Were you captivated by my face? \\H\""
    tx["tx4"] = "#{speaker} smiles sweetly...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"What is it?\n Are you thirsting\n for my body? \\H\""
    tx["tx4"] = "As though showing off,\n #{speaker} runs her finger along her body...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hey, why don't we go somewhere just by ourselves?\n ....#{giggle_s} I'm joking\\H\n I wouldn't mind doing it for real though....\\H\""
    tx["tx4"] = "#{speaker} appears to be in good spirits...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"If you ever feel down,\n feel free to dive into these breasts of mine\\H\""
    tx["tx4"] = "#{speaker} shows off her plump breasts\n as if luring him...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "\"#{giggle_s}....is there something you need? \\H\""
    tx["tx4"] = "#{speaker} appears to be in good spirits...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"What is it, #{target}?\n Were you captivated by my face? \\H\""
    tx["tx4"] = "#{speaker} smiles sweetly...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"What is it?\n Are you thirsting\n for my body? \\H\""
    tx["tx4"] = "As though showing off,\n #{speaker} runs her finger along her body...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hey, why don't we go somewhere just by ourselves?\n ....#{giggle_s} I'm joking\\H\n Please don't make that face for me.\""
    tx["tx4"] = "#{speaker} appears to be in good spirits...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"If you ever feel down,\n feel free to dive into these breasts of mine\\H\""
    tx["tx4"] = "#{speaker} shows off her plump breasts\n as if luring him...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "\"#{giggle_s}....is there something you need? \\H\""
    tx["tx4"] = "#{speaker} appears to be in good spirits...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"What is it, #{target}?\n Were you captivated by my face? \\H\""
    tx["tx4"] = "#{speaker} smiles sweetly...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"What is it?\n Are you thirsting\n for my body? \\H\""
    tx["tx4"] = "As though showing off,\n #{speaker} runs her finger along her body...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Is there anything to be in such a hurry for?\n ....Hmm, you must be having a tough time.\""
    tx["tx4"] = "#{speaker} appears to be in good spirits...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"If you ever feel down,\n feel free to dive into these breasts of mine\\H\""
    tx["tx4"] = "#{speaker} shows off her plump breasts\n as if luring him...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
  end



#####場所別はとりあえずコメントアウト#####
=begin
  #====================================================================================================================
  #▼マップ土地口上(説明台詞など)
  #====================================================================================================================
  case $game_map.signboard
  #================================#
  #▼浅き夢の瀬                    #
  #================================#
  when "浅き夢の瀬"
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
  when "ポート空間"
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
  when "拠点"
    #▽屋内
    if $game_map.type.include?("屋内")
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
  when "酒場"
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
  when "月明かりの樹海"
    #▽森林
    if $game_map.type.include?("森林")
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
    if $game_map.type.include?("水場")
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
    if $game_map.type.include?("暗所")
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
  when "闇洞窟"
    #▽ゴブタウン
    if $game_map.type.include?("屋内")
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
  when "魔城トゥーロマンサ"
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
  when "獄界オルデオ"
    #▽胎内洞窟
    if $game_map.type.include?("水場")
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
  when "教会図書館"
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
  when "パルフィス密教会"
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
  when "シルフェ屋敷"
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
  when "混濁したレンディカ"
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
  when "ラーミルテリトリー"
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
=end
#####場所別はとりあえずコメントアウト#####

end
#######################################################################################################################
 end #def
end #class
