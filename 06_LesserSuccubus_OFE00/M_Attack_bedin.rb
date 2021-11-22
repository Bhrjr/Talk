=begin
#######################################################################################################################
 ●『レッサーサキュバス（桃）』追撃口上（対主人公・ベッドイン中）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
######################################★追撃：主人公への追撃を行う口上群###############################################
#######################################################################################################################
class MsgLessersuccubus_B < MsgBase 
 def msg_bedin_attack_00
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Aha, you like it?\n Then I'll keep doing it\\H\""
  tx["tx1"] = "\"Was that good enough to please you?\\H\n Well then, how'd you like this?\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Mmmph, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ufufu, guess you're totally into it\\H\n Then get ready for a whole lot more\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Was that good enough to please you?\\H\n Well then, how'd you like this?\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス パターンB
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"Mmm....smooch....\\H\n Ufufu, let's keep making out....\\H\""
  tx["tx1"] = "\"Smooch....mmm.......\\H\n Ufu, guess you like to make out too, #{target}.\n Your face tells me you're fallen for me....\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Mmm....smoooch....*kiss*....\\H\n Ufu, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
  tx["tx1"] = "\"Mmm....fuah....\\H\n Hey, #{target}, let's keep making out....\\H\"" if $msg.t_enemy.crisis?
  tx["tx1"] = "\"*kiss*....mmm.......\\H\n Hey, keep twirling your tongue with mine....\\H\n Nfu....*lick*...*lick*....\\H\"" if $msg.t_enemy.crisis? and $game_variables[17] > 50 #パターンB
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼手攻め▼****************************************************************************************
when "Hands"
  tx["tx1"] = "\"Aha, you twitched just now\\H\n Is this your weak spot? \\H」"
  tx["tx1"] = "\"Ufufu, found #{target}'s weak spot♪\n Wonder how long you can hold out for?\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Ufu, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aha, don't even think of holding it in, #{target}.\n I know all of your weak spots by now\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Nfufu, you look cute when trying to hold it in, #{target}\\H\n Makes me wanna bully you some more♪\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス パターンB
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼口攻め▼****************************************************************************************
when "Mouth"
  tx["tx1"] = "\"Aha, you twitched just now\\H\n Is this your weak spot? \\H\""
  tx["tx1"] = "\"Ufufu, found #{target}'s weak spot♪\n Wonder how long you can hold out for?\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Ufu, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aha, don't even think of holding it in, #{target}.\n I know all of your weak spots by now\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Nfufu, you look cute when trying to hold it in, #{target}\\H\n Makes me wanna bully you some more♪\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス パターンB
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼胸攻め▼****************************************************************************************
when "breasts"
  case $msg.at_parts
  when "Target: Penis" #パイズリ
  tx["tx1"] = "\"Aha, you twitched just now\\H\n Is this your weak spot? \\H\""
  tx["tx1"] = "\"Ufufu, found #{target}'s weak spot♪\n Wonder how long you can hold out for?\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Ufu, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aha, don't even think of holding it in, #{target}.\n I know all of your weak spots by now\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Nfufu, you look cute when trying to hold it in, #{target}\\H\n Makes me wanna bully you some more♪\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス パターンB
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：口" #ぱふぱふ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼アソコ攻め▼****************************************************************************************
when "♀" #素股
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼足攻め▼****************************************************************************************
when "足" #足コキ
#  tx["tx1"] = ""
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ホールド援護▼****************************************************************************************
when "ホールド援護"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.at_parts == "対象：口" #援護キッス
#  tx["tx1"] = "" if $msg.at_parts == "対象：ペニス" #援護ペニス攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：睾丸" #援護睾丸攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：尻" #援護尻攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Aha, you like it?\n Then I'll keep doing it\\H\""
  tx["tx1"] = "\"Was that good enough to please you?\\H\n Well then, how'd you like this?\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Mmmph, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ufufu, guess you're totally into it\\H\n Then get ready for a whole lot more\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Was that good enough to please you?\\H\n Well then, how'd you like this?\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス パターンB
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"Mmm....smooch....\\H\n Ufufu, let's keep making out....\\H\""
  tx["tx1"] = "\"Smooch....mmm.......\\H\n Ufu, guess you like to make out too, #{target}.\n Your face tells me you're fallen for me....\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Mmm....smoooch....*kiss*....\\H\n Ufu, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
  tx["tx1"] = "\"Mmm....fuah....\\H\n Hey, #{target}, let's keep making out....\\H\"" if $msg.t_enemy.crisis?
  tx["tx1"] = "\"*kiss*....mmm.......\\H\n Hey, keep twirling your tongue with mine....\\H\n Nfu....*lick*...*lick*....\\H\"" if $msg.t_enemy.crisis? and $game_variables[17] > 50 #パターンB
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼手攻め▼****************************************************************************************
when "Hands"
  tx["tx1"] = "\"Aha, you twitched just now\\H\n Is this your weak spot? \\H\""
  tx["tx1"] = "\"Ufufu, found #{target}'s weak spot♪\n Wonder how long you can hold out for?\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Ufu, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aha, don't even think of holding it in, #{target}.\n I know all of your weak spots by now\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Nfufu, you look cute when trying to hold it in, #{target}\\H\n Makes me wanna bully you some more♪\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス パターンB
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼口攻め▼****************************************************************************************
when "Mouth"
  tx["tx1"] = "\"Aha, you twitched just now\\H\n Is this your weak spot? \\H\""
  tx["tx1"] = "\"Ufufu, found #{target}'s weak spot♪\n Wonder how long you can hold out for?\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Ufu, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aha, don't even think of holding it in, #{target}.\n I know all of your weak spots by now\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Nfufu, you look cute when trying to hold it in, #{target}\\H\n Makes me wanna bully you some more♪\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス パターンB
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼胸攻め▼****************************************************************************************
when "breasts"
  case $msg.at_parts
  when "Target: Penis" #パイズリ
  tx["tx1"] = "\"Aha, you twitched just now\\H\n Is this your weak spot? \\H\""
  tx["tx1"] = "\"Ufufu, found #{target}'s weak spot♪\n Wonder how long you can hold out for?\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Ufu, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aha, don't even think of holding it in, #{target}.\n I know all of your weak spots by now\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Nfufu, you look cute when trying to hold it in, #{target}\\H\n Makes me wanna bully you some more♪\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス パターンB
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：口" #ぱふぱふ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼アソコ攻め▼****************************************************************************************
when "♀" #素股
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼足攻め▼****************************************************************************************
when "足" #足コキ
#  tx["tx1"] = ""
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ホールド援護▼****************************************************************************************
when "ホールド援護"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.at_parts == "対象：口" #援護キッス
#  tx["tx1"] = "" if $msg.at_parts == "対象：ペニス" #援護ペニス攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：睾丸" #援護睾丸攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：尻" #援護尻攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Aha, you like it?\n Then I'll keep doing it\\H\""
  tx["tx1"] = "\"Was that good enough to please you?\\H\n Well then, how'd you like this?\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Mmmph, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ufufu, guess you're totally into it\\H\n Then get ready for a whole lot more\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Was that good enough to please you?\\H\n Well then, how'd you like this?\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス パターンB
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"Mmm....smooch....\\H\n Ufufu, let's keep making out....\\H\""
  tx["tx1"] = "\"Smooch....mmm.......\\H\n Ufu, guess you like to make out too, #{target}.\n Your face tells me you're fallen for me....\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Mmm....smoooch....*kiss*....\\H\n Ufu, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
  tx["tx1"] = "\"Mmm....fuah....\\H\n Hey, #{target}, let's keep making out....\\H\"" if $msg.t_enemy.crisis?
  tx["tx1"] = "\"*kiss*....mmm.......\\H\n Hey, keep twirling your tongue with mine....\\H\n Nfu....*lick*...*lick*....\\H\"" if $msg.t_enemy.crisis? and $game_variables[17] > 50 #パターンB
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼手攻め▼****************************************************************************************
when "Hands"
  tx["tx1"] = "\"Aha, you twitched just now\\H\n Is this your weak spot? \\H\""
  tx["tx1"] = "\"Ufufu, found #{target}'s weak spot♪\n Wonder how long you can hold out for?\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Ufu, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aha, don't even think of holding it in, #{target}.\n I know all of your weak spots by now\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Nfufu, you look cute when trying to hold it in, #{target}\\H\n Makes me wanna bully you some more♪\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス パターンB
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼口攻め▼****************************************************************************************
when "Mouth"
  tx["tx1"] = "\"Aha, you twitched just now\\H\n Is this your weak spot? \\H\""
  tx["tx1"] = "\"Ufufu, found #{target}'s weak spot♪\n Wonder how long you can hold out for?\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Ufu, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aha, don't even think of holding it in, #{target}.\n I know all of your weak spots by now\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Nfufu, you look cute when trying to hold it in, #{target}\\H\n Makes me wanna bully you some more♪\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス パターンB
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼胸攻め▼****************************************************************************************
when "breasts"
  case $msg.at_parts
  when "Target: Penis" #パイズリ
  tx["tx1"] = "\"Aha, you twitched just now\\H\n Is this your weak spot? \\H\""
  tx["tx1"] = "\"Ufufu, found #{target}'s weak spot♪\n Wonder how long you can hold out for?\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"Ufu, make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aha, don't even think of holding it in, #{target}.\n I know all of your weak spots by now\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Nfufu, you look cute when trying to hold it in, #{target}\\H\n Makes me wanna bully you some more♪\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス パターンB
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：口" #ぱふぱふ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼アソコ攻め▼****************************************************************************************
when "♀" #素股
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼足攻め▼****************************************************************************************
when "足" #足コキ
#  tx["tx1"] = ""
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ホールド援護▼****************************************************************************************
when "ホールド援護"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.at_parts == "対象：口" #援護キッス
#  tx["tx1"] = "" if $msg.at_parts == "対象：ペニス" #援護ペニス攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：睾丸" #援護睾丸攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：尻" #援護尻攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts






