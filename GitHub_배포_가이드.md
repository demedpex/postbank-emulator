# 우체국 스마트뱅킹 에뮬레이터 - GitHub Pages 배포 가이드

## 📋 목차
1. [GitHub 저장소 생성](#1-github-저장소-생성)
2. [파일 업로드](#2-파일-업로드)
3. [GitHub Pages 활성화](#3-github-pages-활성화)
4. [배포 확인](#4-배포-확인)
5. [문제 해결](#5-문제-해결)

---

## 1. GitHub 저장소 생성

### 1-1. GitHub 로그인
- https://github.com 접속
- 로그인 (계정이 없다면 회원가입)

### 1-2. 새 저장소 만들기
1. 오른쪽 상단 **[+]** 버튼 클릭
2. **"New repository"** 선택
3. 저장소 설정:
   ```
   Repository name: post-banking-emulator
   Description: 우체국 스마트뱅킹 에뮬레이터
   Public 선택 (무료 GitHub Pages 사용)
   ✅ Add a README file (체크하지 않음)
   ```
4. **[Create repository]** 클릭

---

## 2. 파일 업로드

### 방법 A: 웹에서 업로드 (초보자 추천)

1. **저장소 페이지**에서 **[uploading an existing file]** 클릭
   
2. **파일 선택**:
   - 배포용 폴더의 모든 파일 드래그 앤 드롭
   - 또는 **[choose your files]** 클릭하여 선택
   
   **업로드할 파일 목록:**
   ```
   ✅ emulator.html
   ✅ 1.svg
   ✅ 2.svg
   ✅ 3.svg
   ✅ 4.svg
   ✅ 5.svg
   ✅ 6.svg
   ✅ 6-1.svg
   ✅ 7.svg
   ✅ 7-1.svg
   ✅ 8.svg
   ✅ 9.svg
   ✅ 10.svg
   ✅ 11.svg
   ✅ 12.svg
   ✅ 13.svg
   ✅ README.txt (선택)
   ```

3. **커밋 메시지 작성** (화면 하단):
   ```
   Add post banking emulator files
   ```

4. **[Commit changes]** 클릭

### 방법 B: Git 명령어 사용 (개발자용)

```bash
# 1. 배포용 폴더로 이동
cd /Users/seoyoungseok/Desktop/우체국뱅킹_에뮬레이터/배포용

# 2. Git 초기화
git init

# 3. 모든 파일 추가
git add .

# 4. 커밋
git commit -m "Add post banking emulator files"

# 5. GitHub 저장소 연결 (본인의 저장소 URL로 변경)
git remote add origin https://github.com/본인아이디/post-banking-emulator.git

# 6. 푸시
git branch -M main
git push -u origin main
```

---

## 3. GitHub Pages 활성화

### 3-1. Settings 이동
1. 저장소 상단 메뉴에서 **[Settings]** 클릭
2. 왼쪽 사이드바에서 **[Pages]** 클릭

### 3-2. 배포 설정
1. **Source** 섹션:
   ```
   Source: Deploy from a branch
   ```

2. **Branch** 섹션:
   ```
   Branch: main
   Folder: / (root)
   ```

3. **[Save]** 클릭

### 3-3. 배포 대기
- 1~3분 정도 기다립니다
- 페이지 새로고침 (F5)
- 상단에 초록색 박스로 URL이 표시됩니다:
  ```
  ✅ Your site is live at https://본인아이디.github.io/post-banking-emulator/
  ```

---

## 4. 배포 확인

### 4-1. URL 접속
- 표시된 URL에 접속:
  ```
  https://본인아이디.github.io/post-banking-emulator/emulator.html
  ```
  
  **⚠️ 중요**: URL 끝에 `/emulator.html` 추가해야 합니다!

### 4-2. 동작 확인
- ✅ SVG 이미지가 제대로 보이는지 확인
- ✅ 버튼 클릭이 정상 작동하는지 확인
- ✅ TTS 음성이 나오는지 확인 (토글 버튼 클릭)

---

## 5. 문제 해결

### 문제 1: 이미지가 안 보여요 (엑박)

**원인**: SVG 파일이 업로드되지 않음

**해결**:
1. 저장소에서 파일 목록 확인
2. 1.svg ~ 13.svg, 6-1.svg, 7-1.svg가 모두 있는지 확인
3. 없다면 파일 다시 업로드

### 문제 2: 페이지가 404 오류

**원인**: URL이 잘못됨

**해결**:
- 올바른 URL 형식:
  ```
  ✅ https://본인아이디.github.io/저장소이름/emulator.html
  ❌ https://본인아이디.github.io/저장소이름/
  ```

### 문제 3: GitHub Pages가 활성화되지 않아요

**원인**: 저장소가 Private으로 설정됨

**해결**:
1. Settings > General
2. **Danger Zone** > **Change visibility**
3. **Public**으로 변경

### 문제 4: TTS가 안 나와요

**원인**: 브라우저 자동재생 정책

**해결**:
1. 페이지 로드 후 **TTS 토글 버튼** 한 번 클릭
2. 다시 켜면 정상 작동

---

## 6. 파일 수정/업데이트

### 웹에서 수정
1. 저장소에서 수정할 파일 클릭 (예: emulator.html)
2. 연필 아이콘 (✏️) 클릭
3. 수정 후 **[Commit changes]** 클릭
4. 1~2분 후 자동 배포

### 파일 교체
1. 저장소에서 파일 클릭
2. 휴지통 아이콘 (🗑️) 클릭하여 삭제
3. **[Upload files]**로 새 파일 업로드

---

## 7. 추가 팁

### 짧은 URL 만들기 (선택)
- 긴 GitHub Pages URL 대신 짧은 URL 사용:
  - https://bit.ly (무료)
  - https://tinyurl.com (무료)
  - https://gg.gg (무료)

### 커스텀 도메인 (선택)
- 본인 도메인이 있다면:
  1. Settings > Pages > Custom domain
  2. 도메인 입력 (예: emulator.example.com)
  3. DNS 설정 (가이드 제공됨)

### 접속 통계 확인
- Google Analytics 추가 가능
- emulator.html에 추적 코드 삽입

---

## 📞 문의

- 이메일: posiddigital@gmail.com
- GitHub Issues: 저장소의 Issues 탭 활용

---

## ✅ 체크리스트

배포 전 확인:
- [ ] GitHub 계정 생성/로그인
- [ ] 저장소 생성 (Public)
- [ ] 모든 파일 업로드 (emulator.html + SVG 15개)
- [ ] GitHub Pages 활성화
- [ ] URL 접속 확인
- [ ] 이미지/기능 동작 확인
- [ ] TTS 작동 확인

---

## 🎉 배포 완료!

이제 누구나 URL만으로 에뮬레이터를 사용할 수 있습니다!

**최종 URL 예시:**
```
https://본인아이디.github.io/post-banking-emulator/emulator.html
```

이 URL을 공유하면 됩니다! 📤✨
