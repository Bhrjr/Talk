=begin
#######################################################################################################################
 ●『デビル（緑）』絶頂口上（対主人公）
 ●性格：虚勢
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,09.05     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

#######################################################################################################################
####################################★絶頂：絶頂する(した)主人公に向けた口上群#########################################
#######################################################################################################################
class MsgDevil_A < MsgBase
 def msg_ecstasy_11
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
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "「#{giggle_s}、どうしたんだい？\n　言いたいことがあるなら言ってみな？」"
  tx["tx1"] = "「#{giggle_s}、どうしたんだい？\n　まさかもう限界……なんて言わないよな？」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle}\n　#{target}の実力はこんなものかい？\n　少し期待しすぎてたかな」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "「おっと……。\n　逃げようったってそうは行かないぜ？\n　大人しく#{myname}達にイかされな\\H」"
  tx["tx1"] = "「あ、こら！\n　今いい所なんだって！\n　……ったく、もう少し空気読んでくれよ」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "「……ま、あまり虐めないでやるか♪\n　んじゃ、気持ちよくイっちまいな♪」"
  tx["tx1"] = "「……ま、あまり虐めないでやるか♪\n　んじゃ、気持ちよくイっちまいな♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「ま、#{myname}相手じゃ仕方ないか。\n　んじゃ、気持ちよくイかせてやるぜ\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "「ふふ、ふ……\\H\n　随分溜め込んでたな？\n　こんなに真っ白にしてくれやがって……\\H」"
  tx["tx1"] = "「ふふ、ふ……\\H\n　随分溜め込んでたな？\n　こんなに真っ白にしてくれやがって……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle_s}、気持ちよくなれたかい？\n　おっと、礼はいらないぜ♪」" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "「#{giggle_s}、気持ちよくなれたかい？\n　おっと、礼はいらないぜ♪」" if $msg.t_enemy.ecstasy_emotion == "怒" and $game_switches[97] == true #連携が発生していた場合パターンB
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「#{giggle_s}、#{myname}ら相手じゃこんなもんか？\n　ま、少しは頑張ってほうじゃないのかねぇ」"
  tx["tx1"] = "「ちぇっ、結局美味しいところ取りかよ。\n　ええい、次は余計なことすんなよ！」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
    tx["tx1"] = "「あ……はぁ……\\H\n　どんだけ溜め込んでたんだよ、まだ中で出てやがる……\\H」"
    tx["tx1"] = "「うあっ……\\H\n　こ、この～……もう少しゆっくりさせろよな？\n　欲求不満になるぞ、おい……」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(非ホールド時はホールド解除と同じstep)
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」"
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" and $game_switches[97] == true #連携が発生していた場合パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle_s}、さ、続きといくか。\n　……まさかこれで終りとか思ってないよな？\n　心配するな、枯れる手前くらいで止めてやる\\H」"
  tx["tx1"] = "「#{giggle_s}、さ、続きといくか。\n　……まさかこれで終りとか思ってないよな？\n　心配するな、枯れる手前くらいで止めてやる\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「……んじゃ、次は#{myname}の番だな。\n　今日は腰が抜けるまでヤってみようじゃないか\\H」" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "「さぁて、んじゃ次は#{myname}な？\n　今日は目いっぱい楽しませてもらおうぜ。\n　なあ？」" if $msg.t_enemy.ecstasy_emotion == "怒" and $game_switches[97] == true #連携が発生していた場合パターンB
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
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
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
class MsgDevil_A < MsgBase
 def msg_bedin_ecstasy_11
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
  tx["tx1"] = "「#{giggle_s}、どうしたんだい？\n　言いたいことがあるなら言ってみな？」"
  tx["tx1"] = "「#{giggle_s}、どうしたんだい？\n　まさかもう限界……なんて言わないよな？」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle}\n　#{target}の実力はこんなものかい？\n　少し期待しすぎてたかな」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "「おっと……。\n　逃げようったってそうは行かないぜ？\n　大人しく#{myname}達にイかされな\\H」"
  tx["tx1"] = "「あ、こら！\n　今いい所なんだって！\n　……ったく、もう少し空気読んでくれよ」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "「……ま、あまり虐めないでやるか♪\n　んじゃ、気持ちよくイっちまいな♪」"
  tx["tx1"] = "「……ま、あまり虐めないでやるか♪\n　んじゃ、気持ちよくイっちまいな♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「ま、#{myname}相手じゃ仕方ないか。\n　んじゃ、気持ちよくイかせてやるぜ\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "「ふふ、ふ……\\H\n　随分溜め込んでたな？\n　こんなに真っ白にしてくれやがって……\\H」"
  tx["tx1"] = "「ふふ、ふ……\\H\n　随分溜め込んでたな？\n　こんなに真っ白にしてくれやがって……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle_s}、気持ちよくなれたかい？\n　おっと、礼はいらないぜ♪」" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "「#{giggle_s}、気持ちよくなれたかい？\n　おっと、礼はいらないぜ♪」" if $msg.t_enemy.ecstasy_emotion == "怒" and $game_switches[97] == true #連携が発生していた場合パターンB
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「#{giggle_s}、#{myname}ら相手じゃこんなもんか？\n　ま、少しは頑張ってほうじゃないのかねぇ」"
  tx["tx1"] = "「ちぇっ、結局美味しいところ取りかよ。\n　ええい、次は余計なことすんなよ！」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
    tx["tx1"] = "「あ……はぁ……\\H\n　どんだけ溜め込んでたんだよ、まだ中で出てやがる……\\H」"
    tx["tx1"] = "「うあっ……\\H\n　こ、この～……もう少しゆっくりさせろよな？\n　欲求不満になるぞ、おい……」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(非ホールド時はホールド解除と同じstep)
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」"
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" and $game_switches[97] == true #連携が発生していた場合パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle_s}、さ、続きといくか。\n　……まさかこれで終りとか思ってないよな？\n　心配するな、枯れる手前くらいで止めてやる\\H」"
  tx["tx1"] = "「#{giggle_s}、さ、続きといくか。\n　……まさかこれで終りとか思ってないよな？\n　心配するな、枯れる手前くらいで止めてやる\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「……んじゃ、次は#{myname}の番だな。\n　今日は腰が抜けるまでヤってみようじゃないか\\H」" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "「さぁて、んじゃ次は#{myname}な？\n　今日は目いっぱい楽しませてもらおうぜ。\n　なあ？」" if $msg.t_enemy.ecstasy_emotion == "怒" and $game_switches[97] == true #連携が発生していた場合パターンB
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
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
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
  tx["tx1"] = "「#{giggle_s}、どうしたんだい？\n　言いたいことがあるなら言ってみな？」"
  tx["tx1"] = "「#{giggle_s}、どうしたんだい？\n　まさかもう限界……なんて言わないよな？」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle}\n　#{target}の実力はこんなものかい？\n　少し期待しすぎてたかな」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "「おっと……。\n　逃げようったってそうは行かないぜ？\n　大人しく#{myname}達にイかされな\\H」"
  tx["tx1"] = "「あ、こら！\n　今いい所なんだって！\n　……ったく、もう少し空気読んでくれよ」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "「……ま、あまり虐めないでやるか♪\n　んじゃ、気持ちよくイっちまいな♪」"
  tx["tx1"] = "「……ま、あまり虐めないでやるか♪\n　んじゃ、気持ちよくイっちまいな♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「ま、#{myname}相手じゃ仕方ないか。\n　んじゃ、気持ちよくイかせてやるぜ\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "「ふふ、ふ……\\H\n　随分溜め込んでたな？\n　こんなに真っ白にしてくれやがって……\\H」"
  tx["tx1"] = "「ふふ、ふ……\\H\n　随分溜め込んでたな？\n　こんなに真っ白にしてくれやがって……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle_s}、気持ちよくなれたかい？\n　おっと、礼はいらないぜ♪」" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "「#{giggle_s}、気持ちよくなれたかい？\n　おっと、礼はいらないぜ♪」" if $msg.t_enemy.ecstasy_emotion == "怒" and $game_switches[97] == true #連携が発生していた場合パターンB
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「#{giggle_s}、#{myname}ら相手じゃこんなもんか？\n　ま、少しは頑張ってほうじゃないのかねぇ」"
  tx["tx1"] = "「ちぇっ、結局美味しいところ取りかよ。\n　ええい、次は余計なことすんなよ！」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
    tx["tx1"] = "「あ……はぁ……\\H\n　どんだけ溜め込んでたんだよ、まだ中で出てやがる……\\H」"
    tx["tx1"] = "「うあっ……\\H\n　こ、この～……もう少しゆっくりさせろよな？\n　欲求不満になるぞ、おい……」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(非ホールド時はホールド解除と同じstep)
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」"
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" and $game_switches[97] == true #連携が発生していた場合パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle_s}、さ、続きといくか。\n　……まさかこれで終りとか思ってないよな？\n　心配するな、枯れる手前くらいで止めてやる\\H」"
  tx["tx1"] = "「#{giggle_s}、さ、続きといくか。\n　……まさかこれで終りとか思ってないよな？\n　心配するな、枯れる手前くらいで止めてやる\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「……んじゃ、次は#{myname}の番だな。\n　今日は腰が抜けるまでヤってみようじゃないか\\H」" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "「さぁて、んじゃ次は#{myname}な？\n　今日は目いっぱい楽しませてもらおうぜ。\n　なあ？」" if $msg.t_enemy.ecstasy_emotion == "怒" and $game_switches[97] == true #連携が発生していた場合パターンB
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
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
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
  tx["tx1"] = "「#{giggle_s}、どうしたんだい？\n　言いたいことがあるなら言ってみな？」"
  tx["tx1"] = "「#{giggle_s}、どうしたんだい？\n　まさかもう限界……なんて言わないよな？」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle}\n　#{target}の実力はこんなものかい？\n　少し期待しすぎてたかな」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "「おっと……。\n　逃げようったってそうは行かないぜ？\n　大人しく#{myname}達にイかされな\\H」"
  tx["tx1"] = "「あ、こら！\n　今いい所なんだって！\n　……ったく、もう少し空気読んでくれよ」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "「……ま、あまり虐めないでやるか♪\n　んじゃ、気持ちよくイっちまいな♪」"
  tx["tx1"] = "「……ま、あまり虐めないでやるか♪\n　んじゃ、気持ちよくイっちまいな♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「ま、#{myname}相手じゃ仕方ないか。\n　んじゃ、気持ちよくイかせてやるぜ\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "「ふふ、ふ……\\H\n　随分溜め込んでたな？\n　こんなに真っ白にしてくれやがって……\\H」"
  tx["tx1"] = "「ふふ、ふ……\\H\n　随分溜め込んでたな？\n　こんなに真っ白にしてくれやがって……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{giggle_s}、気持ちよくなれたかい？\n　おっと、礼はいらないぜ♪」" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "「#{giggle_s}、気持ちよくなれたかい？\n　おっと、礼はいらないぜ♪」" if $msg.t_enemy.ecstasy_emotion == "怒" and $game_switches[97] == true #連携が発生していた場合パターンB
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「#{giggle_s}、#{myname}ら相手じゃこんなもんか？\n　ま、少しは頑張ってほうじゃないのかねぇ」"
  tx["tx1"] = "「ちぇっ、結局美味しいところ取りかよ。\n　ええい、次は余計なことすんなよ！」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
    tx["tx1"] = "「あ……はぁ……\\H\n　どんだけ溜め込んでたんだよ、まだ中で出てやがる……\\H」"
    tx["tx1"] = "「うあっ……\\H\n　こ、この～……もう少しゆっくりさせろよな？\n　欲求不満になるぞ、おい……」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(非ホールド時はホールド解除と同じstep)
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」"
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "「……おっと、まだ元気じゃないか？\n　ふふ、まだまだ楽しめそうだな……\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" and $game_switches[97] == true #連携が発生していた場合パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle_s}、さ、続きといくか。\n　……まさかこれで終りとか思ってないよな？\n　心配するな、枯れる手前くらいで止めてやる\\H」"
  tx["tx1"] = "「#{giggle_s}、さ、続きといくか。\n　……まさかこれで終りとか思ってないよな？\n　心配するな、枯れる手前くらいで止めてやる\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「……んじゃ、次は#{myname}の番だな。\n　今日は腰が抜けるまでヤってみようじゃないか\\H」" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "「さぁて、んじゃ次は#{myname}な？\n　今日は目いっぱい楽しませてもらおうぜ。\n　なあ？」" if $msg.t_enemy.ecstasy_emotion == "怒" and $game_switches[97] == true #連携が発生していた場合パターンB
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
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
end
#格納
ms.push(tx)






end

#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class
