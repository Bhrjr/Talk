=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』ホールド絶頂口上（対パートナー）
 ●性格：陽気
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
 def msg_female_ecstasy_hold_07
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "「#{giggle}」"
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
  tx["tx1"] = "「#{giggle}　もう声も我慢できないのね\\H\n　ほら……気持ちいいところに集中しなさい、\n　一番高いところにトばしてあげる……\\H」"
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
  tx["tx1"] = "「しっかり捕まえておいてあげる……\n　気持ちいいことから逃げるだなんて、\n　そんなにもったいないことないもの……\\H」"
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
  tx["tx1"] = "「もういくら耐えようとしたってだめよ、\n　このまま#{myname}に溺れさせてあげるわ……\\H」"
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
  tx["tx1"] = "「#{giggle}　カラダの訴えに従えば、\n　どこまでも気持ちよくなれるわ……\n　さあ、イきなさい……\\H」"
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
  tx["tx1"] = "「#{giggle}\n　どうだった？　天国、見えたかしら\\H」"
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
  tx["tx1"] = "「#{giggle}\n　あんまり強く腰が跳ねるんだもの、\n　思わずゾクゾクしちゃった……\\H」"
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
  tx["tx1"] = "「もっと色々なところで気持ちよくなりたいでしょう？\n　どこでシてほしいか、言ってごらんなさい？\n　その淫らな願望、すべて満たしてあげる……\\H」"
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
  tx["tx1"] = "「これで満足？　まさか、もっとシてほしいでしょう？\n　#{myname}のカラダに溺れるまで、\n　#{target}のことかわいがってあげる……\\H」"
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
  tx["tx1"] = "「#{giggle}　おやすみの時間には早いのだけど……\n　遊ぶ相手には困らないもの、見逃してあげる\\H」"
  tx["tx2"] = "「……ねぇ、#{partner}？\n　#{target}の分も、\n　たっぷり付き合ってちょうだい？\\H」"
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
 def msg_female_bedin_ecstasy_hold_07
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "「#{giggle_s}」"
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
if $msg.t_enemy.have_ability?("大切な人")
#====================================================================================================================
case $msg.talk_step
#★専用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
elsif $msg.t_enemy.have_ability?("寵愛")
#====================================================================================================================
case $msg.talk_step
#★専用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
  tx["tx1"] = "「#{giggle_s}……\\H」"
  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
