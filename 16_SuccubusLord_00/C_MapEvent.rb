=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』マップ口上(イベント)
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,07/26     仮設定
#######################################################################################################################
=end





class MsgSuccubuslord_A < MsgBase
 def msg_map_event_00
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
#######################################################################################################################
################################################★マップイベント★#####################################################
#######################################################################################################################
case $msg.tag
#=======================================================================================================================
#★精の献上-----------------------------------------------------------------------------------------------------------#
when "Energy Feeding"
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("Significant Other")
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "\"Just stay still.\n I want to get a full taste of you, #{target}\\H\n #{giggle_s}, here I dig in....\\H\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"Aaaahh, it's spreading through me....\\H\n The semen from you really are something else, #{target}\\H\n I just love it\\H\""
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "\"Ufufu, I've been waiting for it\\H\n Then here I dig in....\\H\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"Thanks for the meal. It was really good\\H\""
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "\"I thought I was gonna collapse from the hunger\\H\n Hurry up and give it here....\\H\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"Ufufu, I ended up showing something shameful....\\H\""
      #------------------------------------------------------------------------------------------------------------------
    end
  end
  #格納
  ms.push(tx)



#=======================================================================================================================
#★空腹-----------------------------------------------------------------------------------------------------------#
when "Hungry"
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("Significant Other")
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "\"Hey, #{target}....\n I feel so lonely here....\""
      tx["tx2"] = "\"I don't want to sound too selfish, but\n I really can't take this anymore....\""
      tx["tx3"] = "\"A kiss will speak louder than some countless words\n I want you to pour\n every love you've got into me\\H\""
      tx["tx4"] = "Casting a fanciful smile, #{speaker}\n approaches quietly as she licks her lips!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"#{myname} don't want you to forget me either....\\H\""
      #tx["tx2"] = ""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "\"#{giggle_s},\n you sure are popular, #{target}.\n What say #{myname} join in as well\\H\""
      #tx["tx2"] = ""
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "\"It's not like I hate you, #{target},\n but I don't like men that don't look after their woman....\""
      tx["tx2"] = "Crawling her fingers suggestively,\n #{speaker} strokes #{master}'s back and abdomen,\n whispering in a voice and that twines deep in his ears...."
      tx["tx3"] = "\"I know you're sensible enough.\n You do realize what #{myname}'m trying to say, right....?\""
      tx["tx4"] = "#{speaker}'s eyes have an eerie shine to them!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"#{myname}'m hungry too....\\H\""
      #tx["tx2"] = ""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "\"#{giggle_s}, let me join in as well\\H\""
      #tx["tx2"] = ""
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "\"Hey, still no meal yet?\n I can't bear this hunger anymore.\""
      tx["tx2"] = "\"You wouldn't tell me you've forgot about it, would you?\n I highly doubt\n you're such a stingy man.\""
      tx["tx3"] = "\"I won't take any excuses.\n You'll learn to remember it after a good talking-to.\n Right, #{target}....? \\H\""
      tx["tx4"] = "#{speaker} is going mad from the hunger!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"#{myname}'m hungry too....\\H\""
      #tx["tx2"] = ""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "\"#{giggle_s}, let me join in as well\\H\""
      #tx["tx2"] = ""
    end
  end
  #格納
  ms.push(tx)



#=======================================================================================================================
#★調理技能-----------------------------------------------------------------------------------------------------------#
when "Cook"
  case $msg.at_type
  when "Put on Steam"
    #==================================================================================================================
    #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
    #==================================================================================================================
 #  tx["tx1"] = ""
    #格納
    ms.push(tx)
    #==================================================================================================================
    # ☆事前設定☆
                            #空ハッシュ再挿入
                            tx={}
    #力量に応じて変化
    case $msg.t_enemy.cook_dex
    #消し炭orどろどろ
    when 0..49
      tx["tx1"] = "\"Cooking? For meal?\n Hmmm, not so sure about that....\""
    #サラダやサンドイッチが作れるレベル
    when 50..149
      tx["tx1"] = "\"I can't make anything really difficult.\n Would something simple do it?\""
    #マリネやスープが作れるレベル
    when 150..349
      tx["tx1"] = "\"You're hungry?\n Just wait a little, I'll prepare something if you're fine with a light meal.\""
    #メインディッシュが作れるレベル
    when 350..999
      tx["tx1"] = "\"Just leave it to me; I'll do my very best\\H\""
    end
    #格納
    ms.push(tx)
  end



#=======================================================================================================================
#★ランクアップ(対応しない夢魔は項目ごと消去推奨----------------------------------------------------------------------#
when "Rank Up"
  case $msg.talk_step
  when 1 #ランクアップ前口上
 #  tx["tx1"] = ""
  when 2 #ランクアップ開始
 #  tx["tx1"] = ""
  when 3 #ランクアップ終了（サキュバスからランクアップした後の口上）
    tx["tx1"] = "\"#{giggle}\n Then time to go.\n Or....after a little break, perhaps....? \\H\""
  when 4 #ランクアップしない
 #  tx["tx1"] = ""
  end
  #格納
  ms.push(tx)
#---------------------------------------------------------------------------------------------------------------------#
end
#######################################################################################################################
 end #def
end #class
