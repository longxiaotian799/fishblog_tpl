<template>
  <div>
    <!-- 顶部banner -->
    <div class="about-banner banner">
      <h1 class="banner-title">个人简历</h1>
    </div>

    <!-- 简历内容 -->
    <v-card class="blog-container resume-container">
      <!-- 两列布局 -->
      <div class="resume-layout">
        <!-- 左侧列：个人基本信息 -->
        <div class="left-column">
          <!-- 头像 -->
          <div class="avatar-wrapper">
            <v-avatar size="150" class="my-avatar">
              <img
                class="author-avatar"
                :src="require('@/assets/img/Robot.png')"
                style="object-fit: cover; width: 100%; height: 100%;"
              />
            </v-avatar>
            <div class="name-title">
              <h2>龙啸天799</h2>
              <p>前端开发工程师</p>
            </div>
          </div>

          <!-- 联系方式 -->
          <div class="info-section">
            <h2 class="section-title">联系方式</h2>
            <ul class="info-list">
              <li>
                <v-icon small color="#49b1f5">mdi-phone</v-icon> 电话:
                138****1234
              </li>
              <li>
                <v-icon small color="#49b1f5">mdi-wechat</v-icon> 微信:
                Auroral_Blog
              </li>
              <li>
                <v-icon small color="#49b1f5">mdi-qqchat</v-icon> QQ: 123****456
              </li>
              <li>
                <v-icon small color="#49b1f5">mdi-email</v-icon> E-mail:
                auroral@example.com
              </li>
            </ul>
          </div>

          <v-divider class="my-divider"></v-divider>

          <!-- 个人信息 -->
          <div class="info-section">
            <h2 class="section-title">个人信息</h2>
            <ul class="info-list">
              <li>
                <v-icon small color="#49b1f5">mdi-account</v-icon> 男 / 1998
              </li>
              <li>
                <v-icon small color="#49b1f5">mdi-school</v-icon> 本科 /
                某知名大学
              </li>
              <li>
                <v-icon small color="#49b1f5">mdi-star</v-icon> 专业排名: 前5%
              </li>
              <li>
                <v-icon small color="#49b1f5">mdi-web</v-icon> 技术博客:
                <a href="https://blog.csdn.net/example" target="_blank"
                  >https://blog.csdn.net/example</a
                >
              </li>
              <li>
                <v-icon small color="#49b1f5">mdi-github</v-icon> Github:
                <a href="http://github.com/Auroral" target="_blank"
                  >http://github.com/Auroral</a
                >
              </li>
              <li>
                <v-icon small color="#49b1f5">mdi-code-tags</v-icon> 期望职位:
                前端开发工程师
              </li>
              <li>
                <v-icon small color="#49b1f5">mdi-cash</v-icon> 期望薪资:
                税前月薪 15k-20k，特别喜欢的公司可例外
              </li>
              <li>
                <v-icon small color="#49b1f5">mdi-map-marker</v-icon> 期望城市:
                北京/上海
              </li>
            </ul>
          </div>

          <v-divider class="my-divider"></v-divider>

          <!-- 校园经历 -->
          <div class="info-section">
            <h2 class="section-title">校园经历</h2>
            <div class="campus-experience">
              <div class="experience-item">
                <div class="experience-title">
                  <v-icon color="#49b1f5">mdi-account-group</v-icon>
                  <strong>计算机学院学生会技术部部长</strong>
                </div>
                <div class="experience-time">2020年9月-2021年9月</div>
                <!-- <div class="experience-brief">负责组织和管理学院各类活动，统筹学生会工作</div> -->
              </div>
              <div class="experience-item">
                <div class="experience-title">
                  <v-icon color="#49b1f5">mdi-tennis</v-icon>
                  <strong>编程协会副会长</strong>
                </div>
                <div class="experience-time">2019年9月-2020年9月</div>
                <!-- <div class="experience-brief">负责社团活动策划和组织，举办校级台球比赛</div> -->
              </div>
              <div class="experience-item">
                <div class="experience-title">
                  <v-icon color="#49b1f5">mdi-account-tie</v-icon>
                  <strong>校园网络中心技术组组长</strong>
                </div>
                <div class="experience-time">2018年9月-2019年9月</div>
                <!-- <div class="experience-brief">负责收集和解决学生生活问题，推动校园设施改善</div> -->
              </div>
            </div>
          </div>

          <v-divider class="my-divider"></v-divider>

          <!-- 获奖经历 -->
          <div class="info-section">
            <h2 class="section-title">获奖经历</h2>
            <ul class="award-list">
              <li>
                <v-icon small color="gold">mdi-medal</v-icon>
                <span>全国大学生创新创业大赛金奖</span>
              </li>
              <li>
                <v-icon small color="gold">mdi-medal</v-icon>
                <span>国家级大学生创新创业项目结项（负责人）</span>
              </li>
              <li>
                <v-icon small color="gold">mdi-medal</v-icon>
                <span>全国大学生计算机设计大赛一等奖</span>
              </li>
              <li>
                <v-icon small color="silver">mdi-medal</v-icon>
                <span>全国大学生软件设计大赛二等奖</span>
              </li>
              <li>
                <v-icon small color="silver">mdi-medal</v-icon>
                <span>全国大学生网络安全大赛省级一等奖</span>
              </li>
              <li>
                <v-icon small color="silver">mdi-medal</v-icon>
                <span>全国大学生数学竞赛省级二等奖</span>
              </li>
              <li>
                <v-icon small color="silver">mdi-medal</v-icon>
                <span>蓝桥杯程序设计大赛省级二等奖</span>
              </li>
              <li>
                <v-icon small color="silver">mdi-medal</v-icon>
                <span>全国大学生英语竞赛省级一等奖</span>
              </li>
              <li>
                <v-icon small color="brown">mdi-medal</v-icon>
                <span>全国大学生互联网+创新创业大赛铜奖</span>
              </li>
              <li>
                <v-icon small color="brown">mdi-medal</v-icon>
                <span>全国大学生前端开发大赛三等奖</span>
              </li>
            </ul>
          </div>

          <v-divider class="my-divider"></v-divider>

          <!-- 技能清单 -->
          <div class="info-section">
            <h2 class="section-title">技能清单</h2>
            <div class="skills-container">
              <ul class="skills-list">
                <li>
                  <v-icon small color="#49b1f5">mdi-circle-small</v-icon> 语言：
                  JavaScript/TypeScript/HTML/CSS/Python
                </li>
                <li>
                  <v-icon small color="#49b1f5">mdi-circle-small</v-icon>
                  前端框架： Vue/React/Angular/jQuery/Bootstrap
                </li>
                <li>
                  <v-icon small color="#49b1f5">mdi-circle-small</v-icon> Web
                  框架： Express/Koa/Spring Boot
                </li>
                <li>
                  <v-icon small color="#49b1f5">mdi-circle-small</v-icon> 构建工具：
                  Webpack/Vite/Rollup
                </li>
                <li>
                  <v-icon small color="#49b1f5">mdi-circle-small</v-icon>
                  项目管理： Git/NPM/Yarn
                </li>
                <li>
                  <v-icon small color="#49b1f5">mdi-circle-small</v-icon>
                  关系型数据库： MySQL/PostgreSQL
                </li>
                <li>
                  <v-icon small color="#49b1f5">mdi-circle-small</v-icon>
                  NOSQL： MongoDB/Redis
                </li>
                <li>
                  <v-icon small color="#49b1f5">mdi-circle-small</v-icon>
                  虚拟化： Docker/Kubernetes
                </li>
                <li>
                  <v-icon small color="#49b1f5">mdi-circle-small</v-icon> 系统：
                  Linux/MacOS/Windows
                </li>
              </ul>
            </div>
          </div>

          <v-divider class="my-divider"></v-divider>

          <!-- 证书 -->
          <div class="info-section">
            <h2 class="section-title">证书</h2>
            <div class="certificate-list">
              <div class="certificate-item">
                <v-icon small color="#49b1f5">mdi-certificate</v-icon>
                <span>英语六级</span>
              </div>

              <div class="certificate-item">
                <v-icon small color="#49b1f5">mdi-certificate</v-icon>
                <span>软件设计师中级</span>
              </div>
              <div class="certificate-item">
                <v-icon small color="#49b1f5">mdi-certificate</v-icon>
                <span>前端开发工程师认证</span>
              </div>

              <div class="certificate-item">
                <v-icon small color="#49b1f5">mdi-certificate</v-icon>
                <span>计算机二级</span>
              </div>
              <div class="certificate-item">
                <v-icon small color="#49b1f5">mdi-certificate</v-icon>
                <span>AWS云计算认证</span>
              </div>
              <div class="certificate-item">
                <v-icon small color="#49b1f5">mdi-certificate</v-icon>
                <span>计算机三级</span>
              </div>

              <div class="certificate-item">
                <v-icon small color="#49b1f5">mdi-certificate</v-icon>
                <span>软件著作权（两项）</span>
              </div>
            </div>
          </div>
        </div>

        <!-- 右侧列：工作经历和项目 -->
        <div class="right-column">
          <!-- 开源项目经历 -->
          <div class="info-section">
            <div class="project-title-container">
              <div class="project-title-line"></div>
              <h2 class="project-title">项目经历</h2>
              <div class="project-title-line"></div>
            </div>
            <!-- 项目一 -->
            <div class="project-card">
              <div class="project-header">
                <h3>智能电商平台</h3>
                <div class="project-role">
                  <span class="date-tag">2022.01 - 2022.03</span>
                </div>
                <a
                  href="https://github.com/Auroral/smart-shop"
                  target="_blank"
                  class="project-link"
                >
                  <v-icon small>mdi-github</v-icon> GitHub
                </a>
              </div>
              <div class="project-content">
                <ul class="project-points">
                  <li>
                    <strong>项目描述：</strong
                    >现代化智能电商平台，整合用户体系、商品管理、购物车、订单管理和支付系统等全方位功能，提供个性化推荐和数据分析。
                  </li>
                  <li>
                    <strong>技术栈：</strong>Vue 3、Vite、Element
                    Plus、Pinia、ECharts、Spring Boot、MyBatis
                    Plus、MySQL、Redis、JWT、阿里云OSS
                  </li>
                  <li>
                    <strong>功能实现：</strong>
                    <ul>
                      <li>
                        构建完整用户体系，实现多样化登录体验（账号密码/手机验证码）和基于阿里云OSS的个人信息管理
                      </li>
                      <li>
                        开发商品与分类管理模块，支持多级树形分类结构、批量导入导出和智能库存关联机制
                      </li>
                      <li>
                        设计购物车和订单管理系统，实现实时价格计算和多种支付方式集成
                      </li>
                      <li>
                        实现基于用户行为的个性化推荐系统，提升用户购物体验和转化率
                      </li>
                      <li>
                        开发数据可视化模块，为管理员提供销售趋势、用户行为和库存状态等多维度分析
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="tech-stack">
                <span class="tech-tag">Vue 3</span>
                <span class="tech-tag">Spring Boot</span>
                <span class="tech-tag">Element Plus</span>
                <span class="tech-tag">JWT</span>
                <span class="tech-tag">MySQL</span>
                <span class="tech-tag">MyBatis Plus</span>
                <span class="tech-tag">Redis</span>
              </div>
            </div>

            <!-- 项目二 -->
            <div class="project-card">
              <div class="project-header">
                <h3>博客系统</h3>
                <div class="project-role">
                  <span class="date-tag">2021.11 - 2021.12</span>
                </div>
                <a
                  href="https://github.com/Auroral/blog-system"
                  target="_blank"
                  class="project-link"
                >
                  <v-icon small>mdi-github</v-icon> GitHub
                </a>
              </div>
              <div class="project-content">
                <ul class="project-points">
                  <li>
                    <strong>项目描述：</strong
                    >综合性前后端分离博客系统，涵盖用户管理、文章管理、评论系统、文件上传等核心功能，集成多种现代技术栈。
                  </li>
                  <li>
                    <strong>技术栈：</strong>Spring Boot、Vue
                    3、JWT、Redis、MySQL、MyBatis、Pinia、ElementPlus、阿里云OSS
                  </li>
                  <li>
                    <strong>功能实现：</strong>
                    <ul>
                      <li>
                        设计并实现基于 JWT 和 Redis 的权限认证体系，支持 Token
                        自动续期和失效机制，提高系统安全性
                      </li>
                      <li>
                        开发完整文章管理模块，实现文章的添加、修改、删除、分页查询和文章分类等全面功能
                      </li>
                      <li>
                        集成阿里云 OSS
                        实现安全高效的文件上传与存储，支持图片等多种格式文件处理
                      </li>
                      <li>
                        基于 Pinia
                        构建前端状态管理方案，实现持久化状态管理，优化组件通信和数据流转效率
                      </li>
                      <li>
                        采用 Controller-Service-Mapper
                        分层架构设计后端系统，使用 ThreadLocal 实现资源管理，MD5
                        加密用户密码保证安全性
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="tech-stack">
                <span class="tech-tag">Spring Boot</span>
                <span class="tech-tag">Vue3</span>
                <span class="tech-tag">Redis</span>
                <span class="tech-tag">MySQL</span>
                <span class="tech-tag">MyBatis</span>
                <span class="tech-tag">JWT</span>
                <span class="tech-tag">阿里云OSS</span>
              </div>
            </div>

            <!-- 项目三 -->
            <div class="project-card">
              <div class="project-header">
                <h3>文件批处理工具</h3>
                <div class="project-role">
                  <span class="date-tag">2022.01 - 2022.02</span>
                </div>
                <a
                  href="https://github.com/Auroral/file-processor"
                  target="_blank"
                  class="project-link"
                >
                  <v-icon small>mdi-github</v-icon> GitHub
                </a>
              </div>
              <div class="project-content">
                <ul class="project-points">
                  <li>
                    <strong>项目描述：</strong
                    >简单易用的跨平台文件批量处理工具，提供多种文件操作功能、高性能处理和实时预览功能，支持Windows、macOS和Linux平台。
                  </li>
                  <li>
                    <strong>技术栈：</strong>Vue 3、Vite、TypeScript、Element
                    Plus、Rust、Tauri、Pinia、Electron
                  </li>
                  <li>
                    <strong>功能实现：</strong>
                    <ul>
                      <li>
                        使用 Rust 开发高性能文件处理核心，通过 WebAssembly
                        与前端交互，实现 10 秒内处理 5000+ 文件的高效性能
                      </li>
                      <li>
                        设计并实现多样化的文件处理策略，包括重命名、格式转换、批量压缩和内容提取等功能
                      </li>
                      <li>
                        开发操作回退保护机制和实时预览功能，实现撤销/重做功能，提高用户操作安全性和便捷性
                      </li>
                      <li>
                        通过 Tauri 和 Electron 实现跨平台打包部署，覆盖
                        Windows、macOS 和 Linux
                        系统，并提供网页版本实现无需安装的即时使用
                      </li>
                      <li>
                        采用虚拟化表格技术优化内存使用，确保在处理大量文件时保持流畅体验，并实现条件过滤和批处理选项等高级功能
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="tech-stack">
                <span class="tech-tag">Vue 3</span>
                <span class="tech-tag">TypeScript</span>
                <span class="tech-tag">Element Plus</span>
                <span class="tech-tag">Rust</span>
                <span class="tech-tag">Tauri</span>
                <span class="tech-tag">跨平台</span>
              </div>
            </div>

            <!-- 项目四 -->
            <div class="project-card">
              <div class="project-header">
                <h3>桌面效率工具</h3>
                <div class="project-role">
                  <span class="date-tag">2022.02 - 2022.03</span>
                </div>
                <a
                  href="https://github.com/Auroral/desktop-tool"
                  target="_blank"
                  class="project-link"
                >
                  <v-icon small>mdi-github</v-icon> GitHub
                </a>
              </div>
              <div class="project-content">
                <ul class="project-points">
                  <li>
                    <strong>项目描述：</strong
                    >优雅而强大的桌面效率工具，为macOS用户提供专业的工作效率提升和数据可视化体验。
                  </li>
                  <li>
                    <strong>技术栈：</strong>Swift、Cocoa框架、Core
                    Graphics、XPC Services、Core Animation、Core Data
                  </li>
                  <li>
                    <strong>功能实现：</strong>
                    <ul>
                      <li>
                        设计并实现实时数据可视化模块，包括时间追踪和工作效率分析，为用户提供直观的工作状态反馈
                      </li>
                      <li>
                        开发专业的任务管理和番茄工作法计时器，帮助用户优化工作流程和提升效率
                      </li>
                      <li>
                        构建跨进程安全机制，解决系统监控与应用隔离问题，确保数据隐私安全
                      </li>
                      <li>
                        实现多语言本地化支持（中英日韩等）和主题切换功能，提供全球化和个性化的用户体验
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="tech-stack">
                <span class="tech-tag">Swift</span>
                <span class="tech-tag">macOS</span>
                <span class="tech-tag">数据可视化</span>
              </div>
            </div>

            <!-- 项目五 -->
            <div class="project-card">
              <div class="project-header">
                <h3>浏览器扩展</h3>
                <div class="project-role">
                  <span class="date-tag">2022.01 - 2022.2</span>
                </div>
                <a
                  href="https://github.com/Auroral/browser-extension"
                  target="_blank"
                  class="project-link"
                >
                  <v-icon small>mdi-github</v-icon> GitHub
                </a>
              </div>
              <div class="project-content">
                <ul class="project-points">
                  <li>
                    <strong>项目描述：</strong
                    >智能浏览器扩展，集成AI驱动的内容分析系统，帮助用户提升网页浏览效率和内容管理能力。
                  </li>
                  <li>
                    <strong>技术栈：</strong
                    >Svelte、JavaScript、TensorFlow.js、Chrome Extension
                    API、IndexedDB
                  </li>
                  <li>
                    <strong>功能实现：</strong>
                    <ul>
                      <li>
                        基于 TensorFlow.js 构建 AI
                        智能分析系统，实现网页内容自动识别与分类，并通过用户行为持续优化准确度
                      </li>
                      <li>
                        开发极速内容检索功能，集成模糊匹配搜索引擎和快捷键唤醒系统，提供即时响应的搜索体验
                      </li>
                      <li>
                        实现智能资源管理机制，持续监控浏览器资源占用，优化页面加载速度和响应性能
                      </li>
                      <li>
                        设计会话管理系统，支持工作状态的保存、编辑与恢复，优化多任务工作流程，提升用户生产力
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="tech-stack">
                <span class="tech-tag">Svelte</span>
                <span class="tech-tag">TensorFlow.js</span>
                <span class="tech-tag">Chrome Extension</span>
              </div>
            </div>

            <!-- 项目六 -->
            <div class="project-card">
              <div class="project-header">
                <h3>智能聊天应用</h3>
                <div class="project-role">
                  <span class="date-tag">2021.10 - 2021.11</span>
                </div>
                <a
                  href="https://github.com/Auroral/smart-chat"
                  target="_blank"
                  class="project-link"
                >
                  <v-icon small>mdi-github</v-icon> GitHub
                </a>
              </div>
              <div class="project-content">
                <ul class="project-points">
                  <li>
                    <strong>项目描述：</strong
                    >功能齐全的在线聊天应用，集成大语言模型与文明聊天环境维护，提供安全、智能、个性化的聊天体验。
                  </li>
                  <li>
                    <strong>技术栈：</strong>HTML5、CSS3、JavaScript、Java
                    (Spring Boot)、MySQL、ChatGPT API、WebSocket、Nginx
                  </li>
                  <li>
                    <strong>功能实现：</strong>
                    <ul>
                      <li>
                        设计完善的用户注册与登录系统，实现严格的注册信息校验、动态美化界面和密码错误尝试限制
                      </li>
                      <li>
                        基于 WebSocket
                        构建实时通信架构，支持公聊与私聊分离、表情包发送和多格式聊天记录导出(TXT、CSV、Excel)
                      </li>
                      <li>
                        开发文明聊天维护系统，实现敏感词动态屏蔽、提示或替换功能，支持多种文件格式的上传、显示与下载
                      </li>
                      <li>
                        集成多种大语言模型，提供智能辅助聊天和自动回复功能
                      </li>
                      <li>
                        实现管理员管理模块，支持动态维护屏蔽词库、查看管理用户信息和聊天记录
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="tech-stack">
                <span class="tech-tag">Spring Boot</span>
                <span class="tech-tag">JavaScript</span>
                <span class="tech-tag">MySQL</span>
                <span class="tech-tag">大语言模型</span>
                <span class="tech-tag">WebSocket</span>
              </div>
            </div>

            <!-- 项目七 -->
            <div class="project-card">
              <div class="project-header">
                <h3>健身管理系统</h3>
                <div class="project-role">
                  <span class="date-tag">2021.09 - 2021.10</span>
                </div>
                <a
                  href="https://github.com/Auroral/fitness-system"
                  target="_blank"
                  class="project-link"
                >
                  <v-icon small>mdi-github</v-icon> GitHub
                </a>
              </div>
              <div class="project-content">
                <ul class="project-points">
                  <li>
                    <strong>项目描述：</strong
                    >全功能健身管理系统，采用三端分离架构（用户端、管理员端、教练端），提供完整的健身房信息化运营支持，包括用户管理、课程预约、健身计划制定与数据分析等功能。
                  </li>
                  <li>
                    <strong>技术栈：</strong>C#、SQL
                    Server、IrisSkin4组件库、ADO.NET、Windows Forms
                  </li>
                  <li>
                    <strong>功能实现：</strong>
                    <ul>
                      <li>
                        设计三端分离架构，实现用户端、管理员端和教练端各自独立功能模块，满足不同角色的使用需求
                      </li>
                      <li>
                        开发会员管理、课程预约、健身计划制定与跟踪等核心业务模块，实现预约系统和健身数据记录功能
                      </li>
                      <li>
                        使用IrisSkin4组件库设计美观易用的UI界面，提升用户体验和系统易用性
                      </li>
                      <li>
                        构建数据分析与可视化功能，支持会员活跃度、课程热度等多维度数据展示和分析
                      </li>
                      <li>
                        设计高效的数据库结构，包括用户信息表、课程信息表、预约信息表等，实现复杂数据查询和管理操作
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="tech-stack">
                <span class="tech-tag">C#</span>
                <span class="tech-tag">SQL Server</span>
                <span class="tech-tag">Windows Forms</span>
                <span class="tech-tag">IrisSkin4</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </v-card>

    <!-- 添加空白空间，防止内容被看板娘遮挡 -->
    <div class="kanban-spacing"></div>
  </div>