end
#====================================================================================================================
 end #def
end #class




















#######################################################################################################################
######################################★追撃：主人公への追撃を行う口上群###############################################
#######################################################################################################################
class MsgLessersuccubus_B < MsgBase 
 def msg_bedin_attack_hold_00
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Does it feel nice, #{target}?\n How'd you like this?\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ufufu, guess you're totally into it\\H\n Then get ready for a whole lot more\\H\"" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼インサート(♀)▼****************************************************************************************
when "♀ rubbing"
  tx["tx1"] = "\"Does it feel nice, #{target}?\n How'd you like this?\""
  tx["tx1"] = "\"Aha, you like it?\n Then I'll keep doing it\\H\"" if $game_variables[17] > 50 
  tx["tx1"] = "\"Shake your hips and thrust it against me, #{myname}\\H\n If not, I can do the moving myself\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス
  tx["tx1"] = "\"Nfufu, did you lose your marbles?\n But I'm not stopping♪\"" if $msg.t_target.crisis? and $game_variables[17] > 35 #対象がクライシスパターンB
  tx["tx1"] = "\"Aha....this is getting fun now♪\n Keep thrusting your hips\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 70 #対象がクライシスパターンB
  tx["tx1"] = "\"Aha...you just came,\n but your dick's rock hard....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "Pussy on top"
  tx["tx1"] = "\"Doesn't it smell nice?\\H\n You can keep smelling it if you want\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ぱふぱふ▼****************************************************************************************
