=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』レジスト実行口上（ホールド関連・対主人公）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,07/25     仮稿流し込み。キャラ付け上の理由で双方クライシス時の優先順位の多くを 主人公クライシス時＞夢魔クライシス時 にしています。
 2017,06/27     ペリスコープに胸弱点時分岐を加筆
#######################################################################################################################
=end





#######################################################################################################################
########################################★ホールド：主人公がメインの口上群#############################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
 def msg_hold_00
#==================================================================================================================
#■主人公が夢魔をホールドする
if $msg.tag == "Player binds the succubus"
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
 #  tx["tx1"] = ""
  when 2 #ホールド成功
 #  tx["tx1"] = ""
  when 3 #ホールド失敗
 #  tx["tx1"] = ""
    #途中で行動をキャンセルした場合
 #  tx["tx1"] = "" if $game_switches[89] == true
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼インサート▼****************************************************************************************
  #====================================================================================================================
  when "Insertion done by ♂"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"#{giggle_s}……\n Push me down if you can....\\H\""
      tx["tx1"] = "\"I can't wait anymore....\n Hurry up and\n devour me....\\H\"" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "\"#{giggle_s} Can't wait anymore....?\n Fine then, thrust your yearnings\n onto me as you wish, #{target}....\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールド成功
      tx["tx1"] = "\"Nnnhh....\\H\n #{giggle_s} You're so manly for your cute face....\\H\n Okay then, do whatever you want with me....\\H\""
      tx["tx1"] = "\"Ah-ha....\\H Ufufu, I knew nothing beats this....\\H\n The joy of being penetrated by a man and having the deepest region pursued is\n the supreme delight for a woman....\\H\"" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "\"Aaannh....\\H Yes, you've got it....\\H\n Pursue me all you want and\n release your hot desires in the innermost area....\\H\"" if $msg.t_target.crisis? == true
    when 3 #ホールド失敗
      tx["tx1"] = "\"#{giggle_s} I'm not going to just do as I'm told.\n You need to get me in the mood\n with your own hands, #{target}\\H\""
      tx["tx1"] = "\"You don't have to be scared....\n You're free to be more selfish and\n leave anything too difficult to me, #{target}....\\H\"" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "\"Dear me, were you just teasing me....? \\H\n Don't you worry, #{myname}'m not going anywhere.\n Yield your body to the animal-like desires gushing forth from below\\H\"" if $msg.t_target.crisis? == true
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"Oh my....\n Indecisiveness won't get you any likes.\""
        tx["tx1"] = "\"Maybe you're not interested in pushing down a woman?\n Taking your time will get you\n pinned down by me, you know\\H\"" if $msg.t_target.crisis? == true
        tx["tx1"] = "\"Keeping me in suspense like that....\n Oh #{target}, for your cute face,\n you're more daring than you look....\\H\"" if $msg.t_enemy.crisis? == true
      end
    end
    #格納
    ms.push(tx)
  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the user."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Don't struggle like that.\""
    when 2 #ホールド成功
      tx["tx1"] = "\"Gosh....maybe that wasn't what you preferred?\""
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "\"That's as far as you go.\n Too bad I'm not letting you get away\\H\""
      tx["md"] = "3"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"Yes, that's how it should be.\n Now that I know how mature you are,\n let's proceed without any tactlessness\\H\""
        tx["md"] = "3"
      end
    end
    #格納
    ms.push(tx)
  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "Undo Hold on the ally."
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Did you get jealous of her?\n Ufufu, you've got a cute side to you....\\H\""
    when 2 #ホールド成功
      tx["tx1"] = "\"I'll let her go since I\n find you so adorable, #{target}.\n Of course, you'll entertain me in his place, won't you?\""
      tx["md"] = "0"
    when 3 #ホールド失敗
      tx["tx1"] = "\"That won't do. I'll deal with you next, #{target}.\n Just sit tight for a little\n and I'll be sure to entertain you\\H\""
      tx["md"] = "0"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "\"You don't have to be so shy about it....\\H\n Then let's play with each other after this\\H\""
        tx["md"] = "3"
      end
    end
    #格納
    ms.push(tx)
  end
  #==================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
