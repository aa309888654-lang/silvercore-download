# Update footer in all docs
$template = @'
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{TITLE} - AICG</title>
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
                <span>AICG</span>
            </a>
        </div>
        <nav class="nav-menu">
            <a href="quickstart.html" class="nav-link">Manual</a>
            <a href="quickstart.html" class="nav-link">Download</a>
            <a href="support.html" class="nav-link">Support</a>
        </nav>
        <div class="nav-right">
            <a href="#" class="btn-console">N/A</a>
            <a href="#" class="btn-login">N/A</a>
        </div>
    </header>
    <div class="main-container">
        <main class="doc-page">
            <a href="../index.html" class="back-link">Back</a>
            <div class="doc-hero">
                <h1>{TITLE}</h1>
                <p>Content description</p>
            </div>
            <div class="doc-content">
                <h2>Introduction</h2>
                <p>Content here.</p>
            </div>
        </main>
    </div>
    <footer class="footer">
        <div class="footer-content">
            <div class="footer-section">
                <h4>Product</h4>
                <a href="tools.html">Tools</a>
                <a href="pricing.html">Pricing</a>
            </div>
            <div class="footer-section">
                <h4>Docs</h4>
                <a href="quickstart.html">Quick Start</a>
                <a href="api-reference.html">API</a>
                <a href="sdk.html">SDK</a>
            </div>
            <div class="footer-section">
                <h4>Company</h4>
                <a href="about.html">About</a>
                <a href="contact.html">Contact</a>
                <a href="blog.html">Blog</a>
            </div>
            <div class="footer-section">
                <h4>Support</h4>
                <a href="faq.html">FAQ</a>
                <a href="pricing.html">Pricing</a>
                <a href="terms.html">Terms</a>
            </div>
        </div>
        <div class="footer-bottom">
            <p>2026 AICG. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
'@

$docsDir = "C:\Users\30988\Desktop\AI\docs"
$pages = @{
    "about.html" = "About"
    "advanced.html" = "Advanced"
    "api-reference.html" = "API"
    "basic-guide.html" = "Basic Guide"
    "blog.html" = "Blog"
    "contact.html" = "Contact"
    "faq.html" = "FAQ"
    "getting-started.html" = "Getting Started"
    "models.html" = "Models"
    "pricing.html" = "Pricing"
    "quickstart.html" = "Quick Start"
    "sdk.html" = "SDK"
    "support.html" = "Support"
    "terms.html" = "Terms"
    "tools.html" = "Tools"
}

foreach ($p in $pages.GetEnumerator()) {
    $content = $template -replace "TITLE", $p.Value
    $content | Out-File -FilePath "$docsDir\$($p.Key)" -Encoding UTF8
    Write-Host "Updated $($p.Key)"
}
Write-Host "All docs updated!"
