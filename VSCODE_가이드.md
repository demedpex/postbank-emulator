# VSCode로 GitHub 업로드하기

## 📌 준비사항
- VSCode 설치
- GitHub 계정
- Git 설치 확인 (터미널에서 `git --version`)

---

## 1️⃣ VSCode에서 폴더 열기

1. **VSCode 실행**
2. **File > Open Folder...**
3. **배포용 폴더 선택**
   ```
   /Users/seoyoungseok/Desktop/우체국뱅킹_에뮬레이터/배포용
   ```

---

## 2️⃣ Git 초기화

### 방법 A: Source Control 탭 사용 (추천)

1. 왼쪽 사이드바에서 **Source Control** 아이콘 클릭 (🌿)
2. **[Initialize Repository]** 버튼 클릭
3. 완료!

### 방법 B: 터미널 사용

1. **Terminal > New Terminal** (Ctrl+`)
2. 명령어 입력:
   ```bash
   git init
   ```

---

## 3️⃣ GitHub 로그인 (처음만)

1. VSCode 하단 왼쪽 **계정 아이콘** 클릭
2. **Sign in with GitHub** 선택
3. 브라우저에서 GitHub 로그인
4. VSCode로 돌아오면 자동 연결

---

## 4️⃣ 파일 스테이징 & 커밋

### Source Control 탭에서:

1. **Changes** 섹션에 모든 파일 표시됨
2. **+** 버튼 클릭 (모든 변경사항 스테이징)
   - 또는 개별 파일 **+** 클릭
3. 상단 텍스트 박스에 커밋 메시지 입력:
   ```
   Add post banking emulator files
   ```
4. **✓ Commit** 버튼 클릭 (또는 Ctrl+Enter)

---

## 5️⃣ GitHub 저장소 생성 & 연결

### 방법 A: VSCode에서 자동 생성 (가장 쉬움!)

1. Source Control 탭에서 **[Publish to GitHub]** 버튼 클릭
2. 저장소 이름 입력:
   ```
   post-banking-emulator
   ```
3. **Public** 또는 **Private** 선택
   - GitHub Pages는 Public이어야 무료!
4. 파일 선택 (전체 선택 유지)
5. **[Publish]** 클릭
6. ✅ **자동으로 GitHub에 업로드 완료!**

### 방법 B: 기존 저장소에 연결

1. GitHub에서 미리 저장소 생성
2. VSCode 터미널에서:
   ```bash
   git remote add origin https://github.com/본인아이디/post-banking-emulator.git
   git branch -M main
   git push -u origin main
   ```

---

## 6️⃣ GitHub Pages 활성화

1. **GitHub 저장소 페이지** 이동
   - VSCode 하단 상태바에서 **GitHub 아이콘** 클릭 → **Open on GitHub**
   
2. **Settings** 탭 클릭

3. 왼쪽 **Pages** 메뉴 클릭

4. **Source** 설정:
   ```
   Branch: main
   Folder: / (root)
   ```

5. **[Save]** 클릭

6. 1~3분 기다린 후 **페이지 새로고침**

7. ✅ **초록색 박스에 URL 표시:**
   ```
   https://본인아이디.github.io/post-banking-emulator/emulator.html
   ```

---

## 💡 이후 파일 수정 시

### VSCode에서 자동으로:

1. 파일 수정
2. **Source Control** 탭 열기
3. 변경된 파일 **+** (스테이징)
4. 커밋 메시지 입력
5. **✓ Commit** 클릭
6. **↑ Push** 버튼 클릭 (상단)
7. ✅ **자동으로 GitHub 업데이트!**

---

## 🎯 빠른 요약 (30초)

```
1. VSCode에서 배포용 폴더 열기
2. Source Control 탭 → Initialize Repository
3. Publish to GitHub 버튼 클릭
4. 저장소 이름 입력 (Public)
5. GitHub에서 Settings > Pages 활성화
```

**끝!** 🎉

---

## 🔧 문제 해결

### Q. "Publish to GitHub" 버튼이 안 보여요
A. 
- VSCode에서 GitHub 로그인 확인
- Git 설치 확인: 터미널에서 `git --version`

### Q. Push할 때 권한 오류
A.
- VSCode에서 GitHub 재로그인
- Personal Access Token 생성 필요할 수 있음

### Q. GitHub Pages가 404 오류
A.
- URL 끝에 `/emulator.html` 추가
- Settings > Pages에서 Branch 확인

---

## 📞 도움

- VSCode Git 공식 문서: https://code.visualstudio.com/docs/sourcecontrol/overview
- GitHub Pages 가이드: https://pages.github.com/

---

🎉 **VSCode로 쉽게 배포 완료!**
