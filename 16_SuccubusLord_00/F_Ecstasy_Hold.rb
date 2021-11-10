=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』ホールド絶頂口上（対パートナー）
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
 def msg_female_ecstasy_hold_00
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
#★専用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{giggle} So you can't even hold down voice anymore\\H\n ....Just focus on the pleasure and\n I'll lead you to the greatest height....\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"I'm going to keep a tight hold on you....\n You won't be doing anything so wasteful as\n running away from the pleasure....\\H\""
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 7 #本人追撃(一部のみ)
  tx["tx1"] = "\" It doesn't matter how much you try and endure it.\n I'll have you succumb to me like this....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"#{giggle} Yielding to the urges of your body will\n make it feel great everywhere....\n Now cum....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"#{giggle}\n How was it? Did you get to see what heaven is like? \\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"#{giggle}\n Bouncing my hips too strongly\n really made me shiver....\\H\""
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"Don't you want to be pleasured in even more places?\n Tell me where you want me to do it and\n I'll gratify all that lustful desires of yours....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 21 #続行(ホールド継続)
  tx["tx1"] = "\"Was that enough for you? Or you want more, perhaps?\n Let me dote on you until\n you succumb to my body....\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"#{giggle} While it's still too early for bedtime....\n I'll let it slide since it doesn't bother me, the playmate\\H\""
  tx["tx2"] = "\"....Say, #{partner}?\n You mind if you take over for\n #{target} here? \\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
end
#格納
ms.push(tx)


#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class



#######################################################################################################################
####################################★絶頂：絶頂する(した)パートナーに向けた口上群#####################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
 def msg_female_bedin_ecstasy_hold_00
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
case $msg.talk_step
#★専用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if @doppel_cp == true #仕掛け手が同種族
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "Angry" #仕掛け手が同種族・パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 7 #本人追撃(一部のみ)
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if @doppel_cp == true #仕掛け手が同種族
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "Angry" #仕掛け手が同種族・パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 21 #続行(ホールド継続)
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
end
#格納
ms.push(tx)
















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
case $msg.talk_step
#★専用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if @doppel_cp == true #仕掛け手が同種族
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "Angry" #仕掛け手が同種族・パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 7 #本人追撃(一部のみ)
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if @doppel_cp == true #仕掛け手が同種族
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "Angry" #仕掛け手が同種族・パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 21 #続行(ホールド継続)
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
end
#格納
ms.push(tx)















#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
case $msg.talk_step
#★専用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if @doppel_cp == true #仕掛け手が同種族
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "Angry" #仕掛け手が同種族・パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 7 #本人追撃(一部のみ)
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if @doppel_cp == true #仕掛け手が同種族
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "Angry" #仕掛け手が同種族・パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 21 #続行(ホールド継続)
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"#{giggle_s}....\\H\""
  tx["tx1"] = "\"#{giggle_s}....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
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
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
end
#格納
ms.push(tx)







end

#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class