</template>

<script>
export default {
  created() {
    // 可以在这里获取简历数据，如果需要从后端获取
  },
  data: function() {
    return {
      // 这里可以添加简历数据
    };
  },
  methods: {
    // 如果需要从后端获取数据的方法
  }
};
</script>

<style scoped>
.about-banner {
  background: url("@/assets/img/6.jpg") center center / cover
    no-repeat;
  background-color: #49b1f5;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 300px;
  position: relative;
}

.banner-title {
  color: #fff;
  font-size: 36px;
  font-weight: bold;
  text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.3);
}

.resume-container {
  padding: 30px;
  margin-top: -50px;
  position: relative;
  z-index: 10;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
  max-width: 1200px;
  margin-left: auto;
  margin-right: auto;
  margin-bottom: 30px;
}

/* 两列布局 */
.resume-layout {
  display: flex;
  gap: 30px;
}

.left-column {
  flex: 0 0 30%;
  border-right: 1px solid #eee;
  padding-right: 20px;
}

.right-column {
  flex: 0 0 70%;
  padding-left: 10px;
}

.avatar-wrapper {
  text-align: center;
  padding: 20px 0;
}

.my-avatar {
  border: 3px solid #49b1f5;
  box-shadow: 0 4px 10px rgba(73, 177, 245, 0.3);
  overflow: hidden;
}

