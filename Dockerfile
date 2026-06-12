FROM teddysun/v2ray:latest

# نسخ ملف الإعدادات إلى المسار الافتراضي
COPY config.json /etc/v2ray/config.json

# الخدعة البرمجية: استبدال المنفذ 8080 بالمنفذ الديناميكي للمنصة ثم التشغيل فوراً
CMD sed -i "s/8080/$PORT/g" /etc/v2ray/config.json && v2ray run -config /etc/v2ray/config.json
