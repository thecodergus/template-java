#!/usr/bin/env bash
set -euo pipefail

# Localiza o diretório raiz do projeto
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

# Verifica se o Java está instalado
if ! command -v java &> /dev/null; then
    echo "❌ Erro: Java não encontrado no PATH. Instale o OpenJDK 11 ou superior."
    exit 1
fi

# Confere permissão para o gradlew
chmod +x ./gradlew

echo "🔧 Construindo o projeto (build + testes)..."
./gradlew clean build

echo "✅ Build realizado com sucesso."

echo "🚀 Executando a aplicação via Gradle:"
echo "────────────────────────────────────"
# Use o comando 'run' do Gradle em vez de tentar executar o JAR diretamente
./gradlew :app:run
echo "────────────────────────────────────"
echo "✅ Execução finalizada!"