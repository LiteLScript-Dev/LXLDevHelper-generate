---@class Block 鏂瑰潡瀵硅薄 
---@field name String String
---@field type String String
---@field id Integer Integer
---@field pos IntPos IntPos
 Block = {}


---鑾峰彇鏂瑰潡瀵瑰簲鐨凬BT瀵硅薄
---@return NbtCompound 鏂瑰潡鐨凬BT瀵硅薄
function Block:getNbt()
end

---鍐欏叆鏂瑰潡瀵瑰簲鐨凬BT瀵硅薄
---@param nbt NbtCompound NBT瀵硅薄
---@return Boolean 鏄惁鎴愬姛鍐欏叆
function Block:setNbt(nbt)
end

---鑾峰彇鏂瑰潡鐨凚lockState
---鏂逛究鍑芥暟锛屽崗鍔╄В鏋愭柟鍧桞lockState骞惰浆鎹负Object锛屾柟渚胯鍙栦笌瑙ｆ瀽
---绛変环浜庤剼鏈墽琛宐lock.getNbt().getTag("states").toObject()
---@return Object 鏂瑰潡鐨凚lockState
function Block:getBlockState()
end