.author-avatar {
  transition: all 0.8s;
  object-fit: cover !important;
  width: 100% !important;
  height: 100% !important;
}

.author-avatar:hover {
  transform: rotate(360deg);
}

.name-title {
  margin-top: 15px;
}

.name-title h2 {
  font-size: 24px;
  margin-bottom: 5px;
  color: #333;
}

.name-title p {
  color: #666;
  font-size: 16px;
}

.info-section {
  margin: 25px 0;
}

.section-title {
  color: #49b1f5;
  font-size: 22px;
  margin-bottom: 20px;
  position: relative;
  padding-left: 15px;
  border-left: 4px solid #49b1f5;
}

.info-list {
  list-style: none;
  padding-left: 5px;
}

.info-list li {
  margin-bottom: 12px;
  display: flex;
  align-items: center;
}

.info-list li i {
  margin-right: 10px;
  color: #49b1f5;
  min-width: 24px;
}

.info-list a {
  color: #49b1f5;
  text-decoration: none;
}

.info-list a:hover {
  text-decoration: underline;
}

.experience-item {
  margin-bottom: 25px;
}

.experience-header {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}

.experience-header i {
  margin-right: 10px;
}

.experience-header h4 {
  font-size: 18px;
  color: #333;
  margin: 0;
}

.experience-date {
  color: #777;
  font-size: 14px;
  margin-left: 10px;
  font-style: italic;
}

