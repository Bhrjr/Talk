=begin
#######################################################################################################################
 ●『レッサーサキュバス（桃）』追撃口上（対パートナー・通常戦闘中）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
######################################★追撃：パートナーへの追撃を行う口上群###########################################
#######################################################################################################################
class MsgLessersuccubus_B < MsgBase
 def msg_female_attack_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "「あはっ、#{target}もえっちだねぇ\\H\n　いいよ、もっとしてあげるから……\\H」"
  tx["tx1"] = "「うふふっ、逃げちゃだ～め♪\n　ほらぁ、もっと可愛い声出してよぉ\\H」" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "「んふふ、可愛い顔しちゃってる\\H\n　もっとしてあげたくなっちゃうなぁ……\\H」" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "キス"
  tx["tx1"] = "「#{kiss_l}\n　えへへ、女の子同士も悪くないね\\H」"
  tx["tx1"] = "「#{kiss_l}\n　#{target}もキスは好きみたいだね？\n　こんなにとろけた顔しちゃって……\\H」" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "「#{kiss_l}\n　もっと#{myname}を感じてね……\\H」" if $game_variables[17] > 70 #パターンC
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼手攻め▼****************************************************************************************
when "手"
  case $msg.at_parts
  when "対象：胸" #揉み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：アソコ" #手攻め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼口攻め▼****************************************************************************************
when "口"
  case $msg.at_parts
  when "対象：胸" #舐め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：アソコ" #クンニ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼胸攻め▼****************************************************************************************
when "胸"
  case $msg.at_parts
  when "対象：胸" #胸合わせ
    tx["tx1"] = "「#{pleasure_s}\n　おっぱいが擦れあうのって気持ちいいよね\\H」"
    tx["tx1"] = "「#{pleasure_s}\n　おっぱい同士を擦るのが好きみたいだね\\H\n　それじゃ、もっとやっちゃうよっ♪」" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
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
#▼足攻め▼****************************************************************************************
when "足" #足攻め
  case $msg.at_parts
  when "対象：胸" #胸踏み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：アソコ" #足攻め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ホールド援護▼****************************************************************************************
when "ホールド援護"
  tx["tx1"] = "「#{giggle}\n　#{myname}も混ぜてね～♪」"
  tx["tx1"] = "「#{kiss_s}\n　えへっ、隙有りだよ♪\n　#{kiss_l}」" if $msg.at_parts == "対象：口" #援護キッス
#  tx["tx1"] = "" if $msg.at_parts == "対象：胸" #援護胸攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：アソコ" #援護アソコ攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：陰核" #援護陰核攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：尻" #援護尻攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts
#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class










#######################################################################################################################
######################################★追撃：パートナーへの追撃を行う口上群###########################################
#######################################################################################################################
class MsgLessersuccubus_B < MsgBase
 def msg_female_attack_hold_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "「押しのけてもいいんだよぉ？\n　それともひょっとして……\n　このままされるのが良いとかぁ？\\H」"
  tx["tx1"] = "「あははっ、もうイっちゃいそう？\n　それじゃリクエストには応えないとね～♪」" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "「#{giggle}\n　寝てちゃダメダメ\\H\n　まだ寝かせてなんかあげないんだから……\\H」" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼シェルマッチ▼****************************************************************************************
when "貝合わせ"
  tx["tx1"] = "「#{pleasure_l}\n　アソコ同士で擦れ合うの、気持ちいいでしょ\\H」"
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "「#{pleasure_l}\n　もうイっちゃいそう？\n　それじゃ、もう少し激しくいっちゃうよ\\H」" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "「#{giggle}\n　寝かせてなんかあげないよっ\\H\n　もっと楽しもうよ、ね\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "騎乗：アソコ側"
  tx["tx1"] = "「#{giggle}\n　こういうのも興奮するでしょ？\\H\n　ねぇ、もっと舐めて\\H」"
  tx["tx1"] = "「#{pleasure_l}\n　ねぇ、もっと舐めてぇ……\\H\n　#{pleasure_s}」" if $msg.t_enemy.crisis? #自分がクライシス
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
#▼クンニ▼****************************************************************************************
when "クンニ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ディルド攻め▼****************************************************************************************
when "ディルド♀挿入","ディルド口挿入","ディルド尻挿入"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼キッス▼****************************************************************************************
when "キッス"
  tx["tx1"] = "「#{kiss_l}\n　えへへ、女の子同士も悪くないね\\H」"
  tx["tx1"] = "「#{kiss_l}\n　#{target}もキスは好きみたいだね？\n　こんなにとろけた顔しちゃって……\\H」" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "「#{kiss_l}\n　もっと#{myname}を感じてね……\\H」" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts
#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class










#######################################################################################################################
####################################★追撃：パートナーから追撃を受ける口上群###########################################
#######################################################################################################################
class MsgLessersuccubus_B < MsgBase
 def msg_female_attack_self_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "「そ、そこダメっ！\n　#{pleasure_s}」"
  tx["tx1"] = "「や、やぁっ……イっちゃいそうっ……！\n　#{pleasure_cr}」" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "「#{pleasure_l}\n　ま、待って、ちょっと休ませてぇ……\\H\n　#{pleasure_cr}」" if $msg.t_enemy.weaken? #自分が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キッス▼****************************************************************************************
when "キッス"
  tx["tx1"] = "「#{kiss_l}\n　#{target}、キス上手すぎだよぉ……\\H」"
  tx["tx1"] = "「#{kiss_l}\n　もっとぉ……もっとキスしてぇ……\\H」" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "バスト"
  tx["tx1"] = "「#{pleasure_l}\n　そんなにおっぱい弄っちゃダメぇ……っ\\H」"
  tx["tx1"] = "「ダメ、ダメぇっ……！\n　おっぱい感じ過ぎちゃうっ……！\\H」" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "「はぅ……はぅぅ……\\H\n　も、もうおっぱいは許してぇ……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "ヒップ"
  tx["tx1"] = "「ひぃん…っ\\H\n　そ、そこは弄っちゃやだよぉ…！」"
  tx["tx1"] = "「な、なんでぇ……？\n　お尻で気持ちよくなっちゃう……\\H」" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "「ひぃん…っ……\\H\n　も、もうお尻は許してぇ……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "クロッチ"
  if $msg.t_enemy.nude?
    tx["tx1"] = "「あぁんっ……\\H\n　そんな奥まで弄っちゃ…っ……\\H」"
    tx["tx1"] = "「や、やだぁ…っ……\\H\n　気持ちよすぎるよぉ……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
    tx["tx1"] = "「あぁん…っ……\\H\n　も、もう許してぇ…っ……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  else
    tx["tx1"] = "「いやぁん……\\H\n　染みになっちゃうよぉ……\\H」" # 対象が着衣状態の時
    tx["tx1"] = "「あはぁ…っ\\H\n　も、もうそこはいいからぁ…！んくぅ……っ！\\H」" if $msg.t_enemy.crisis? #自分がクライシス 対象が着衣状態の時
    tx["tx1"] = "「あぁん…っ……\\H\n　も、もう弄っちゃやぁ…っ……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中 対象が着衣状態の時
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スクラッチ系▼****************************************************************************************
when "スクラッチ"
  tx["tx1"] = "「だ、だめぇっ……\\H\n　そんなに擦っちゃいやぁっ……\\H」"
  tx["tx1"] = "「#{pleasure_l}\n　ま、待って、そんなに激しくしちゃ……！\n　#{pleasure_s}」" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type
#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class
