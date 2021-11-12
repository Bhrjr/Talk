=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』絶頂口上（対主人公）
 ●性格：陽気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,09.05     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

#######################################################################################################################
####################################★絶頂：絶頂する(した)主人公に向けた口上群#########################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
 def msg_ecstasy_07
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
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "「#{giggle}　我慢なんてしなくていいわ……\n　身を包む心地よさに任せて、カラダが求めるまま、\n　ただ快楽を貪るの……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "「#{target}はもう逃げられない、\n　こうして絡め取られて弄ばれるしかないの」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "「今、楽にしてあげる……\\H　#{target}の内で滾る欲望、\n　すべて吐き出しなさい……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "「ぴちゅ……\\H　#{giggle}\n　たくさん出したわね……\\H　熱くて、臭くて……\n　どろどろに煮詰まった、素敵な欲望の味……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「弄ばれるのはどうだったかしら？\n　嬉しい？　悔しい？　……#{giggle_s}\\H\n　そんなことどうでもいいくらい、気持ちよかった？」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "「意固地な#{target}が\n　もっと自分の欲望に忠実になれるように、#{myname}が\n　最高の快楽をあげる\\H　さあ、力を抜いて……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle}　いい顔になったわね\\H\n　もう何も考えられない、快楽だけを求める顔……\\H」"
  tx["tx2"] = "「何もかも忘れて、#{myname}に溺れるといいわ……\n　さあ……このカラダ、好きなだけ貪りなさい……\\H」"
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
####################################★絶頂：絶頂する(した)主人公に向けた口上群#########################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
 def msg_bedin_ecstasy_07
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
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "「#{giggle}　我慢なんてしなくていいわ……\n　身を包む心地よさに任せて、カラダが求めるまま、\n　ただ快楽を貪るの……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "「#{target}はもう逃げられない、\n　こうして絡め取られて弄ばれるしかないの」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "「今、楽にしてあげる……\\H　#{target}の内で滾る欲望、\n　すべて吐き出しなさい……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "「ぴちゅ……\\H　#{giggle}\n　たくさん出したわね……\\H　熱くて、臭くて……\n　どろどろに煮詰まった、素敵な欲望の味……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「弄ばれるのはどうだったかしら？\n　嬉しい？　悔しい？　……#{giggle_s}\\H\n　そんなことどうでもいいくらい、気持ちよかった？」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "「意固地な#{target}が\n　もっと自分の欲望に忠実になれるように、#{myname}が\n　最高の快楽をあげる\\H　さあ、力を抜いて……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle}　いい顔になったわね\\H\n　もう何も考えられない、快楽だけを求める顔……\\H」"
  tx["tx2"] = "「何もかも忘れて、#{myname}に溺れるといいわ……\n　さあ……このカラダ、好きなだけ貪りなさい……\\H」"
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
elsif $msg.t_enemy.have_ability?("寵愛")
#====================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "「#{giggle}　我慢なんてしなくていいわ……\n　身を包む心地よさに任せて、カラダが求めるまま、\n　ただ快楽を貪るの……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "「#{target}はもう逃げられない、\n　こうして絡め取られて弄ばれるしかないの」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "「今、楽にしてあげる……\\H　#{target}の内で滾る欲望、\n　すべて吐き出しなさい……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "「ぴちゅ……\\H　#{giggle}\n　たくさん出したわね……\\H　熱くて、臭くて……\n　どろどろに煮詰まった、素敵な欲望の味……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「弄ばれるのはどうだったかしら？\n　嬉しい？　悔しい？　……#{giggle_s}\\H\n　そんなことどうでもいいくらい、気持ちよかった？」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "「意固地な#{target}が\n　もっと自分の欲望に忠実になれるように、#{myname}が\n　最高の快楽をあげる\\H　さあ、力を抜いて……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle}　いい顔になったわね\\H\n　もう何も考えられない、快楽だけを求める顔……\\H」"
  tx["tx2"] = "「何もかも忘れて、#{myname}に溺れるといいわ……\n　さあ……このカラダ、好きなだけ貪りなさい……\\H」"
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
  tx["tx1"] = "「#{giggle}　我慢なんてしなくていいわ……\n　身を包む心地よさに任せて、カラダが求めるまま、\n　ただ快楽を貪るの……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "「#{target}はもう逃げられない、\n　こうして絡め取られて弄ばれるしかないの」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "「#{giggle_s}……\\H」" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "「今、楽にしてあげる……\\H　#{target}の内で滾る欲望、\n　すべて吐き出しなさい……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "「ぴちゅ……\\H　#{giggle}\n　たくさん出したわね……\\H　熱くて、臭くて……\n　どろどろに煮詰まった、素敵な欲望の味……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「弄ばれるのはどうだったかしら？\n　嬉しい？　悔しい？　……#{giggle_s}\\H\n　そんなことどうでもいいくらい、気持ちよかった？」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "「意固地な#{target}が\n　もっと自分の欲望に忠実になれるように、#{myname}が\n　最高の快楽をあげる\\H　さあ、力を抜いて……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle}　いい顔になったわね\\H\n　もう何も考えられない、快楽だけを求める顔……\\H」"
  tx["tx2"] = "「何もかも忘れて、#{myname}に溺れるといいわ……\n　さあ……このカラダ、好きなだけ貪りなさい……\\H」"
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
