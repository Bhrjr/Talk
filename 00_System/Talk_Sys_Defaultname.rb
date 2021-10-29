=begin
#######################################################################################################################
 ●Talk_Sys Defaultname
 version 1.0.0
 夢魔の種族・性格ごとに、デフォルトの呼び方をそれぞれ個別に設定するメソッドです
 特定条件化で必ず発生する呼称は、各夢魔のcallnameで別途設定して下さい
#######################################################################################################################
#######################################################################################################################
 ◆更新履歴
 2016,05/07     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

#==============================================================================
# ■ Talk_Sys(分割定義 6)
#------------------------------------------------------------------------------
#   夢魔の口上を検索、表示するためのクラスです。
#   このクラスのインスタンスは $msg で参照されます。
#   ここでは仲間になった夢魔たちの一人称、二人称のデフォルトを設定します
#==============================================================================
class Talk_Sys
  #-----------------------------------------------------------------------------
  # ■特殊な呼び名のリスト
  #-----------------------------------------------------------------------------
  def specialname_check(battler)
    a_name_list = [] #一人称
    b_name_list = [] #二人称（主人公に対して）
    #---------------------------------------------------------------------------
    case battler.class_id
    #▼レッサーサキュバス種
    when 5,6
      case battler.personality
      when "Lusty" #OFE有り
        a_name_list = ["I"] 
        b_name_list = ["Player name"]
      when "Cheerful"
        a_name_list = ["I"] 
        b_name_list = ["Player name"] 
      end
    #▼サキュバス種
    when 10,11
      case battler.personality
      when "Lusty" #OFE有り
        a_name_list = ["I"]
        b_name_list = ["Player name"]
      when "Cheerful"
        a_name_list = ["I"]
        b_name_list = ["Player name"]
      end
    #▼サキュバスロード種
    when 15,16
      case battler.personality
      when "Lusty" #OFE有り
        a_name_list = ["I"]
        b_name_list = ["Boy"]
      when "Cheerful"
        a_name_list = ["I"]
        b_name_list = ["Player name"]
      end
    #--------------------------------------------------------------------------
    #▼インプ種
    when 21,22
      case battler.personality
      when "Adamant"
        a_name_list = ["I"]
        b_name_list = ["Big brother"]
      when "Show-off"
        a_name_list = ["I"]
        b_name_list = ["Bro"]
      when "Proud" #OFE
        a_name_list = ["I"]
        b_name_list = []
      end
    #▼デビル種
    when 26,27
      case battler.personality
      when "Adamant"
        a_name_list = ["I"]
        b_name_list = ["Player name"]
      when "Show-off"
        a_name_list = ["I"]
        b_name_list = ["Big Brother"]
      when "Proud" #OFE
        a_name_list = ["I"]
        b_name_list = []
      end
    #▼デーモン種
    when 31,32
      case battler.personality
      when "Adamant"
        a_name_list = ["I"]
        b_name_list = ["Boy"]
      when "Show-off"
        a_name_list = ["I"]
        b_name_list = ["you"]
      when "Proud" #OFE
        a_name_list = ["I"]
        b_name_list = []
      end
    #--------------------------------------------------------------------------
    #▼プチウィッチ種
    when 37,38
      case battler.personality
      when "Classy"
        a_name_list = ["I"]
        b_name_list = ["Old Timer"]
      when "Aloof"
        a_name_list = ["I"]
        b_name_list = ["Old Timer"]
      when "Lusty" #OFE
        a_name_list = ["I"]
        b_name_list = ["Player name"]
      end
    #▼ウィッチ種
    when 42,43
      case battler.personality
      when "Classy"
        a_name_list = ["I"]
        b_name_list = ["Player name"]
      when "Aloof"
        a_name_list = ["I"]
        b_name_list = ["Player name"]
      when "Lusty" #OFE
        a_name_list = ["I"]
        b_name_list = ["Player name"]
      end
    #--------------------------------------------------------------------------
    #▼キャスト種
    when 53
      case battler.personality
      when "Shy"
        a_name_list = ["I"]
        b_name_list = ["Player name"]
      when "Docile"
        a_name_list = ["I"]
        b_name_list = ["Mr. Player name"]
      end
    #--------------------------------------------------------------------------
    #▼スレイヴ種
    when 63
      case battler.personality
      when "Docile"
        a_name_list = ["I"]
        b_name_list = ["Brother Player name abbreviated"]
      when "倒錯"
        a_name_list = ["I"]
        b_name_list = ["Brother Player name abbreviated"]
      end
    #--------------------------------------------------------------------------
    #▼ナイトメア種
    when 74,75
      case battler.personality
      when "Aloof"
        a_name_list = ["I"]
        b_name_list = ["Player name"]
      when "Odd"
        a_name_list = ["I"]
        b_name_list = ["Mr. Player name"]
      when "Airheaded" #OFE
        a_name_list = ["Succubus name"]
        b_name_list = ["Player name-boy"]
      end
    #--------------------------------------------------------------------------
    #▼スライム種
    when 80
      case battler.personality
      when "Meek"
        a_name_list = ["I"]
        b_name_list = ["Master"]
      when "Airheaded"
        a_name_list = ["I"]
        b_name_list = ["Master"]
      end
    #▼クイーンスライム種
    when 85
      case battler.personality
      when "Meek"
        a_name_list = ["Queen"]
        b_name_list = ["sir"]
      when "Airheaded"
        a_name_list = ["Queen"]
        b_name_list = ["Master"]
      end
    #▼ゴールドスライム種
    when 90
      case battler.personality
      when "Classy"
        a_name_list = ["I"]
        b_name_list = ["Master"]
      when "Meek"
        a_name_list = ["I"]
        b_name_list = ["Master"]
      end
    #--------------------------------------------------------------------------
    #▼ファミリア種
    when 96,97
      case battler.personality
      when "Aloof"
        a_name_list = ["succubus name"]
        b_name_list = ["sir"]
      when "Docile"
        a_name_list = ["succubus name"]
        b_name_list = ["sir"]
      when "Perverse" #OFE
        a_name_list = ["succubus name"]
        b_name_list = ["sir"]
      end
    #--------------------------------------------------------------------------
    #▼ワーウルフ種
    when 100,101
      case battler.personality
      when "Show-off"
        a_name_list = ["I"]
        b_name_list = ["Boss"]
      when "Coaxing"
        a_name_list = ["I"]
        b_name_list = ["Boss"]
      when "Adamant" #OFE
        a_name_list = ["I"]
        b_name_list = ["Player name"]
      end
    #--------------------------------------------------------------------------
    #▼ワーキャット種
    when 104,105
      case battler.personality
      when "Airheaded"
        a_name_list = ["I"]
        b_name_list = ["Boss"]
      when "Nasty"
        a_name_list = ["I"]
        b_name_list = ["Boss"]
      when "Odd" #OFE
        a_name_list = ["I"]
        b_name_list = ["Boss"]
      end
    #--------------------------------------------------------------------------
    #▼ゴブリン種
    when 108
      case battler.personality
      when "Cheerful"
        a_name_list = ["I"]
        b_name_list = ["Big bro"]
      when "Coaxing"
        a_name_list = ["I"]
        b_name_list = ["Big bro"]
      end
    #▼ギャングコマンダー種
    when 111
      case battler.personality
      when "Cheerful"
        a_name_list = ["I"]
        b_name_list = ["Brother"]
      when "Coaxing"
        a_name_list = ["I"]
        b_name_list = ["Brother"]
      end
    #--------------------------------------------------------------------------
    #▼プリーステス種
    when 118
      case battler.personality
      when "Classy"
        a_name_list = ["I"]
        b_name_list = ["dear"]
      when "Proud"
        a_name_list = ["I"]
        b_name_list = ["sir"]
      end
    #--------------------------------------------------------------------------
    #▼カースメイガス種
    when 122
      case battler.personality
      when "Lusty"
        a_name_list = ["I"]
        b_name_list = ["Player name abbreviated-boy"]
      when "Perverse"
        a_name_list = ["I"]
        b_name_list = ["Player name abbreviated-boy"]
      end
    #--------------------------------------------------------------------------
    #▼アルラウネ種
    when 126,127
      case battler.personality
      when "Classy"
        a_name_list = ["I"]
        b_name_list = []
      when "Shy"
        a_name_list = ["I"]
        b_name_list = ["Player name abbreviated-boy"]
      when "Coaxing"
        a_name_list = ["I"]
        b_name_list = ["Mr. Player name abbreviated"]
      when "Nasty" #OFE
        a_name_list = ["I"]
        b_name_list = ["Player name abbreviated-boy"]
      end
    #--------------------------------------------------------------------------
    #▼マタンゴ種
    when 133
      case battler.personality
      when "Classy"
        a_name_list = ["I"]
        b_name_list = ["Player name"]
      when "Shy"
        a_name_list = ["I"]
        b_name_list = ["Player name"]
      end
    #--------------------------------------------------------------------------
    #▼ダークエンジェル種
    when 137
      case battler.personality
      when "Meek"
        a_name_list = ["I"]
        b_name_list = ["sir"]
      when "Nasty"
        a_name_list = ["I"]
        b_name_list = ["sir"]
      end
    #--------------------------------------------------------------------------
    #▼ガーゴイル種
    when 141
      case battler.personality
      when "Proud"
        a_name_list = ["I"]
        b_name_list = ["King"]
      when "Adamant"
        a_name_list = ["I"]
        b_name_list = ["Lord"]
      end
    #--------------------------------------------------------------------------
    #▼ミミック種
    when 145,146
      case battler.personality
      when "Cheerful"
        a_name_list = ["I"]
        b_name_list = ["Mr. Player name"]
      when "Nasty"
        a_name_list = ["I"]
        b_name_list = ["Mr. Player name"]
      when "Odd" #OFE
        a_name_list = ["I"]
        b_name_list = ["Sweetie"]
      when "Shy" #OFE
        a_name_list = ["I"]
        b_name_list = ["Sweetie"]
      end
    #--------------------------------------------------------------------------
    #▼キツネ種
    when 152
      case battler.personality
      when "Lusty"
        a_name_list = ["I"]
        b_name_list = ["My lord"]
      when "Proud"
        a_name_list = ["I"]
        b_name_list = ["My lord"]
      end
    #--------------------------------------------------------------------------
    #▼リリム種
    when 156
      case battler.personality
      when "Lusty"
        a_name_list = ["Succubus name abbreviated"]
        b_name_list = ["Player name abbreviated-boy"]
      when "Nasty"
        a_name_list = ["Succubus name abbreviated"]
        b_name_list = ["Player name abbreviated-boy"]
      end
    end
    #==========================================================================================================
    #★ユニーク夢魔(特殊呼称は無し)
    #==========================================================================================================
    # 返す
    return [a_name_list, b_name_list]
  end
  #-----------------------------------------------------------------------------
  # ■特殊な一人称のリストを取得する
  #-----------------------------------------------------------------------------
  def specialname_self_list(battler)
    return specialname_check(battler)[0]
  end
  #-----------------------------------------------------------------------------
  # ■特殊な二人称のリストを取得する
  #-----------------------------------------------------------------------------
  def specialname_hero_list(battler)
    return specialname_check(battler)[1]
  end
  #-----------------------------------------------------------------------------
  # ■特殊な一人称を取得する
  #-----------------------------------------------------------------------------
  def specialname_self(battler)
    # リストの１番最初のものを返す
    return specialname_self_list(battler)[0]
  end
  #-----------------------------------------------------------------------------
  # ■特殊な二人称を取得する
  #-----------------------------------------------------------------------------
  def specialname_hero(battler)
    # リストの１番最初のものを返す
    return specialname_hero_list(battler)[0]
  end
  #-----------------------------------------------------------------------------
  # ■特殊な二人称を設定する
  #-----------------------------------------------------------------------------
  def defaultname_select(battler)
    # 一人称
    a_name = specialname_self(battler)
    if a_name != "" and a_name != nil
      if rand(100) < 5 # 一定以下なら設定する
        battler.defaultname_self = a_name
      end
    end
    # ニ人称
    b_name = specialname_hero(battler)
    if b_name != "" and b_name != nil
      if rand(100) < 5 # 一定以下なら設定する
        battler.defaultname_hero = b_name
      end
    end
  end
