# Используем твой базовый образ
FROM eclipse-temurin:21-jre-alpine

# ИСПРАВЛЕНИЕ: Обновляем все системные пакеты до последних версий.
# Это установит патч для libexpat (CVE-2026-32767) и сделает образ чистым.
RUN apk update && apk upgrade --no-cache

WORKDIR /app

# Копируем JAR
COPY target/*.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "app.jar"]