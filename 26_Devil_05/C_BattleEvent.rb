=begin
#######################################################################################################################
 ●『デビル（緑）』戦闘開始、終了口上
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

class MsgDevil_A < MsgBase
 def msg_op_and_ep_05
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
      tx["tx1"] = "「#{giggle}\n　それじゃ、お互い目一杯楽しもうか\\H」"
      #▼初ベッドイン
      tx["tx1"] = "「……何だよ緊張してるのかい？\n　……安心しな、#{myname}もだ\\H\n　じゃ、そろそろ始めようか……？\\H」" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "「おっと、抜け駆けは無しだ。\n　#{myname}も混ぜてもらうぜ？」"
      #▼初ベッドイン
      tx["tx1"] = "「割といい感じの部屋だな、ここ。\n　……ここなら少々乱れても大丈夫そうだな\\H」" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "「#{myname}も忘れてもらっちゃ困るぜ？\n　さーて、皆で熱い夜にしようかね\\H」"
      #▼初ベッドイン
      tx["tx1"] = "「……ははっ、柄にもなく緊張してら。\n　ま、お手柔らかに頼むぜ……？\\H」" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "「#{giggle}\n　さぁて……どこで抜かれるのがご希望かな？\\H」"
    when 1 #２番目
      tx["tx1"] = "「おーい……。\n　ちゃんと#{myname}のぶんも残しといてくれよ？」"
    when 2 #３番目
      tx["tx1"] = "「ま、契約もあるし死にはしないだろ。\n　……と言うわけだ、腹括ろうな？\\H」"
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "「おっと、これは珍しい客だな。\n　せっかく来たんだ、遊んで行きなよ」"
    when 1 #２番目
      tx["tx1"] = "「なんだよ、ヤる気かい？\n　子供相手に物好きだねー……。\n　……ま、その気になってる#{myname}も同類か\\H」"
    when 2 #３番目
      tx["tx1"] = "「安心しなよ、命取ろうってんじゃないからさ。\n　……まあ、暫くは足腰立たなくなるけどな？\\H」"
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "逃走失敗"
  tx["tx1"] = "「おっとぉ……！\n　ちょっと待ちなよ#{target}。\n　お楽しみはこれからだってのに」"
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
    tx["tx1"] = "「……ふふっ。\n　あっはっはっ、負けた負けた♪\n　#{target}、結構やるもんだね」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「気に入ったよ#{target}。\n　どうだい、#{myname}と契約してみる気はないかい？」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "「#{target}とだったら、\n　割といい関係になれそうなんだけどね」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「お、本当かい？\n　やっぱり#{myname}が見込んだだけの事はあるよ。\n　度胸据わってるね、#{target}♪」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「それじゃ、今後ともよろしく……だな。\n　頼んだよ、#{target}\\H」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「お、本当かい？\n　やっぱり#{myname}が見込んだだけの事はあるよ。\n　度胸据わってるね、#{target}♪」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「おっと……今はお仲間が一杯みたいだな。\n　んじゃ、先に#{target}の家に邪魔してるよ。\n　そんじゃ、また後で……な\\H」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ま、急な話だ、仕方ないか。\n　もし気が変わったら、いつでも会いに来てくれよ」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「んじゃ、楽しかったよ#{target}。\n　次は負けないからな？」"
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class