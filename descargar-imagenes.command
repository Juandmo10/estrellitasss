#!/usr/bin/env bash
cd "$(dirname "$0")/images"
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

descargar() {
  local archivo="$1" url="$2"
  if curl -fsSL -A "$UA" --connect-timeout 20 -o "$archivo" "$url"; then
    echo "OK  $archivo"
  else
    echo "FALLO $archivo — ábrela en Chrome y guárdala manualmente:"
    echo "      $url"
  fi
}

echo "Descargando imágenes a $(pwd) ..."
descargar "galeria-1.png" "https://kokorokids.app/wp-content/uploads/2021/07/24-ESTIMULACION-TEMPRANA.png"
descargar "galeria-2.webp" "https://centroeducativosigloxxi.edu.mx/school/wp-content/uploads/2025/02/14-de-Febrero.webp"
descargar "galeria-3.jpg" "https://www.familynes.ec/sites/default/files/styles/content_media_mobile/public/content_image/5-actividadesjuegos.jpg?itok=PREUMdz5"
descargar "galeria-4.webp" "https://xihakidz.com/wp-content/uploads/2024/10/Maximize-Daycare-Room-Space.webp"
descargar "galeria-5.jpeg" "https://savethechildren.mx/wp-content/uploads/2024/08/LUDOTECA3-1024x683.jpeg"
descargar "galeria-6.webp" "https://www.unicef.org/dominicanrepublic/sites/unicef.org.dominicanrepublic/files/styles/hero_extended/public/Celado-4618.jpg.webp?itok=y8AtTD01"
descargar "camara-seguridad.jpg" "https://de2kqc9pq55cj.cloudfront.net/fit-in/700x700/filters:fill(FFFFFF):quality(90):format(webp)/_img_productos/camara-de-seguridad-qc002-17274-fb--.jpg"
descargar "atencion-especial.png" "https://www.babyfresh.co/cdn/shop/articles/Consejos-para-potenciar-la-atencion-y-concentracion-infantil.png?v=1765293418"
descargar "plataforma-padres.jpg" "https://img.freepik.com/fotos-premium/mi-hijo-es-lo-mejor-que-me-ha-pasado-toma-padre-su-hijo-usando-tableta-digital-juntos_590464-65920.jpg"
echo ""
echo "Listo. Revisa la carpeta images/ y luego sube index.html + images/ a GitHub."
open "$(dirname "$0")"
