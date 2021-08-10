/**
 * mc閫氱敤鎺ュ彛
 */ 
class mc {
  
  
  


/**
 * 鐢熸垚涓�涓诞鐐规暟鍧愭爣瀵硅薄
 * @param {Float} x x 鍧愭爣
 * @param {Float} y y 鍧愭爣
 * @param {Float} z z 鍧愭爣
 * @param {Integer} dimid  缁村害ID锛�0 浠ｈ〃涓讳笘鐣岋紝1 浠ｈ〃涓嬬晫锛�2 浠ｈ〃鏈湴
 * @returns {FloatPos} 涓�涓诞鐐规暟鍧愭爣瀵硅薄
 */
 static newFloatPos(x,y,z,dimid )

/**
 * 鑾峰彇BDS鏈嶅姟绔増鏈彿
 * @returns {String} 鏈嶅姟绔増鏈彿瀛楃涓诧紝鏍煎紡褰㈠v1.17.10
 */
 static getBDSVersion()

/**
 * 鎵ц涓�鏉″悗鍙板懡浠�
 * @param {String} cmd 寰呮墽琛岀殑鍛戒护
 * @returns {Boolean} 鏄惁鎵ц鎴愬姛
 */
 static runcmd(cmd)

/**
 * 鎵ц涓�鏉″悗鍙板懡浠わ紙寮哄寲鐗堬級
 * @param {String} cmd 
 * @returns {ObjectRuncmdEx} 鍛戒护鎵ц缁撴灉Object
 */
 static runcmdEx(cmd)

/**
 * 閫氳繃鏂瑰潡鍧愭爣鎵嬪姩鐢熸垚鏂瑰潡瀵硅薄
閫氳繃姝ゅ嚱鏁版潵鎵嬪姩鐢熸垚瀵硅薄锛屾敞鎰忥紝浣犺鑾峰彇鐨勬柟鍧楀繀椤诲浜庡凡琚姞杞界殑鑼冨洿涓紝鍚﹀垯浼氬嚭鐜伴棶棰�
 * @param {IntPos} pos 鏂瑰潡鍧愭爣瀵硅薄锛堟垨鑰呬娇鐢▁, y, z, dimid鏉ョ‘瀹氭柟鍧椾綅缃級
 * @returns {Block|Null} 濡傝繑鍥炲�间负 Null 鍒欒〃绀鸿幏鍙栨柟鍧楀け璐r
娉ㄦ剰锛氫笉瑕侀暱鏈熶繚瀛樹竴涓柟鍧楀璞r
褰撴柟鍧楀璞″搴旂殑鏂瑰潡琚攢姣佹椂锛屽搴旂殑鏂瑰潡瀵硅薄灏嗗彉寰楁棤鏁堛�傚洜姝わ紝濡傛灉鏈夐暱鏈熸搷浣滄煇涓柟鍧楃殑闇�瑕侊紝璇烽�氳繃涓婅堪閫斿緞鑾峰彇瀹炴椂鐨勬柟鍧楀璞�
 */
 static getBlock(pos)

/**
 * 閫氳繃鏂瑰潡鍧愭爣鎵嬪姩鐢熸垚鏂瑰潡瀵硅薄
閫氳繃姝ゅ嚱鏁版潵鎵嬪姩鐢熸垚瀵硅薄锛屾敞鎰忥紝浣犺鑾峰彇鐨勬柟鍧楀繀椤诲浜庡凡琚姞杞界殑鑼冨洿涓紝鍚﹀垯浼氬嚭鐜伴棶棰�
 * @param {Integer} x 鏂瑰潡x鍧愭爣
 * @param {Integer} y 鏂瑰潡y鍧愭爣
 * @param {Integer} z 鏂瑰潡z鍧愭爣
 * @param {Integer} dimid 鏂瑰潡缁村害
 * @returns {Block|Null} 濡傝繑鍥炲�间负 Null 鍒欒〃绀鸿幏鍙栨柟鍧楀け璐r
娉ㄦ剰锛氫笉瑕侀暱鏈熶繚瀛樹竴涓柟鍧楀璞r
褰撴柟鍧楀璞″搴旂殑鏂瑰潡琚攢姣佹椂锛屽搴旂殑鏂瑰潡瀵硅薄灏嗗彉寰楁棤鏁堛�傚洜姝わ紝濡傛灉鏈夐暱鏈熸搷浣滄煇涓柟鍧楃殑闇�瑕侊紝璇烽�氳繃涓婅堪閫斿緞鑾峰彇瀹炴椂鐨勬柟鍧楀璞�
 */
 static getBlock(x,y,z,dimid)

/**
 * 璁剧疆鎸囧畾浣嶇疆鐨勬柟鍧�
 * @param {IntPos} pos 鐩爣鏂瑰潡浣嶇疆
 * @param {Block|String} block 瑕佽缃垚鐨勬柟鍧楀璞℃垨鑰呮柟鍧楀悕
 * @returns {Boolean} 鏄惁鎴愬姛璁剧疆
 */
 static setBlock(pos,block)

/**
 * 璁剧疆鎸囧畾浣嶇疆鐨勬柟鍧梊r
閫氳繃姝ゅ嚱鏁帮紝灏嗕竴涓潗鏍囧搴旂殑鏂瑰潡璁剧疆鎴愬彟涓�涓紝绫讳技浜庡懡浠� /setblock
濡傛灉浣跨敤鏂瑰潡鍚嶇О锛屽垯鏂瑰潡鍚嶇О椤讳负鏍囧噯绫诲瀷鍚嶏紝涓旈瀛楁瘝澶у啓锛岀被浼间簬 Stone
鍚﹀垯锛屽嚱鏁板皢鎵ц澶辫触
 * @param {Integer} x 鏂瑰潡x鍧愭爣
 * @param {Integer} y 鏂瑰潡y鍧愭爣
 * @param {Integer} z 鏂瑰潡z鍧愭爣
 * @param {Integer} dimid 鏂瑰潡缁村害
 * @param {Block|String} block 瑕佽缃垚鐨勬柟鍧楀璞℃垨鑰呮柟鍧楀悕
 * @returns {Boolean} 鏄惁鎴愬姛璁剧疆
 */
 static setBlock(x,y,z,dimid,block)

/**
 * 鍦ㄦ寚瀹氫綅缃敓鎴愮矑瀛愭晥鏋�
 * @param {IntPos} pos 鐩爣鏂瑰潡浣嶇疆
 * @param {String} type 瑕佺敓鎴愮殑绮掑瓙鏁堟灉鍚嶇О锛堝彲鏌ラ槄wiki寰楃煡锛�
 * @returns {Boolean} 鏄惁鎴愬姛鐢熸垚
 */
 static spawnParticle(pos,type)

/**
 * 鍦ㄦ寚瀹氫綅缃敓鎴愮矑瀛愭晥鏋�
 * @param {Integer} x 鏂瑰潡x鍧愭爣
 * @param {Integer} y 鏂瑰潡y鍧愭爣
 * @param {Integer} z 鏂瑰潡z鍧愭爣
 * @param {String} type 瑕佺敓鎴愮殑绮掑瓙鏁堟灉鍚嶇О锛堝彲鏌ラ槄wiki寰楃煡锛�
 * @returns {Boolean} 鏄惁鎴愬姛鐢熸垚
 */
 static spawnParticle(x,y,z,type)  



}
