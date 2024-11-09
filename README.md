# Sistema de Controle e Gerenciamento de Ordens de Serviço

![Badge Projeto](https://img.shields.io/badge/Status-%20Projeto-green)
![Badge Teste](https://img.shields.io/badge/Teste-blue)
## Diagrama Entidade-Relacionamento (ERD) E Diagrama lógico
## Descrição do Projeto

Este projeto é um sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica. O sistema permite que clientes levem veículos à oficina para consertos ou revisões periódicas, gerenciando todo o processo desde a criação da ordem de serviço até a conclusão dos trabalhos.

## Funcionalidades Principais

- Registro de clientes e veículos
- Criação e gerenciamento de ordens de serviço (OS)
- Atribuição de equipes de mecânicos para cada OS
- Cálculo de valores de serviços e peças
- Acompanhamento do status das OS
- Relatórios de desempenho e custos

## Estrutura de Dados

### Entidades e Atributos

1. **Clientes**
   - ID
   - Nome
   - Endereço
   - Telefone

2. **Veículos**
   - Placa
   - Modelo
   - Ano
   - ClienteID (chave estrangeira para Clientes)

3. **Mecânicos**
   - ID
   - Nome
   - Endereço
   - Especialidade

4. **Equipes**
   - ID
   - Nome

5. **Mecânicos_Equipes**
   - MecânicoID (chave estrangeira para Mecânicos)
   - EquipeID (chave estrangeira para Equipes)

6. **Ordens_de_Serviço (OS)**
   - Número
   - Data de Emissão
   - Valor
   - Status
   - Data de Conclusão
   - VeículoPlaca (chave estrangeira para Veículos)
   - EquipeID (chave estrangeira para Equipes)

7. **Serviços**
   - ID
   - Descrição
   - Valor

8. **Peças**
   - ID
   - Descrição
   - Valor

9. **OS_Serviços**
   - OSNúmero (chave estrangeira para Ordens_de_Serviço)
   - ServiçoID (chave estrangeira para Serviços)

10. **OS_Peças**
    - OSNúmero (chave estrangeira para Ordens_de_Serviço)
    - PeçaID (chave estrangeira para Peças)

### Relacionamentos

- Um **Cliente** pode ter vários **Veículos**.
- Um **Veículo** pertence a um **Cliente**.
- Um **Mecânico** pode fazer parte de várias **Equipes** e uma **Equipe** pode ter vários **Mecânicos**.
- Uma **Ordem de Serviço (OS)** é associada a um **Veículo** e a uma **Equipe**.
- Uma **Ordem de Serviço (OS)** pode incluir vários **Serviços** e várias **Peças**.
- Um **Serviço** pode ser incluído em várias **Ordens de Serviço (OS)**.
- Uma **Peça** pode ser incluída em várias **Ordens de Serviço (OS)**.





