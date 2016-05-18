// Node是什么
// 1.Node 是一个服务器端 JavaScript 解释器
// 2.Node 的目标是帮助程序员构建高度可伸缩的应用程序，编写能够处理数万条同时连接到一个物理机的连接代码。
// 处理高并发和异步I/O是Node受到开发人员的关注的原因之一。

// NodeJS开发者：创造NodeJS的目的是为了实现高性能Web服务器

// NodeJS的基本概念和使用方法

// NodeJS是一个JS脚本解析器，任何操作系统下安装NodeJS本质上做的事情都是把NodeJS执行程序复制到一个目录，
// 然后保证这个目录在系统PATH环境变量下，以便终端下可以使用node命令。

// 终端下直接输入node命令可进入命令交互模式，很适合用来测试一些JS代码片段，比如正则表达式。

// NodeJS使用CMD模块系统，主模块作为程序入口点，所有模块在执行过程中只初始化一次。

// 除非JS模块不能满足需求，否则不要轻易使用二进制模块，否则你的用户会叫苦连天。


// - /home/user/workspace/node-echo/   # 工程目录
//     - bin/                          # 存放命令行相关代码
//         node-echo
//     + doc/                          # 存放文档
//     - lib/                          # 存放API相关代码
//         echo.js
//     - node_modules/                 # 存放三方包
//         + argv/
//     + tests/                        # 存放测试用例
//     package.json                    # 元数据文件
//     README.md                       # 说明文件

