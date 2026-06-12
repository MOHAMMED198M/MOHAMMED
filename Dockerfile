FROM teddysun/v2ray:latest

# نسخ ملف الإعدادات المطور إلى مسار التشغيل الافتراضي داخل الحاوية
COPY config.json /etc/v2ray/config.json

# تشغيل السيرفر مع تفعيل خاصية قراءة المتغيرات البيئية للمنافذ
CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
