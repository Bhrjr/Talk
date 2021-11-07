=begin
#######################################################################################################################
 ●『サキュバス（桃）』マップ口上(チャット)
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





class MsgSuccubus_B < MsgBase
 def msg_map_chat_00
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
#######################################################################################################################
################################################★マップチャット★#####################################################
#######################################################################################################################
#■空腹時口上(３段階)
if $msg.t_enemy.fed <= 20
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("大切な人")
  #====================================================================================================================
    tx["tx1"] = "「あぁん、おなか空いてきちゃったわ。\n　……ね、#{target}の熱いの……今すぐ頂戴？\\H」"
    tx["tx4"] = "#{speaker}は熱っぽい瞳で、\n#{master}の下半身を見ている……！" + "TALKTEXT"

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("寵愛")
  #====================================================================================================================
    tx["tx1"] = "「あぁん、おなか空いてきちゃったわ。\n　……ね、#{target}の熱いの……今すぐ頂戴？\\H」"
    tx["tx4"] = "#{speaker}は熱っぽい瞳で、\n#{master}の下半身を見ている……！" + "TALKTEXT"

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    tx["tx1"] = "「んー……そろそろ食事にしてもいいかしらね。\n　ねぇ、#{target}もそう思わない？」"
    tx["tx4"] = "#{speaker}は熱っぽい瞳で、\n#{master}の下半身を見ている……！" + "TALKTEXT"

  end
  #格納
  ms.push(tx)

#----------------------------------------------------------------------------------------------------------------------
#■気力体力減少中(３段階)
elsif $msg.t_enemy.spp <= 20 or $msg.t_enemy.hpp <= 20
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("大切な人")
  #====================================================================================================================
    tx["tx1"] = "「ねぇ……そろそろ一度戻らない？\n　柔らかいベッドが恋しくなっちゃったわ\\H」"
    tx["tx4"] = "#{speaker}は冗談めいた口調で笑った。\n表情には少々疲労の色が見える……" + "TALKTEXT"

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("寵愛")
  #====================================================================================================================
    tx["tx1"] = "「ねぇ……そろそろ一度戻らない？\n　柔らかいベッドが恋しくなっちゃったわ\\H」"
    tx["tx4"] = "#{speaker}は冗談めいた口調で笑った。\n表情には少々疲労の色が見える……" + "TALKTEXT"

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    tx["tx1"] = "「んー……。\n　そろそろ一度戻りましょうよ。\n　#{myname}、帰って湯浴みがしたいわ」"
    tx["tx4"] = "#{speaker}は大きくため息をついた。\n少々疲労が溜まっているようだ……" + "TALKTEXT"

  end
  #格納
  ms.push(tx)

#----------------------------------------------------------------------------------------------------------------------
#■通常時
else
  #★汎用口上(環境に関わらず出てくる)
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("大切な人")
  #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "「はぁ～あ、こうしてる時間って存外退屈なのよね。\n　誰かさんが襲ってくれないかしら……？」"
    tx["tx4"] = "#{speaker}は退屈そうに欠伸をしつつ、\nちらちらと#{master}を見ている……。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　頑張ってる#{target}に、ちょっとだけご褒美♪」"
    tx["tx4"] = "#{speaker}は#{master}の後ろから急に抱き着いてきた！\n#{master}の背中に柔らかい感触が押し付けられる……！" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「おかしいわね、どこに仕舞い込んだかしら……\n　ああ、何でもないわ、ちょっと探し物よ」"
    tx["tx4"] = "#{speaker}が服の裾をひっくり返すたび、\n豊満な胸がぷるんぷるんと揺れている……。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「～～～♪\n　～～～～～♪」"
    tx["tx4"] = "#{speaker}は何か歌を口ずさんでいる……。\n今は機嫌が良いようだ。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「#{myname}が人間と一緒だなんてね。\n　仲間が見たら何て言うかしら？\n　#{giggle}」"
    tx["tx4"] = "#{speaker}は一人何かを思い出しながら、\n楽しげにくすくす笑っている……。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("寵愛")
  #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "「はぁ～あ、こうしてる時間って存外退屈なのよね。\n　誰かさんが襲ってくれないかしら……？」"
    tx["tx4"] = "#{speaker}は退屈そうに欠伸をしつつ、\nちらちらと#{master}を見ている……。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　頑張ってる#{target}に、ちょっとだけご褒美♪」"
    tx["tx4"] = "#{speaker}は#{master}の後ろから急に抱き着いてきた！\n#{master}の背中に柔らかい感触が押し付けられる……！" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「おかしいわね、どこに仕舞い込んだかしら……\n　ああ、何でもないわ、ちょっと探し物よ」"
    tx["tx4"] = "#{speaker}が服の裾をひっくり返すたび、\n豊満な胸がぷるんぷるんと揺れている……。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「～～～♪\n　～～～～～♪」"
    tx["tx4"] = "#{speaker}は何か歌を口ずさんでいる……。\n今は機嫌が良いようだ。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「#{myname}が人間と一緒だなんてね。\n　仲間が見たら何て言うかしら？\n　#{giggle}」"
    tx["tx4"] = "#{speaker}は一人何かを思い出しながら、\n楽しげにくすくす笑っている……。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "「はぁ～あ……\n　こうしてる時間って、存外暇なのよね。\n　誰か襲って来てくれないかしら……」"
    tx["tx4"] = "#{speaker}は退屈そうに欠伸をしている……。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「…………ふぅ」"
    tx["tx4"] = "#{speaker}は物思いに耽っている。\nそっとしておこう……。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　#{myname}の顔に何か付いてる？\n　それとも……見ていたのは別の場所？」"
    tx["tx4"] = "#{speaker}は#{master}に艶のある笑みを浮かべた……。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「～～～♪\n　～～～～～♪」"
    tx["tx4"] = "#{speaker}は何か歌を口ずさんでいる……。\n今は機嫌が良いようだ。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「#{myname}が人間と一緒だなんてね。\n　仲間が見たら何て言うかしら？\n　#{giggle}」"
    tx["tx4"] = "#{speaker}は一人何かを思い出しながら、\n楽しげにくすくす笑っている……。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
  end




