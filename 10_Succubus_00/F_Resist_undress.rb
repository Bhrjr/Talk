=begin
#######################################################################################################################
 ●『サキュバス（橙）』レジスト実行口上（衣装関連・対パートナー）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





#######################################################################################################################
#########################################★脱衣：パートナーがメインの口上群################################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
 def msg_female_undress_00
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #レジスト成功
                              tx["md"] = "2" if $msg.tag == "Succubus strips the partner." #脱衣できなかった
                              tx["md"] = "3" if $msg.tag == "Partner strips the succubus." #相手を脱衣させた
                            when 3 #レジスト失敗
                              tx["md"] = "3" if $msg.tag == "Succubus strips the partner." #脱衣させられた
                              tx["md"] = "2" if $msg.tag == "Partner strips the succubus." #相手を脱衣できなかった
                            end
case $msg.tag
#====================================================================================================================
#■夢魔がパートナーを脱衣させる
#====================================================================================================================
when "Succubus strips the partner."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Lemme get you undressed....\\H\""
    tx["tx1"] = "\"Can you get undressed too, #{target}....?\n #{myname}'ll help you with that.\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #パートナーが抵抗した
    tx["tx1"] = "\"#{giggle}\n You feel embarrassed even with girls....?\\H\""
    tx["tx1"] = "\"#{giggle}\n You feel embarrassed even with girls....?\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    tx["md"] = "10"
  #---------------------------------------------------
  when 3 #パートナーが脱衣した
    tx["tx1"] = "\"Ufufu, you look great....\\H\""
    #▼自ら受け入れた場合
    tx["tx1"] = "\"Ufufu, you look great....\\H\"" if $game_switches[89] == true
    #▼特殊
    tx["tx1"] = "\"#{giggle}\n Feels like I'm doing something bad\\H\"" if $msg.t_target.age == 1
    tx["tx1"] = "\"#{giggle}\n I'll show you plenty of love\\H\"" if $msg.t_target.age == 2
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが夢魔を脱衣させる
#====================================================================================================================
when "Partner strips the succubus."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"#{giggle}\n You'll take it off for me?\""
    tx["tx1"] = "\"#{giggle}\n Are you trying to seduce me?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"How do you like my body? \\H\n Good enough to satisfy you, #{target}?\""
    tx["tx1"] = "\"How do you like my body? \\H\n Good enough to satisfy you, #{target}?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"#{giggle}\n Just wait a little\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"#{giggle}\n Just wait a little\\H\"" if $game_switches[89] == true
    tx["md"] = "10"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが自ら脱衣する
#====================================================================================================================
when "Partner undresses themself."
  tx["tx1"] = "\"#{giggle}\n How assertive\\H\""
  tx["tx1"] = "\"#{giggle}\n You're just as great, #{target}....\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #▼特殊
  tx["tx1"] = "\"#{giggle}\n Big sis'll show you plenty of love\\H\"" if $msg.t_target.age <= 2
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"#{giggle}\n Let's have more fun with each other\\H\""
  tx["tx1"] = "\"#{giggle}\n Let's have more fun with each other\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag
#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class










#######################################################################################################################
#####################################★脱衣：パートナーがメインの口上群(ベッドイン)########################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
 def msg_female_bedin_undress_00
#====================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #レジスト成功
                              tx["md"] = "2" if $msg.tag == "Succubus strips the partner." #脱衣できなかった
                              tx["md"] = "3" if $msg.tag == "Partner strips the succubus." #相手を脱衣させた
                            when 3 #レジスト失敗
                              tx["md"] = "3" if $msg.tag == "Succubus strips the partner." #脱衣させられた
                              tx["md"] = "2" if $msg.tag == "Partner strips the succubus." #相手を脱衣できなかった
                            end
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
case $msg.tag
#====================================================================================================================
#■夢魔がパートナーを脱衣させる
#====================================================================================================================
when "Succubus strips the partner."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Lemme get you undressed....\\H\""
    tx["tx1"] = "\"Can you get undressed too, #{target}....?\n #{myname}'ll help you with that.\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #パートナーが抵抗した
    tx["tx1"] = "\"#{giggle}\n You feel embarrassed even with girls....?\\H\""
    tx["tx1"] = "\"#{giggle}\n You feel embarrassed even with girls....?\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    tx["md"] = "10"
  #---------------------------------------------------
  when 3 #パートナーが脱衣した
    tx["tx1"] = "\"Ufufu, you look great....\\H\""
    #▼自ら受け入れた場合
    tx["tx1"] = "\"Ufufu, you look great....\\H\"" if $game_switches[89] == true
    #▼特殊
    tx["tx1"] = "\"#{giggle}\n Feels like I'm doing something bad\\H\"" if $msg.t_target.age == 1
    tx["tx1"] = "\"#{giggle}\n I'll show you plenty of love\\H\"" if $msg.t_target.age == 2
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが夢魔を脱衣させる
#====================================================================================================================
when "Partner strips the succubus."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"#{giggle}\n You'll take it off for me?\""
    tx["tx1"] = "\"#{giggle}\n Are you trying to seduce me?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"How do you like my body? \\H\n Good enough to satisfy you, #{target}?\""
    tx["tx1"] = "\"How do you like my body? \\H\n Good enough to satisfy you, #{target}?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"#{giggle}\n Just wait a little\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"#{giggle}\n Just wait a little\\H\"" if $game_switches[89] == true
    tx["md"] = "10"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが自ら脱衣する