.experience-points {
  list-style: none;
  padding-left: 5px;
  margin-top: 8px;
}

.experience-points li {
  margin-bottom: 8px;
  font-size: 14px;
  color: #555;
  line-height: 1.6;
}

.experience-points li strong {
  color: #333;
  font-weight: 600;
}

.about-me {
  font-size: 16px;
  line-height: 1.6;
  color: #444;
  margin-bottom: 20px;
  text-align: justify;
}

/* 技能评分样式 */
.skill-list {
  padding-left: 5px;
}

.skill-item {
  margin-bottom: 15px;
}

.skill-header {
  display: flex;
  justify-content: space-between;
  margin-bottom: 5px;
}

.skill-name {
  font-weight: 500;
  color: #333;
}

.skill-percent {
  color: #666;
  font-size: 14px;
}

.skill-bar {
  height: 10px;
  background-color: #eee;
  border-radius: 5px;
  overflow: hidden;
}

.skill-level {
  height: 100%;
  background-color: #49b1f5;
  border-radius: 5px;
  transition: width 0.8s ease-in-out;
}

/* 获奖经历样式 */
.awards {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.award-category {
  margin-bottom: 10px;
}

.category-title {
  font-size: 18px;
  color: #333;
  margin-bottom: 10px;
  padding-bottom: 5px;
  border-bottom: 1px dashed #eee;
}

.award-list {
  list-style: none;
  padding-left: 5px;
}

.award-list li {
  display: flex;
  align-items: center;
  margin-bottom: 8px;
  font-size: 15px;
  color: #333;
}

.award-list li i {
  margin-right: 10px;
  min-width: 20px;
}

/* 证书样式 */
.certificate-list {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
}

.certificate-item {
  display: flex;
  align-items: center;
  background-color: #f5f5f5;
  padding: 8px 12px;
  border-radius: 4px;
  margin-bottom: 10px;
  font-size: 14px;
  color: #333;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
  transition: all 0.3s;
}

.certificate-item:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.certificate-item i {
  margin-right: 8px;
}

/* 项目卡片样式 */
.project-card {
  background-color: #ffffff;
  padding: 20px;
  border-radius: 8px;
  margin-bottom: 20px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
  transition: all 0.3s;
  border-left: 4px solid #49b1f5;
}

.project-card:hover {
  transform: translateY(-3px);
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.project-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 15px;
  padding-bottom: 10px;
  border-bottom: 1px dashed #eaeaea;
}

.project-header h3 {
  font-size: 20px;
  color: #333;
  margin: 0;
  flex: 1;
  text-align: left;
}

.project-role {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  justify-content: center;
  flex: 2;
  margin-bottom: 0;
}

.project-link {
  color: #49b1f5;
  text-decoration: none;
  font-size: 14px;
  display: flex;
  align-items: center;
  flex: 1;
  justify-content: flex-end;
}

.project-link i {
  margin-right: 5px;
}

.role-tag {
  background-color: #49b1f5;
  color: white;
  padding: 3px 10px;
  border-radius: 4px;
  font-size: 12px;
  font-weight: 500;
  display: none;
}

.date-tag {
  color: #666;
  font-size: 16px;
  font-weight: 500;
  background-color: transparent;
  padding: 0;
  border-radius: 0;
}

.project-points {
  list-style: none;
  padding-left: 0;
  margin-top: 0;
}

.project-points li {
  margin-bottom: 10px;
  font-size: 14px;
  color: #555;
  line-height: 1.6;
}

.project-points li strong {
  color: #333;
  font-weight: 600;
}

.project-points li ul {
  list-style: none;
  padding-left: 20px;
  margin-top: 5px;
}

.project-points li ul li {
  position: relative;
  padding-left: 15px;
  margin-bottom: 6px;
  font-size: 13px;
}

.project-points li ul li:before {
  content: "•";
  position: absolute;
  left: 0;
  color: #49b1f5;
  font-weight: bold;
}

.tech-stack {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
  margin-top: 15px;
  padding-top: 10px;
  border-top: 1px dashed #eaeaea;
}

.tech-tag {
  background-color: #e8f4ff;
  color: #49b1f5;
  padding: 4px 10px;
  border-radius: 4px;
  font-size: 13px;
  font-weight: 500;
}

.my-divider {
  margin: 20px 0;
}

/* 底部空间，避免看板娘遮挡内容 */
.kanban-spacing {
  height: 150px;
  width: 100%;
}

/* 响应式布局 */
@media (max-width: 992px) {
  .resume-layout {
    flex-direction: column;
  }

  .left-column {
    flex: 1;
    border-right: none;
    border-bottom: 1px solid #eee;
    padding-right: 0;
    padding-bottom: 20px;
  }

  .right-column {
    flex: 1;
    padding-left: 0;
    padding-top: 20px;
  }

  .resume-container {
    padding: 20px;
    max-width: 95%;
  }

  .kanban-spacing {
    height: 200px;
  }

  .certificate-list {
    flex-direction: column;
  }

  .certificate-item {
    width: 100%;
  }
}

/* 技能清单样式 */
.skills-container {
  padding-left: 5px;
}

.skills-intro {
  margin-bottom: 15px;
  color: #555;
  font-size: 15px;
}

.skills-list {
  list-style: none;
  padding-left: 0;
}

.skills-list li {
  margin-bottom: 12px;
  font-size: 15px;
  color: #333;
  display: flex;
  align-items: flex-start;
  line-height: 1.5;
}

.skills-list li i {
  margin-right: 8px;
  margin-top: 3px;
}

.experience-brief {
  font-size: 14px;
  color: #555;
  margin-top: 5px;
  margin-left: 34px;
}

.experience-title {
  display: flex;
  align-items: center;
  margin-bottom: 5px;
}

.experience-title i {
  margin-right: 10px;
}

.experience-title strong {
  font-size: 16px;
  color: #333;
}

.experience-time {
  color: #777;
  font-size: 14px;
  margin-left: 34px;
  margin-bottom: 5px;
}

.experience-brief {
  font-size: 14px;
  color: #555;
  margin-left: 34px;
  margin-bottom: 15px;
}

.avatar-container {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  overflow: hidden;
}

.avatar-container img {
  width: 100%;
  height: 100%;
  object-fit: cover; /* 这是关键，保持图片比例 */
}

/* 项目标题样式 */
.project-title-container {
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 30px;
  position: relative;
}

.project-title {
  color: #49b1f5;
  font-size: 26px;
  font-weight: bold;
  margin: 0 15px;
  padding: 0 10px;
  position: relative;
  z-index: 1;
  text-shadow: 1px 1px 2px rgba(73, 177, 245, 0.2);
}

.project-title-line {
  flex: 1;
  height: 1px;
  background: linear-gradient(to right, transparent, #49b1f5, transparent);
}

.project-title:before {
  content: "";
  position: absolute;
  left: -5px;
  right: -5px;
  top: -5px;
  bottom: -5px;
  background-color: #f8fcff;
  border-radius: 4px;
  z-index: -1;
}
</style>
