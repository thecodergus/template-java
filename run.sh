#!/usr/bin/env bash
set -e


echo "🔧 Baixando toolchain e dependências..."
gradlew --no-daemon clean build

echo "✅ Build e testes concluídos!"

echo "🚀 Executando aplicação:"
gradlew --no-daemon run