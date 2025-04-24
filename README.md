# Power Menu

Um script em **Bash** que exibe um menu gráfico com opções de energia usando **Zenity**. Ideal para desligar, reiniciar, bloquear a tela ou encerrar a sessão com apenas alguns cliques.

## 🧰 Requisitos

- Linux com suporte ao `systemd`
- Ambiente GNOME (ou compatível com `gnome-screensaver-command` e `gnome-session-quit`)
- `zenity` instalado:

```bash
sudo apt install zenity gnome-screensaver
```

> **Nota:** Se você não usa GNOME, pode ser necessário ajustar os comandos de "Bloquear" e "Encerrar sessão".

---

## 🚀 Instalação

### 📦 Usando `make` (recomendado)

1. Clone o repositório:

```bash
git clone https://github.com/seu-usuario/power-menu.git
cd power-menu
```

2. Torne o script executável:

```bash
chmod +x power-menu
```

3. Instale:

```bash
make install
```

Agora você pode chamar o menu com:

```bash
power-menu
```

Para remover:

```bash
make uninstall
```

---

### 🛠️ Instalação manual

1. Dê permissão de execução:

```bash
chmod +x power-menu
```

2. Mova o script para `/usr/bin`:

```bash
sudo mv power-menu /usr/bin/power-menu
```

---

## ⌨️ Criando um atalho de teclado

Você pode vincular o **Power Menu** a um atalho personalizado de teclado para abrir rapidamente.

### Como configurar no GNOME:

1. Acesse **Configurações do sistema**.
2. Vá até **Teclado** > **Atalhos personalizados**.
3. Clique em **"+" (Adicionar novo atalho)**.
4. Preencha:
   - **Nome**: Power Menu
   - **Comando**: `power-menu`
   - **Atalho**: pressione as teclas escolhidas, exemplo: `Alt+f3`

5. Salve. Pronto!

---

## 🔒 Prevenção de múltiplas instâncias

O script usa um arquivo de bloqueio temporário (`/tmp/power-menu.lock`) para impedir múltiplas execuções simultâneas do menu.