#■夢魔が主人公をホールドする
elsif $msg.tag == "Succubus binds the player."
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
 #  tx["tx1"] = ""
  when 2 #ホールドレジスト成功
 #  tx["tx1"] = ""
  when 3 #ホールドレジスト失敗
 #  tx["tx1"] = ""
    #自ら受け入れた場合
 #  tx["tx1"] = "" if $game_switches[89] == true
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼アクセプト▼*****************************************************************************************
  #====================================================================================================================
  when "Insertion done by ♀"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"I'm thinking now's the time\n to dig into you, #{target}....\\H\""
      tx["tx1"] = "\"I can't take this anymore....\n Accept my love, will you....\\H\"" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "\"Quivering in delight like that....\n Luring me that temptingly will\n stimulate me that much more....\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"You don't want to be on bottom?\n Then you better show me you're a man that'd\n pin me down and make me squeal\\H\""
      tx["md"] = "0"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "\"It's so adorable to see you\n fighting it desperately, #{target}....\\H\n I'm going to make you surrender in my arms\\H\""
        tx["md"] = "0"
      end
      tx["tx1"] = "\"Augh, so mean....」" if $msg.t_enemy.crisis? == true
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Aahaa....\\H Nothing beats this....\\H\n This moment that lets me feel most intimate with the partner I'm getting in on with\n makes me the happiest....\\H\""
      tx["tx1"] = "\"Aha, I knew experiencing it directly is a whole different level....\\H\n I'm wondering what kind of sound you're making, #{target}.\n Can't wait to see how much fun we can have....\\H\"" if $msg.t_target.crisis? == true
      tx["tx1"] = "\"I can feel you deep inside my stomach, #{target}....\\H\n Maybe giving love in my pussy will\n make you happier a little....? \\H\"" if $msg.t_enemy.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"Nnnhh....\\H #{giggle_s} You wanted to dig in?\n But you see, I like to have more of a challenge than some docile men.\n I wonder how you'll taste, #{target}....\\H\""
        tx["tx1"] = "\"Ufufu....\\H You're great, #{target}....\\H\n Would you mind giving\n me love just like this....? \\H\"" if $msg.t_enemy.crisis? == true
        tx["tx1"] = "\"#{giggle_s} ....So you'll let me eat you as I please?\n But I can't say if being that defenseless is alright,\n seeing how greedy #{myname} can be....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "Facesitted","Dark-sided"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"I want you to feel the smell\n of my vulgar desires, #{target}....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"You'll hurt my feelings by refusing me like that....\""
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Ufufu....I wonder how my nectars taste\\H\n Looking at my own vulgarness like this\n feels so kinky it gives me the shivers....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"Wow you're lecherous, #{target}\\H\n That's fine though, I want you to\n thoroughly savor of my arousal\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "Backside Bind"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"Just leave your body to me....\n Accept the pleasure\n #{myname} provide you....\\H\""
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Not a fan of playing along?\n That must mean you'll be able to\n satisfy me properly\\H\""
      tx["md"] = "0"
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"#{giggle_s} ....Good boy\\H\n For being so obedient,\n you get to be my captive, #{target}....\\H\""
      #自ら受け入れた場合
      tx["tx1"] = "\"*Giggle....you can't get away anymore.\n I'm going to entwine you in the supreme bliss\n until you're mine....\\H\"" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)


  #▼胸系▼*********************************************************************************
  #====================================================================================================================
  when "Paizuri","Jiggly-Wiggly"
  #====================================================================================================================
    if $msg.t_target.have_ability?(12) #ロウラット胸弱点
      case $msg.talk_step
      when 1 #ホールドレジスト中
       tx["tx1"] = "\"Have a look.... At the vulgar sight\n of your manhood getting swallowed up by the soft cleavage, #{target}\\H\n Don't you feel like it's going to melt from doted by breasts....? \\H\""
      when 2 #ホールドレジスト成功
       tx["tx1"] = "\"#{giggle} You sure you don't like it?\n Even after shaking off from it, you won't take your eyes off from my breasts\\H\n You can't possibly ignore your desire now that it has sprouted....\\H\""
       tx["md"] = "0"
      when 3 #ホールドレジスト失敗
       tx["tx1"] = "\"#{giggle} I know you like big breasts.\n You're making sweet moans just from wrapping it gently\\H\n Just take it easy and savor it to your heart's content....\\H\""
        #自ら受け入れた場合
       tx["tx1"] = "\"....#{giggle_s}\\H Getting so hard just from touching my breasts\\H\n I'm wondering what ideas you were getting.\n Those hopes of yours, I'm going to make them all run wild and gratify them....\\H\"" if $game_switches[89] == true
      end
    else #胸弱点でない
      case $msg.talk_step
      when 1 #ホールドレジスト中
        tx["tx1"] = "\"How do you like my breasts?\n It might swallow it all up and cover it....\\H\""
        tx["tx1"] = "\"With my breasts, I'm going to cover\n your dick down that'll burst at any moment\n and taint your heart in pleasure, #{target}....\\H\"" if $msg.t_target.crisis? == true
      when 2 #ホールドレジスト成功
        tx["tx1"] = "\"Was that not what you preferred?\n I was fairly confident for it, but nothing I can do about it.\""
        if $msg.t_target.crisis? == true
          tx["tx1"] = "\"You're too afraid too leave your body to your inner desires?\n #{giggle_s} You only entertain that feeling\n for so long....\\H\""
          tx["md"] = "0"
        end
      when 3 #ホールドレジスト失敗
        tx["tx1"] = "\"#{giggle_s} Your dick down here's\n fairly shy, I see\\H\n I'm going to soon have it expose everything....\\H\""
        tx["tx1"] = "\"#{giggle_s} So hard and hot....\n I can smell more of the the shameful wishes\\H\n Let out every one of the desires you've saved up\\H\"" if $msg.t_target.crisis? == true
        #自ら受け入れた場合
        if $game_switches[89] == true
          tx["tx1"] = "\"#{giggle_s} Did you imagine how it'd be?\n I don't mind if you were eager for to it, of course.\n I'm going to show you the way to heaven, #{target}\\H\""
          tx["tx1"] = "\"#{giggle_s} Holding it out just as you were lured....\n It's good that you're being honest to your lust.\n You'll be able to make everything pure white in bliss....\\H\"" if $msg.t_target.crisis? == true
        end
      end
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "キッス"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼オーラルアクセプト▼*********************************************************************************
  #====================================================================================================================
  when "♀ giving fellatio"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "\"I'm going to have a little taste....\\H\""
      tx["tx1"] = "\"Shuddering that pitifully....\n #{giggle_s} You look so delicious with that precum flowing out....\\H\"" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "\"Such a shame when it looks so delicious.\n Having to wait makes my tongue feel so empty....\\H\""
      tx["md"] = "0"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "\"Why the panic?\n Is it that you're weak to blowjobs? \\H\""
        tx["md"] = "0"
      end
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "\"Mmmm....fwah.... #{giggle_s}\\H\n Try to bear it as much as you can,\n because I'm going to suck it and lick it good....\\H\""
      tx["tx1"] = "\"#{giggle_s} It's twitching and pulsing in my mouth....\\H\n Can you feel my saliva, the heat from my breath,\n and the subtle usage of my tongue....? \\H\"" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "\"Nfufu\\H Sticking out your waist on your own....\\H\n Did you take a liking for my lips? Or my tongue?\n #{giggle_s} Why don't I start with licking my lips\\H\""
        tx["tx1"] = "\"Mmmmhh....\\H Can't hold it in anymore?\n That franticness makes me want to be mean to you....\n Go ahead and feel my breath....\\H\"" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼ディルドインバック▼*********************************************************************************
  #====================================================================================================================
  when "ディルド尻挿入"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #====================================================================================================================
  end
end
#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class




















