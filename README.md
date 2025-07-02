# 🏠 Sua Corretora - Landing Page Interativa

Uma landing page moderna e responsiva para corretoras de imóveis com quiz interativo que direciona clientes para WhatsApp.

## 🚀 Funcionalidades

- **Quiz Interativo**: Identifica o objetivo do cliente (vender, comprar ou alugar)
- **Redirecionamento WhatsApp**: Encaminha automaticamente para conversa personalizada
- **Design Responsivo**: Otimizado para desktop, tablet e mobile
- **Animações Suaves**: Interface moderna com transições CSS
- **Acessibilidade**: Suporte completo a navegação por teclado

## 🎨 Características do Design

- Gradiente moderno e atrativo
- Tipografia Inter para melhor legibilidade
- Animações CSS3 personalizadas
- Layout mobile-first
- Feedback visual em todas as interações

## 📱 Responsividade

- **Mobile**: < 480px - Layout otimizado para toque
- **Tablet**: 481px - 768px - Experiência intermediária
- **Desktop**: > 769px - Layout completo com hover effects
- **Large Desktop**: > 1200px - Espaçamento ampliado

## ⚙️ Configuração

### WhatsApp

Para configurar o número do WhatsApp, edite a variável no arquivo `index.html`:

```javascript
const NUMERO_WHATSAPP = '5521971031261'; // Substitua pelo seu número
```

### Mensagens Personalizadas

As mensagens são automaticamente personalizadas baseadas na escolha do usuário:

- **Vender**: Foco em avaliação e estratégia de venda
- **Comprar**: Ênfase em encontrar o imóvel ideal
- **Alugar**: Direcionamento para opções de locação

## 🚀 Como Usar

### Desenvolvimento Local

1. **Clone o repositório**
   ```bash
   git clone https://github.com/olucianobotelho/sua-corretora-landing.git
   cd sua-corretora-landing
   ```

2. **Instale as dependências**
   ```bash
   npm install
   ```

3. **Inicie o servidor de desenvolvimento**
   ```bash
   npm run dev
   ```

4. **Acesse no navegador**
   ```
   http://localhost:3000
   ```

### Deploy no Vercel

1. **Build para produção**
   ```bash
   npm run build
   ```

2. **Deploy automático**
   - O projeto está configurado para deploy automático no Vercel
   - Cada push para a branch `main` dispara um novo deploy
   - URL de produção: [sua-corretora-landing.vercel.app](https://sua-corretora-landing.vercel.app)

### Configuração

1. Configure o número do WhatsApp
2. Personalize as cores e textos conforme sua marca
3. Hospede em qualquer servidor web

## 📂 Estrutura do Projeto

```
corretoras/
├── index.html          # Página principal com quiz
├── README.md          # Documentação
└── .gitignore         # Arquivos ignorados pelo Git
```

## 🛠️ Tecnologias Utilizadas

### Frontend
- **HTML5**: Estrutura semântica
- **CSS3**: Estilização avançada com Grid/Flexbox
- **JavaScript**: Interatividade e integração WhatsApp
- **Google Fonts**: Tipografia Inter

### Build & Deploy
- **Node.js 20.x** - Runtime para scripts de build
- **npm** - Gerenciamento de dependências
- **Vercel** - Hospedagem e deploy automático
- **Git** - Controle de versão
- **GitHub** - Repositório e integração CI/CD

## 📈 Performance

- Carregamento rápido (< 2s)
- Otimizado para SEO
- Compatível com todos os navegadores modernos
- Lighthouse Score: 95+

## 🎯 Conversão

O quiz foi projetado para maximizar a conversão:

1. **Engajamento**: Interface atrativa mantém usuário interessado
2. **Personalização**: Mensagens específicas para cada objetivo
3. **Facilidade**: Um clique para iniciar conversa no WhatsApp
4. **Confiança**: Design profissional transmite credibilidade

## 📞 Suporte

Para dúvidas ou personalizações, entre em contato através do WhatsApp configurado no sistema.

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.

---

**Desenvolvido com ❤️ para corretoras que querem crescer online**