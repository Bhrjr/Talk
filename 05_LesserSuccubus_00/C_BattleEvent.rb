=begin
#######################################################################################################################
 ●『レッサーサキュバス（橙）』戦闘開始、終了口上
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

class MsgLessersuccubus_A < MsgBase
 def msg_op_and_ep_00
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
#----------------------------------------------------------------------------------------------------------------------
if $msg.tag == "戦闘開始"
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            if $game_switches[85] == true
                              tx["md"] = "12" if $msg.talk_step == 1
                              tx["md"] = "12" if $msg.talk_step == 2
                              tx["md"] = "12" if $msg.talk_step == 3
                              tx["md"] = "14" if $msg.talk_step == 1 and $msg.t_enemy.bedin_count == 0
                              tx["md"] = "14" if $msg.talk_step == 2 and $msg.t_enemy.bedin_count == 0
                              tx["md"] = "14" if $msg.talk_step == 3 and $msg.t_enemy.bedin_count == 0
                            elsif $game_switches[86] == true
                              tx["md"] = "0"
                            else
                              tx["md"] = "13" if $msg.talk_step == 1
                              tx["md"] = "12" if $msg.talk_step == 2
                              tx["md"] = "11" if $msg.talk_step == 3
                            end
  #----------------------------------------------------------------------------------------------------------------------
  #●ベッドイン中
  if $game_switches[85] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "「#{giggle}\n　今夜もいっぱい愛してね\\H」"
      #▼初ベッドイン
      tx["tx1"] = "「えーと……その……。\n　改まってすると、ちょっぴり緊張するね……\\H」" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "「#{giggle}\n　ね、今日はどんなことをしよっか？\\H」"
      #▼初ベッドイン
      tx["tx1"] = "「#{giggle}\n　ここでするのは初めてだね……\\H」" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "「#{giggle}\n　いっぱい気持ちよくしてあげる\\H」"
      #▼初ベッドイン
      tx["tx1"] = "「#{giggle}\n　いつもと場所が違うからかな、\n　ちょっと照れちゃう……\\H」" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "「ねぇ……もう我慢できないよぉ……！\n　早くぅ……\\H」"
    when 1 #２番目
      tx["tx1"] = "「あぁん……！\n　#{myname}が先だってばぁ\\H」"
    when 2 #３番目
      tx["tx1"] = "「大丈夫だよぉ？\n　ちゃんと加減はするから……\\H」"
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "「あはっ、可愛い子発見～♪」"
    when 1 #２番目
      tx["tx1"] = "「うふふっ、#{myname}たちと一緒に遊びましょ\\H」"
    when 2 #３番目
      tx["tx1"] = "「何して遊ぼっかな？\n　くすくす……\\H」"
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "逃走失敗"
  tx["tx1"] = "「うふふ、だ～め♪\n　もう少し遊んで、ね\\H」"
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■契約口上
elsif $msg.tag == "契約"
  #----------------------#
  #▼ステップで状況判断  #
  #----------------------#
  case $msg.talk_step
  #▼契約開始
  when 1 
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ねぇねぇ、#{target}……？\n　#{myname}も連れてってくれないかなぁ\\H」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「#{myname}、#{target}ともっと遊びたい\\H\n　……ダメかな？」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「やったぁ、決まりだね\\H\n　それじゃ、今後ともよろしく\\H」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「やったぁ、決まりだね\\H\n　おうちに行ってるから、早く帰ってきてね～♪」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「む～…やっぱりダメ……？\n　……ま、仕方ないかぁ」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「それじゃ、#{target}。\n　またどこかで会ったら遊んでね\\H」"
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class
