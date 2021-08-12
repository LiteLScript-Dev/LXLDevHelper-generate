---@class mc mc閫氱敤鎺ュ彛 
 mc = {}


---鐢熸垚涓�涓诞鐐规暟鍧愭爣瀵硅薄
---@param x Float x 鍧愭爣
---@param y Float y 鍧愭爣
---@param z Float z 鍧愭爣
---@param dimid  number 缁村害ID锛�0 浠ｈ〃涓讳笘鐣岋紝1 浠ｈ〃涓嬬晫锛�2 浠ｈ〃鏈湴
---@return FloatPos 涓�涓诞鐐规暟鍧愭爣瀵硅薄
function mc.newFloatPos(x,y,z,dimid )
end

---鑾峰彇BDS鏈嶅姟绔増鏈彿
---@return string 鏈嶅姟绔増鏈彿瀛楃涓诧紝鏍煎紡褰㈠v1.17.10
function mc.getBDSVersion()
end

---鎵ц涓�鏉″悗鍙板懡浠�
---@param cmd string 寰呮墽琛岀殑鍛戒护
---@return boolean 鏄惁鎵ц鎴愬姛
function mc.runcmd(cmd)
end

---鎵ц涓�鏉″悗鍙板懡浠わ紙寮哄寲鐗堬級
---@param cmd string 鎸囦护鍐呭
---@return ObjectRuncmdEx 鍛戒护鎵ц缁撴灉Object
function mc.runcmdEx(cmd)
end

---閫氳繃鏂瑰潡鍧愭爣鎵嬪姩鐢熸垚鏂瑰潡瀵硅薄
---閫氳繃姝ゅ嚱鏁版潵鎵嬪姩鐢熸垚瀵硅薄锛屾敞鎰忥紝浣犺鑾峰彇鐨勬柟鍧楀繀椤诲浜庡凡琚姞杞界殑鑼冨洿涓紝鍚﹀垯浼氬嚭鐜伴棶棰�
---@param pos IntPos 鏂瑰潡鍧愭爣瀵硅薄锛堟垨鑰呬娇鐢▁, y, z, dimid鏉ョ‘瀹氭柟鍧椾綅缃級
---@return Block|nil 濡傝繑鍥炲�间负 nil 鍒欒〃绀鸿幏鍙栨柟鍧楀け璐r
---娉ㄦ剰锛氫笉瑕侀暱鏈熶繚瀛樹竴涓柟鍧楀璞r
---褰撴柟鍧楀璞″搴旂殑鏂瑰潡琚攢姣佹椂锛屽搴旂殑鏂瑰潡瀵硅薄灏嗗彉寰楁棤鏁堛�傚洜姝わ紝濡傛灉鏈夐暱鏈熸搷浣滄煇涓柟鍧楃殑闇�瑕侊紝璇烽�氳繃涓婅堪閫斿緞鑾峰彇瀹炴椂鐨勬柟鍧楀璞�
function mc.getBlock(pos)
end

---閫氳繃鏂瑰潡鍧愭爣鎵嬪姩鐢熸垚鏂瑰潡瀵硅薄
---閫氳繃姝ゅ嚱鏁版潵鎵嬪姩鐢熸垚瀵硅薄锛屾敞鎰忥紝浣犺鑾峰彇鐨勬柟鍧楀繀椤诲浜庡凡琚姞杞界殑鑼冨洿涓紝鍚﹀垯浼氬嚭鐜伴棶棰�
---@param x number 鏂瑰潡x鍧愭爣
---@param y number 鏂瑰潡y鍧愭爣
---@param z number 鏂瑰潡z鍧愭爣
---@param dimid number 鏂瑰潡缁村害
---@return Block|nil 濡傝繑鍥炲�间负 nil 鍒欒〃绀鸿幏鍙栨柟鍧楀け璐r
---娉ㄦ剰锛氫笉瑕侀暱鏈熶繚瀛樹竴涓柟鍧楀璞r
---褰撴柟鍧楀璞″搴旂殑鏂瑰潡琚攢姣佹椂锛屽搴旂殑鏂瑰潡瀵硅薄灏嗗彉寰楁棤鏁堛�傚洜姝わ紝濡傛灉鏈夐暱鏈熸搷浣滄煇涓柟鍧楃殑闇�瑕侊紝璇烽�氳繃涓婅堪閫斿緞鑾峰彇瀹炴椂鐨勬柟鍧楀璞�
function mc.getBlock(x,y,z,dimid)
end