when "ぱふぱふ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼パイズリ▼****************************************************************************************
when "パイズリ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼尻ディルド攻め▼****************************************************************************************
when "ディルド尻挿入"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼キッス▼****************************************************************************************
when "キッス"
  tx["tx1"] = "「#{kiss_l}」"
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Does it feel nice, #{target}?\n How'd you like this?\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ufufu, guess you're totally into it\\H\n Then get ready for a whole lot more\\H\"" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼インサート(♀)▼****************************************************************************************
when "♀ rubbing"
  tx["tx1"] = "\"Does it feel nice, #{target}?\n How'd you like this?\""
  tx["tx1"] = "\"Aha, you like it?\n Then I'll keep doing it\\H\"" if $game_variables[17] > 50 
  tx["tx1"] = "\"Shake your hips and thrust it against me, #{myname}\\H\n If not, I can do the moving myself\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス
  tx["tx1"] = "\"Nfufu, did you lose your marbles?\n But I'm not stopping♪\"" if $msg.t_target.crisis? and $game_variables[17] > 35 #対象がクライシスパターンB
  tx["tx1"] = "\"Aha....this is getting fun now♪\n Keep thrusting your hips\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 70 #対象がクライシスパターンB
  tx["tx1"] = "\"Aha...you just came,\n but your dick's rock hard....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "Pussy on top"
  tx["tx1"] = "\"Doesn't it smell nice?\\H\n You can keep smelling it if you want\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ぱふぱふ▼****************************************************************************************
