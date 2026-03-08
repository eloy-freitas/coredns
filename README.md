# CoreDNS Server

Este repositório contém os arquivos necessários para hospedar e configurar um servidor local CoreDNS usando Docker e Docker Compose. O objetivo principal é permitir a resolução de nomes DNS customizados dentro de uma rede local.

## Arquivos do Projeto

- **Corefile**: Arquivo de configuração do CoreDNS. Define as regras de resolução de nomes, como o mapeamento de domínios para endereços IP (ex: `tech-diary.net` apontando para `10.3.152.100`) e o redirecionamento de consultas não resolvidas base para servidores DNS públicos (como `8.8.8.8`).
- **Dockerfile**: Instruções para construir a imagem customizada baseada no CoreDNS oficial, copiando o arquivo `Corefile` para o local correto dentro do container.
- **docker-compose.yml**: Arquivo para orquestrar e iniciar o servidor. Ele expõe a porta padrão de DNS (53 TCP/UDP) do host para o container.

## Como Usar

1. Certifique-se de que o Docker e o Docker Compose estão instalados no sistema.
2. Navegue até o diretório onde estes arquivos estão localizados.
3. Para iniciar o servidor CoreDNS em segundo plano (background), execute o seguinte comando:

```bash
docker compose up -d
```

4. (Opcional) Para parar o servidor, execute:

```bash
docker compose down
```

## Configuração de Rede

Para que outros computadores e dispositivos na mesma rede consigam resolver os nomes configurados no `Corefile`, é necessário alterar a configuração do servidor DNS de suas respectivas conexões de rede para apontar para o endereço IP da máquina onde este container do CoreDNS está sendo executado.
