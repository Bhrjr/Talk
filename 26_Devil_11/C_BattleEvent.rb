=begin
#######################################################################################################################
 ●『デビル（緑）』戦闘開始、終了口上
 ●性格：虚勢
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

class MsgDevil_A < MsgBase
 def msg_op_and_ep_11
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
      tx["tx1"] = "「……え、もう始めるのかい？\n　あ、いやまあ#{myname}は構わないけどな」"
      #▼初ベッドイン
      tx["tx1"] = "「……何だよ、そんなにじろじろ見るなよ。\n　……ばっ……！別に緊張してるわけじゃないって！」" if $msg.t_enemy.bedin_count == 0
      tx["tx2"] = "「この～……覚悟しろよ？\n　すぐに参ったって言わせてやるぜ！」" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "「さぁて、どんな風に攻めて欲しい？\n　希望があればお応えするぜ？\\H」"
      #▼初ベッドイン
      tx["tx1"] = "「あ～……その、何だ。\n　これから、するんだよな？」" if $msg.t_enemy.bedin_count == 0
      tx["tx2"] = "「……ええい、契約しちまったんだし仕方ねえ。\n　煮るなり焼くなり好きにしろってんだ」" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "「#{target}も頑張るねぇ、３人同時に相手か。\n　ま、ここはイイ所を見せてもらおうかな\\H」"
      #▼初ベッドイン
      tx["tx1"] = "「んじゃ、ま……お手柔らかに頼むぜ？\n　正直、こういう雰囲気でするのは初めてでな」" if $msg.t_enemy.bedin_count == 0
      tx["tx2"] = "「……こらそこ！\n　変な笑顔を浮かべるんじゃない！」" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "「#{target}もなぁ……。\n　もっと素直にしてれば、\n　こんな目に遭わなくて済んだんだぜ？」"
    when 1 #２番目
      tx["tx1"] = "「#{giggle}\n　さぁて、大人しくしてなよ……？」"
    when 2 #３番目
      tx["tx1"] = "「んじゃ、覚悟を決めてもらおうかね？\n　#{giggle}」"
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "「おっと……珍しいな。\n　人間の男……ってか子供か？\n　面白い、丁度退屈してたんだ」"
    when 1 #２番目
      tx["tx1"] = "「ふぅん……ま、身体はそこそこみたいだが？\n　さて、どう楽しませてもらえるかな？\\H」"
    when 2 #３番目
      tx["tx1"] = "「ま、あまり期待はしない方がいいな。\n　せいぜい頑張ってもらおうか\\H」"
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "逃走失敗"
  tx["tx1"] = "「どこへ行くんだい#{target}？\n　そんなに#{myname}が恐ろしいのかい？」"
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
    tx["tx1"] = "「ぐっ……！\n　くそ、負けちまったか……。\n　大抵の奴は#{myname}を見て縮こまるってのに……」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「ええい、負けは負けだ！\n　犯し嬲るなり、契約するなり好きにしてくれ」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「……え、契約……？\n　って、本気かい？\n　あ、いや、別に嫌って訳じゃないけどさ……」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「……あー、その、こういうの初めてでな。\n　えーと、今後とも、よろしく……。\n　……って、これでいいのか？」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "「……うわ、なんか急にドキドキしてきたぞ！？\n　ええい、こっち見るなっ！」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「……え、契約……？\n　って、本気かい？\n　あ、いや、別に嫌って訳じゃないけどさ……」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「あー……とりあえずお仲間は一杯か。\n　んじゃ、#{target}の家に邪魔すればいいんだな」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "「……後悔、するなよな？\n　ふふ、とんだ物好きがいたもんだね……\\H」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「何だよ、何もしないって？\n　物好きな奴だな、#{target}」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「次に会ったら、今度は本気を出してやるよ。\n　……本当だからな、覚悟してろよ？」"
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class