end

=begin
  def defaultname_select(battler)
    #特殊表示があれば判定
    a_name = b_name = ""
    case battler.class_id
    #--------------------------------------------------------------------------
    #▼レッサーサキュバス種
    when 5,6
      #一人称
      if rand(100) < 5
        a_name = "あたし" if battler.personality == "好色"
        a_name = "ボク" if battler.personality == "陽気"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "主人公名くん" if battler.personality == "好色"
        b_name = "主人公名くん" if battler.personality == "陽気"
      end
    #▼サキュバス種
    when 10,11
      #一人称
      if rand(100) < 5
        a_name = "わたし" if battler.personality == "好色"
        a_name = "あたし" if battler.personality == "陽気"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "主人公名" if battler.personality == "好色"
        b_name = "主人公名" if battler.personality == "陽気"
      end
    #▼サキュバスロード種
    when 15,16
      #一人称
      if rand(100) < 5
        a_name = "わたくし" if battler.personality == "好色"
        a_name = "アタシ" if battler.personality == "陽気"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "坊や" if battler.personality == "好色"
        b_name = "主人公名" if battler.personality == "陽気"
      end
    #--------------------------------------------------------------------------
    #▼インプ種
    when 21,22
      #一人称
     if rand(100) < 5
        a_name = "あたし" if battler.personality == "勝ち気"
        a_name = "あたい" if battler.personality == "虚勢"
        a_name = "わらわ" if battler.personality == "高慢" #OFE
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "おにいさん" if battler.personality == "勝ち気"
        b_name = "おにーさん" if battler.personality == "虚勢"
      end
    #▼デビル種
    when 26,27
      #一人称
      if rand(100) < 5
        a_name = "あたい" if battler.personality == "勝ち気"
        a_name = "おれ" if battler.personality == "虚勢"
        a_name = "我" if battler.personality == "高慢" #OFE
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "主人公名" if battler.personality == "勝ち気"
        b_name = "兄貴" if battler.personality == "虚勢"
      end
    #▼デーモン種
    when 31,32
      #一人称
      if rand(100) < 5
        a_name = "あたい" if battler.personality == "勝ち気"
        a_name = "あたい" if battler.personality == "虚勢"
