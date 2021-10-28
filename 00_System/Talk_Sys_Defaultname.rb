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
      when "好色" #OFE有り
        a_name_list = ["あたし"] 
        b_name_list = ["主人公名くん"]
      when "陽気"
        a_name_list = ["ボク"] 
        b_name_list = ["主人公名くん"] 
      end
    #▼サキュバス種
    when 10,11
      case battler.personality
      when "好色" #OFE有り
        a_name_list = ["わたし"]
        b_name_list = ["主人公名"]
      when "陽気"
        a_name_list = ["あたし"]
        b_name_list = ["主人公名"]
      end
    #▼サキュバスロード種
    when 15,16
      case battler.personality
      when "好色" #OFE有り
        a_name_list = ["わたくし"]
        b_name_list = ["坊や"]
      when "陽気"
        a_name_list = ["アタシ"]
        b_name_list = ["主人公名"]
      end
    #--------------------------------------------------------------------------
    #▼インプ種
    when 21,22
      case battler.personality
      when "勝ち気"
        a_name_list = ["あたし"]
        b_name_list = ["おにいさん"]
      when "虚勢"
        a_name_list = ["あたい"]
        b_name_list = ["おにーさん"]
      when "高慢" #OFE
        a_name_list = ["わらわ"]
        b_name_list = []
      end
    #▼デビル種
    when 26,27
      case battler.personality
      when "勝ち気"
        a_name_list = ["あたい"]
        b_name_list = ["主人公名"]
      when "虚勢"
        a_name_list = ["おれ"]
        b_name_list = ["兄貴"]
      when "高慢" #OFE
        a_name_list = ["我"]
        b_name_list = []
      end
    #▼デーモン種
    when 31,32
      case battler.personality
      when "勝ち気"
        a_name_list = ["あたい"]
        b_name_list = ["坊や"]
      when "虚勢"
        a_name_list = ["あたい"]
        b_name_list = ["お前"]
      when "高慢" #OFE
        a_name_list = ["我"]
        b_name_list = []
      end
    #--------------------------------------------------------------------------
    #▼プチウィッチ種
    when 37,38
      case battler.personality
      when "上品"
        a_name_list = ["わたし"]
        b_name_list = ["先輩"]
      when "淡泊"
        a_name_list = ["ぼく"]
        b_name_list = ["先輩"]
      when "好色" #OFE
        a_name_list = ["僕"]
        b_name_list = ["主人公名君"]
      end
    #▼ウィッチ種
    when 42,43
      case battler.personality
      when "上品"
        a_name_list = ["わたくし"]
        b_name_list = ["主人公名君"]
      when "淡泊"
        a_name_list = ["自分"]
        b_name_list = ["主人公名君"]
      when "好色" #OFE
        a_name_list = ["わたし"]
        b_name_list = ["主人公名君"]
      end
    #--------------------------------------------------------------------------
    #▼キャスト種
    when 53
      case battler.personality
      when "内気"
        a_name_list = ["私"]
        b_name_list = ["主人公名さん"]
      when "従順"
        a_name_list = ["私"]
        b_name_list = ["主人公名さん"]
      end
    #--------------------------------------------------------------------------
    #▼スレイヴ種
    when 63
      case battler.personality
      when "従順"
        a_name_list = ["私"]
        b_name_list = ["主人公短縮名兄様"]
      when "倒錯"
        a_name_list = ["私"]
        b_name_list = ["主人公短縮名兄様"]
      end
    #--------------------------------------------------------------------------
    #▼ナイトメア種
    when 74,75
      case battler.personality
      when "淡泊"
        a_name_list = ["自分"]
        b_name_list = ["主人公名くん"]
      when "不思議"
        a_name_list = ["うち"]
        b_name_list = ["主人公名氏"]
      when "天然" #OFE
        a_name_list = ["夢魔名"]
        b_name_list = ["主人公名ちゃん"]
      end
    #--------------------------------------------------------------------------
    #▼スライム種
    when 80
      case battler.personality
      when "柔和"
        a_name_list = ["あたし"]
        b_name_list = ["ますたー"]
      when "天然"
        a_name_list = ["ぼく"]
        b_name_list = ["ますたー"]
      end
    #▼クイーンスライム種
    when 85
      case battler.personality
      when "柔和"
        a_name_list = ["くいーん"]
        b_name_list = ["ますたーさま"]
      when "天然"
        a_name_list = ["くいーん"]
        b_name_list = ["ますたー"]
      end
    #▼ゴールドスライム種
    when 90
      case battler.personality
      when "上品"
        a_name_list = ["わたくし"]
        b_name_list = ["マスター"]
      when "柔和"
        a_name_list = ["わたくし"]
        b_name_list = ["マスター"]
      end
    #--------------------------------------------------------------------------
    #▼ファミリア種
    when 96,97
      case battler.personality
      when "淡泊"
        a_name_list = ["夢魔名"]
        b_name_list = ["主人公名様"]
      when "従順"
        a_name_list = ["夢魔名"]
        b_name_list = ["主人公名様"]
      when "倒錯" #OFE
        a_name_list = ["夢魔名"]
        b_name_list = ["主人公名様"]
      end
    #--------------------------------------------------------------------------
    #▼ワーウルフ種
    when 100,101
      case battler.personality
      when "虚勢"
        a_name_list = ["おれ"]
        b_name_list = ["ご主人"]
      when "甘え性"
        a_name_list = ["あたい"]
        b_name_list = ["ご主人"]
      when "勝ち気" #OFE
        a_name_list = ["おれさま"]
        b_name_list = ["主人公名"]
      end
    #--------------------------------------------------------------------------
    #▼ワーキャット種
    when 104,105
      case battler.personality
      when "天然"
        a_name_list = ["あたい"]
        b_name_list = ["ご主人"]
      when "意地悪"
        a_name_list = ["あたい"]
        b_name_list = ["ご主人"]
      when "不思議" #OFE
        a_name_list = ["ぼく"]
        b_name_list = ["ご主人"]
      end
    #--------------------------------------------------------------------------
    #▼ゴブリン種
    when 108
      case battler.personality
      when "陽気"
        a_name_list = ["ぼく"]
        b_name_list = ["おにーちゃん"]
      when "甘え性"
        a_name_list = ["ぼく"]
        b_name_list = ["おにーちゃん"]
      end
    #▼ギャングコマンダー種
    when 111
      case battler.personality
      when "陽気"
        a_name_list = ["あたい"]
        b_name_list = ["お兄さま"]
      when "甘え性"
        a_name_list = ["わたし"]
        b_name_list = ["お兄さま"]
      end
    #--------------------------------------------------------------------------
    #▼プリーステス種
    when 118
      case battler.personality
      when "上品"
        a_name_list = ["わたくし"]
        b_name_list = ["貴殿"]
      when "高慢"
        a_name_list = ["わたくし"]
        b_name_list = ["卿"]
      end
    #--------------------------------------------------------------------------
    #▼カースメイガス種
    when 122
      case battler.personality
      when "好色"
        a_name_list = ["アタイ"]
        b_name_list = ["主人公短縮名ちゃん"]
      when "倒錯"
        a_name_list = ["私"]
        b_name_list = ["主人公短縮名ちゃん"]
      end
    #--------------------------------------------------------------------------
    #▼アルラウネ種
    when 126,127
      case battler.personality
      when "上品"
        a_name_list = ["あたし"]
        b_name_list = []
      when "内気"
        a_name_list = ["あたし"]
        b_name_list = ["主人公短縮名ちゃん"]
      when "甘え性"
        a_name_list = ["あたし"]
        b_name_list = ["主人公名さん"]
      when "意地悪" #OFE
        a_name_list = ["私"]
        b_name_list = ["主人公短縮名ちゃん"]
      end
    #--------------------------------------------------------------------------
    #▼マタンゴ種
    when 133
      case battler.personality
      when "上品"
        a_name_list = ["わたくし"]
        b_name_list = ["主人公名くん"]
      when "内気"
        a_name_list = ["わたし"]
        b_name_list = ["主人公名くん"]
      end
    #--------------------------------------------------------------------------
    #▼ダークエンジェル種
    when 137
      case battler.personality
      when "柔和"
        a_name_list = ["わたし"]
        b_name_list = ["主人公名様"]
      when "意地悪"
        a_name_list = ["私"]
        b_name_list = ["主人公名様"]
      end
    #--------------------------------------------------------------------------
    #▼ガーゴイル種
    when 141
      case battler.personality
      when "高慢"
        a_name_list = ["あたし"]
        b_name_list = ["主上"]
      when "勝ち気"
        a_name_list = ["おれ"]
        b_name_list = ["ご主人"]
      end
    #--------------------------------------------------------------------------
    #▼ミミック種
    when 145,146
      case battler.personality
      when "陽気"
        a_name_list = ["私め"]
        b_name_list = ["主人公名殿"]
      when "意地悪"
        a_name_list = ["私め"]
        b_name_list = ["主人公名殿"]
      when "不思議" #OFE
        a_name_list = ["小生"]
        b_name_list = ["旦那"]
      when "内気" #OFE
        a_name_list = ["小生"]
        b_name_list = ["旦那"]
      end
    #--------------------------------------------------------------------------
    #▼キツネ種
    when 152
      case battler.personality
      when "好色"
        a_name_list = ["わっち"]
        b_name_list = ["あるじ様"]
      when "高慢"
        a_name_list = ["我"]
        b_name_list = ["あるじ様"]
      end
    #--------------------------------------------------------------------------
    #▼リリム種
    when 156
      case battler.personality
      when "好色"
        a_name_list = ["夢魔短縮名"]
        b_name_list = ["主人公短縮名兄ちゃん"]
      when "意地悪"
        a_name_list = ["夢魔短縮名"]
        b_name_list = ["主人公短縮名兄ちゃん"]
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