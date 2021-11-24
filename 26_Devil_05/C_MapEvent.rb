=begin
#######################################################################################################################
 ●『デビル（緑）』マップ口上(イベント)
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





class MsgDevil_A < MsgBase
 def msg_map_event_05
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
      tx["tx1"] = "\"Now...then,\n　why don't I dig in....\\H\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"Phew....that was a good meal\\H\""
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "\"Now...then,\n　why don't I dig in....\\H\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"Phew....that was a good meal\\H\""
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "\"Now...then,\n　why don't I dig in....\\H\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"Phew....that was a good meal\\H\""
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
      tx["tx1"] = "\"....Gotta say, #{myname} can't bear this anymore.\n I was waiting to see if you'd realize by now, but it doesn't seem like it.\""
      tx["tx2"] = "\"You'd be thoughtless to now ask what I mean.\n Oh well, I'll go easy on you.\""
      tx["tx3"] = "\"Well then, it's punishiment time.\n Hope you're ready to be flat on your back for a good while....! \\H\""
      tx["tx4"] = "#{speaker} approaches quietly!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"Hold on a sec, let me chip in too.\n You ain't the only one that's hungry.\""
      tx["tx2"] = "\"How about I stuff myself for this occasion....?\n Nfufufu....\\H\""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "\"Hey now....\n You're gonna make me all dried up like this.\n All 'cause my share won't be as much....\\H\""
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "\"....Gotta say, #{myname} can't bear this anymore.\n I was waiting to see if you'd realize by now, but it doesn't seem like it.\""
      tx["tx2"] = "\"You'd be thoughtless to now ask what I mean.\n Oh well, I'll go easy on you.\""
      tx["tx3"] = "\"Well then, it's punishiment time.\n Hope you're ready to be flat on your back for a good while....! \\H\""
      tx["tx4"] = "#{speaker}'s eyes have an eerie shine to them!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"Hold on a sec, let me chip in too.\n You ain't the only one that's hungry.\""
      tx["tx2"] = "\"How about I stuff myself for this occasion....?\n Nfufufu....\\H\""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "\"Hey now....\n You're gonna make me all dried up like this.\n All 'cause my share won't be as much....\\H\""
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "\"....Gotta say, #{myname} can't bear this anymore.\n I was waiting to see if you'd realize by now, but it doesn't seem like it.\""
      tx["tx2"] = "\"You'd be thoughtless to now ask what I mean.\n Oh well, I'll go easy on you.\""
      tx["tx3"] = "\"Well then, it's punishiment time.\n Hope you're ready to be flat on your back for a good while....! \\H\""
      tx["tx4"] = "#{speaker} is going mad from the hunger!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"Hold on a sec, let me chip in too.\n You ain't the only one that's hungry.\""
      tx["tx2"] = "\"How about I just stuff myself for this occasion....?\n Nfufufu....\\H\""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "\"Hey now....\n You're gonna make me all dried up like this.\n All 'cause my share won't be as much....\\H\""
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
    tx["tx1"] = "\"What a drag....\""
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
      tx["tx1"] = "\"Hmmm....\n Is this just as good when raw?\""
    #サラダやサンドイッチが作れるレベル
    when 50..149
      tx["tx1"] = "\"What a drag....\""
    #マリネやスープが作れるレベル
    when 150..349
      tx["tx1"] = "\"I know there's other guys that can do the job.\n So why me....\""
    #メインディッシュが作れるレベル
    when 350..999
      tx["tx1"] = "\"Damn, no helping it then....\n Just stay there and wait a bit.\""
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
  when 3 #ランクアップ終了
 #  tx["tx1"] = ""
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
