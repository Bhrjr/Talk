=begin
#######################################################################################################################
 ●『インプ（緑）』追撃口上（対パートナー・通常戦闘中）
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,08/15     line30のエラー潰し。
#######################################################################################################################
=end





#######################################################################################################################
######################################★追撃：パートナーへの追撃を行う口上群###########################################
#######################################################################################################################
class MsgImp_A < MsgBase
 def msg_female_attack_05
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "「えへへっ、#{myname}がしてあげる♪」"
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "「ね、#{target}、\n　もっと気持ちよくなってぇ\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "キス"
  tx["tx1"] = "「んちゅ～～っ\\H\n　あはっ、もっとぶちゅーってしていいよぉ\\H」"
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
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
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
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.at_parts == "対象：口" #援護キッス
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
class MsgImp_A < MsgBase
 def msg_female_attack_hold_05
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "「あ、こうしたら気持ちいいの？\n　んじゃ、もっとやったげるね♪」"
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼シェルマッチ▼****************************************************************************************
when "貝合わせ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "騎乗：アソコ側"
  tx["tx1"] = "「あははっ、おうまさんパカパカ～♪」"
  tx["tx1"] = "「あ～、だめだよ、#{myname}がやるんだから！\n　#{target}はうごかないでいいのっ！」" if $game_variables[17] > 50 #パターンB
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
  tx["tx1"] = "「#{kiss_l}」"
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
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
class MsgImp_A < MsgBase
 def msg_female_attack_self_05
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "「んんっ\\H\n　#{target}、くすぐったいよぉ……あんっ\\H」"
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
when "キッス"
  tx["tx1"] = "「んちゅーっ……\\H\n　……ぷはっ……\\H」"
  tx["tx1"] = "「ん……ちゅっ……ちゅぅ……\n　ねぇ#{target}……#{myname}これすきぃ……\\H\n　もっとやってぇ……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "バスト"
  tx["tx1"] = "「あはっ、くすぐったいよぉ♪\n　……ぁんっ\\H」"
  tx["tx1"] = "「んっ……んふぅ……っ\\H\n　#{target}、そんなにいじっちゃいやぁ……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "ヒップ"
  tx["tx1"] = "「あはっ、くすぐったいよぉ♪\n　……ぁんっ\\H」"
  tx["tx1"] = "「んっ……ぁはぁ……\\H\n　#{target}、おしりつつかないでぇ……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "クロッチ"
  tx["tx1"] = "「あははっ、くすぐったいよ#{target}♪\n　……ぁんっ\\H」"
  tx["tx1"] = "「あははっ、ぐりぐりしちゃいやぁ♪\n　……ぁんっ\\H」" unless $msg.t_target.nude? # 対象が着衣状態の時
  tx["tx1"] = "「あ……ん………ふぁ……\\H\n　#{target}、もっとやってぇ……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スクラッチ系▼****************************************************************************************
when "スクラッチ"
  tx["tx1"] = "「あぁんっ……\\H\n　おまたがぴりぴりするぅ……\\H」"
  tx["tx1"] = "「あっ……あっ……！\\H\n　お、おまた動かしちゃいやぁ……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type
#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class
