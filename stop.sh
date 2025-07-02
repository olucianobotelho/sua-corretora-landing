#!/bin/bash
# Script para parar todos os processos de desenvolvimento
# Sua Corretora Landing Page

echo "🛑 Parando todos os processos de desenvolvimento..."

# Mata processos do live-server
echo "🔄 Finalizando live-server..."
pkill -f "live-server" 2>/dev/null || true

# Mata processos do http-server
echo "🔄 Finalizando http-server..."
pkill -f "http-server" 2>/dev/null || true

# Mata processos nas portas específicas
echo "🔄 Liberando portas..."
npx kill-port 3000 8080 8000 5000 2>/dev/null || true

# Mata qualquer processo Node.js relacionado ao projeto
echo "🔄 Finalizando processos Node.js..."
pkill -f "node.*server" 2>/dev/null || true

# Aguarda um momento para garantir que tudo foi finalizado
sleep 1

echo "✅ Todos os processos de desenvolvimento foram finalizados."
echo "🎯 Ambiente limpo e pronto para nova execução."
echo "🚀 Para iniciar novamente: ./dev.sh"