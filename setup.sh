#!/bin/bash
# Script de configuração inicial do ambiente
# Sua Corretora Landing Page

echo "⚙️  Configurando ambiente de desenvolvimento..."
echo "🏠 Sua Corretora - Landing Page Interativa"
echo ""

# Verifica se o Node.js está instalado
if ! command -v node &> /dev/null; then
    echo "❌ Node.js não encontrado!"
    echo "📥 Por favor, instale o Node.js: https://nodejs.org"
    echo "💡 Versão recomendada: 18.x ou superior"
    exit 1
else
    echo "✅ Node.js encontrado: $(node --version)"
fi

# Verifica se o npm está disponível
if ! command -v npm &> /dev/null; then
    echo "❌ npm não encontrado!"
    exit 1
else
    echo "✅ npm encontrado: $(npm --version)"
fi

# Instala dependências
echo ""
echo "📦 Instalando dependências de desenvolvimento..."
npm install

if [ $? -eq 0 ]; then
    echo "✅ Dependências instaladas com sucesso!"
else
    echo "❌ Erro ao instalar dependências"
    exit 1
fi

# Torna os scripts executáveis
echo ""
echo "🔧 Configurando permissões dos scripts..."
chmod +x dev.sh 2>/dev/null || true
chmod +x stop.sh 2>/dev/null || true
chmod +x setup.sh 2>/dev/null || true

# Verifica se o Git está inicializado
if [ ! -d ".git" ]; then
    echo ""
    echo "🔄 Inicializando repositório Git..."
    git init
    echo "✅ Repositório Git inicializado"
else
    echo "✅ Repositório Git já existe"
fi

echo ""
echo "🎉 Configuração concluída com sucesso!"
echo ""
echo "📋 Próximos passos:"
echo "   1. Configure o número do WhatsApp no index.html"
echo "   2. Execute: ./dev.sh para iniciar o desenvolvimento"
echo "   3. Acesse: http://localhost:3000"
echo ""
echo "🛠️  Comandos disponíveis:"
echo "   ./dev.sh   - Inicia servidor de desenvolvimento"
echo "   ./stop.sh  - Para todos os processos"
echo "   npm start  - Servidor HTTP simples"
echo ""
echo "📱 Lembre-se de testar em diferentes dispositivos!"
echo "🚀 Bom desenvolvimento!"