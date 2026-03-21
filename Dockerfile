# Этап 1: Используем легкий образ с JRE 21
FROM eclipse-temurin:21-jre-alpine

# Создаем рабочую папку
WORKDIR /app

# Копируем наш скомпилированный JAR файл (который делает стадия build)
COPY target/*.jar app.jar

# Запускаем приложение на порту 8081 (как у тебя настроено)
EXPOSE 8081

ENTRYPOINT ["java", "-jar", "app.jar"]