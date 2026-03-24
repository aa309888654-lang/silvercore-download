// 对话框聊天功能
document.addEventListener('DOMContentLoaded', function() {
    var chatInput = document.getElementById('chatInput');
    var sendBtn = document.getElementById('sendBtn');
    var chatContainer = document.getElementById('demoChat');
    
    // 发送消息函数
    function sendMessage(text) {
        // 添加用户消息
        var userBubble = document.createElement('div');
        userBubble.className = 'user-msg';
        userBubble.innerHTML = '<div class="ai-bubble user-bubble" style="background:#1A1A1A; color:white; padding:16px 20px; border-radius:20px; border-top-right-radius:4px; margin-left:auto;"><p style="margin:0; font-size:15px;">' + text + '</p></div><div class="chat-avatar" style="background:#1A1A1A; margin-left:12px;">👤</div>';
        chatContainer.appendChild(userBubble);
        
        // 清空输入框
        chatInput.value = '';
        
        // 滚动到底部
        chatContainer.scrollTop = chatContainer.scrollHeight;
        
        // 模拟AI回复
        setTimeout(function() {
            var aiBubble = document.createElement('div');
            aiBubble.className = 'ai-msg';
            aiBubble.innerHTML = '<div class="chat-avatar">🤖</div><div class="ai-bubble"><p>感谢您的提问！这是演示回复。在正式版本中，我将为您提供智能创作建议和帮助。</p></div>';
            chatContainer.appendChild(aiBubble);
            chatContainer.scrollTop = chatContainer.scrollHeight;
        }, 1000);
    }
    
    // 发送按钮点击事件
    if (sendBtn) {
        sendBtn.addEventListener('click', function() {
            var text = chatInput.value.trim();
            if (text) {
                sendMessage(text);
            }
        });
    }
    
    // 回车发送
    if (chatInput) {
        chatInput.addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                var text = this.value.trim();
                if (text) {
                    sendMessage(text);
                }
            }
        });
    }
    
    // 快捷提示点击
    var quickPrompts = document.querySelectorAll('.prompt-tag');
    quickPrompts.forEach(function(prompt) {
        prompt.addEventListener('click', function() {
            sendMessage(this.getAttribute('data-msg'));
        });
    });
});
