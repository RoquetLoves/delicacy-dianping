
--- 比较线程标识与锁中的标识是否一致
-- 获取锁中的线程标识 get key

-- 比较线程标识与锁中的标识是否一致
if(redis.call('get',KEYS[1]) == ARGV[1]) then
-- 释放锁 del key
return redis.call('del', KEYS[1])
-- end结束
end
return 0