#######################################################################################################################
####################################★ホールド：主人公がメインの口上群（ベッドイン）###################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
 def msg_bedin_hold_00
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("大切な人")
#====================================================================================================================
#■主人公が夢魔をホールドする
if $msg.tag == "主人公が夢魔をホールド"
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
 #  tx["tx1"] = ""
  when 2 #ホールド成功
 #  tx["tx1"] = ""
  when 3 #ホールド失敗
 #  tx["tx1"] = ""
    #途中で行動をキャンセルした場合
 #  tx["tx1"] = "" if $game_switches[89] == true
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼インサート▼****************************************************************************************
  #====================================================================================================================
  when "♀挿入：♂側"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「#{giggle_s}……\n　どうぞ、押し倒してごらんなさい……\\H」"
      tx["tx1"] = "「もう待ちきれないわ……\n　早く#{myname}のことを\n　貪ってちょうだい……\\H」" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "「#{giggle_s}、もう待てないの……？\n　いいわよ、#{target}の欲望を\n　#{myname}へ存分にぶつけなさい……\\H」" if $msg.t_target.crisis? == true
    when 2 #ホールド成功
      tx["tx1"] = "「んっ……\\H\n　#{giggle_s}、かわいい顔してちゃんと男ね……\\H\n　いいわ、#{target}の好きにして……\\H」"
      tx["tx1"] = "「あ、はぁ……っ\\H　ふふ、やっぱり最高ね……\\H\n　男に貫かれて最奥まで求められる悦びは、\n　女として至上の幸せだわ……\\H」" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "「あぁんっ……\\H　そう、それでいいの……\\H\n　好きなだけ#{myname}を求めて、\n　一番奥で熱い劣情を吐き出して……\\H」" if $msg.t_target.crisis? == true
    when 3 #ホールド失敗
      tx["tx1"] = "「#{giggle_s}、言いなりにはならないわよ。\n　#{target}自身の手で\n　#{myname}をその気にさせてごらんなさい\\H」"
      tx["tx1"] = "「怯えなくていいわ……\n　#{target}はもっと身勝手でいいの、\n　難しいことは#{myname}に任せて……\\H」" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "「あらあら、焦っちゃったかしら……\\H\n　大丈夫よ、#{myname}は逃げないわ。\n　自らの奥底から湧き出る獣欲に心を委ねなさい\\H」" if $msg.t_target.crisis? == true
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "「あらあら……\n　及び腰は嫌われるわよ」"
        tx["tx1"] = "「女を押し倒すのは趣味じゃないかしら？\n　もたついてると#{myname}が\n　#{target}を押し倒しちゃうわよ\\H」" if $msg.t_target.crisis? == true
        tx["tx1"] = "「#{myname}を焦らすだなんて……\n　#{target}ったら、かわいい顔して\n　見かけによらず豪胆なのね……\\H」" if $msg.t_enemy.crisis? == true
      end
    end
    #格納
    ms.push(tx)
  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "自分ホールド解除"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「だめよ、そんなに暴れちゃ」"
    when 2 #ホールド成功
      tx["tx1"] = "「もう……お気に召さなかったかしら？」"
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "「はい、そこまで。\n　残念、逃がしてなんてあげないわ\\H」"
      tx["md"] = "3"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "「そう、それでいいの。\n　#{target}も大人だもの、\n　無粋はなしでいきましょう\\H」"
        tx["md"] = "3"
      end
    end
    #格納
    ms.push(tx)
  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "仲間ホールド解除"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「#{partner}に嫉妬しちゃったのかしら？\n　ふふ、かわいいところあるじゃない……\\H」"
    when 2 #ホールド成功
      tx["tx1"] = "「かわいい#{target}に免じて\n　#{partner}は離してあげる。\n　もちろん、かわりに愉しませてくれるのよね？」"
      tx["md"] = "0"
    when 3 #ホールド失敗
      tx["tx1"] = "「でもだめよ、#{target}はこの後。\n　ちゃんと愉しませてあげるから、\n　少し待っててちょうだい\\H」"
      tx["md"] = "3"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "「恥ずかしがらなくてもいいのに……\\H\n　それじゃあ、また後で遊びましょう\\H」"
        tx["md"] = "3"
      end
    end
    #格納
    ms.push(tx)
  end
  #==================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