when "ぱふぱふ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼パイズリ▼****************************************************************************************
when "パイズリ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼尻ディルド攻め▼****************************************************************************************
when "ディルド尻挿入"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼キッス▼****************************************************************************************
when "キッス"
  tx["tx1"] = "「#{kiss_l}」"
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Does it feel nice, #{target}?\n How'd you like this?\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ufufu, guess you're totally into it\\H\n Then get ready for a whole lot more\\H\"" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼インサート(♀)▼****************************************************************************************
when "♀ rubbing"
  tx["tx1"] = "\"Does it feel nice, #{target}?\n How'd you like this?\""
  tx["tx1"] = "\"Aha, you like it?\n Then I'll keep doing it\\H\"" if $game_variables[17] > 50 
  tx["tx1"] = "\"Shake your hips and thrust it against me, #{myname}\\H\n If not, I can do the moving myself\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 50 #対象がクライシス
  tx["tx1"] = "\"Nfufu, did you lose your marbles?\n But I'm not stopping♪\"" if $msg.t_target.crisis? and $game_variables[17] > 35 #対象がクライシスパターンB
  tx["tx1"] = "\"Aha....this is getting fun now♪\n Keep thrusting your hips\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 70 #対象がクライシスパターンB
  tx["tx1"] = "\"Aha...you just came,\n but your dick's rock hard....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "Pussy on top"
  tx["tx1"] = "\"Doesn't it smell nice?\\H\n You can keep smelling it if you want\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ぱふぱふ▼****************************************************************************************
when "ぱふぱふ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼パイズリ▼****************************************************************************************
when "パイズリ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼尻ディルド攻め▼****************************************************************************************
when "ディルド尻挿入"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼キッス▼****************************************************************************************
when "キッス"
  tx["tx1"] = "「#{kiss_l}」"
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts





end
#====================================================================================================================
 end #def
end #class




















#######################################################################################################################
######################################★追撃：主人公への追撃を行う口上群###############################################
#######################################################################################################################
class MsgLessersuccubus_B < MsgBase 
 def msg_bedin_attack_self_00
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"N-not there!\n Aaaah\\H\""
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.weaken? #自分が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"Ahaa....nn....*kiss*....\\H\n You're too good at kissing, #{target}....\\H\n Mmph...?! ....Fuah.......\\H\""
  tx["tx1"] = "\"Ah....aha....\\H\n More....keep kissing me....\\H\n Nfu.......*kiss*....nnn....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "Chest"
  tx["tx1"] = "\"Aaaah,\n you can't play with my boobs like that....\\H\""
  tx["tx1"] = "\"No, no....!\n My boobies are getting turned on....! \\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Pant....pant....\\H\n P-Please forget about my boobs already....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "Hips"
  tx["tx1"] = "\"Aiee...\\H\n Y-You shouldn't mess with that...!\""
  tx["tx1"] = "\"W-Why....?\n My ass feels so good....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aiee...ee....\\H\n P-Please forget about my ass already....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "Crotch"
  if $msg.t_enemy.nude?
    tx["tx1"] = "\"Aaah....\\H\n If you mess around that...deep....\\H\""
    tx["tx1"] = "\"N-No...oo....\\H\n I feel like I'm in heaven....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
    tx["tx1"] = "\"Aaahh...ah....\\H\n G-Give me a break already.......\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  else
    tx["tx1"] = "\"Nooo....\\H\n I'm getting stained....\\H\"" # 対象が着衣状態の時
    tx["tx1"] = "\"Aha...\\H\n E-Enough with that spot...! Nnguh....!\\H\"" if $msg.t_enemy.crisis? #自分がクライシス 対象が着衣状態の時
    tx["tx1"] = "\"Aaa...a....\\H\n Q-Quit messing with that spot.......\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中 対象が着衣状態の時
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スウィング系▼****************************************************************************************
when "Thrust","Piston"
  tx["tx1"] = "\"Oh yes! So good...!\\H\n Keep making me squeal...!\\H\""
  tx["tx1"] = "\"A-Aiee...you're making me too sensitive...!\\H\n Fuaaahh!\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ahaaaa!\\H\n Y-You're going too deep...!\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"N-not there!\n Aaaah\\H\""
