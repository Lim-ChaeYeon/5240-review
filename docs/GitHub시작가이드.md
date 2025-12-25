# 🐙 처음 시작하는 GitHub 가이드

> 프로젝트 생성부터 GitHub 연결까지 완벽 가이드

---

## 📋 목차

1. [사전 준비](#1-사전-준비)
2. [GitHub 저장소 만들기](#2-github-저장소-만들기)
3. [로컬 프로젝트와 연결하기](#3-로컬-프로젝트와-연결하기)
4. [파일 업로드하기](#4-파일-업로드하기)
5. [다음 번 수정할 때](#5-다음-번-수정할-때)

---

## 1. 사전 준비

### ✅ 필요한 것들

#### A. GitHub 계정 (무료)

```
없으면 만들기:
👉 https://github.com/signup
- 이메일 입력
- 비밀번호 설정
- 사용자명 정하기 (예: myname)
```

#### B. Git 설치 확인

```bash
# 터미널에서 확인
git --version

# 결과 예시
# git version 2.x.x
```

**없으면 설치:**

```bash
# Ubuntu/Debian
sudo apt install git

# macOS
brew install git

# Windows
https://git-scm.com/download/win
```

#### C. Git 사용자 정보 설정 (최초 1회)

```bash
# 이름 설정
git config --global user.name "Your Name"

# 이메일 설정 (GitHub 계정과 동일하게!)
git config --global user.email "your.email@example.com"

# 확인
git config --list
```

---

## 2. GitHub 저장소 만들기

### 📝 단계별 가이드

#### Step 1: GitHub 웹사이트 접속

```
https://github.com
```

#### Step 2: 로그인

- 우측 상단 "Sign in" 클릭
- 이메일/비밀번호 입력

#### Step 3: 새 저장소 생성

1. **우측 상단 "+" 버튼** 클릭
2. **"New repository"** 선택

#### Step 4: 저장소 정보 입력

```
┌─────────────────────────────────────┐
│ Repository name *                   │
│ ┌─────────────────────────────────┐ │
│ │ review                          │ │  ← 여기에 입력
│ └─────────────────────────────────┘ │
│                                     │
│ Description (optional)              │
│ ┌─────────────────────────────────┐ │
│ │ 2025년 팀 결산 페이지            │ │  ← 선택사항
│ └─────────────────────────────────┘ │
│                                     │
│ ○ Public  ● Private                │  ← Public 선택!
│                                     │
│ Initialize this repository with:    │
│ ☐ Add a README file                │  ← 체크 안 함
│ ☐ Add .gitignore                   │  ← 체크 안 함
│ ☐ Choose a license                 │  ← 체크 안 함
│                                     │
└─────────────────────────────────────┘
```

**중요!**

- ✅ **Public** 선택 (GitHub Pages 사용 시 필요)
- ✅ 아래 체크박스는 **모두 비워두기** (빈 저장소로 생성)

#### Step 5: "Create repository" 클릭

완료! 🎉

---

## 3. 로컬 프로젝트와 연결하기

### 📂 현재 상황

```
로컬 컴퓨터:          GitHub:
/home/sdh/5240/      https://github.com/username/review
  review/            (빈 저장소)
    ├── index.html
    ├── style.css
    └── ...
```

### 🔗 연결 시작!

#### 방법 A: 자동 스크립트 사용 ⭐ (가장 쉬움!)

```bash
cd /home/sdh/5240/review
./deploy.sh
```

**끝!** 스크립트가 모든 걸 자동으로 해줍니다.

---

#### 방법 B: 직접 명령어 입력 (학습용)

##### Step 1: 프로젝트 폴더로 이동

```bash
cd /home/sdh/5240/review
```

##### Step 2: Git 저장소 초기화

```bash
git init
```

**결과:**

```
Initialized empty Git repository in /home/sdh/5240/review/.git/
```

**무슨 일이?**

- `.git` 폴더가 생성됨 (숨김 폴더)
- 이 폴더가 Git의 모든 정보를 저장

##### Step 3: 파일 추가 (Staging)

```bash
# 모든 파일 추가
git add .

# 또는 특정 파일만
git add index.html style.css app.js
```

**확인하기:**

```bash
git status
```

**결과 예시:**

```
Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   index.html
        new file:   style.css
        new file:   app.js
        ...
```

##### Step 4: 커밋 (스냅샷 저장)

```bash
git commit -m "첫 번째 커밋: 팀 결산 페이지"
```

**결과:**

```
[main (root-commit) abc1234] 첫 번째 커밋: 팀 결산 페이지
 8 files changed, 1234 insertions(+)
 create mode 100644 index.html
 ...
```

##### Step 5: GitHub 원격 저장소 연결

```bash
# YOUR_USERNAME을 본인 것으로 변경!
git remote add origin https://github.com/YOUR_USERNAME/review.git
```

**확인하기:**

```bash
git remote -v
```

**결과:**

```
origin  https://github.com/YOUR_USERNAME/review.git (fetch)
origin  https://github.com/YOUR_USERNAME/review.git (push)
```

##### Step 6: 메인 브랜치 이름 설정

```bash
git branch -M main
```

##### Step 7: GitHub에 업로드 (Push)

```bash
git push -u origin main
```

**처음 실행 시:**

- 로그인 창이 나타날 수 있음
- GitHub 사용자명/비밀번호 입력
- 또는 Personal Access Token 입력

**결과:**

```
Enumerating objects: 10, done.
Counting objects: 100% (10/10), done.
...
To https://github.com/YOUR_USERNAME/review.git
 * [new branch]      main -> main
Branch 'main' set up to track remote branch 'main' from 'origin'.
```

**성공! 🎉**

---

## 4. 파일 업로드하기

### 📤 이미 연결된 후

```bash
# 1. 변경사항 확인
git status

# 2. 파일 추가
git add .

# 3. 커밋
git commit -m "설명 메시지"

# 4. 푸시
git push
```

---

## 5. 다음 번 수정할 때

### 🔄 일상적인 워크플로우

```bash
# 1. 파일 수정
nano data.js

# 2. 상태 확인
git status

# 3. 추가
git add data.js
# 또는 모든 변경사항
git add .

# 4. 커밋
git commit -m "1월 데이터 업데이트"

# 5. 푸시
git push
```

**끝!** 1-2분 후 GitHub Pages에 자동 반영됩니다.

---

## 🔑 인증 방법

### Option 1: Personal Access Token (권장)

#### 생성 방법:

1. GitHub 웹사이트
2. Settings → Developer settings → Personal access tokens → Tokens (classic)
3. "Generate new token" → "Generate new token (classic)"
4. 설정:
   ```
   Note: review-project
   Expiration: 90 days
   Select scopes:
     ✅ repo (전체 체크)
   ```
5. "Generate token"
6. **토큰 복사** (다시 볼 수 없음!)

#### 사용 방법:

```bash
git push

# Username: your-username
# Password: ghp_xxxxxxxxxxxx (토큰 붙여넣기)
```

### Option 2: SSH Key (고급)

```bash
# SSH 키 생성
ssh-keygen -t ed25519 -C "your.email@example.com"

# 공개키 복사
cat ~/.ssh/id_ed25519.pub

# GitHub Settings → SSH and GPG keys → New SSH key
# 복사한 키 붙여넣기
```

---

## 🎓 Git 기본 용어 설명

| 용어           | 의미   | 비유          |
| -------------- | ------ | ------------- |
| **Repository** | 저장소 | 프로젝트 폴더 |
| **Commit**     | 커밋   | 스냅샷/저장   |
| **Push**       | 푸시   | 업로드        |
| **Pull**       | 풀     | 다운로드      |
| **Clone**      | 클론   | 복제          |
| **Branch**     | 브랜치 | 평행우주      |
| **Merge**      | 머지   | 합치기        |

---

## 📊 전체 과정 요약

```
┌─────────────────────────────────────┐
│ 1. GitHub에서 저장소 생성            │
│    https://github.com/new           │
└─────────────────────────────────────┘
              ↓
┌─────────────────────────────────────┐
│ 2. 로컬에서 Git 초기화               │
│    git init                         │
└─────────────────────────────────────┘
              ↓
┌─────────────────────────────────────┐
│ 3. 파일 추가 & 커밋                  │
│    git add .                        │
│    git commit -m "first commit"     │
└─────────────────────────────────────┘
              ↓
┌─────────────────────────────────────┐
│ 4. 원격 저장소 연결                  │
│    git remote add origin URL        │
└─────────────────────────────────────┘
              ↓
┌─────────────────────────────────────┐
│ 5. 푸시 (업로드)                     │
│    git push -u origin main          │
└─────────────────────────────────────┘
              ↓
           🎉 완료!
```

---

## 🚨 자주 하는 실수 & 해결법

### ❌ Error: remote origin already exists

**원인:** 이미 origin이 설정되어 있음

**해결:**

```bash
# 기존 origin 제거
git remote remove origin

# 다시 추가
git remote add origin https://github.com/YOUR_USERNAME/review.git
```

---

### ❌ Error: failed to push some refs

**원인:** 원격 저장소에 로컬에 없는 파일이 있음

**해결:**

```bash
# 원격 내용 가져오기
git pull origin main --allow-unrelated-histories

# 다시 푸시
git push origin main
```

---

### ❌ Support for password authentication was removed

**원인:** GitHub가 비밀번호 인증을 중단함

**해결:** Personal Access Token 사용

```bash
Username: your-username
Password: ghp_xxxxxxxxxxxx (토큰)
```

---

### ❌ Permission denied (publickey)

**원인:** SSH 키가 없거나 잘못됨

**해결:** HTTPS URL 사용

```bash
git remote set-url origin https://github.com/YOUR_USERNAME/review.git
```

---

## 💡 유용한 명령어 모음

```bash
# 현재 상태 확인
git status

# 커밋 히스토리 보기
git log
git log --oneline

# 원격 저장소 확인
git remote -v

# 마지막 커밋 수정
git commit --amend -m "새 메시지"

# 파일 되돌리기 (주의!)
git checkout -- filename

# 브랜치 확인
git branch

# 원격 저장소 URL 변경
git remote set-url origin NEW_URL
```

---

## 🎯 실전 예제: 완전 처음부터

### 시나리오: 새 프로젝트 시작

```bash
# 1. 프로젝트 폴더 만들기
mkdir my-project
cd my-project

# 2. 파일 생성
echo "# My Project" > README.md

# 3. Git 초기화
git init

# 4. 파일 추가
git add README.md

# 5. 첫 커밋
git commit -m "Initial commit"

# 6. GitHub 저장소와 연결 (미리 GitHub에서 생성해둠)
git remote add origin https://github.com/USERNAME/my-project.git

# 7. 브랜치 이름 설정
git branch -M main

# 8. 푸시
git push -u origin main
```

**완료!** 🎉

---

## 📚 더 배우기

### 추천 리소스

1. **공식 문서**

   - https://git-scm.com/doc
   - https://docs.github.com/

2. **대화형 튜토리얼**

   - https://learngitbranching.js.org/

3. **시각화 도구**
   - https://git-school.github.io/visualizing-git/

---

## ✅ 최종 체크리스트

### 초기 설정 (1회만)

- [ ] Git 설치 완료
- [ ] GitHub 계정 생성
- [ ] Git 사용자 정보 설정
- [ ] Personal Access Token 생성 (선택)

### 프로젝트마다

- [ ] GitHub에서 저장소 생성
- [ ] 로컬에서 git init
- [ ] git add & commit
- [ ] git remote add origin
- [ ] git push -u origin main

### 일상적 작업

- [ ] 파일 수정
- [ ] git add
- [ ] git commit
- [ ] git push

---

## 🎉 축하합니다!

이제 GitHub를 사용할 준비가 되었습니다!

**다음 단계:**

1. 실제로 한 번 해보기
2. README.md 파일 작성
3. GitHub Pages 활성화
4. 팀원들과 공유

**Happy Coding! 🚀**

---

**작성일:** 2025-12-25  
**업데이트:** 초보자를 위한 완전 가이드
