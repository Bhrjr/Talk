=begin
#######################################################################################################################
 ●『インプ（白）』マップ口上(チャット)
 ●性格：高慢
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





class MsgImp_B < MsgBase
 def msg_map_chat_02
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
  if $msg.t_enemy.have_ability?("Significant Other")
  #====================================================================================================================
    tx["tx1"] = "\"Hey, #{target}....\n #{myname}'m so hungry....\\H\n Can I have some of your hot milk? \\H\""
    tx["tx4"] = "#{speaker} smiled mischievously and\nstarted rubbing #{master}'s lower half....!" + "TALKTEXT"

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    tx["tx1"] = "\"Hey, #{target}....\n My tummy's growling, see? \\H\""
    tx["tx4"] = "#{speaker} clung onto #{master}!" + "TALKTEXT"

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    tx["tx1"] = "\"Hey, #{target}....\n #{myname}'m so hungry....\n Aren't there anything to eat?\""
    tx["tx4"] = "#{speaker} appears to be hungry...." + "TALKTEXT"

  end
  #格納
  ms.push(tx)

#----------------------------------------------------------------------------------------------------------------------
#■気力体力減少中(３段階)
elsif $msg.t_enemy.spp <= 20 or $msg.t_enemy.hpp <= 20
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("Significant Other")
  #====================================================================================================================
    tx["tx1"] = "\"Hey, #{target}....\n Can't we take a short break....? \""
    tx["tx4"] = "#{speaker} clung onto my arms.\nShe seems to be more tired than I think...." + "TALKTEXT"

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    tx["tx1"] = "\"Hey, #{target}....\n Can't we take a short break....? \""
    tx["tx4"] = "#{speaker} clung onto my arms.\nShe seems to be more tired than I think...." + "TALKTEXT"

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    tx["tx1"] = "\"Augh, #{myname}'m so tired....\n Let's go home, #{target}\""
    tx["tx4"] = "#{speaker} pulled the hem of his clothes....\nLooks like she's worn out...." + "TALKTEXT"

  end
  #格納
  ms.push(tx)

