/**
 * 鏂瑰潡瀵硅薄
 */ 
class Block {
  
/**
 * 娓告垙鍐呮樉绀虹殑鏂瑰潡鍚嶇О
 * @type String
 */ 
 name;
/**
 * 鏂瑰潡鏍囧噯绫诲瀷鍚峔t
 * @type String
 */ 
 type;
/**
 * 鏂瑰潡鐨勬父鎴忓唴id
 * @type Integer
 */ 
 id;
/**
 * 鏂瑰潡鎵�鍦ㄥ潗鏍�
 * @type IntPos
 */ 
 pos;
  
  


/**
 * 鑾峰彇鏂瑰潡瀵瑰簲鐨凬BT瀵硅薄
 * @returns {NbtCompound} 鏂瑰潡鐨凬BT瀵硅薄
 */
 getNbt()

/**
 * 鍐欏叆鏂瑰潡瀵瑰簲鐨凬BT瀵硅薄
 * @param {NbtCompound} nbt NBT瀵硅薄
 * @returns {boolean} 鏄惁鎴愬姛鍐欏叆
 */
 setNbt(nbt)

/**
 * 鑾峰彇鏂瑰潡鐨凚lockState
鏂逛究鍑芥暟锛屽崗鍔╄В鏋愭柟鍧桞lockState骞惰浆鎹负Object锛屾柟渚胯鍙栦笌瑙ｆ瀽
绛変环浜庤剼鏈墽琛宐lock.getNbt().getTag("states").toObject()
 * @returns {Object} 鏂瑰潡鐨凚lockState
 */
 getBlockState()  



}
