

---杈撳嚭淇℃伅鍒版帶鍒跺彴
---杩欐槸涓轰簡鏂逛究杈撳嚭淇℃伅鑰岃璁＄殑渚挎嵎鍑芥暟
---@param data1? any 
---@param data2? any 
---@param data3?  
---@return nil 
function log(data1,data2,data3)
end

---杈撳嚭甯﹂鑹叉枃鏈�
---@param color string 姝よ杈撳嚭鐨勯鑹�
---@param data1? any 
---@param data2? any 
---@return nil 
function colorLog(color,data1,data2)
end

---鎺ㄨ繜涓�娈垫椂闂存墽琛屽嚱鏁�
---@param func fun(:):any 寰呮墽琛岀殑鍑芥暟
---@param msec number 鎺ㄨ繜鎵ц鐨勬椂闂达紙姣锛�
---@return number 姝や换鍔D
function setTimeout(func,msec)
end

---鎺ㄨ繜涓�娈垫椂闂存墽琛屼唬鐮佹锛坋val锛�
---@param code string 寰呮墽琛岀殑浠ｇ爜娈�
---@param msec number 鎺ㄨ繜鎵ц鐨勬椂闂达紙姣锛�
---@return number 姝や换鍔D
function setTimeout(code,msec)
end

---璁剧疆鍛ㄦ湡鎵ц鍑芥暟
---@param func fun():any 寰呮墽琛岀殑鍑芥暟
---@param msec number 鎵ц闂撮殧鍛ㄦ湡锛堟绉掞級
---@return number 姝や换鍔D
function setInterval(func,msec)
end

---璁剧疆鍛ㄦ湡鎵ц浠ｇ爜娈碉紙eval锛�
---@param code string 寰呮墽琛岀殑浠ｇ爜娈�
---@param msec number 鎵ц闂撮殧鍛ㄦ湡锛堟绉掞級
---@return number 姝や换鍔D
function setInterval(code,msec)
end

---鍙栨秷寤舵椂 / 鍛ㄦ湡鎵ц椤�
---@param timerid number 鐢卞墠鍑犱釜鍑芥暟杩斿洖鐨勪换鍔D
---@return boolean|nil 鏄惁鍙栨秷鎴愬姛
function clearInterval(timerid)
end