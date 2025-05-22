FROM openjdk:17-jdk-slim

WORKDIR /app

# JAR 파일 복사 (Gradle 기준, Maven은 경로 조정 필요)
COPY build/libs/vm-0.0.1-SNAPSHOT.jar app.jar

# 포트 노출
EXPOSE 8080

# 애플리케이션 실행
ENTRYPOINT ["java", "-jar", "app.jar"]