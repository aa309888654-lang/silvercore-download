import http.server
import socketserver

PORT = 8000

Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"小天AICG网站启动成功！")
    print(f"访问地址：http://localhost:{PORT}")
    print("按 Ctrl+C 停止服务器")
    httpd.serve_forever()