#■夢魔が主人公をホールドする
elsif $msg.tag == "夢魔が主人公をホールド"
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
 #  tx["tx1"] = ""
  when 2 #ホールドレジスト成功
 #  tx["tx1"] = ""
  when 3 #ホールドレジスト失敗
 #  tx["tx1"] = ""
    #自ら受け入れた場合
 #  tx["tx1"] = "" if $game_switches[89] == true
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼アクセプト▼*****************************************************************************************
  #====================================================================================================================
  when "♀挿入：♀側"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「そろそろ#{target}のこと\n　いただいちゃおうかしら……\\H」"
      tx["tx1"] = "「もう我慢できないの……\n　#{myname}の愛欲、受け止めて……\\H」" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "「辛そうに震えちゃって……\n　こんなにおいしそうにして誘われたら\n　とってもそそられちゃうわ……\\H」" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "「下になるのは嫌？\n　じゃあ、#{myname}のことを押し倒して、\n　気持ちよく啼かせて男を見せなくちゃね\\H」"
      tx["md"] = "0"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "「必死に我慢しちゃって、\n　#{target}はかわいいわね……\\H\n　#{myname}の腕の中で降参させてあげる\\H」"
        tx["md"] = "0"
      end
      tx["tx1"] = "「あぁん、意地悪なんだから……」" if $msg.t_enemy.crisis? == true
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "「あっはっ……\\H　やっぱり、これが一番好き……\\H\n　まぐわってる相手のことを一番深く感じられる、\n　この瞬間が一番幸せよ……\\H」"
      tx["tx1"] = "「あはっ、やっぱり直に味わうと格別だわ……\\H\n　#{target}はどんな声で啼くのかしら？\n　どれほど愉しめるか楽しみね……\\H」" if $msg.t_target.crisis? == true
      tx["tx1"] = "「お腹の奥で#{target}を感じるわ……\\H\n　#{myname}の膣内で愛したら、\n　少しでも悦んでくれるかしら……\\H」" if $msg.t_enemy.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "「んっ……\\H　#{giggle_s}、食べてほしかったの？\n　でもね、従順な男より歯ごたえのある果実が好きなの。\n　#{target}の味はどうかしら……\\H」"
        tx["tx1"] = "「ふふ……\\H　#{target}、素敵よ……\\H\n　このまま#{myname}のこと\n　愛してくれないかしら……\\H」" if $msg.t_enemy.crisis? == true
        tx["tx1"] = "「#{giggle_s}……好きに食べさせてくれるのね？\n　でもそんなに無防備でいいのかしら、\n　#{myname}は欲張りなのよ……\\H」" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "顔面騎乗","尻騎乗"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「#{myname}のはしたない欲望の匂い、\n　#{target}に味わって欲しいの……\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "「そんなに嫌がられると傷ついちゃうわ……」"
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "「ふふっ……#{myname}の蜜の味はどうかしら\\H\n　こうやって自分のいやらしさを見せつけてると、\n　倒錯感でとってもゾクゾクしちゃうわ……\\H」"
      #自ら受け入れた場合
      tx["tx1"] = "「もう、#{target}は好き者さんね\\H\n　いいわ、#{myname}の昂り、\n　余すことなく味わってちょうだい\\H」" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "背面拘束"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「#{myname}に身を任せて……\n　#{myname}の与える快楽を\n　受け入れなさい……\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "「されるがままは嫌い？\n　そこまで言うなら、#{myname}のことも\n　ちゃんと満足させてくれるのよね？\\H」"
      tx["md"] = "0"
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "「#{giggle_s}……いい子ね\\H\n　素直な#{target}にはご褒美よ、\n　#{myname}の虜にしてあげる……\\H」"
      #自ら受け入れた場合
      tx["tx1"] = "「くすくす……もう逃がさないわ。\n　#{myname}のものになるまで、\n　至上の悦楽で絡め取ってあげる……\\H」" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)


  #▼胸系▼*********************************************************************************
  #====================================================================================================================
  when "パイズリ","ぱふぱふ"
  #====================================================================================================================
    if $msg.t_target.have_ability?(12) #ロウラット胸弱点
      case $msg.talk_step
      when 1 #ホールドレジスト中
       tx["tx1"] = "「ほら、見て……#{target}のモノが\n　柔らかな谷間に呑み込まれていく、いやらしい光景を\\H\n　#{myname}の胸で甘く愛されて、蕩けてみたいでしょう……\\H」"
      when 2 #ホールドレジスト成功
       tx["tx1"] = "「#{giggle}　嫌だなんて、本当かしら？\n　振り払ってもまだ#{myname}の胸から目が離せないのに\\H\n　芽生えた欲望を無視なんて、できないわよね……\\H」"
       tx["md"] = "0"
      when 3 #ホールドレジスト失敗
       tx["tx1"] = "「#{giggle}　大きな胸、好きなんでしょう？\n　優しく包み込んであげただけで甘い吐息が漏れてるわ\\H\n　力を抜いて、心行くまで味わってちょうだい……\\H」"
        #自ら受け入れた場合
       tx["tx1"] = "「……#{giggle_s}\\H　胸に触れただけでこんなに硬くして\\H\n　どんな妄想を膨らませ、期待してくれていたのかしら？\n　その願望、何もかも暴いて満たしてあげる……\\H」" if $game_switches[89] == true
      end
    else #胸弱点でない
      case $msg.talk_step
      when 1 #ホールドレジスト中
        tx["tx1"] = "「#{myname}の胸はどうかしら？\n　全部呑み込んで隠しちゃうかもしれないわよ……\\H」"
        tx["tx1"] = "「今にも爆ぜそうな#{target}のここを\n　#{myname}の胸で包んで、\n　心を快楽に染めてあげる……\\H」" if $msg.t_target.crisis? == true
      when 2 #ホールドレジスト成功
        tx["tx1"] = "「お気に召さないかしら？\n　少しは自信があったのだけど、仕方ないわね」"
        if $msg.t_target.crisis? == true
          tx["tx1"] = "「本能に身を委ねるのは怖い？\n　#{giggle_s}、その気持ちを楽しめるのも\n　今のうちだけよ……\\H」"
          tx["md"] = "0"
        end
      when 3 #ホールドレジスト失敗
        tx["tx1"] = "「#{giggle_s}、#{target}のここは\n　随分と恥ずかしがり屋さんね\\H\n　すぐにすべてをさらけ出させてあげる……\\H」"
        tx["tx1"] = "「#{giggle_s}、すっかり硬くて熱くて……\n　いやらしい願望の匂いがどんどん昇ってくるわ\\H\n　たっぷり溜め込んだ欲望、すべて吐き出しなさい\\H」" if $msg.t_target.crisis? == true
        #自ら受け入れた場合
        if $game_switches[89] == true
          tx["tx1"] = "「#{giggle_s}、想像しちゃったかしら？\n　もちろん期待してくれて構わないわ、\n　#{target}を天国へ導いてあげる\\H」"
          tx["tx1"] = "「#{giggle_s}、誘われるままに差し出しちゃって……\n　欲望に素直なのはいいことよ、\n　すべてを快楽で真っ白にできるもの……\\H」" if $msg.t_target.crisis? == true
        end
      end
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "キッス"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼オーラルアクセプト▼*********************************************************************************
  #====================================================================================================================
  when "口挿入：口側"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「少し味見させてもらうわね……\\H」"
      tx["tx1"] = "「こんなに切なそうに震えちゃって……\n　先走りが溢れて、#{giggle_s}、おいしそう……\\H」" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "「残念、こんなにおいしそうなのに。\n　おあずけされて舌が寂しいわ……\\H」"
      tx["md"] = "0"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "「そんなに慌てちゃって、どうしたの？\n　お口でされるのに弱いのかしら\\H」"
        tx["md"] = "0"
      end
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "「ん……ちゅぱ……#{giggle_s}\\H\n　たくさん吸い舐ってあげるから、\n　がんばって耐えてごらんなさい……\\H」"
      tx["tx1"] = "「#{giggle_s}、口の中でびくびく脈打ってる……\\H\n　#{myname}の唾液と吐息の熱、\n　微かな舌遣いの機微、感じるかしら……\\H」" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "「んふふ\\H　自分から腰を突き出しちゃって……\\H\n　唇が気になっちゃった？　それとも舌？\n　#{giggle_s}、舌なめずりしてあげましょうか\\H」"
        tx["tx1"] = "「んっ……\\H　もう我慢できなかったの？\n　そう必死だと意地悪したくなっちゃうわ……\n　ほら、#{myname}の吐息を感じて……\\H」" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼ディルドインバック▼*********************************************************************************
  #====================================================================================================================
  when "ディルド尻挿入"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #====================================================================================================================
  end