#        a_name = "我" if battler.personality == "虚勢"
        a_name = "我" if battler.personality == "高慢" #OFE
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "坊や" if battler.personality == "勝ち気"
        b_name = "お前" if battler.personality == "虚勢"
      end
    #--------------------------------------------------------------------------
    #▼プチウィッチ種
    when 37,38
      #一人称
      if rand(100) < 5
        a_name = "わたし" if battler.personality == "上品"
        a_name = "ぼく" if battler.personality == "淡泊"
        a_name = "僕" if battler.personality == "好色" #OFE
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "先輩" if battler.personality == "上品"
        b_name = "先輩" if battler.personality == "淡泊"
        b_name = "主人公名君" if battler.personality == "好色" #OFE
      end
    #▼ウィッチ種
    when 42,43
      #一人称
      if rand(100) < 5
        a_name = "わたくし" if battler.personality == "上品"
        a_name = "自分" if battler.personality == "淡泊"
        a_name = "わたし" if battler.personality == "好色" #OFE
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "主人公名君" if battler.personality == "上品"
        b_name = "主人公名君" if battler.personality == "淡泊"
        b_name = "主人公名君" if battler.personality == "好色" #OFE
      end
    #--------------------------------------------------------------------------
    #▼キャスト種
    when 53
      #一人称
      if rand(100) < 5
        a_name = "私" if battler.personality == "内気"
        a_name = "私" if battler.personality == "従順"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "主人公名さん" if battler.personality == "内気"
        b_name = "主人公名さん" if battler.personality == "従順"
      end
    #▼スレイヴ種
    when 63
      #一人称
      if rand(100) < 5
        a_name = "私" if battler.personality == "従順"
        a_name = "私" if battler.personality == "倒錯"
      end
      #二人称(主人公)
      if rand(100) < 10
        b_name = "主人公短縮名兄様" if battler.personality == "従順"
        b_name = "主人公短縮名兄様" if battler.personality == "倒錯"
      end
    #--------------------------------------------------------------------------
    #▼ナイトメア種
    when 74,75
      #一人称
      if rand(100) < 5
        a_name = "自分" if battler.personality == "淡泊"
        a_name = "うち" if battler.personality == "不思議"
        a_name = "夢魔名" if battler.personality == "天然" #OFE
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "主人公名くん" if battler.personality == "淡泊"
        b_name = "主人公名氏" if battler.personality == "不思議"
        b_name = "主人公名ちゃん" if battler.personality == "天然" #OFE
      end
    #--------------------------------------------------------------------------
    #▼スライム種
    when 80
      #一人称
      if rand(100) < 5
        a_name = "あたし" if battler.personality == "柔和"
        a_name = "ぼく" if battler.personality == "天然"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "ますたー" if battler.personality == "柔和"
        b_name = "ますたー" if battler.personality == "天然"
      end
    #▼クイーンスライム種
    when 85
      #一人称
      if rand(100) < 5
        a_name = "くいーん" if battler.personality == "柔和"
        a_name = "くいーん" if battler.personality == "天然"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "ますたーさま" if battler.personality == "柔和"
        b_name = "ますたー" if battler.personality == "天然"
      end
    #▼ゴールドスライム種
    when 90
      #一人称
      if rand(100) < 10
        a_name = "わたくし" if battler.personality == "上品"
        a_name = "わたくし" if battler.personality == "柔和"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "マスター" if battler.personality == "上品"
        b_name = "マスター" if battler.personality == "柔和"
      end
    #--------------------------------------------------------------------------
    #▼ファミリア種
    when 96,97
      #一人称
      if rand(100) < 10
        a_name = "夢魔名" if battler.personality == "淡泊"
        a_name = "夢魔名" if battler.personality == "従順"
        a_name = "夢魔名" if battler.personality == "倒錯" #OFE
      end
      #二人称(主人公)
      if rand(100) < 10
        b_name = "主人公名様" if battler.personality == "淡泊"
        b_name = "主人公名様" if battler.personality == "従順"
        b_name = "主人公名様" if battler.personality == "倒錯" #OFE
      end
    #--------------------------------------------------------------------------
    #▼ワーウルフ種
    when 100,101
      #一人称
      if rand(100) < 5
        a_name = "おれ" if battler.personality == "虚勢"
        a_name = "あたい" if battler.personality == "甘え性"
        a_name = "おれさま" if battler.personality == "勝ち気" #OFE
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "ご主人" if battler.personality == "虚勢"
        b_name = "ご主人" if battler.personality == "甘え性"
        b_name = "主人公名" if battler.personality == "勝ち気" #OFE
      end
    #--------------------------------------------------------------------------
    #▼ワーキャット種
    when 104,105
      #一人称
      if rand(100) < 5
        a_name = "あたい" if battler.personality == "天然"
        a_name = "あたい" if battler.personality == "意地悪"
      end
      if rand(100) < 30
        a_name = "ぼく" if battler.personality == "不思議" #OFE
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "ご主人" if battler.personality == "天然"
        b_name = "ご主人" if battler.personality == "意地悪"
        b_name = "ご主人" if battler.personality == "不思議" #OFE
      end
    #--------------------------------------------------------------------------
    #▼ゴブリン種
    when 108
      #一人称
      if rand(100) < 5
        a_name = "ぼく" if battler.personality == "陽気"
        a_name = "ぼく" if battler.personality == "甘え性"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "おにーちゃん" if battler.personality == "陽気"
        b_name = "おにーちゃん" if battler.personality == "甘え性"
      end
    #▼ギャングコマンダー種
    when 111
      #一人称
      if rand(100) < 5
        a_name = "あたい" if battler.personality == "陽気"
        a_name = "わたし" if battler.personality == "甘え性"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "お兄さま" if battler.personality == "陽気"
        b_name = "お兄さま" if battler.personality == "甘え性"
      end
    #--------------------------------------------------------------------------
    #▼プリーステス種
    when 118
      #一人称
      if rand(100) < 5
        a_name = "わたくし" if battler.personality == "上品"
        a_name = "わたくし" if battler.personality == "高慢"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "貴殿" if battler.personality == "上品"
        b_name = "卿" if battler.personality == "高慢"
      end
    #▼カースメイガス種
    when 122
      #一人称
      if rand(100) < 5
        a_name = "アタイ" if battler.personality == "好色"
        a_name = "私" if battler.personality == "倒錯"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "主人公短縮名ちゃん" if battler.personality == "好色"
        b_name = "主人公短縮名ちゃん" if battler.personality == "倒錯"
      end
    #--------------------------------------------------------------------------
    #▼アルラウネ種
    when 126,127
      #一人称
      if rand(100) < 5
        a_name = "あたし" if battler.personality == "上品"
        a_name = "あたし" if battler.personality == "内気"
        a_name = "あたし" if battler.personality == "甘え性"
        a_name = "私" if battler.personality == "意地悪" #OFE
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "主人公短縮名くん" if battler.personality == "内気"
        b_name = "主人公名さん" if battler.personality == "甘え性"
        b_name = "主人公短縮名ちゃん" if battler.personality == "意地悪" #OFE
      end
    #▼マタンゴ種
    when 133
      #一人称
      if rand(100) < 5
        a_name = "わたくし" if battler.personality == "上品"
        a_name = "わたし" if battler.personality == "内気"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "主人公名くん" if battler.personality == "上品"
        b_name = "主人公名くん" if battler.personality == "内気"
      end
    #--------------------------------------------------------------------------
    #▼ダークエンジェル種
    when 137
      #一人称
      if rand(100) < 5
        a_name = "わたし" if battler.personality == "柔和"
        a_name = "私" if battler.personality == "意地悪"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "主人公名様" if battler.personality == "柔和"
        b_name = "主人公名様" if battler.personality == "意地悪"
      end
    #--------------------------------------------------------------------------
    #▼ガーゴイル種
    when 141
      #一人称
      if rand(100) < 5
        a_name = "あたし" if battler.personality == "高慢"
        a_name = "おれ" if battler.personality == "勝ち気"
      end
      #二人称(主人公)
      if rand(100) < 10
        b_name = "主上" if battler.personality == "高慢"
        b_name = "ご主人" if battler.personality == "勝ち気"
      end
    #▼ミミック種
    when 145,146
      #一人称
      if rand(100) < 5
        a_name = "私め" if battler.personality == "陽気"
        a_name = "私め" if battler.personality == "意地悪"
        a_name = "小生" if battler.personality == "不思議" #OFE
        a_name = "小生" if battler.personality == "内気" #OFE
      end
      #二人称(主人公)
      if rand(100) < 10
        b_name = "主人公名殿" if battler.personality == "陽気"
        b_name = "主人公名殿" if battler.personality == "意地悪"
        b_name = "旦那" if battler.personality == "不思議" #OFE
        b_name = "旦那" if battler.personality == "内気" #OFE
      end
    #--------------------------------------------------------------------------
    #▼キツネ種
    when 152
      #一人称
      if rand(100) < 5
        a_name = "わっち" if battler.personality == "好色"
        a_name = "我" if battler.personality == "高慢"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "あるじ様" if battler.personality == "好色"
        b_name = "あるじ様" if battler.personality == "高慢"
      end
    #--------------------------------------------------------------------------
    #▼リリム種
    when 156
      #一人称
      if rand(100) < 5
        a_name = "夢魔短縮名" if battler.personality == "好色"
        a_name = "夢魔短縮名" if battler.personality == "意地悪"
      end
      #二人称(主人公)
      if rand(100) < 5
        b_name = "主人公短縮名兄ちゃん" if battler.personality == "好色"
        b_name = "主人公短縮名兄ちゃん" if battler.personality == "意地悪"
      end
    end
    #==========================================================================================================
    #★ユニークサキュバスたち(呼称は一種類のみ)
    #==========================================================================================================
    #★一人称が設定されていない場合、装填する
    if a_name != ""
      battler.defaultname_self = a_name
    end
    #★主人公への二人称が設定されていない場合、装填する
    if b_name != ""
      battler.defaultname_hero = b_name
    end
  end
end
=end
