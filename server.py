<<<<<<< HEAD
import http.server
import socketserver

PORT = 8000

Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"小天AICG网站启动成功！")
    print(f"访问地址：http://localhost:{PORT}")
    print("按 Ctrl+C 停止服务器")
=======
import http.server
import socketserver

PORT = 8000

Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"小天AICG网站启动成功！")
    print(f"访问地址：http://localhost:{PORT}")
    print("按 Ctrl+C 停止服务器")
>>>>>>> 27a1e79cae8b7acd761a8a25b46ed6b11677ff6f
    httpd.serve_forever()