#====================================================================================================================
when "Partner undresses themself."
  tx["tx1"] = "\"#{giggle}\n How assertive\\H\""
  tx["tx1"] = "\"#{giggle}\n You're just as great, #{target}....\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #▼特殊
  tx["tx1"] = "\"#{giggle}\n Big sis'll show you plenty of love\\H\"" if $msg.t_target.age <= 2
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"#{giggle}\n Let's have more fun with each other\\H\""
  tx["tx1"] = "\"#{giggle}\n Let's have more fun with each other\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag










#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
case $msg.tag
#====================================================================================================================
#■夢魔がパートナーを脱衣させる
#====================================================================================================================
when "Succubus strips the partner."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Lemme get you undressed....\\H\""
    tx["tx1"] = "\"Can you get undressed too, #{target}....?\n #{myname}'ll help you with that.\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #パートナーが抵抗した
    tx["tx1"] = "\"#{giggle}\n You feel embarrassed even with girls....?\\H\""
    tx["tx1"] = "\"#{giggle}\n You feel embarrassed even with girls....?\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    tx["md"] = "10"
  #---------------------------------------------------
  when 3 #パートナーが脱衣した
    tx["tx1"] = "\"Ufufu, you look great....\\H\""
    #▼自ら受け入れた場合
    tx["tx1"] = "\"Ufufu, you look great....\\H\"" if $game_switches[89] == true
    #▼特殊
    tx["tx1"] = "\"#{giggle}\n Feels like I'm doing something bad\\H\"" if $msg.t_target.age == 1
    tx["tx1"] = "\"#{giggle}\n I'll show you plenty of love\\H\"" if $msg.t_target.age == 2
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが夢魔を脱衣させる
#====================================================================================================================
when "Partner strips the succubus."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"#{giggle}\n You'll take it off for me?\""
    tx["tx1"] = "\"#{giggle}\n Are you trying to seduce me?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"How do you like my body? \\H\n Good enough to satisfy you, #{target}?\""
    tx["tx1"] = "\"How do you like my body? \\H\n Good enough to satisfy you, #{target}?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"#{giggle}\n Just wait a little\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"#{giggle}\n Just wait a little\\H\"" if $game_switches[89] == true
    tx["md"] = "10"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが自ら脱衣する
#====================================================================================================================
when "Partner undresses themself."
  tx["tx1"] = "\"#{giggle}\n How assertive\\H\""
  tx["tx1"] = "\"#{giggle}\n You're just as great, #{target}....\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #▼特殊
  tx["tx1"] = "\"#{giggle}\n Big sis'll show you plenty of love\\H\"" if $msg.t_target.age <= 2
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"#{giggle}\n Let's have more fun with each other\\H\""
  tx["tx1"] = "\"#{giggle}\n Let's have more fun with each other\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag










#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
case $msg.tag
#====================================================================================================================
#■夢魔がパートナーを脱衣させる
#====================================================================================================================
when "Succubus strips the partner."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"Lemme get you undressed....\\H\""
    tx["tx1"] = "\"Can you get undressed too, #{target}....?\n #{myname}'ll help you with that.\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #パートナーが抵抗した
    tx["tx1"] = "\"#{giggle}\n You feel embarrassed even with girls....?\\H\""
    tx["tx1"] = "\"#{giggle}\n You feel embarrassed even with girls....?\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    tx["md"] = "10"
  #---------------------------------------------------
  when 3 #パートナーが脱衣した
    tx["tx1"] = "\"Ufufu, you look great....\\H\""
    #▼自ら受け入れた場合
    tx["tx1"] = "\"Ufufu, you look great....\\H\"" if $game_switches[89] == true
    #▼特殊
    tx["tx1"] = "\"#{giggle}\n Feels like I'm doing something bad\\H\"" if $msg.t_target.age == 1
    tx["tx1"] = "\"#{giggle}\n I'll show you plenty of love\\H\"" if $msg.t_target.age == 2
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが夢魔を脱衣させる
#====================================================================================================================
when "Partner strips the succubus."
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "\"#{giggle}\n You'll take it off for me?\""
    tx["tx1"] = "\"#{giggle}\n Are you trying to seduce me?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "\"How do you like my body? \\H\n Good enough to satisfy you, #{target}?\""
    tx["tx1"] = "\"How do you like my body? \\H\n Good enough to satisfy you, #{target}?\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "\"#{giggle}\n Just wait a little\\H\""
    #途中で行動をキャンセルした場合
    tx["tx1"] = "\"#{giggle}\n Just wait a little\\H\"" if $game_switches[89] == true
    tx["md"] = "10"
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが自ら脱衣する
#====================================================================================================================
when "Partner undresses themself."
  tx["tx1"] = "\"#{giggle}\n How assertive\\H\""
  tx["tx1"] = "\"#{giggle}\n You're just as great, #{target}....\\H\"" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #▼特殊
  tx["tx1"] = "\"#{giggle}\n Big sis will show you plenty of love\\H\"" if $msg.t_target.age <= 2
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "Succubus undresses herself."
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "\"#{giggle}\n Let's have more fun with each other\\H\""
  tx["tx1"] = "\"#{giggle}\n Let's have more fun with each other\\H\"" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag
end
#######################################################################################################################
  end #def
end #class
