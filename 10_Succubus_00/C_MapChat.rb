=begin
#######################################################################################################################
 ●『サキュバス（橙）』マップ口上(チャット)
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





class MsgSuccubus_A < MsgBase
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
    tx["tx1"] = "\"Man, feel like I could go for something.\n ....Say, #{target}, can I have some of your hot stuff....right now? \\H\""
    tx["tx4"] = "#{speaker} is looking at #{master}'s lower half\nwith feverish eyes....!" + "TALKTEXT"

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    tx["tx1"] = "\"Man, feel like I could go for something.\n ....Say, #{target}, can I have some of your hot stuff....right now? \\H\""
    tx["tx4"] = "#{speaker} is looking at #{master}'s lower half\nwith feverish eyes....!" + "TALKTEXT"

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    tx["tx1"] = "\"Hmm....I think now is good time for a meal.\n Don't you agree, #{target}?\""
    tx["tx4"] = "#{speaker} is looking at #{master}'s lower half\nwith feverish eyes....!" + "TALKTEXT"

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
    tx["tx1"] = "\"Say....don't you think it's about time we go back?\n I'm dying for the soft bed\\H\""
    tx["tx4"] = "#{speaker} laughed with her tongue in her cheek.\nHer expression shows a slight fatigue...." + "TALKTEXT"

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    tx["tx1"] = "\"Say....don't you think it's about time we go back?\n I'm dying for the soft bed\\H\""
    tx["tx4"] = "#{speaker} laughed with her tongue in her cheek.\nHer expression shows a slight fatigue...." + "TALKTEXT"

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    tx["tx1"] = "\"Hmm....\n We should be going back now.\n I wanna go home and have a bath.\""
    tx["tx4"] = "#{speaker} sighed heavily.\nShe seems to have become somewhat fatigued...." + "TALKTEXT"

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
    tx["tx1"] = "\"Siiigh, didn't know how boring this would be.\n Won't somebody just come and attack us....?\""
    tx["tx4"] = "#{speaker} takes glances at #{master}\n while yawning in a bored manner...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Here's a small reward to #{target} for working hard♪\""
    tx["tx4"] = "#{speaker} suddenly embraces #{master} from behind!\nA soft sensation is pressed against #{master}'s back....!" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"How strange, where could I have put it away....?\n Oh, it's nothing. I'm just looking for something.\""
    tx["tx4"] = "#{speaker}'s ample breasts jiggle\nevery time she turns over the hem of her clothes...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"~~~♪\n ~~~~♪\""
    tx["tx4"] = "#{speaker} is crooning something....\nShe seems to be in good spirits right now." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"#{myname}'m with a human, huh.\n Wonder what I should tell to my buddies?\n　#{giggle}\""
    tx["tx4"] = "#{speaker} giggles gleefully,\n remembering something...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
    #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "\"Siiigh, didn't know how boring this would be.\n Won't somebody just come and attack us....?\""
    tx["tx4"] = "#{speaker} takes glances at #{master}\n while yawning in a bored manner...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Here's a small reward to #{target} for working hard♪\""
    tx["tx4"] = "#{speaker} suddenly embraces #{master} from behind!\nA soft sensation is pressed against #{master}'s back....!" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"How strange, where could I have put it away....?\n Oh, it's nothing. I'm just looking for something.\""
    tx["tx4"] = "#{speaker}'s ample breasts jiggle\nevery time she turns over the hem of her clothes...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"~~~♪\n ~~~~♪\""
    tx["tx4"] = "#{speaker} is crooning something....\nShe seems to be in good spirits right now." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"#{myname}'m with a human, huh.\n Wonder what I should tell to my buddies?\n　#{giggle}\""
    tx["tx4"] = "#{speaker} giggles gleefully,\n remembering something...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
   #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "\"Siiigh, didn't know how boring this would be.\n Won't somebody just come and attack us....?\""
    tx["tx4"] = "#{speaker} takes glances at #{master}\n while yawning in a bored manner...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Here's a small reward to #{target} for working hard♪\""
    tx["tx4"] = "#{speaker} suddenly embraces #{master} from behind!\nA soft sensation is pressed against #{master}'s back....!" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"How strange, where could I have put it away....?\n Oh, it's nothing. I'm just looking for something.\""
    tx["tx4"] = "#{speaker}'s ample breasts jiggle\nevery time she turns over the hem of her clothes...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"~~~♪\n ~~~~♪\""
    tx["tx4"] = "#{speaker} is crooning something....\nShe seems to be in good spirits right now." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"#{myname}'m with a human, huh.\n Wonder what I should tell to my buddies?\n　#{giggle}\""
    tx["tx4"] = "#{speaker} giggles gleefully,\n remembering something...." + "TALKTEXT"
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
      tx["tx1"] = "\"For #{target}'s house, isn't it a bit too simple?\n I'd want something like some stunning decorations.\""
      tx["tx4"] = "#{speaker} is musing while looking at the exterior of the house.\nAlthough strictly speaking, it isn't actually his house...." + "TALKTEXT"
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
      tx["tx1"] = "\"#{giggle}\n That bush over there looks cute.\n Say....why don't we go after taking a quick break? \\H\""
      tx["tx1"] = "\"#{giggle}\n That bush over there looks cute.\n Why don't we come back later just by ourselves?\\H\"" if $game_party.party_actors.size > 2 #パーティが３人以上
      tx["tx4"] = "#{speaker} snuggle up to #{master} and\ncasted a docile look, seducing him...." + "TALKTEXT"
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
      tx["tx1"] = "\"Ah, be careful there.\n It's easy to slip.\""
      tx["tx4"] = "The ground #{speaker} pointed to is wet and puddled.\nI aught to proceed carefully...." + "TALKTEXT"
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
      tx["tx1"] = "\"Say, can you hold my hand for me?\n I'm scared of dark places\\H\""
      tx["tx4"] = "Said #{speaker} and\nwrapped her arm around #{master}'s without waiting for an answer.\n....She doesn't seem very scared." + "TALKTEXT"
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
    tx["tx1"] = "\"To be honest, I don't like this place; it's so strict.\n Let's hurry up and leave once you're done.\""
    tx["tx4"] = "#{speaker} looks to be in a bad humor....\nI guess it's making her uncomfortable?" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"There's so many people暇人が多いのねえ……。\n　こんなに本ばかり集めてどうするのかしら？\""
    tx["tx4"] = "#{speaker}は本にはあまり興味が無いようだ……。" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼パルフィス密教会              #
  #================================#
  when "パルフィス密教会"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"んん～っ♪\n　いいわね、この空気。\n　上の堅苦しい感じとは大違いよ\\H\""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"ここは#{myname}の仲間も結構いるけど……\n　露出の高い奴には気をつけなさいね。\n　過激なおもてなしをされちゃうわよ？\\H\""
    tx["tx4"] = "今のは忠告なのか興味本位の発言なのか、\n#{speaker}の表情からはよく判らない……。" + "TALKTEXT"
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
end
#######################################################################################################################
 end #def
end #class