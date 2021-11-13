=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』絶頂口上（対パートナー）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,09.05     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

#######################################################################################################################
####################################★絶頂：絶頂する(した)パートナーに向けた口上群#####################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
 def msg_female_ecstasy_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"#{giggle}\""
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{giggle} You must be at your limit by now.\n You need to be more obedient to your inner desires;\n nothing good's to be gained from refusing pleasure\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"You know very well you can't escape, #{target}.\n Even a slight touch makes you like this....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB

##################################
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
##################################

  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"Expose everything about yourself,\n staying true to your lust for my body....\n I'll show you what heaven is like....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"#{giggle} Spacing out like that....\\H\n For you to look enraptured and panting must've meant\n it felt that much good.... So adorable....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"#{giggle} What's the matter?\n Squealing in such lovely voice just\n makes me want to keep holding on to you....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB

##################################
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
##################################

  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"In order that you make an even better face,\n I'm going to dote on you even more\\H\n Just relax and hand your body over to me....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"#{giggle} While it's still too early for bedtime....\n I'll let it slide since it doesn't bother me, the playmate\\H\""
  tx["tx2"] = "\"....Say, #{partner}?\n You mind if you take over for\n #{target} here? \\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
end
#格納
ms.push(tx)


#★専用★==============================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
when 1 #初撃
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
end
#格納
ms.push(tx)

#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class











#######################################################################################################################
####################################★絶頂：絶頂する(した)パートナーに向けた口上群####################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
 def msg_female_bedin_ecstasy_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"#{giggle}\""
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}

#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{giggle} You must be at your limit by now.\n You need to be more obedient to your inner desires;\n nothing good's to be gained from refusing pleasure\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"You know very well you can't escape, #{target}.\n Even a slight touch makes you like this....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB

##################################
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
##################################

  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"Expose everything about yourself,\n staying true to your lust for my body....\n I'll show you what heaven is like....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"#{giggle} Spacing out like that....\\H\n In order that you make an even better face,\n I'm going to dote on you even more....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"#{giggle} What's the matter?\n Squealing in such lovely voice just\n makes me want to keep holding on to you....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB

##################################
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
##################################

  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"In order that you make an even better face,\n I'm going to dote on you even more\\H\n Just relax and hand your body over to me....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"#{giggle} While it's still too early for bedtime....\n I'll let it slide since it doesn't bother me, the playmate\\H\""
  tx["tx2"] = "\"....Say, #{partner}?\n You mind if you take over for\n #{target} here? \\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
end
#格納
ms.push(tx)


#★専用★==============================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
when 1 #初撃
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
end
#格納
ms.push(tx)















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{giggle} You must be at your limit by now.\n You need to be more obedient to your inner desires;\n nothing good's to be gained from refusing pleasure\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"You know very well you can't escape, #{target}.\n Even a slight touch makes you like this....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB

##################################
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
##################################

  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"Expose everything about yourself,\n staying true to your lust for my body....\n I'll show you what heaven is like....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"#{giggle} Spacing out like that....\\H\n In order that you make an even better face,\n I'm going to dote on you even more....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"#{giggle} What's the matter?\n Squealing in such lovely voice just\n makes me want to keep holding on to you....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB

##################################
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
##################################

  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"In order that you make an even better face,\n I'm going to dote on you even more\\H\n Just relax and hand your body over to me....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"#{giggle} While it's still too early for bedtime....\n I'll let it slide since it doesn't bother me, the playmate\\H\""
  tx["tx2"] = "\"....Say, #{partner}?\n You mind if you take over for\n #{target} here? \\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
end
#格納
ms.push(tx)


#★専用★==============================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
when 1 #初撃
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
end
#格納
ms.push(tx)














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{giggle} You must be at your limit by now.\n You need to be more obedient to your inner desires;\n nothing good's to be gained from refusing pleasure\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"You know very well you can't escape, #{target}.\n Even a slight touch makes you like this....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB

##################################
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
##################################

  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"Expose everything about yourself,\n staying true to your lust for my body....\n I'll show you what heaven is like....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"#{giggle} Spacing out like that....\\H\n In order that you make an even better face,\n I'm going to dote on you even more....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"#{giggle} What's the matter?\n Squealing in such lovely voice just\n makes me want to keep holding on to you....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB

##################################
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
##################################

  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"In order that you make an even better face,\n I'm going to dote on you even more\\H\n Just relax and hand your body over to me....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"#{giggle} While it's still too early for bedtime....\n I'll let it slide since it doesn't bother me, the playmate\\H\""
  tx["tx2"] = "\"....Say, #{partner}?\n You mind if you take over for\n #{target} here? \\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
end
#格納
ms.push(tx)


#★専用★==============================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
when 1 #初撃
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
end
#格納
ms.push(tx)






end

#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class
