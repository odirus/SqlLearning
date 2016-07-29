## 查询每个人的昵称（多对多的关系）

常规查询方法
```
SELECT
	*
FROM
	tab_people t1
LEFT JOIN tab_r_people_nickname t2 ON t1.id = t2.people_id
LEFT JOIN tab_nickname t3 ON t2.nickname_id = t3.id
```

备注：
1) 如果 tab_r_people_nickname 中包含 tab_nickname 中不存在的 nickname_id，
则会造成连接部分为 null，如果 select 部分只包含 t3.* ，则会出现全为 null 的查询结果
2) 如果 tab_r_people_nickname 中包含 tab_people 中不存在的 people_id，则在关联的时候
则会自动过滤，所以查询出来的结果一定包含 people 部分

综上所述：
1) 连接查询时首表非常重要，如果选择错误将会带来错误的返回结果  
2) 首表不要选择中间表 tab_r,否则将会引入 IN 查询，影响效率，例如

```
SELECT
	*
FROM
	tab_r_people_nickname t1
LEFT JOIN tab_nickname t2 ON t1.nickname_id = t2.id
WHERE t1.people_id IN (
	SELECT id FROM tab_people WHERE tab_people.age  = 10
)
```

后记：
1) 连接查询时，左边左表不会为空，右边可能会为空，不过可以通过 where 进行限制查询
```
SELECT
	t1.*, t4.code_name AS resource_type_name
FROM
	tab_resource t1
LEFT JOIN tab_resource_product t2 ON t1.id = t2.resource_id
LEFT JOIN tab_product_version t3 ON t2.product_version_id = t3.id 
LEFT JOIN tab_total_code t4 ON t1.resource_type_id = t4.id 
WHERE
	t3.product_key = '***'
AND t3.product_version = '***'
AND t3.platform = '***'
```

