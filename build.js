const fs = require('fs');
const path = require('path');

// Criar diretório public se não existir
if (!fs.existsSync('public')) {
  fs.mkdirSync('public');
  console.log('📁 Diretório public criado');
}

// Copiar index.html para public
fs.copyFileSync('index.html', 'public/index.html');
console.log('✅ index.html copiado para public/');

// Verificar se existem outros arquivos estáticos e copiá-los
const staticFiles = ['favicon.ico', 'robots.txt', 'sitemap.xml'];
staticFiles.forEach(file => {
  if (fs.existsSync(file)) {
    fs.copyFileSync(file, `public/${file}`);
    console.log(`✅ ${file} copiado para public/`);
  }
});

console.log('🚀 Build concluído com sucesso!');
console.log('📦 Arquivos prontos para deploy no Vercel');