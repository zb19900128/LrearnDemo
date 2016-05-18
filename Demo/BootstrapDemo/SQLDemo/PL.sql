-- SQL Server 存储过程
-- Transact-SQL中的存储过程，非常类似于Java语言中的方法，它可以重复调用。当存储过程执行一次后，
-- 可以将语句缓存中，这样下次执行的时候直接使用缓存中的语句。这样就可以提高存储过程的性能。

-- 存储过程概念
-- 存储过程Procedure是一组为了完成特定功能的SQL语句集合，经编译后存储在数据库中，用户通过指定存储过程的名称并给出参数来执行。
-- 存储过程中可以包含逻辑控制语句和数据操纵语句，它可以接受参数、输出参数、返回单个或多个结果集以及返回值。
-- 由于存储过程在创建时即在数据库服务器上进行了编译并存储在数据库中，所以存储过程运行要比单个的SQL语句块要快
-- 同时由于在调用时只需用提供存储过程名和必要的参数信息，所以在一定程度上也可以减少网络流量、简单网络负担。

--1、存储过程的优点

--A、存储过程允许标准组件式编程
--    存储过程创建后可以在程序中被多次调用执行，而不必重新编写该存储过程的SQL语句。而且数据库专业人员可以随时对存储
--过程进行修改，但对应用程序源代码却毫无影响，从而极大的提高了程序的可移植性。

--B、存储过程能够实现较快的执行速度
--    如果某一操作包含大量的T-SQL语句代码，分别被多次执行，那么存储过程要比批处理的执行速度快得多。因为存储过程
--是预编译的，在首次运行一个存储过程时，查询优化器对其进行分析、优化，并给出最终被存在系统表中的存储计划。
--而批处理的T-SQL语句每次运行都需要预编译和优化，所以速度就要慢一些。
    
--C、存储过程减轻网络流量
--    对于同一个针对数据库对象的操作，如果这一操作所涉及到的T-SQL语句被组织成一存储过程，那么当在客户机上调用该存储过程
--时，网络中传递的只是该调用语句，否则将会是多条SQL语句。从而减轻了网络流量，降低了网络负载。

--D、 存储过程可被作为一种安全机制来充分利用
--系统管理员可以对执行的某一个存储过程进行权限限制，从而能够实现对某些数据访问的限制，避免非授权用户对数据的访
--问，保证数据的安全。
