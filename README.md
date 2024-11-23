# CO₂ Emissions per Capita Dataset

Este dataset fornece dados sobre as **emissões de CO₂ per capita** de países e regiões, baseado nas **emissões territoriais** (não levando em consideração as emissões embutidas nos bens comercializados). Ele é crucial para entender o impacto das emissões de carbono na população de diferentes países ao longo do tempo.

## O que você precisa saber sobre este indicador

As emissões per capita representam as emissões de CO₂ para uma pessoa média em um determinado país ou região. Elas são calculadas dividindo as emissões totais de CO₂ pela população do país ou região.

**Importante:**
- Os dados são baseados em **emissões territoriais**, ou seja, as emissões geradas dentro das fronteiras de um país, e não incluem as emissões embutidas em bens e serviços que o país importa.
- **Emissões de aviação internacional e navegação** não estão incluídas nas emissões de um país ou região. Elas são consideradas apenas nas emissões totais globais.

## Detalhes do Dataset

- **Fonte**: Global Carbon Budget (2024); população baseada em várias fontes (2024), com processamento adicional pela Our World in Data.
- **Última atualização**: 21 de Novembro de 2024
- **Próxima atualização esperada**: Novembro de 2025
- **Intervalo de datas**: 1750–2023
- **Unidade**: Toneladas per capita

## Estrutura do Dataset

O dataset contém os seguintes campos:

| Coluna                              | Descrição                                               |
|-------------------------------------|---------------------------------------------------------|
| **Entity (Entidade)**               | Nome do país ou região                                  |
| **Code (Código)**                   | Código de três letras do país/região (ex: 'AFG' para Afeganistão) |
| **Year (Ano)**                      | Ano da medição                                          |
| **Annual CO₂ emissions (per capita)**| Emissões de CO₂ per capita em toneladas por pessoa       |

### Exemplo de Dados:

| Entity      | Code | Year | Annual CO₂ emissions (per capita) |
|-------------|------|------|----------------------------------|
| Afghanistan | AFG  | 1949 | 0.0019921463                     |
| Afghanistan | AFG  | 1950 | 0.0108371945                     |
| Afghanistan | AFG  | 1951 | 0.011625335                      |
| ...         | ...  | ...  | ...                              |


