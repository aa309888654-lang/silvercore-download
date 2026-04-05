# 小天AICG 网站

专业的AI视频创作工具下载平台，提供AI视频生成、AI图片生成、智能创作软件下载。

## 启动网站

网站已成功启动！访问地址：http://localhost:8000

### 启动方式

#### 方式1：使用启动脚本（推荐）
- **Windows用户**：双击 `start-website.bat`
- **PowerShell用户**：右键点击 `start-website.ps1`，选择"使用PowerShell运行"

#### 方式2：手动启动
1. 确保已安装 Python 3.7+
2. 打开命令行，进入项目目录：
   ```bash
   cd c:\Users\30988\Desktop\AICG2
   ```
3. 运行服务器：
   ```bash
   python server.py
   ```

### 网站功能

- **首页** (`index.html`) - 网站主页面
- **软件下载** (`tools.html`) - AICG软件下载
- **AI模型** (`models.html`) - AI模型介绍
- **API文档** (`api.html`) - API接口文档
- **关于我们** (`about.html`) - 公司介绍
- **联系我们** (`contact.html`) - 联系方式

### 技术特点

- 响应式设计，支持手机和电脑访问
- 现代UI设计，美观大方
- 静态网站，无需数据库
- 支持SEO优化
- 集成多种AI平台接入

### 停止服务器

在命令行窗口中按 **Ctrl+C** 即可停止服务器。

### 常见问题

1. **端口冲突**：如果端口8000被占用，修改 `server.py` 中的 `PORT = 8000` 为其他端口号
2. **Python未安装**：请从官网下载安装 Python 3.7+：https://www.python.org/downloads/
3. **访问问题**：确保防火墙允许本地端口8000的访问

### 联系方式

- 邮箱：309888654@qq.com
- 地址：湖南省长沙市岳麓区枫林三路800号

---

© 2026 小天AICG. All rights reserved.