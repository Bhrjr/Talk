=begin
#######################################################################################################################
 ●『インプ（緑）』マップ口上(チャット)
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





class MsgImp_A < MsgBase
 def msg_map_chat_05
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
    tx["tx1"] = "「ねぇ、#{target}……。\n　#{myname}、おなか空いちゃった……\\H\n　#{target}の熱いミルク、ちょうだい？\\H」"
    tx["tx4"] = "#{speaker}は悪戯っぽい笑みを浮かべ、\n#{master}の下半身をさすってきた……！" + "TALKTEXT"

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("寵愛")
  #====================================================================================================================
    tx["tx1"] = "「ねぇ、#{target}……。\n　#{myname}、おなか空いちゃったな～？\\H」"
    tx["tx4"] = "#{speaker}が#{master}に抱きついてきた！" + "TALKTEXT"

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    tx["tx1"] = "「ねぇ、#{target}……。\n　#{myname}、おなか空いちゃったよぉ……。\n　何か食べるものないかなあ？」"
    tx["tx4"] = "#{speaker}は空腹のようだ……。" + "TALKTEXT"

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
    tx["tx1"] = "「ねぇ、#{target}……。\n　ちょっとだけ、休んじゃダメ……？」"
    tx["tx4"] = "#{speaker}が腕にしがみついてきた。\n思っているより疲労していたようだ……" + "TALKTEXT"

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("寵愛")
  #====================================================================================================================
    tx["tx1"] = "「ねぇ、#{target}……。\n　ちょっとだけ、休んじゃダメ……？」"
    tx["tx4"] = "#{speaker}が腕にしがみついてきた。\n思っているより疲労していたようだ……" + "TALKTEXT"

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    tx["tx1"] = "「あ～ん、#{myname}疲れたぁ……。\n　#{target}、おうちに帰ろうよぉ……」"
    tx["tx4"] = "#{speaker}が服の裾を引っ張ってきた。\nどうやら疲労しているようだ……。" + "TALKTEXT"

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
    tx["tx1"] = "「#{target}、早く行こうよっ♪\n　#{myname}、大活躍しちゃうからね\\H」"
    tx["tx4"] = "#{speaker}は弾けるような笑顔で、\n#{master}に抱きついてきた！" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「ねぇねぇ#{target}、\n　#{target}って、ちっちゃい子は好き？」"
    tx["tx4"] = "#{speaker}は興味津々な顔で、\n#{master}の返答を今か今かと待っている。\nどう応えたものか、非常に悩ましい……" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「あぁ～ん、どこ行っちゃったのかなあ……？\n　あ、#{target}、アレどこやったか知らない？」"
    tx["tx4"] = "#{speaker}は上目遣いに、\n#{master}の服の裾を引っ張ってきた。\n……#{speaker}の平坦な胸がちらちらと見える。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「ふんふふ～ん♪\n　る～らら～りら～♪」"
    tx["tx4"] = "#{speaker}が調子の外れた歌を歌っている。\n今は機嫌が良いようだ。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「おともだち、元気にしてるかな～？\n　ね、今度遊びにいってもいい？\n　もちろん、#{target}もいっしょで\\H」"
    tx["tx4"] = "#{speaker}は屈託の無い笑顔を向けてきた。\n……#{speaker}の友人となると、やはり……。\nさて、どう返答したものだろうか？" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("寵愛")
  #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "「#{target}、早く行こうよっ♪\n　#{myname}、大活躍しちゃうからね\\H」"
    tx["tx4"] = "#{speaker}は弾けるような笑顔で、\n#{master}に抱きついてきた！" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「ねぇねぇ#{target}、\n　#{target}って、ちっちゃい子は好き？」"
    tx["tx4"] = "#{speaker}は興味津々な顔で、\n返答を今か今かと待っている。\nどう応えたものか、非常に悩ましい……" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「あぁ～ん、どこ行っちゃったのかなあ……？\n　あ、#{target}、アレどこやったか知らない？」"
    tx["tx4"] = "#{speaker}は上目遣いに、\n#{master}の服の裾を引っ張ってきた。\n……#{speaker}の平坦な胸がちらちらと見える。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「ふんふふ～ん♪\n　る～らら～りら～♪」"
    tx["tx4"] = "#{speaker}が調子の外れた歌を歌っている。\n今は機嫌が良いようだ。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「おともだち、元気にしてるかな～？\n　ね、今度遊びにいってもいい？\n　もちろん、#{target}もいっしょで\\H」"
    tx["tx4"] = "#{speaker}は屈託の無い笑顔を向けてきた。\n……#{speaker}の友人となると、やはり……。\nさて、どう返答したものだろうか？" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "「ねぇねぇ、#{target}！\n　あれ何かな？見てみようよ♪」"
    tx["tx4"] = "何かを見つけた#{speaker}が、\n急に腕を引っ張ってきた！\n……いきなりは正直止めて欲しい。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「ねぇねぇ#{target}～？\n　何か面白いことな～い～？\n　#{myname}、つまんなぁい……」"
    tx["tx4"] = "#{speaker}は退屈そうに、\n足と尻尾をばたばたさせている……。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「…………む～……」"
    tx["tx4"] = "#{speaker}は難しい顔をして唸っている……\n今はそっとしておこう……" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「ふんふふ～ん♪\n　る～らら～りら～♪」"
    tx["tx4"] = "#{speaker}が調子の外れた歌を歌っている。\n今は機嫌が良いようだ。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「おともだち、元気にしてるかな～？\n　今度遊びにいこうかな～？」"
    tx["tx4"] = "#{speaker}は一人何かを思い出しながら、\nあーでもないこーでもないと考え込んでいる……。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
  end





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
      tx["tx1"] = "「ねぇねぇ、#{target}♪\n　あそこでかくれんぼしようよ♪」"
      tx["tx4"] = "#{speaker}は寝室を指差して、\n服の裾を引っ張ってきた……" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "あっ、これ美味しそう！\n　ね、ね、#{target}！これ食べていいよね？"
      tx["tx4"] = "#{speaker}は返答も待たず、\n見つけた菓子を美味しそうに頬張っている……" + "TALKTEXT"
      #格納
      ms.push(tx)
    #▽屋外
    else
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　#{target}、かくれんぼしよっ♪\n　#{target}が鬼ね！それっ、逃げろ～っ♪」"
      tx["tx4"] = "#{speaker}は返答を待たずに逃げ出した！\n……タルの隙間から、楽しげに揺れる尻尾が見える。\n……付き合ってやるべきだろうか？" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "「ね、#{target}。\n　おうちの壁、なんだか真っ白でさびしいね。\n　#{myname}がお絵かきしてあげよっか？」"
      tx["tx4"] = "#{speaker}は目を輝かせている……。\nさて、どうやって諦めさせようか……？" + "TALKTEXT"
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
    tx["tx1"] = "「あ、みんな美味しそうなジュース飲んでる！\n　ね、#{target}！\n　#{myname}も何か飲みた～い♪」"
    tx["tx4"] = "#{speaker}はカウンターを見て飛び跳ねている。\n#{speaker}が飲めそうなものはあっただろうか？" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「わ～、いろんな人がいる～♪\n　あっ、うさぎさんだ、こんにちはっ\\H」"
    tx["tx4"] = "#{speaker}はバニーガールが気に入ったのか、\nしきりに彼女のほうをちらちらと見ている……。" + "TALKTEXT"
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
      tx["tx1"] = "「なんだかいい匂いがする……？\n　あ、お花が咲いてる！\n　#{target}、行ってみようよ！」"
      tx["tx4"] = "#{speaker}が服の裾を引っ張ってきた！\n……なかなか思うように探索が進まない。" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "「ここは#{myname}もよく遊びに来るの♪\n　おともだち、来てるかなあ？」"
      tx["tx4"] = "#{speaker}は辺りを楽しそうに眺めている……。" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
    #▽水場
    if $game_map.type.include?("水場")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "「わぁ、きれいなとこだね～。\n　ね、一緒に泳ごうよ♪」"
      tx["tx4"] = "#{speaker}が服の裾を引っ張ってきた！\n……なかなか思うように探索が進まない。" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "「お魚さん、いないかなあ……？\n　あ、今光ったっ♪」"
      tx["tx4"] = "#{speaker}は水面を見てはしゃいでいる……。" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
    #▽暗所
    if $game_map.type.include?("暗所")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "「あははっ、暗くて見えないや♪\n　#{target}、飛べないんだから転んじゃダメだよ～？\\|\n　……あいてっ」"
      tx["tx4"] = "#{speaker}は壁の出っ張りに頭をぶつけて\n涙目になっている……" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "「ここはね、みんなでよくかくれんぼをするの♪\n　いろんなところに隠れられるんだから♪」"
      tx["tx4"] = "どうやら急に物陰から夢魔が出てくるのは、\n単なるかくれんぼの延長らしい……。" + "TALKTEXT"
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
    tx["tx1"] = "「ん～、なんだか静か過ぎて落ち着かないよ～。\n　ね、#{target}、他のところに行って遊ぼうよ♪」"
      tx["tx4"] = "#{speaker}が服の裾を引っ張ってきた！\n……なかなか思うように探索が進まない。" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「うわ～、本がいっぱいだ～。\n　ね、絵本とか無いかなぁ？\n　#{myname}、絵本読むの大好き\\H」"
    tx["tx4"] = "#{speaker}は本棚から絵本を探している。\n流石にこの場に絵本はそうそう無いと思うが……。" + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼パルフィス密教会              #
  #================================#
  when "パルフィス密教会"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「ふ～ん、なんだか変な感じのところだね。\n　でも広いから、かけっことかしたら面白そう♪」"
    tx["tx4"] = "今すぐ駆け出しそうな#{speaker}を何とか捕まえた。\n言って聞かせておく必要がありそうだ……" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "「ふわ～、おっきいおうちだね～？\n　#{myname}、迷子になりそう……」"
    tx["tx4"] = "#{speaker}はきょろきょろと辺りを見回している……" + "TALKTEXT"
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
end
#######################################################################################################################
 end #def
end #class
