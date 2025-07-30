#!/usr/bin/env bash
set -e

echo "🔍 Garantindo que o Gradle Wrapper está executável..."
chmod +x ./gradlew

echo "🔧 Baixando toolchain e dependências..."
./gradlew --no-daemon clean build

echo "✅ Build e testes concluídos!"

echo "🚀 Executando aplicação:"
./gradlew --no-daemon run