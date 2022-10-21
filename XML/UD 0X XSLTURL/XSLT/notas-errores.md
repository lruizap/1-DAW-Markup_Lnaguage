
# Soporte XSL en plugin xml RedHat

Para solucionar el problema con el soporte XSL del plugin xml de Redhat hay que instalar Java JRE en la máquina virtual:

```bash
#  apt install openjdk-17-jre
```


## Opcional: snippets

Generador de snippets: <https://snippet-generator.app/>

Genero plantilla con output y template. Genero fichero xsl.josn que almweceno
en `.config/VSCodium/User/Snippets`


```json
{
  "Plantilla XSL clases": {
    "prefix": "xsl-template",
    "body": [
      "<?xml version=\"1.0\" encoding=\"UTF-8\"?>",
      "",
      "<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">",
      "  <xsl:output method=\"xml\" indent=\"yes\" />",
      "",
      "  <xsl:template match=\"/\">",
      "  ",
      "  </xsl:template>",
      "  ",
      "</xsl:stylesheet>"
    ],
    "description": "Plantilla XSL clases"
  }
}
```



