# 🚀 Como Subir o Projeto para o GitHub

## Passo 1: Criar Repositório no GitHub

1. Acesse [GitHub.com](https://github.com) e faça login
2. Clique no botão **"+"** no canto superior direito
3. Selecione **"New repository"**
4. Configure o repositório:
   - **Repository name**: `sua-corretora-landing`
   - **Description**: `Landing page interativa para corretoras de imóveis com quiz e integração WhatsApp`
   - **Visibility**: Public (ou Private se preferir)
   - **NÃO** marque "Add a README file" (já temos um)
   - **NÃO** marque "Add .gitignore" (já temos um)
   - **NÃO** marque "Choose a license" (já está no package.json)
5. Clique em **"Create repository"**

## Passo 2: Conectar Repositório Local ao GitHub

Após criar o repositório, execute os comandos abaixo no terminal:

```bash
# Adicionar o repositório remoto (substitua SEU_USUARIO pelo seu username)
git remote add origin https://github.com/SEU_USUARIO/sua-corretora-landing.git

# Renomear a branch principal para 'main' (padrão atual do GitHub)
git branch -M main

# Fazer push do código para o GitHub
git push -u origin main
```

## Passo 3: Verificar Upload

1. Atualize a página do seu repositório no GitHub
2. Você deve ver todos os arquivos:
   - `index.html`
   - `README.md`
   - `package.json`
   - `.gitignore`
   - `dev.sh`
   - `stop.sh`
   - `setup.sh`

## Passo 4: Configurar GitHub Pages (Opcional)

Para hospedar gratuitamente no GitHub:

1. No seu repositório, vá em **Settings**
2. Role até **Pages** no menu lateral
3. Em **Source**, selecione **"Deploy from a branch"**
4. Escolha **"main"** branch e **"/ (root)"**
5. Clique em **Save**
6. Aguarde alguns minutos e acesse: `https://SEU_USUARIO.github.io/sua-corretora-landing`

## Comandos Úteis

```bash
# Ver status do repositório
git status

# Ver repositórios remotos configurados
git remote -v

# Fazer push de mudanças futuras
git add .
git commit -m "Descrição das mudanças"
git push

# Clonar em outro computador
git clone https://github.com/SEU_USUARIO/sua-corretora-landing.git
```

## 🎯 Próximos Passos

1. **Personalizar**: Edite o número do WhatsApp no `index.html`
2. **Testar**: Execute `./setup.sh` e depois `./dev.sh`
3. **Customizar**: Ajuste cores, textos e imagens conforme sua marca
4. **Deploy**: Configure hospedagem (GitHub Pages, Netlify, Vercel, etc.)

## 🔧 Troubleshooting

### Erro de Autenticação
Se der erro de autenticação, configure suas credenciais:

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu.email@exemplo.com"
```

### Token de Acesso
Se usar autenticação de dois fatores, crie um Personal Access Token:

1. GitHub → Settings → Developer settings → Personal access tokens
2. Generate new token (classic)
3. Selecione escopo "repo"
4. Use o token como senha ao fazer push

### Erro de Branch
Se der erro de branch, force o push inicial:

```bash
git push -u origin main --force
```

---

**✅ Repositório configurado com sucesso!**

Seu projeto agora está versionado e pode ser acessado de qualquer lugar. Lembre-se de fazer commits regulares conforme desenvolve novas funcionalidades.