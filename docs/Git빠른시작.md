# ⚡ Git & GitHub 빠른 시작 (1분 요약)

## 🚀 완전 처음 시작 (한 번만)

### 1️⃣ Git 설치 확인

```bash
git --version
```

### 2️⃣ 사용자 정보 설정 (최초 1회)

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@gmail.com"
```

---

## 📦 새 프로젝트 GitHub에 올리기

### A. GitHub 웹사이트에서

```
1. https://github.com → New repository
2. 이름 입력 (예: review)
3. Public ✅
4. Create repository
```

### B. 터미널에서

```bash
cd /home/sdh/5240/review

# 초기화
git init

# 파일 추가
git add .

# 커밋
git commit -m "첫 커밋"

# GitHub 연결 (YOUR_USERNAME 변경!)
git remote add origin https://github.com/YOUR_USERNAME/review.git

# 브랜치 설정
git branch -M main

# 업로드
git push -u origin main
```

**완료! 🎉**

---

## 🔄 수정할 때마다 (반복)

```bash
# 1. 파일 수정
# ...

# 2. 확인
git status

# 3. 추가
git add .

# 4. 커밋
git commit -m "변경 내용 설명"

# 5. 업로드
git push
```

**3줄 요약:**

```bash
git add .
git commit -m "메시지"
git push
```

---

## 🔑 인증 (처음 1회)

### Personal Access Token 생성

```
GitHub → Settings → Developer settings
→ Personal access tokens → Tokens (classic)
→ Generate new token

권한: ✅ repo (전체)

생성된 토큰 복사: ghp_xxxxxxxxxxxxx
```

### 사용

```bash
git push

Username: your-username
Password: ghp_xxxxxxxxxxxxx (토큰 붙여넣기)
```

---

## 🆘 자주 쓰는 명령어

```bash
# 상태 확인
git status

# 히스토리
git log --oneline

# 되돌리기 (주의!)
git reset --hard HEAD~1

# 원격 확인
git remote -v

# 원격 변경
git remote set-url origin NEW_URL
```

---

## 📱 우리 프로젝트 배포

```bash
cd /home/sdh/5240/review
./deploy.sh
```

**끝!** 자동으로 모든 걸 해줍니다.

---

## 🎯 핵심만 기억하기

```
저장소 만들기:
  GitHub에서 → 로컬에서 연결

파일 올리기:
  add → commit → push

수정사항 반영:
  add → commit → push
```

---

**더 자세한 내용:** `GitHub시작가이드.md` 참고