end
















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("寵愛")
#====================================================================================================================
#■主人公が夢魔をホールドする
if $msg.tag == "主人公が夢魔をホールド"
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
 #  tx["tx1"] = ""
  when 2 #ホールド成功
 #  tx["tx1"] = ""
  when 3 #ホールド失敗
 #  tx["tx1"] = ""
    #途中で行動をキャンセルした場合
 #  tx["tx1"] = "" if $game_switches[89] == true
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼インサート▼****************************************************************************************
  #====================================================================================================================
  when "♀挿入：♂側"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「#{giggle_s}……\n　どうぞ、押し倒してごらんなさい……\\H」"
      tx["tx1"] = "「もう待ちきれないわ……\n　早く#{myname}のことを\n　貪ってちょうだい……\\H」" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "「#{giggle_s}、もう待てないの……？\n　いいわよ、#{target}の欲望を\n　#{myname}へ存分にぶつけなさい……\\H」" if $msg.t_target.crisis? == true
    when 2 #ホールド成功
      tx["tx1"] = "「んっ……\\H\n　#{giggle_s}、かわいい顔してちゃんと男ね……\\H\n　いいわ、#{target}の好きにして……\\H」"
      tx["tx1"] = "「あ、はぁ……っ\\H　ふふ、やっぱり最高ね……\\H\n　男に貫かれて最奥まで求められる悦びは、\n　女として至上の幸せだわ……\\H」" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "「あぁんっ……\\H　そう、それでいいの……\\H\n　好きなだけ#{myname}を求めて、\n　一番奥で熱い劣情を吐き出して……\\H」" if $msg.t_target.crisis? == true
    when 3 #ホールド失敗
      tx["tx1"] = "「#{giggle_s}、言いなりにはならないわよ。\n　#{target}自身の手で\n　#{myname}をその気にさせてごらんなさい\\H」"
      tx["tx1"] = "「怯えなくていいわ……\n　#{target}はもっと身勝手でいいの、\n　難しいことは#{myname}に任せて……\\H」" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "「あらあら、焦っちゃったかしら……\\H\n　大丈夫よ、#{myname}は逃げないわ。\n　自らの奥底から湧き出る獣欲に心を委ねなさい\\H」" if $msg.t_target.crisis? == true
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "「あらあら……\n　及び腰は嫌われるわよ」"
        tx["tx1"] = "「女を押し倒すのは趣味じゃないかしら？\n　もたついてると#{myname}が\n　#{target}を押し倒しちゃうわよ\\H」" if $msg.t_target.crisis? == true
        tx["tx1"] = "「#{myname}を焦らすだなんて……\n　#{target}ったら、かわいい顔して\n　見かけによらず豪胆なのね……\\H」" if $msg.t_enemy.crisis? == true
      end
    end
    #格納
    ms.push(tx)
  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "自分ホールド解除"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「だめよ、そんなに暴れちゃ」"
    when 2 #ホールド成功
      tx["tx1"] = "「もう……お気に召さなかったかしら？」"
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "「はい、そこまで。\n　残念、逃がしてなんてあげないわ\\H」"
      tx["md"] = "3"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "「そう、それでいいの。\n　#{target}も大人だもの、\n　無粋はなしでいきましょう\\H」"
        tx["md"] = "3"
      end
    end
    #格納
    ms.push(tx)
  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "仲間ホールド解除"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「#{partner}に嫉妬しちゃったのかしら？\n　ふふ、かわいいところあるじゃない……\\H」"
    when 2 #ホールド成功
      tx["tx1"] = "「かわいい#{target}に免じて\n　#{partner}は離してあげる。\n　もちろん、かわりに愉しませてくれるのよね？」"
      tx["md"] = "0"
    when 3 #ホールド失敗
      tx["tx1"] = "「でもだめよ、#{target}はこの後。\n　ちゃんと愉しませてあげるから、\n　少し待っててちょうだい\\H」"
      tx["md"] = "3"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "「恥ずかしがらなくてもいいのに……\\H\n　それじゃあ、また後で遊びましょう\\H」"
        tx["md"] = "3"
      end
    end
    #格納
    ms.push(tx)
  end
  #==================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
