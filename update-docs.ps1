# Create simple white-theme docs

$docsDir = "C:\Users\30988\Desktop\AI\docs"

# Simple HTML template with white background
$template = @'
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{TITLE} - AICG视频创作软件</title>
    <link rel="stylesheet" href="../styles.css">
    <link rel="icon" href="../favicon.svg" type="image/svg+xml">
    <style>
        body { background: #FFFFFF; }
        .doc-page { max-width: 900px; margin: 120px auto 60px; padding: 0 24px; }
        .doc-hero { text-align: center; margin-bottom: 48px; }
        .doc-hero h1 { font-size: 42px; font-weight: 700; margin-bottom: 16px; color: #1A1A1A; }
        .doc-hero p { font-size: 18px; color: #5F6368; }
        .doc-content { background: #F8F9FA; border-radius: 20px; padding: 40px; }
        .doc-content h2 { font-size: 28px; color: #1A1A1A; margin: 32px 0 16px; }
        .doc-content h3 { font-size: 20px; color: #1A1A1A; margin: 24px 0 12px; }
        .doc-content p { font-size: 15px; color: #5F6368; line-height: 1.8; margin-bottom: 16px; }
        .back-link { display: inline-flex; align-items: center; gap: 8px; color: #00C853; font-size: 14px; margin-bottom: 24px; }
    </style>
</head>
<body>
    <header class="top-nav">
        <div class="nav-left">
            <a href="../index.html" class="logo">
                <svg width="32" height="32" viewBox="0 0 32 32" fill="none">
                    <rect width="32" height="32" rx="8" fill="#00C853"/>
                    <path d="M10 16L14 20L22 12" stroke="white" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
                <span>AICG视频创作软件</span>
            </a>
        </div>
        <nav class="nav-menu">
            <a href="quickstart.html" class="nav-link">使用手册</a>
            <a href="quickstart.html" class="nav-link">软件下载</a>
            <a href="support.html" class="nav-link">支持</a>
        </nav>
        <div class="nav-right">
            <a href="#" class="btn-console">暂未开放</a>
            <a href="#" class="btn-login">暂未开放</a>
        </div>
    </header>

    <div class="main-container">
        <main class="doc-page">
            <a href="../index.html" class="back-link">← 返回首页</a>
            <div class="doc-hero">
                <h1>{TITLE}</h1>
                <p>详细介绍页面内容</p>
            </div>
            <div class="doc-content">
                <h2>功能介绍</h2>
                <p>这里是功能的详细描述内容。您可以在这里添加更多关于该功能的说明信息。</p>
                <h2>使用方法</h2>
                <p>按照以下步骤开始使用：</p>
                <ol>
                    <li>第一步：了解产品功能</li>
                    <li>第二步：下载安装软件</li>
                    <li>第三步：开始创作</li>
                </ol>
            </div>
        </main>
    </div>

    <footer class="footer">
        <div class="footer-content">
            <div class="footer-section">
                <h4>产品</h4>
                <a href="models.html">模型列表</a>
                <a href="tools.html">开发工具</a>
                <a href="pricing.html">价格</a>
            </div>
            <div class="footer-section">
                <h4>文档</h4>
                <a href="quickstart.html">快速开始</a>
                <a href="api-reference.html">API 参考</a>
                <a href="sdk.html">SDK</a>
            </div>
            <div class="footer-section">
                <h4>公司</h4>
                <a href="about.html">关于我们</a>
                <a href="contact.html">联系我们</a>
                <a href="blog.html">博客</a>
            </div>
            <div class="footer-section">
                <h4>支持</h4>
                <a href="faq.html">常见问题</a>
                <a href="support.html">技术支持</a>
                <a href="terms.html">服务条款</a>
            </div>
        </div>
        <div class="footer-bottom">
            <p>© 2026 AICG视频创作软件. All rights reserved.</p>
        </div>
    </footer>

    <script src="../script.js"></script>
</body>
</html>
'@

# Pages to create
$pages = @{
    "about.html" = "关于我们"
    "advanced.html" = "高级功能"
    "api-reference.html" = "API 参考"
    "basic-guide.html" = "基础指南"
    "blog.html" = "博客"
    "contact.html" = "联系我们"
    "faq.html" = "常见问题"
    "getting-started.html" = "快速开始"
    "models.html" = "模型列表"
    "pricing.html" = "价格"
    "quickstart.html" = "快速开始"
    "sdk.html" = "SDK 开发"
    "support.html" = "技术支持"
    "terms.html" = "服务条款"
    "tools.html" = "开发工具"
}

foreach ($page in $pages.GetEnumerator()) {
    $title = $page.Value
    $filename = $page.Key
    $content = $template.Replace("{TITLE}", $title)
    $content | Out-File -FilePath "$docsDir\$filename" -Encoding UTF8
    Write-Host "Created: $filename"
}

Write-Host "Done!"