#####場所別はとりあえずコメントアウト#####
=begin
  #====================================================================================================================
  #▼マップ土地口上(説明台詞など)
  #====================================================================================================================
  case $game_map.signboard
  #================================#
  #▼浅き夢の瀬                    #
  #================================#
  when "浅き夢の瀬"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼ポート空間                    #
  #================================#
  when "ポート空間"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼拠点                          #
  #================================#
  when "拠点"
    #▽屋内
    if $game_map.type.include?("屋内")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    #▽屋外
    else
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "「#{target}の家って、ちょっと地味じゃない？\n　もっとこう、煌びやかな飾りとか欲しいわねえ」"
      tx["tx4"] = "#{speaker}は家の外観を見ながら考え込んでいる。\n正確には自分の家ではないのだが……。" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
  #================================#
  #▼酒場                          #
  #================================#
  when "酒場"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼月明かりの樹海                #
  #================================#
  when "月明かりの樹海"
    #▽森林
    if $game_map.type.include?("森林")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　そこら辺の茂みなんかいい感じね。\n　ね……少し休憩して行く？\\H」"
      tx["tx1"] = "「#{giggle}\n　そこら辺の茂みなんかいい感じね。\n　また後で、２人きりで来ない？\\H」" if $game_party.party_actors.size > 2 #パーティが３人以上
      tx["tx4"] = "#{speaker}は#{master}にしな垂れかかると、\n上目遣いに誘惑してきた……" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
    #▽水場
    if $game_map.type.include?("水場")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "「あ、そこ気をつけて。\n　滑りやすくなってるわよ」"
      tx["tx4"] = "#{speaker}が指摘した足元が濡れている。\n注意して進んだほうが良さそうだ……。" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
    #▽暗所
    if $game_map.type.include?("暗所")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "「ね、手を握ってもらえないかしら？\n　暗い場所は怖いの\\H」"
      tx["tx4"] = "#{speaker}はそういうと、\n#{master}の返事も聞かずに腕を絡めてきた。\n……とても怖がっているようには見えない。" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
  #================================#
  #▼闇洞窟                        #
  #================================#
  when "闇洞窟"
    #▽ゴブタウン
    if $game_map.type.include?("屋内")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    #▽洞窟内
    else
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
  #================================#
  #▼魔城トゥーロマンサ            #
  #================================#
  when "魔城トゥーロマンサ"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼獄界オルデオ                        #
  #================================#
  when "獄界オルデオ"
    #▽胎内洞窟
    if $game_map.type.include?("水場")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    #▽洞窟内
    else
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      #  tx["tx1"] = ""
      #  tx["tx4"] = "" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
  #================================#
  #▼教会図書館                    #
  #================================#
  when "教会図書館"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「こういう場所は正直苦手よ、堅苦しくて。\n　用が済んだら早めに行きましょ」"
    tx["tx4"] = "#{speaker}は不機嫌な様子だ……\nやはり居心地が悪いのだろうか？" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「暇人が多いのねえ……。\n　こんなに本ばかり集めてどうするのかしら？」"
    tx["tx4"] = "#{speaker}は本にはあまり興味が無いようだ……。" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼パルフィス密教会              #
  #================================#
  when "パルフィス密教会"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「んん～っ♪\n　いいわね、この空気。\n　上の堅苦しい感じとは大違いよ\\H」"
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「ここは#{myname}の仲間も結構いるけど……\n　露出の高い奴には気をつけなさいね。\n　過激なおもてなしをされちゃうわよ？\\H」"
    tx["tx4"] = "今のは忠告なのか興味本位の発言なのか、\n#{speaker}の表情からはよく判らない……。" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼シルフェ屋敷                  #
  #================================#
  when "シルフェ屋敷"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼混濁したレンディカ            #
  #================================#
  when "混濁したレンディカ"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼ラーミルテリトリー            #
  #================================#
  when "ラーミルテリトリー"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    #  tx["tx1"] = ""
    #  tx["tx4"] = "" + "TALKTEXT"
    #格納
    ms.push(tx)
  end
=end
#####場所別はとりあえずコメントアウト#####

end
#######################################################################################################################
 end #def
end #class