#■夢魔が主人公をホールドする
elsif $msg.tag == "夢魔が主人公をホールド"
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
 #  tx["tx1"] = ""
  when 2 #ホールドレジスト成功
 #  tx["tx1"] = ""
  when 3 #ホールドレジスト失敗
 #  tx["tx1"] = ""
    #自ら受け入れた場合
 #  tx["tx1"] = "" if $game_switches[89] == true
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼アクセプト▼*****************************************************************************************
  #====================================================================================================================
  when "♀挿入：♀側"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「そろそろ#{target}のこと\n　いただいちゃおうかしら……\\H」"
      tx["tx1"] = "「もう我慢できないの……\n　#{myname}の愛欲、受け止めて……\\H」" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "「辛そうに震えちゃって……\n　こんなにおいしそうにして誘われたら\n　とってもそそられちゃうわ……\\H」" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "「下になるのは嫌？\n　じゃあ、#{myname}のことを押し倒して、\n　気持ちよく啼かせて男を見せなくちゃね\\H」"
      tx["md"] = "0"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "「必死に我慢しちゃって、\n　#{target}はかわいいわね……\\H\n　#{myname}の腕の中で降参させてあげる\\H」"
        tx["md"] = "0"
      end
      tx["tx1"] = "「あぁん、意地悪なんだから……」" if $msg.t_enemy.crisis? == true
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "「あっはっ……\\H　やっぱり、これが一番好き……\\H\n　まぐわってる相手のことを一番深く感じられる、\n　この瞬間が一番幸せよ……\\H」"
      tx["tx1"] = "「あはっ、やっぱり直に味わうと格別だわ……\\H\n　#{target}はどんな声で啼くのかしら？\n　どれほど愉しめるか楽しみね……\\H」" if $msg.t_target.crisis? == true
      tx["tx1"] = "「お腹の奥で#{target}を感じるわ……\\H\n　#{myname}の膣内で愛したら、\n　少しでも悦んでくれるかしら……\\H」" if $msg.t_enemy.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "「んっ……\\H　#{giggle_s}、食べてほしかったの？\n　でもね、従順な男より歯ごたえのある果実が好きなの。\n　#{target}の味はどうかしら……\\H」"
        tx["tx1"] = "「ふふ……\\H　#{target}、素敵よ……\\H\n　このまま#{myname}のこと\n　愛してくれないかしら……\\H」" if $msg.t_enemy.crisis? == true
        tx["tx1"] = "「#{giggle_s}……好きに食べさせてくれるのね？\n　でもそんなに無防備でいいのかしら、\n　#{myname}は欲張りなのよ……\\H」" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "顔面騎乗","尻騎乗"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「#{myname}のはしたない欲望の匂い、\n　#{target}に味わって欲しいの……\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "「そんなに嫌がられると傷ついちゃうわ……」"
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "「ふふっ……#{myname}の蜜の味はどうかしら\\H\n　こうやって自分のいやらしさを見せつけてると、\n　倒錯感でとってもゾクゾクしちゃうわ……\\H」"
      #自ら受け入れた場合
      tx["tx1"] = "「もう、#{target}は好き者さんね\\H\n　いいわ、#{myname}の昂り、\n　余すことなく味わってちょうだい\\H」" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "背面拘束"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「#{myname}に身を任せて……\n　#{myname}の与える快楽を\n　受け入れなさい……\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "「されるがままは嫌い？\n　そこまで言うなら、#{myname}のことも\n　ちゃんと満足させてくれるのよね？\\H」"
      tx["md"] = "0"
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "「#{giggle_s}……いい子ね\\H\n　素直な#{target}にはご褒美よ、\n　#{myname}の虜にしてあげる……\\H」"
      #自ら受け入れた場合
      tx["tx1"] = "「くすくす……もう逃がさないわ。\n　#{myname}のものになるまで、\n　至上の悦楽で絡め取ってあげる……\\H」" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)


  #▼胸系▼*********************************************************************************
  #====================================================================================================================
  when "パイズリ","ぱふぱふ"
  #====================================================================================================================
    if $msg.t_target.have_ability?(12) #ロウラット胸弱点
      case $msg.talk_step
      when 1 #ホールドレジスト中
       tx["tx1"] = "「ほら、見て……#{target}のモノが\n　柔らかな谷間に呑み込まれていく、いやらしい光景を\\H\n　#{myname}の胸で甘く愛されて、蕩けてみたいでしょう……\\H」"
      when 2 #ホールドレジスト成功
       tx["tx1"] = "「#{giggle}　嫌だなんて、本当かしら？\n　振り払ってもまだ#{myname}の胸から目が離せないのに\\H\n　芽生えた欲望を無視なんて、できないわよね……\\H」"
       tx["md"] = "0"
      when 3 #ホールドレジスト失敗
       tx["tx1"] = "「#{giggle}　大きな胸、好きなんでしょう？\n　優しく包み込んであげただけで甘い吐息が漏れてるわ\\H\n　力を抜いて、心行くまで味わってちょうだい……\\H」"
        #自ら受け入れた場合
       tx["tx1"] = "「……#{giggle_s}\\H　胸に触れただけでこんなに硬くして\\H\n　どんな妄想を膨らませ、期待してくれていたのかしら？\n　その願望、何もかも暴いて満たしてあげる……\\H」" if $game_switches[89] == true
      end
    else #胸弱点でない
      case $msg.talk_step
      when 1 #ホールドレジスト中
        tx["tx1"] = "「#{myname}の胸はどうかしら？\n　全部呑み込んで隠しちゃうかもしれないわよ……\\H」"
        tx["tx1"] = "「今にも爆ぜそうな#{target}のここを\n　#{myname}の胸で包んで、\n　心を快楽に染めてあげる……\\H」" if $msg.t_target.crisis? == true
      when 2 #ホールドレジスト成功
        tx["tx1"] = "「お気に召さないかしら？\n　少しは自信があったのだけど、仕方ないわね」"
        if $msg.t_target.crisis? == true
          tx["tx1"] = "「本能に身を委ねるのは怖い？\n　#{giggle_s}、その気持ちを楽しめるのも\n　今のうちだけよ……\\H」"
          tx["md"] = "0"
        end
      when 3 #ホールドレジスト失敗
        tx["tx1"] = "「#{giggle_s}、#{target}のここは\n　随分と恥ずかしがり屋さんね\\H\n　すぐにすべてをさらけ出させてあげる……\\H」"
        tx["tx1"] = "「#{giggle_s}、すっかり硬くて熱くて……\n　いやらしい願望の匂いがどんどん昇ってくるわ\\H\n　たっぷり溜め込んだ欲望、すべて吐き出しなさい\\H」" if $msg.t_target.crisis? == true
        #自ら受け入れた場合
        if $game_switches[89] == true
          tx["tx1"] = "「#{giggle_s}、想像しちゃったかしら？\n　もちろん期待してくれて構わないわ、\n　#{target}を天国へ導いてあげる\\H」"
          tx["tx1"] = "「#{giggle_s}、誘われるままに差し出しちゃって……\n　欲望に素直なのはいいことよ、\n　すべてを快楽で真っ白にできるもの……\\H」" if $msg.t_target.crisis? == true
        end
      end
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "キッス"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼オーラルアクセプト▼*********************************************************************************
  #====================================================================================================================
  when "口挿入：口側"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「少し味見させてもらうわね……\\H」"
      tx["tx1"] = "「こんなに切なそうに震えちゃって……\n　先走りが溢れて、#{giggle_s}、おいしそう……\\H」" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "「残念、こんなにおいしそうなのに。\n　おあずけされて舌が寂しいわ……\\H」"
      tx["md"] = "0"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "「そんなに慌てちゃって、どうしたの？\n　お口でされるのに弱いのかしら\\H」"
        tx["md"] = "0"
      end
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "「ん……ちゅぱ……#{giggle_s}\\H\n　たくさん吸い舐ってあげるから、\n　がんばって耐えてごらんなさい……\\H」"
      tx["tx1"] = "「#{giggle_s}、口の中でびくびく脈打ってる……\\H\n　#{myname}の唾液と吐息の熱、\n　微かな舌遣いの機微、感じるかしら……\\H」" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "「んふふ\\H　自分から腰を突き出しちゃって……\\H\n　唇が気になっちゃった？　それとも舌？\n　#{giggle_s}、舌なめずりしてあげましょうか\\H」"
        tx["tx1"] = "「んっ……\\H　もう我慢できなかったの？\n　そう必死だと意地悪したくなっちゃうわ……\n　ほら、#{myname}の吐息を感じて……\\H」" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼ディルドインバック▼*********************************************************************************
  #====================================================================================================================
  when "ディルド尻挿入"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #====================================================================================================================
  end
end















