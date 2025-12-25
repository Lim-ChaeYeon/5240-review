#!/bin/bash

# 팀 결산 페이지 GitHub Pages 자동 배포 스크립트
# 사용법: ./deploy.sh

echo "🚀 팀 2025년 결산 페이지 배포 시작..."
echo ""

# 1. GitHub 사용자명 입력
echo "📝 GitHub 사용자명을 입력하세요:"
read -p "   예) username: " GITHUB_USER

if [ -z "$GITHUB_USER" ]; then
    echo "❌ 오류: GitHub 사용자명이 필요합니다."
    exit 1
fi

# 2. 저장소 이름 입력 (기본값: review)
echo ""
echo "📝 저장소 이름을 입력하세요 (Enter = review):"
read -p "   저장소명: " REPO_NAME
REPO_NAME=${REPO_NAME:-review}

echo ""
echo "✅ 설정 확인:"
echo "   GitHub 사용자: $GITHUB_USER"
echo "   저장소 이름: $REPO_NAME"
echo "   배포 URL: https://$GITHUB_USER.github.io/$REPO_NAME/"
echo ""

read -p "계속하시겠습니까? (y/n): " CONFIRM
if [ "$CONFIRM" != "y" ] && [ "$CONFIRM" != "Y" ]; then
    echo "❌ 취소되었습니다."
    exit 0
fi

echo ""
echo "📦 Git 저장소 초기화 중..."

# Git 초기화 (이미 있으면 스킵)
if [ ! -d ".git" ]; then
    git init
    echo "✅ Git 저장소 초기화 완료"
else
    echo "✅ 기존 Git 저장소 사용"
fi

# 3. 파일 추가
echo ""
echo "📁 파일 추가 중..."
git add .

# 4. 커밋
echo "💾 커밋 생성 중..."
git commit -m "팀 2025년 결산 페이지 배포" || echo "⚠️  변경사항 없음 (이미 커밋됨)"

# 5. 원격 저장소 설정
echo ""
echo "🔗 GitHub 원격 저장소 연결 중..."
REMOTE_URL="https://github.com/$GITHUB_USER/$REPO_NAME.git"

# 기존 origin 제거 (있으면)
git remote remove origin 2>/dev/null

git remote add origin $REMOTE_URL
echo "✅ 원격 저장소 설정: $REMOTE_URL"

# 6. 브랜치 이름 main으로 변경
echo ""
echo "🌿 메인 브랜치 설정 중..."
git branch -M main

# 7. Push
echo ""
echo "🚀 GitHub에 푸시 중..."
echo "   (GitHub 로그인 창이 나타날 수 있습니다)"
echo ""

git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ ============================================"
    echo "✅ 배포 완료!"
    echo "✅ ============================================"
    echo ""
    echo "📌 다음 단계:"
    echo ""
    echo "1. GitHub 저장소 설정:"
    echo "   👉 https://github.com/$GITHUB_USER/$REPO_NAME/settings/pages"
    echo ""
    echo "2. 'Source' 섹션에서:"
    echo "   - Branch: main 선택"
    echo "   - Folder: / (root) 선택"
    echo "   - Save 클릭"
    echo ""
    echo "3. 1-2분 후 접속:"
    echo "   👉 https://$GITHUB_USER.github.io/$REPO_NAME/"
    echo ""
    echo "📱 이 링크를 팀원들에게 공유하세요!"
    echo ""
    echo "============================================"
else
    echo ""
    echo "❌ 푸시 실패!"
    echo ""
    echo "💡 해결 방법:"
    echo "1. GitHub에 '$REPO_NAME' 저장소를 먼저 만드세요:"
    echo "   👉 https://github.com/new"
    echo ""
    echo "2. 저장소 생성 시 'Public'으로 설정하세요"
    echo ""
    echo "3. 생성 후 다시 이 스크립트를 실행하세요:"
    echo "   ./deploy.sh"
    echo ""
fi

