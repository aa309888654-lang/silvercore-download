# SDK pages
$template = @'
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TITLE - AICG SDK</title>
    <link rel="stylesheet" href="../../styles.css">
    <link rel="icon" href="../../favicon.svg" type="image/svg+xml">
    <style>
        body { background: #FFFFFF; }
        .doc-page { max-width: 900px; margin: 120px auto 60px; padding: 0 24px; }
        .doc-hero { text-align: center; margin-bottom: 48px; }
        .doc-hero h1 { font-size: 42px; font-weight: 700; margin-bottom: 16px; color: #1A1A1A; }
        .doc-hero p { font-size: 18px; color: #5F6368; }
        .doc-content { background: #F8F9FA; border-radius: 20px; padding: 40px; }
        .doc-content h2 { font-size: 28px; color: #1A1A1A; margin: 32px 0 16px; }
        .doc-content p { font-size: 15px; color: #5F6368; line-height: 1.8; margin-bottom: 16px; }
        .back-link { display: inline-flex; align-items: center; gap: 8px; color: #00C853; font-size: 14px; margin-bottom: 24px; }
    </style>
</head>
<body>
    <header class="top-nav">
        <div class="nav-left">
            <a href="../../index.html" class="logo">
                <svg width="32" height="32" viewBox="0 0 32 32" fill="none">
                    <rect width="32" height="32" rx="8" fill="#00C853"/>
                    <path d="M10 16L14 20L22 12" stroke="white" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
                <span>AICG视频创作软件</span>
            </a>
        </div>
        <nav class="nav-menu">
            <a href="../quickstart.html" class="nav-link">使用手册</a>
            <a href="../quickstart.html" class="nav-link">软件下载</a>
            <a href="../support.html" class="nav-link">支持</a>
        </nav>
        <div class="nav-right">
            <a href="#" class="btn-console">暂未开放</a>
            <a href="#" class="btn-login">暂未开放</a>
        </div>
    </header>
    <div class="main-container">
        <main class="doc-page">
            <a href="../sdk.html" class="back-link">← 返回</a>
            <div class="doc-hero">
                <h1>TITLE SDK</h1>
                <p>SDK 开发文档</p>
            </div>
            <div class="doc-content">
                <h2>开始使用</h2>
                <p>在项目中使用 TITLE SDK。</p>
                <h2>API 参考</h2>
                <p>查看 API 文档。</p>
            </div>
        </main>
    </div>
    <footer class="footer">
        <div class="footer-content">
            <div class="footer-section">
                <h4>产品</h4>
                <a href="../tools.html">开发工具</a>
            </div>
            <div class="footer-section">
                <h4>文档</h4>
                <a href="../quickstart.html">快速开始</a>
            </div>
            <div class="footer-section">
                <h4>公司</h4>
                <a href="../about.html">关于我们</a>
            </div>
            <div class="footer-section">
                <h4>支持</h4>
                <a href="../faq.html">常见问题</a>
            </div>
        </div>
        <div class="footer-bottom">
            <p>© 2026 AICG视频创作软件. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
'@

$sdkDir = "C:\Users\30988\Desktop\AI\docs\sdk"
$pages = @{
    "go.html" = "Go"
    "java.html" = "Java"
    "javascript.html" = "JavaScript"
    "python.html" = "Python"
}

foreach ($p in $pages.GetEnumerator()) {
    $content = $template -replace "TITLE", $p.Value
    $content | Out-File -FilePath "$sdkDir\$($p.Key)" -Encoding UTF8
    Write-Host "Updated $($p.Key)"
}
Write-Host "SDK done!"