#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
#■主人公が夢魔をホールドする
if $msg.tag == "主人公が夢魔をホールド"
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
 #  tx["tx1"] = ""
  when 2 #ホールド成功
 #  tx["tx1"] = ""
  when 3 #ホールド失敗
 #  tx["tx1"] = ""
    #途中で行動をキャンセルした場合
 #  tx["tx1"] = "" if $game_switches[89] == true
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが上がる
                              tx["md"] = "3"
                            when 3 #アクターが失敗するとムードが下がる
                              tx["md"] = "2"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼インサート▼****************************************************************************************
  #====================================================================================================================
  when "♀挿入：♂側"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「#{giggle_s}……\n　どうぞ、押し倒してごらんなさい……\\H」"
      tx["tx1"] = "「もう待ちきれないわ……\n　早く#{myname}のことを\n　貪ってちょうだい……\\H」" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "「#{giggle_s}、もう待てないの……？\n　いいわよ、#{target}の欲望を\n　#{myname}へ存分にぶつけなさい……\\H」" if $msg.t_target.crisis? == true
    when 2 #ホールド成功
      tx["tx1"] = "「んっ……\\H\n　#{giggle_s}、かわいい顔してちゃんと男ね……\\H\n　いいわ、#{target}の好きにして……\\H」"
      tx["tx1"] = "「あ、はぁ……っ\\H　ふふ、やっぱり最高ね……\\H\n　男に貫かれて最奥まで求められる悦びは、\n　女として至上の幸せだわ……\\H」" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "「あぁんっ……\\H　そう、それでいいの……\\H\n　好きなだけ#{myname}を求めて、\n　一番奥で熱い劣情を吐き出して……\\H」" if $msg.t_target.crisis? == true
    when 3 #ホールド失敗
      tx["tx1"] = "「#{giggle_s}、言いなりにはならないわよ。\n　#{target}自身の手で\n　#{myname}をその気にさせてごらんなさい\\H」"
      tx["tx1"] = "「怯えなくていいわ……\n　#{target}はもっと身勝手でいいの、\n　難しいことは#{myname}に任せて……\\H」" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "「あらあら、焦っちゃったかしら……\\H\n　大丈夫よ、#{myname}は逃げないわ。\n　自らの奥底から湧き出る獣欲に心を委ねなさい\\H」" if $msg.t_target.crisis? == true
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "「あらあら……\n　及び腰は嫌われるわよ」"
        tx["tx1"] = "「女を押し倒すのは趣味じゃないかしら？\n　もたついてると#{myname}が\n　#{target}を押し倒しちゃうわよ\\H」" if $msg.t_target.crisis? == true
        tx["tx1"] = "「#{myname}を焦らすだなんて……\n　#{target}ったら、かわいい顔して\n　見かけによらず豪胆なのね……\\H」" if $msg.t_enemy.crisis? == true
      end
    end
    #格納
    ms.push(tx)
  #▼リリース(自分のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "自分ホールド解除"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「だめよ、そんなに暴れちゃ」"
    when 2 #ホールド成功
      tx["tx1"] = "「もう……お気に召さなかったかしら？」"
      tx["md"] = "2"
    when 3 #ホールド失敗
      tx["tx1"] = "「はい、そこまで。\n　残念、逃がしてなんてあげないわ\\H」"
      tx["md"] = "3"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "「そう、それでいいの。\n　#{target}も大人だもの、\n　無粋はなしでいきましょう\\H」"
        tx["md"] = "3"
      end
    end
    #格納
    ms.push(tx)
  #▼インタラプト(仲間のホールド解除)▼*********************************************************************************
  #====================================================================================================================
  when "仲間ホールド解除"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「#{partner}に嫉妬しちゃったのかしら？\n　ふふ、かわいいところあるじゃない……\\H」"
    when 2 #ホールド成功
      tx["tx1"] = "「かわいい#{target}に免じて\n　#{partner}は離してあげる。\n　もちろん、かわりに愉しませてくれるのよね？」"
      tx["md"] = "0"
    when 3 #ホールド失敗
      tx["tx1"] = "「でもだめよ、#{target}はこの後。\n　ちゃんと愉しませてあげるから、\n　少し待っててちょうだい\\H」"
      tx["md"] = "3"
      #途中で行動をキャンセルした場合
      if $game_switches[89] == true
        tx["tx1"] = "「恥ずかしがらなくてもいいのに……\\H\n　それじゃあ、また後で遊びましょう\\H」"
        tx["md"] = "3"
      end
    end
    #格納
    ms.push(tx)
  end
  #==================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
