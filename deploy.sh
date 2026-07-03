#!/bin/bash

# 우체국 스마트뱅킹 에뮬레이터 - GitHub 배포 스크립트

echo "🚀 우체국 스마트뱅킹 에뮬레이터 배포 시작"
echo ""

# 1. GitHub 저장소 URL 입력
echo "📝 GitHub 저장소 URL을 입력하세요:"
echo "   예시: https://github.com/본인아이디/post-banking-emulator.git"
read -p "URL: " REPO_URL

if [ -z "$REPO_URL" ]; then
  echo "❌ 저장소 URL이 입력되지 않았습니다."
  exit 1
fi

echo ""
echo "✅ 저장소 URL: $REPO_URL"
echo ""

# 2. Git 초기화 확인
if [ -d ".git" ]; then
  echo "⚠️  기존 Git 저장소가 있습니다. 덮어쓸까요? (y/n)"
  read -p "선택: " OVERWRITE
  if [ "$OVERWRITE" = "y" ]; then
    rm -rf .git
    echo "✅ 기존 Git 저장소 삭제 완료"
  else
    echo "❌ 배포를 취소합니다."
    exit 1
  fi
fi

# 3. Git 초기화
echo "📦 Git 초기화..."
git init
git branch -M main

# 4. 파일 추가
echo "📁 파일 추가..."
git add .

# 5. 커밋
echo "💾 커밋 생성..."
git commit -m "Add post banking emulator files"

# 6. 원격 저장소 연결
echo "🔗 GitHub 저장소 연결..."
git remote add origin "$REPO_URL"

# 7. 푸시
echo "📤 GitHub에 업로드..."
git push -u origin main

echo ""
echo "✅ 배포 완료!"
echo ""
echo "📌 다음 단계:"
echo "1. GitHub 저장소로 이동"
echo "2. Settings > Pages 클릭"
echo "3. Source: Deploy from a branch"
echo "4. Branch: main, Folder: / (root)"
echo "5. Save 클릭"
echo "6. 1~3분 후 URL 확인"
echo ""
echo "🌐 예상 URL:"
echo "   https://본인아이디.github.io/저장소이름/emulator.html"
echo ""
echo "🎉 배포 완료!"