#----------------------------------------------------------------------------------------------------------------------
#■通常時
else
  #★汎用口上(環境に関わらず出てくる)
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("Significant Other")
  #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "\"Let's hurry up and go, #{target}♪\n It's time for me to be in the scene\\H\""
    tx["tx4"] = "Beaming with smile, #{speaker}\nembraced #{master}!" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hey, hey, #{target}.\n You like teeny-tiny girls?\""
    tx["tx4"] = "With a curious look, #{speaker} is\nwaiting eagerly for #{master}'s reply.\nHow he should answer troubles him greatly...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Maaan, where could it have gone....?\n Ah, #{target}. You know where it went?\""
    tx["tx4"] = "#{speaker} glanced up at #{master} and\npulled the hem of my clothes.\n....Her flat chest can be seen." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hum-dee-hum♪\n Lu-lala-lila♪\""
    tx["tx4"] = "#{speaker} is singing a song out of tune\nShe looks to be in a good mood right now." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Wonder how my pals are doing.\n Hey, can I go see them next time?\n You'll come with me of course, #{target}\\H\""
    tx["tx4"] = "#{speaker} gave a carefree smile.\n....Being friends of hers can only mean....\nHow should I answer then?" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "\"Let's hurry up and go, #{target}♪\n It's time for me to be in the scene\\H\""
    tx["tx4"] = "Beaming with smile, #{speaker}\nembraced #{master}!" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hey, hey, #{target}.\n You like teeny-tiny girls?\""
    tx["tx4"] = "With a curious look, #{speaker} is\nwaiting eagerly for #{master}'s reply.\nHow he should answer troubles him greatly...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Maaan, where could it have gone....?\n Ah, #{target}. You know where it went?\""
    tx["tx4"] = "#{speaker} glanced up at #{master} and\npulled the hem of my clothes.\n....Her flat chest can be seen." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hum-dee-hum♪\n Lu-lala-lila♪\""
    tx["tx4"] = "#{speaker} is singing a song out of tune\nShe looks to be in a good mood right now." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Wonder how my pals are doing.\n Hey, can I go see them next time?\n You'll come with me of course, #{target}\\H\""
    tx["tx4"] = "#{speaker} gave a carefree smile.\n....Being friends of hers can only mean....\nHow should I answer then?" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    #▼パターン１ 
    tx["tx1"] = "\"Hey hey, #{target}!\n What's that? Let's go and see♪\""
    tx["tx4"] = "Having spotted something, #{speaker}\nsuddenly pulled on my arms!\n....I honestly wish she'd ask first." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hey hey, #{target}?\n Aren't there anything fun to do?\n #{myname}'m so booored....\""
    tx["tx4"] = "#{speaker} is swinging her\nlegs and tail with a bored look...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン３
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"...........Hmmm....\""
    tx["tx4"] = "#{speaker} is groaning with a serious look....\nLet's leave her alone for now...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン４
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Hum-dee-hum♪\n Lu-lala-lila♪\""
    tx["tx4"] = "#{speaker} is singing a song out of tune\nShe looks to be in a good mood right now." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン５
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Wonder how my pals are doing.\n How 'bout we go see them next time?\""
    tx["tx4"] = "Remember something to herself,\n #{speaker} is at a loss and pondering...." + "TALKTEXT"
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
  when "Hub"
    #▽屋内
    if $game_map.type.include?("Indoors")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "\"Hey hey, #{target}♪\n Let's play hide-and-seek over there♪\""
      tx["tx4"] = "#{speaker} pointed to the bedroom and\npulled the hem of his clothes...." + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "\"Ah, this looks yummy!\n Hey hey, #{target}! Can I have it?\""
      tx["tx4"] = "Not waiting for an answer, #{speaker}\n stuffs her cheeks with the sweets she found in delight...." + "TALKTEXT"
      #格納
      ms.push(tx)
    #▽屋外
    else
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "\"#{giggle}\n Let's play hide-and-seek, #{target}♪\n You're it! Run-♪\""
      tx["tx4"] = "#{speaker} ran away without waiting for a reply!\n....Between the barrels, you can see her tail shaking cheerfully.\n....Should I be playing along?" + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}.\n Your house wall's so blank white and feels empty.\n How 'bout #{myname} draw some drawings on it?\""
      tx["tx4"] = "#{speaker} has her eyes glittering....\nNow how do I make her give up on it....?" + "TALKTEXT"
      #格納
      ms.push(tx)
    end
  #================================#
  #▼酒場                          #
  #================================#
  when "Pub"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Wow, everybody's drinking such yummy-looking juice!\n Hey #{target}!\n#{myname} wanna drink something too♪\""
    tx["tx4"] = "#{speaker} is looking at the counter and hopping up and down.\nCould there be anything that she can drink?" + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Whoa, there's all kinds of guys here♪\nOh, hi there, Ms. Rabbit\\H\""
    tx["tx4"] = "Taking a liking to the bunny girl, #{speaker}\n is keenly glancing at her...." + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼月明かりの樹海                #
  #================================#
  when "Moonlit Woodland"
    #▽森林
    if $game_map.type.include?("Forest")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "\"What's with this nice smell....?\n Ah, there a flower here!\n Let's go and look, #{target}!\""
      tx["tx4"] = "#{speaker} pulled the hem of my clothes!\n....The exploration isn't going as I thought." + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "\"#{myname} often come here to play♪\n Wonder if my friends will come?\""
      tx["tx4"] = "#{speaker} is gazing at her surroundings in delight...." + "TALKTEXT"
      #格納
      ms.push(tx)
    end
    #▽水場
    if $game_map.type.include?("Watering hole")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "\"Wow, what a clean-looking place.\n Hey, let's swim together♪\""
      tx["tx4"] = "#{speaker} pulled the hem of my clothes!\n....The exploration isn't going as I thought." + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "\"Aren't there any fishes here....?\nAh, I saw one just now♪\""
      tx["tx4"] = "#{speaker} is cheerfully looking at the water's surface...." + "TALKTEXT"
      #格納
      ms.push(tx)
    end
    #▽暗所
    if $game_map.type.include?("Unlit area")
      #▼パターン１
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "\"Ahaha, it's so dark I can't see anything♪\n#{target}, you better not fall down since I can't fly, got it?\\|\n ....Owie\""
      tx["tx4"] = "#{speaker} is in tears from\nbumping her head on the wall's protrusion...." + "TALKTEXT"
      #格納
      ms.push(tx)
      #-------------------------------------------------------------
      #▼パターン２
      tx={} #ハッシュ再挿入
      #-------------------------------------------------------------
      tx["tx1"] = "\"I often play hide-and-seek with all my buddies here♪\nThere's all kinds of places for us to hide in♪\""
      tx["tx4"] = "I guess a succubus suddenly showing up is\n simply a hide-and-seek in overtime...." + "TALKTEXT"
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
  when "Church Library"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Nnngh, it's too quiet here for me to chill out.\n Hey, #{target}, let's go and play someplace else♪\""
      tx["tx4"] = "#{speaker} pulled the hem of my clothes!\n....The exploration isn't going as I thought." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Whoa, lots and lots of books-.\n Hey, aren't there any picture books?\n #{myname} love reading picture books\\H\""
    tx["tx4"] = "#{speaker} is searching for a picture book from the bookshelf.\nI highly doubt there's one in a place like this though...." + "TALKTEXT"
    #格納
    ms.push(tx)
  #================================#
  #▼パルフィス密教会              #
  #================================#
  when "Palfau Secret Church"
    #▼パターン１
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Mmmmph, this place feels kinda weird.\n But I do think it's wide enough to make for a fun racing♪\""
    tx["tx4"] = "I somehow grabbed hold of #{speaker} who'd start sprinting at any moment.\nLooks like I aught to tell her off...." + "TALKTEXT"
    #格納
    ms.push(tx)
    #-------------------------------------------------------------
    #▼パターン２
    tx={} #ハッシュ再挿入
    #-------------------------------------------------------------
    tx["tx1"] = "\"Wowie, this house's so big.\n I think #{myname}'m gonna get lost....\""
    tx["tx4"] = "#{speaker} is looking around restless...." + "TALKTEXT"
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