#■夢魔が主人公をホールドする
elsif $msg.tag == "夢魔が主人公をホールド"
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  case $msg.talk_step
  when 1 #ホールドレジスト中
 #  tx["tx1"] = ""
  when 2 #ホールドレジスト成功
 #  tx["tx1"] = ""
  when 3 #ホールドレジスト失敗
 #  tx["tx1"] = ""
    #自ら受け入れた場合
 #  tx["tx1"] = "" if $game_switches[89] == true
  end
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #アクターが成功するとムードが下がる
                              tx["md"] = "2"
                            when 3 #アクターが失敗するとムードが上がる
                              tx["md"] = "3"
                            end
  #==================================================================================================================
  case $msg.at_type
  #▼アクセプト▼*****************************************************************************************
  #====================================================================================================================
  when "♀挿入：♀側"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「そろそろ#{target}のこと\n　いただいちゃおうかしら……\\H」"
      tx["tx1"] = "「もう我慢できないの……\n　#{myname}の愛欲、受け止めて……\\H」" if $msg.t_enemy.crisis? == true
      tx["tx1"] = "「辛そうに震えちゃって……\n　こんなにおいしそうにして誘われたら\n　とってもそそられちゃうわ……\\H」" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "「下になるのは嫌？\n　じゃあ、#{myname}のことを押し倒して、\n　気持ちよく啼かせて男を見せなくちゃね\\H」"
      tx["md"] = "0"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "「必死に我慢しちゃって、\n　#{target}はかわいいわね……\\H\n　#{myname}の腕の中で降参させてあげる\\H」"
        tx["md"] = "0"
      end
      tx["tx1"] = "「あぁん、意地悪なんだから……」" if $msg.t_enemy.crisis? == true
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "「あっはっ……\\H　やっぱり、これが一番好き……\\H\n　まぐわってる相手のことを一番深く感じられる、\n　この瞬間が一番幸せよ……\\H」"
      tx["tx1"] = "「あはっ、やっぱり直に味わうと格別だわ……\\H\n　#{target}はどんな声で啼くのかしら？\n　どれほど愉しめるか楽しみね……\\H」" if $msg.t_target.crisis? == true
      tx["tx1"] = "「お腹の奥で#{target}を感じるわ……\\H\n　#{myname}の膣内で愛したら、\n　少しでも悦んでくれるかしら……\\H」" if $msg.t_enemy.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "「んっ……\\H　#{giggle_s}、食べてほしかったの？\n　でもね、従順な男より歯ごたえのある果実が好きなの。\n　#{target}の味はどうかしら……\\H」"
        tx["tx1"] = "「ふふ……\\H　#{target}、素敵よ……\\H\n　このまま#{myname}のこと\n　愛してくれないかしら……\\H」" if $msg.t_enemy.crisis? == true
        tx["tx1"] = "「#{giggle_s}……好きに食べさせてくれるのね？\n　でもそんなに無防備でいいのかしら、\n　#{myname}は欲張りなのよ……\\H」" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼騎乗系▼***********************************************************************************
  #====================================================================================================================
  when "顔面騎乗","尻騎乗"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「#{myname}のはしたない欲望の匂い、\n　#{target}に味わって欲しいの……\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "「そんなに嫌がられると傷ついちゃうわ……」"
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "「ふふっ……#{myname}の蜜の味はどうかしら\\H\n　こうやって自分のいやらしさを見せつけてると、\n　倒錯感でとってもゾクゾクしちゃうわ……\\H」"
      #自ら受け入れた場合
      tx["tx1"] = "「もう、#{target}は好き者さんね\\H\n　いいわ、#{myname}の昂り、\n　余すことなく味わってちょうだい\\H」" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼エンブレイス▼*********************************************************************************
  #====================================================================================================================
  when "背面拘束"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「#{myname}に身を任せて……\n　#{myname}の与える快楽を\n　受け入れなさい……\\H」"
    when 2 #ホールドレジスト成功
      tx["tx1"] = "「されるがままは嫌い？\n　そこまで言うなら、#{myname}のことも\n　ちゃんと満足させてくれるのよね？\\H」"
      tx["md"] = "0"
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "「#{giggle_s}……いい子ね\\H\n　素直な#{target}にはご褒美よ、\n　#{myname}の虜にしてあげる……\\H」"
      #自ら受け入れた場合
      tx["tx1"] = "「くすくす……もう逃がさないわ。\n　#{myname}のものになるまで、\n　至上の悦楽で絡め取ってあげる……\\H」" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)


  #▼胸系▼*********************************************************************************
  #====================================================================================================================
  when "パイズリ","ぱふぱふ"
  #====================================================================================================================
    if $msg.t_target.have_ability?(12) #ロウラット胸弱点
      case $msg.talk_step
      when 1 #ホールドレジスト中
       tx["tx1"] = "「ほら、見て……#{target}のモノが\n　柔らかな谷間に呑み込まれていく、いやらしい光景を\\H\n　#{myname}の胸で甘く愛されて、蕩けてみたいでしょう……\\H」"
      when 2 #ホールドレジスト成功
       tx["tx1"] = "「#{giggle}　嫌だなんて、本当かしら？\n　振り払ってもまだ#{myname}の胸から目が離せないのに\\H\n　芽生えた欲望を無視なんて、できないわよね……\\H」"
       tx["md"] = "0"
      when 3 #ホールドレジスト失敗
       tx["tx1"] = "「#{giggle}　大きな胸、好きなんでしょう？\n　優しく包み込んであげただけで甘い吐息が漏れてるわ\\H\n　力を抜いて、心行くまで味わってちょうだい……\\H」"
        #自ら受け入れた場合
       tx["tx1"] = "「……#{giggle_s}\\H　胸に触れただけでこんなに硬くして\\H\n　どんな妄想を膨らませ、期待してくれていたのかしら？\n　その願望、何もかも暴いて満たしてあげる……\\H」" if $game_switches[89] == true
      end
    else #胸弱点でない
      case $msg.talk_step
      when 1 #ホールドレジスト中
        tx["tx1"] = "「#{myname}の胸はどうかしら？\n　全部呑み込んで隠しちゃうかもしれないわよ……\\H」"
        tx["tx1"] = "「今にも爆ぜそうな#{target}のここを\n　#{myname}の胸で包んで、\n　心を快楽に染めてあげる……\\H」" if $msg.t_target.crisis? == true
      when 2 #ホールドレジスト成功
        tx["tx1"] = "「お気に召さないかしら？\n　少しは自信があったのだけど、仕方ないわね」"
        if $msg.t_target.crisis? == true
          tx["tx1"] = "「本能に身を委ねるのは怖い？\n　#{giggle_s}、その気持ちを楽しめるのも\n　今のうちだけよ……\\H」"
          tx["md"] = "0"
        end
      when 3 #ホールドレジスト失敗
        tx["tx1"] = "「#{giggle_s}、#{target}のここは\n　随分と恥ずかしがり屋さんね\\H\n　すぐにすべてをさらけ出させてあげる……\\H」"
        tx["tx1"] = "「#{giggle_s}、すっかり硬くて熱くて……\n　いやらしい願望の匂いがどんどん昇ってくるわ\\H\n　たっぷり溜め込んだ欲望、すべて吐き出しなさい\\H」" if $msg.t_target.crisis? == true
        #自ら受け入れた場合
        if $game_switches[89] == true
          tx["tx1"] = "「#{giggle_s}、想像しちゃったかしら？\n　もちろん期待してくれて構わないわ、\n　#{target}を天国へ導いてあげる\\H」"
          tx["tx1"] = "「#{giggle_s}、誘われるままに差し出しちゃって……\n　欲望に素直なのはいいことよ、\n　すべてを快楽で真っ白にできるもの……\\H」" if $msg.t_target.crisis? == true
        end
      end
    end
    #格納
    ms.push(tx)

  #▼フラッタナイズ▼*********************************************************************************
  #====================================================================================================================
  when "キッス"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #▼オーラルアクセプト▼*********************************************************************************
  #====================================================================================================================
  when "口挿入：口側"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
      tx["tx1"] = "「少し味見させてもらうわね……\\H」"
      tx["tx1"] = "「こんなに切なそうに震えちゃって……\n　先走りが溢れて、#{giggle_s}、おいしそう……\\H」" if $msg.t_target.crisis? == true
    when 2 #ホールドレジスト成功
      tx["tx1"] = "「残念、こんなにおいしそうなのに。\n　おあずけされて舌が寂しいわ……\\H」"
      tx["md"] = "0"
      if $msg.t_target.crisis? == true
        tx["tx1"] = "「そんなに慌てちゃって、どうしたの？\n　お口でされるのに弱いのかしら\\H」"
        tx["md"] = "0"
      end
    when 3 #ホールドレジスト失敗
      tx["tx1"] = "「ん……ちゅぱ……#{giggle_s}\\H\n　たくさん吸い舐ってあげるから、\n　がんばって耐えてごらんなさい……\\H」"
      tx["tx1"] = "「#{giggle_s}、口の中でびくびく脈打ってる……\\H\n　#{myname}の唾液と吐息の熱、\n　微かな舌遣いの機微、感じるかしら……\\H」" if $msg.t_target.crisis? == true
      #自ら受け入れた場合
      if $game_switches[89] == true
        tx["tx1"] = "「んふふ\\H　自分から腰を突き出しちゃって……\\H\n　唇が気になっちゃった？　それとも舌？\n　#{giggle_s}、舌なめずりしてあげましょうか\\H」"
        tx["tx1"] = "「んっ……\\H　もう我慢できなかったの？\n　そう必死だと意地悪したくなっちゃうわ……\n　ほら、#{myname}の吐息を感じて……\\H」" if $msg.t_target.crisis? == true
      end
    end
    #格納
    ms.push(tx)

  #▼ディルドインバック▼*********************************************************************************
  #====================================================================================================================
  when "ディルド尻挿入"
  #====================================================================================================================
    case $msg.talk_step
    when 1 #ホールドレジスト中
   #  tx["tx1"] = ""
    when 2 #ホールドレジスト成功
   #  tx["tx1"] = ""
    when 3 #ホールドレジスト失敗
   #  tx["tx1"] = ""
      #自ら受け入れた場合
   #  tx["tx1"] = "" if $game_switches[89] == true
    end
    #格納
    ms.push(tx)

  #====================================================================================================================
  end
end

#----------------------------------------------------------------------------------------------------------------------
end #ability
 end #def
end #class
