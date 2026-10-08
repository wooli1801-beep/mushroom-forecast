#!/bin/sh
# index.html(아티팩트 원본)을 독립 실행용 완전한 HTML 문서로 감싸 docs/index.html 생성 (GitHub Pages 배포용)
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="ko">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n</head>\n<body>\n'
  grep -v '^<meta charset="utf-8">$' index.html
  printf '\n</body>\n</html>\n'
} > docs/index.html