---璁剧疆鎸囧畾浣嶇疆鐨勬柟鍧�
---@param pos IntPos 鐩爣鏂瑰潡浣嶇疆
---@param block Block|string 瑕佽缃垚鐨勬柟鍧楀璞℃垨鑰呮柟鍧楀悕
---@return boolean 鏄惁鎴愬姛璁剧疆
function mc.setBlock(pos,block)
end

---璁剧疆鎸囧畾浣嶇疆鐨勬柟鍧梊r
---閫氳繃姝ゅ嚱鏁帮紝灏嗕竴涓潗鏍囧搴旂殑鏂瑰潡璁剧疆鎴愬彟涓�涓紝绫讳技浜庡懡浠� /setblock
---濡傛灉浣跨敤鏂瑰潡鍚嶇О锛屽垯鏂瑰潡鍚嶇О椤讳负鏍囧噯绫诲瀷鍚嶏紝涓旈瀛楁瘝澶у啓锛岀被浼间簬 Stone
---鍚﹀垯锛屽嚱鏁板皢鎵ц澶辫触
---@param x number 鏂瑰潡x鍧愭爣
---@param y number 鏂瑰潡y鍧愭爣
---@param z number 鏂瑰潡z鍧愭爣
---@param dimid number 鏂瑰潡缁村害
---@param block Block|string 瑕佽缃垚鐨勬柟鍧楀璞℃垨鑰呮柟鍧楀悕
---@return boolean 鏄惁鎴愬姛璁剧疆
function mc.setBlock(x,y,z,dimid,block)
end

---鍦ㄦ寚瀹氫綅缃敓鎴愮矑瀛愭晥鏋�
---@param pos IntPos 鐩爣鏂瑰潡浣嶇疆
---@param type string 瑕佺敓鎴愮殑绮掑瓙鏁堟灉鍚嶇О锛堝彲鏌ラ槄wiki寰楃煡锛�
---@return boolean 鏄惁鎴愬姛鐢熸垚
function mc.spawnParticle(pos,type)
end

---鍦ㄦ寚瀹氫綅缃敓鎴愮矑瀛愭晥鏋�
---@param x number 鏂瑰潡x鍧愭爣
---@param y number 鏂瑰潡y鍧愭爣
---@param z number 鏂瑰潡z鍧愭爣
---@param type string 瑕佺敓鎴愮殑绮掑瓙鏁堟灉鍚嶇О锛堝彲鏌ラ槄wiki寰楃煡锛�
---@return boolean 鏄惁鎴愬姛鐢熸垚
function mc.spawnParticle(x,y,z,type)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onPreJoin"" 鐜╁寮�濮嬭繛鎺ユ湇鍔″櫒
---@param callback fun(player:Player): 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onJoin"" 鐜╁杩涘叆娓告垙锛堝姞杞戒笘鐣屽畬鎴愶級
---@param callback fun(player:Player): 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onLeft"" 鐜╁绂诲紑娓告垙
---@param callback fun(player:Player): 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onRespawn"" 鐜╁閲嶇敓
---@param callback fun(player:Player): 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onPlayerDie"" 鐜╁姝讳骸
---@param callback fun(player:Player): 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onPlayerCmd"" 鐜╁鎵ц鍛戒护
---@param callback fun(player:Player,cmd:string):boolean 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onChat"" 鐜╁鍙戦�佽亰澶╀俊鎭�
---@param callback fun(player:Player,msg:string):boolean 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onChangeDim"" 鐜╁鍒囨崲缁村害
---@param callback fun(player:Player): 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onJump"" 鐜╁璺宠穬
---@param callback fun(player:Player): 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onSneak"" 鐜╁鍒囨崲娼滆鐘舵��
---@param callback fun(player:Player,isSneaking:boolean): 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onAttack"" 鐜╁鏀诲嚮瀹炰綋
---@param callback fun(player:Player,entity:Entity):boolean 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onUseItem"" 鐜╁浣跨敤鐗╁搧
---@param callback fun(player:Player,item:Item):boolean 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onUseItemOn"" 鐜╁瀵规柟鍧椾娇鐢ㄧ墿鍝侊紙鐐瑰嚮鍙抽敭锛�
---@param callback fun(player:Player,item:Item,block:Block):boolean 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onTakeItem"" 鐜╁鎹¤捣鐗╁搧
---@param callback fun(player:Player,entity:Entity):boolean 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onDropItem"" 鐜╁涓㈠嚭鐗╁搧
---@param callback fun(player:Player,item:Item):boolean 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onEat"" 鐜╁椋熺敤椋熺墿
---@param callback fun(player:Player,item:Item): 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onStartDestroyBlock"" 鐜╁寮�濮嬬牬鍧忔柟鍧� / 鐐瑰嚮宸﹂敭
---@param callback fun(player:Player,block:Block): 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onDestroyBlock"" 鐜╁鐮村潖鏂瑰潡瀹屾垚
---@param callback fun(player:Player,block:Block):boolean 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onPlaceBlock"" 鐜╁鏀剧疆鏂瑰潡
---@param callback fun(player:Player,block:Block):boolean 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onOpenContainer"" 鐜╁鎵撳紑瀹瑰櫒鏂瑰潡
---@param callback fun(player:Player,block:Block):boolean 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onCloseContainer"" 鐜╁鍏抽棴瀹瑰櫒鏂瑰潡
---@param callback fun(player:Player,block:Block):boolean 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onInventoryChange"" 鐜╁鐗╁搧鏍忓彉鍖�
---@param callback fun(player:Player,slotNum:number,oldItem:Item,newItem:Item): 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onMove"" 鐜╁绉诲姩
---@param callback fun(player:Player,pos:FloatPos): 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onSetArmor"" 鐜╁鏀瑰彉鐩旂敳鏍�
---@param callback fun(player:Player,slotNum:number,item:Item): 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onUseRespawnAnchor"" 鐜╁浣跨敤閲嶇敓閿�
---@param callback fun(player:Player,pos:IntPos):boolean 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end

