---mc閫氱敤鎺ュ彛\n---@class mc 
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

---娉ㄥ唽涓�涓柊鐨勭帺瀹跺懡浠�
---@param cmd string 寰呮敞鍐岀殑鍛戒护
---@param description string 鍛戒护鎻忚堪鏂囨湰
---@param callback fun(player:Player,args:{}@string):boolean 娉ㄥ唽鐨勮繖涓懡浠よ鎵ц鏃讹紝鎺ュ彛鑷姩璋冪敤鐨勫洖璋冨嚱鏁�
---@param level number 锛堝彲閫夊弬鏁帮級鍛戒护鐨勬敞鍐岀瓑绾э紝榛樿涓� 0 锛屽嵆鎵�鏈変汉閮藉彲浠ユ墽琛�
---@return boolean 鏄惁鎴愬姛娉ㄥ唽
function mc.regPlayerCmd(cmd,description,callback,level)
end

---娉ㄥ唽涓�涓柊鐨勫悗鍙版帶鍒跺彴鍛戒护
---@param cmd string 寰呮敞鍐岀殑鍛戒护
---@param description string 鍛戒护鎻忚堪鏂囨湰
---@param callback fun(args:{}@string):boolean 娉ㄥ唽鐨勮繖涓懡浠よ鎵ц鏃讹紝鎺ュ彛鑷姩璋冪敤鐨勫洖璋冨嚱鏁�
---@return boolean 鏄惁鎴愬姛娉ㄥ唽
function mc.regConsoleCmd(cmd,description,callback)
end

---妯℃嫙浜х敓涓�涓帶鍒跺彴鍛戒护杈撳嚭
---@param output string 妯℃嫙浜х敓鐨勫懡浠よ緭鍑�
---@return boolean 鏄惁鎴愬姛鎵ц
function mc.sendCmdOutput(output)
end