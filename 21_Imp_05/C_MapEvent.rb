=begin
#######################################################################################################################
 ●『インプ（緑）』マップ口上(イベント)
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





class MsgImp_A < MsgBase
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
when "精の献上"
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("大切な人")
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "「ねぇねぇ#{target}♪\n　#{myname}、そろそろ欲しいなぁ♪\n　何……ってもちろんアレでしょ？　#{giggle}」"
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "「あはっ、いっぱい出たぁ♪\n　#{myname}一人で飲みきれるかなぁ……\\H」"
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("寵愛")
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "「ねぇねぇ#{target}♪\n　#{myname}、そろそろ欲しいなぁ♪\n　何……ってもちろんアレでしょ？　#{giggle}」"
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "「あはっ、いっぱい出たぁ♪\n　#{myname}一人で飲みきれるかなぁ……\\H」"
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "「ねぇねぇ#{target}\n　#{myname}、おなかすいちゃった♪\n　いっぱいごちそうして～\\H」"
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "「うわぁ、いっぱい出たぁ♪\n　それじゃ、いただきま～す\\H」"
      #------------------------------------------------------------------------------------------------------------------
    end
  end
  #格納
  ms.push(tx)



#=======================================================================================================================
#★空腹-----------------------------------------------------------------------------------------------------------#
when "空腹"
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("大切な人")
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "「#{target}～、#{myname}もう動けなぁい……。\n　おなかすいたよぉ……。\n　もう動けないよぉ……。"
      tx["tx2"] = "「……あ、そうだ！\n　#{myname}『けいやく』してたんだった！」"
      tx["tx3"] = "「#{myname}がおなかすいたときは、\n　#{target}のミルクをくれる約束だったよねっ♪\n　うわぁい、ね、ね、はやく飲ませて\\H」"
      tx["tx4"] = "#{speaker}が静かに迫ってくる！\n#{master}に逃げ場は無い……！" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "「あ～、#{myname}も欲しい～！\n　#{myname}のぶんもちゃんと置いといてね～？」"
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "「あうぅ、#{myname}最後になっちゃった……。　#{myname}のぶん、残るかなぁ……」"
      tx["tx2"] = "「#{target}、がんばって！\n　#{myname}のぶん、残しといてねっ！」"
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("寵愛")
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "「#{target}～、#{myname}もう動けなぁい……。\n　おなかすいたよぉ……。\n　もう動けないよぉ……。"
      tx["tx2"] = "「……あ、そうだ！\n　#{myname}『けいやく』してたんだった！」"
      tx["tx3"] = "「#{myname}がおなかすいたときは、\n　#{target}のミルクをくれる約束だったよねっ♪\n　うわぁい、ね、ね、はやく飲ませて\\H」"
      tx["tx4"] = "#{speaker}の瞳が怪しい光を帯びる！\n#{master}に逃げ場は無い……！" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "「あ～、#{myname}も欲しい～！\n　#{myname}のぶんもちゃんと置いといてね～？」"
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "「あうぅ、#{myname}最後になっちゃった……。　#{myname}のぶん、残るかなぁ……」"
      tx["tx2"] = "「#{target}、がんばって！\n　#{myname}のぶん、残しといてねっ！」"
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "「#{target}～、#{myname}もう動けなぁい……。\n　おなかすいたよぉ……。\n　もう動けないよぉ……。"
      tx["tx2"] = "「……あ、そうだ！\n　#{myname}『けいやく』してたんだった！」"
      tx["tx3"] = "「#{myname}がおなかすいたときは、\n　#{target}のミルクをくれる約束だったよねっ♪\n　うわぁい、ね、ね、はやく飲ませて\\H」"
      tx["tx4"] = "#{speaker}は空腹で我を忘れている！\n#{master}に逃げ場は無い……！" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "「あ～、#{myname}も欲しい～！\n　#{myname}のぶんもちゃんと置いといてね～？」"
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "「あうぅ、#{myname}最後になっちゃった……。　#{myname}のぶん、残るかなぁ……」"
      tx["tx2"] = "「#{target}、がんばって！\n　#{myname}のぶん、残しといてねっ！」"
    end
  end
  #格納
  ms.push(tx)



#=======================================================================================================================
#★調理技能-----------------------------------------------------------------------------------------------------------#
when "調理"
  case $msg.at_type
  when "意気込み"
    #==================================================================================================================
    #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
    #==================================================================================================================
    tx["tx1"] = "「まっかせてっ♪」"
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
      tx["tx1"] = "「えへへっ♪\n　頑張っちゃうからね\\H」"
    #サラダやサンドイッチが作れるレベル
    when 50..149
      tx["tx1"] = "「まっかせてっ♪\n　すぐに作っちゃうから\\H」"
    #マリネやスープが作れるレベル
    when 150..349
      tx["tx1"] = "「まっかせてっ♪\n　頑張っちゃうからね\\H」"
    #メインディッシュが作れるレベル
    when 350..999
      tx["tx1"] = "「まっかせてっ♪\n　頑張っちゃうからね\\H」"
    end
    #格納
    ms.push(tx)
  end



#=======================================================================================================================
#★ランクアップ(対応しない夢魔は項目ごと消去推奨----------------------------------------------------------------------#
when "ランクアップ"
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