---鏂板鐩戝惉鍣╘r
---鎷︽埅浜嬩欢
---鍦↙XL鐨勪簨浠剁洃鍚郴缁熶腑锛屼竴鑸綘鍙互閫氳繃return false鏉ユ嫤鎴煇涓彲浠ヨ鎷︽埅鐨勪簨浠躲�傛嫤鎴簨浠舵剰鍛崇潃鍦ㄨ剼鏈嫤鎴箣鍚嶣DS灏嗕笉鍐嶅鐞嗚繖涓簨浠讹紝灏卞儚浠栦粠娌″彂鐢熻繃涓�鏍枫�俓r
---涓句緥锛氭嫤鎴煇鏉¤亰澶╀簨浠讹紝浼氶�犳垚鎵�鏈変汉閮界湅涓嶅埌杩欐潯鑱婂ぉ娑堟伅
---涓嶈繃锛屾嫤鎴簨浠朵粎瀵笲DS鏈夋晥銆俓r
---涔熷氨鏄锛屾嫤鎴簨浠跺苟涓嶅奖鍝嶅叾浠栨湁瀵瑰簲鐩戝惉鐨凩XL鑴氭湰澶勭悊杩欎釜浜嬩欢锛屽彧鏄疊DS鏃犳硶鍐嶆帴鏀跺埌瀹冦�俓r
---閬垮紑璇尯
---鏈変簺鏃跺�欙紝鍦ㄦ煇浜涗簨浠剁洃鍚唴閮ㄨ皟鐢ㄧ壒瀹氱殑API浼氶�犳垚姝诲惊鐜穿鏈嶏紝璇峰姟蹇呴伩鍏嶈繖浜涙儏鍐电殑鍙戠敓
---涓句緥锛氬湪onConsoleCmd浜嬩欢鐩戝惉涓皟鐢╩c.runcmd(Ex)绯诲垪鍑芥暟鎵ц鍚庡彴鎸囦护锛屽皢瀵艰嚧姝诲惊鐜�
---@param event ""onOpenContainerScreen"" 鐜╁鎵撳紑瀹瑰櫒绫籊UI
---@param callback fun(player:Player):boolean 浜嬩欢鍥炶皟
---@return boolean 鏄惁娣诲姞鎴愬姛
function mc.listen(event,callback)
end