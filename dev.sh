#!/bin/bash
# Script de desenvolvimento para Sua Corretora Landing Page
# Mata processos existentes e inicia servidor de desenvolvimento

echo "🚀 Iniciando ambiente de desenvolvimento..."

# Mata processos existentes nas portas comuns
echo "🔄 Limpando processos existentes..."
npx kill-port 3000 8080 8000 5000 2>/dev/null || true

# Verifica se o Node.js está instalado
if ! command -v node &> /dev/null; then
    echo "❌ Node.js não encontrado. Instalando dependências via npm..."
    echo "📦 Por favor, instale o Node.js primeiro: https://nodejs.org"
    exit 1
fi

# Instala dependências se necessário
if [ ! -d "node_modules" ]; then
    echo "📦 Instalando dependências..."
    npm install
fi

# Inicia o servidor de desenvolvimento
echo "🌐 Iniciando servidor na porta 3000..."
echo "📱 Acesse: http://localhost:3000"
echo "⏹️  Para parar: Ctrl+C ou execute ./stop.sh"
echo ""

# Inicia o live-server para desenvolvimento com hot reload
npx live-server --port=3000 --open=/index.html --no-browser &

# Aguarda um momento e abre o navegador
sleep 2
echo "🎉 Servidor iniciado com sucesso!"
echo "📂 Arquivos sendo monitorados para hot reload"

# Mantém o script rodando
wait