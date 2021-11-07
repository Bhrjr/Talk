=begin
#######################################################################################################################
 ●『サキュバス（桃）』マップ口上(イベント)
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





class MsgSuccubus_B < MsgBase
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
when "精の献上"
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("大切な人")
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "「あぁん、早くちょうだぁい\\H」"
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "「#{pleasure_s}\n　うふふっ……真っ白になっちゃった……\\H」"
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("寵愛")
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "「あぁん、早くちょうだぁい\\H」"
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "「#{pleasure_s}\n　うふふっ……真っ白になっちゃった……\\H」"
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "「ふふっ、それじゃ……いただきまぁす\\H」"
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "「あは……いっぱい出たわね\\H」"
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
      tx["tx1"] = "「あぁん……もう我慢の限界よぉ……\\H\n　ね……今すぐ気持ちいいコト、しましょ？\n　#{myname}、お腹すいちゃったのよ……\\H」"
      tx["tx2"] = "「ね、お口がいい？それとも手で？\n　望むならどんなことでもしてあげるからぁ……」"
      tx["tx3"] = "「早く#{target}の熱いのちょうだぁい\\H\n　ねぇ、早くぅ……\\H」"
      tx["tx4"] = "#{speaker}が静かに迫ってくる！\n#{master}に逃げ場は無い……！" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "「あぁん、独り占めはダメよ？\n　お腹が空いてるのは#{myname}もなんだから……\\H」"
      tx["tx2"] = "「せめて半分こにしましょ\\H\n　早い者勝ちは無しね？」"
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "「ちょっと、#{myname}を忘れないでよ？\n　一人当たり三分の一ね、三分の一\\H」"
      tx["tx2"] = "「#{giggle}\n　３人はちょっとハードだけど、頑張ってねぇ\\H」"
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("寵愛")
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "「あぁん……もう我慢の限界よぉ……\\H\n　ね……今すぐ気持ちいいコト、しましょ？\n　#{myname}、お腹すいちゃったのよ……\\H」"
      tx["tx2"] = "「ね、お口がいい？それとも手で？\n　望むならどんなことでもしてあげるからぁ……」"
      tx["tx3"] = "「早く#{target}の熱いのちょうだぁい\\H\n　ねぇ、早くぅ……\\H」"
      tx["tx4"] = "#{speaker}の瞳が怪しい光を帯びる！\n#{master}に逃げ場は無い……！" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "「あぁん、独り占めはダメよ？\n　お腹が空いてるのは#{myname}もなんだから……\\H」"
      tx["tx2"] = "「せめて半分こにしましょ\\H\n　早い者勝ちは無しね？」"
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "「ちょっと、#{myname}を忘れないでよ？\n　一人当たり三分の一ね、三分の一\\H」"
      tx["tx2"] = "「#{giggle}\n　３人はちょっとハードだけど、頑張ってねぇ\\H」"
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "「あぁん……もう我慢の限界よぉ……\\H\n　ね……今すぐ気持ちいいコト、しましょ？\n　#{myname}、お腹すいちゃったのよ……\\H」"
      tx["tx2"] = "「ね、お口がいい？それとも手で？\n　望むならどんなことでもしてあげるからぁ……」"
      tx["tx3"] = "「早く#{target}の熱いのちょうだぁい\\H\n　ねぇ、早くぅ……\\H」"
      tx["tx4"] = "#{speaker}は空腹で我を忘れている！\n#{master}に逃げ場は無い……！" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "「あぁん、独り占めはダメよ？\n　お腹が空いてるのは#{myname}もなんだから……\\H」"
      tx["tx2"] = "「せめて半分こにしましょ\\H\n　早い者勝ちは無しね？」"
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "「ちょっと、#{myname}を忘れないでよ？\n　一人当たり三分の一ね、三分の一\\H」"
      tx["tx2"] = "「#{giggle}\n　３人はちょっとハードだけど、頑張ってねぇ\\H」"
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
    tx["tx1"] = "「仕方ないわねえ。\n　少し待ってて、今作るから」"
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
      tx["tx1"] = "「おかしいわねえ……？\n　これどうやって使うのかしら？」"
    #サラダやサンドイッチが作れるレベル
    when 50..149
      tx["tx1"] = "「あら、#{myname}でいいの？\n　大したものは出来ないわよ？」"
    #マリネやスープが作れるレベル
    when 150..349
      tx["tx1"] = "「仕方ないわねえ。\n　少し待ってて、今作るから」"
    #メインディッシュが作れるレベル
    when 350..999
      tx["tx1"] = "「ふふ、任せなさい♪\n　腕によりをかけてあげるわ\\H」"
    end
    #格納
    ms.push(tx)
  end



#=======================================================================================================================
#★ランクアップ(対応しない夢魔は項目ごと消去推奨----------------------------------------------------------------------#
when "ランクアップ"
  case $msg.talk_step
  when 1 #ランクアップ前口上
    tx["tx1"] = "「#{giggle}\n　そろそろ#{myname}も新しい姿になろうかしら。\n　もっとも、#{target}が望めば、だけどね」"
    tx["tx1"] = "「ねぇ、#{target}……？\n　#{myname}、今ならもっと変われそうな気がする。\n　どうしよう……#{target}、決めて？」" if $msg.t_enemy.rankup_flag == true #レッサキュからランクアップしている場合
  when 2 #ランクアップ開始
    tx["tx1"] = "「じゃ、始めるわね。\n　#{target}はそこで見ていて……\\H」"
    tx["tx1"] = "「じゃ、始めるよ？\n　……大丈夫、どんな姿になっても、\n　#{myname}は#{target}のものだから……\\H」" if $msg.t_enemy.rankup_flag == true #レッサキュからランクアップしている場合
  when 3 #ランクアップ終了（レッサーサキュバスからランクアップした後の口上）
    tx["tx1"] = "「#{giggle}\n　どうかしら……変じゃない？\n　じゃ、今後ともよろしくね、#{target}\\H」"
  when 4 #ランクアップしない
    tx["tx1"] = "「ふふ、そう？\n　#{target}がそこまで言うなら、\n　暫くはこのままでいてあげる\\H」"
    tx["tx1"] = "「ふふっ、そう？\n　#{target}がそこまで言うなら、\n　暫くはこのままでいてあげる\\H」" if $msg.t_enemy.rankup_flag == true #レッサキュからランクアップしている場合
  end
  #格納
  ms.push(tx)
#---------------------------------------------------------------------------------------------------------------------#
end
#######################################################################################################################
 end #def
end #class
