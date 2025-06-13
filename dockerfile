# Dockerfile
# ใช้ OpenJDK Runtime เพื่อรันไฟล์ JAR ที่ Build ได้ (ขนาดเล็กกว่า Image ของ Maven)
FROM eclipse-temurin:17-jre-alpine

# กำหนด Working Directory ภายใน Container
WORKDIR /app

# คัดลอกไฟล์ JAR ที่ Build เสร็จแล้วจาก Jenkins Agent เข้ามาใน Image
# (สมมติว่าไฟล์ JAR จะอยู่ที่ target/my-app-1.0-SNAPSHOT.jar หลังจาก Maven Build)
COPY target/my-app-1.0-SNAPSHOT.jar /app/my-app.jar

# กำหนดคำสั่งเริ่มต้นเมื่อ Container ถูกรัน
CMD ["java", "-jar", "my-app.jar"]