#  tx["tx1"] = "\"#{pleasure_cr}\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.weaken? #自分が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"Ahaa....nn....*kiss*....\\H\n You're too good at kissing, #{target}....\\H\n Mmph...?! ....Fuah.......\\H\""
  tx["tx1"] = "\"Ah....aha....\\H\n More....keep kissing me....\\H\n Nfu.......*kiss*....nnn....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "Chest"
  tx["tx1"] = "\"Aaaah,\n you can't play with my boobs like that....\\H\""
  tx["tx1"] = "\"No, no....!\n My boobies are getting turned on....! \\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Pant....pant....\\H\n P-Please forget about my boobs already....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "Hips"
  tx["tx1"] = "\"Aiee...\\H\n Y-You shouldn't mess with that...!\""
  tx["tx1"] = "\"W-Why....?\n My ass feels so good....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aiee...ee....\\H\n P-Please forget about my ass already....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "Crotch"
  if $msg.t_enemy.nude?
    tx["tx1"] = "\"Aaah....\\H\n If you mess around that...deep....\\H\""
    tx["tx1"] = "\"N-No...oo....\\H\n I feel like I'm in heaven....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
    tx["tx1"] = "\"Aaahh...ah....\\H\n G-Give me a break already.......\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  else
    tx["tx1"] = "\"Nooo....\\H\n I'm getting stained....\\H\"" # 対象が着衣状態の時
    tx["tx1"] = "\"Aha...\\H\n E-Enough with that spot...! Nnguh....!\\H\"" if $msg.t_enemy.crisis? #自分がクライシス 対象が着衣状態の時
    tx["tx1"] = "\"Aaa...a....\\H\n Q-Quit messing with that spot.......\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中 対象が着衣状態の時
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スウィング系▼****************************************************************************************
when "Thrust","Piston"
  tx["tx1"] = "\"Oh yes! So good...!\\H\n Keep making me squeal...!\\H\""
  tx["tx1"] = "\"A-Aiee...you're making me too sensitive...!\\H\n Fuaaahh!\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ahaaaa!\\H\n Y-You're going too deep...!\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"N-not there!\n Aaaah\\H\""
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.weaken? #自分が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"Ahaa....nn....*kiss*....\\H\n You're too good at kissing, #{target}....\\H\n Mmph...?! ....Fuah.......\\H\""
  tx["tx1"] = "\"Ah....aha....\\H\n More....keep kissing me....\\H\n Nfu.......*kiss*....nnn....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "Chest"
  tx["tx1"] = "\"Aaaah,\n you can't play with my boobs like that....\\H\""
  tx["tx1"] = "\"No, no....!\n My boobies are getting turned on....! \\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Pant....pant....\\H\n P-Please forget about my boobs already....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "Hips"
  tx["tx1"] = "\"Aiee...\\H\n Y-You shouldn't mess with that...!\""
  tx["tx1"] = "\"W-Why....?\n My ass feels so good....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aiee...ee....\\H\n P-Please forget about my ass already....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "Crotch"
  if $msg.t_enemy.nude?
    tx["tx1"] = "\"Aaah....\\H\n If you mess around that...deep....\\H\""
    tx["tx1"] = "\"N-No...oo....\\H\n I feel like I'm in heaven....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
    tx["tx1"] = "\"Aaahh...ah....\\H\n G-Give me a break already.......\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  else
    tx["tx1"] = "\"Nooo....\\H\n I'm getting stained....\\H\"" # 対象が着衣状態の時
    tx["tx1"] = "\"Aha...\\H\n E-Enough with that spot...! Nnguh....!\\H\"" if $msg.t_enemy.crisis? #自分がクライシス 対象が着衣状態の時
    tx["tx1"] = "\"Aaa...a....\\H\n Q-Quit messing with that spot.......\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中 対象が着衣状態の時
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スウィング系▼****************************************************************************************
when "Thrust","Piston"
  tx["tx1"] = "\"Oh yes! So good...!\\H\n Keep making me squeal...!\\H\""
  tx["tx1"] = "\"A-Aiee...you're making me too sensitive...!\\H\n Fuaaahh!\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ahaaaa!\\H\n Y-You're going too deep...!\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type





end
#====================================================================================================================
 end #def
end #class
