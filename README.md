# FhishingURL_Attack_test
### Study Spearphishing Link Attack
<ol><li></li>
  <li>requests 및 BeautifulSoup 라이브러리 import</li>
  <ul>
    <li>requests: HTTP 요청을 보내고 응답을 받는 데 사용</li>
    <li>BeautifulSoup: HTML 및 XML 문서를 파싱하고 구문 분석하는 데 사용</li>
  </ul>
  
  <li>generate_new_url() 함수를 정의합니다. 이 함수는 사용자가 입력한 URL을 받아와서 새로운 URL을 생성하는 역할</li>
  <ul>
    <li>입력 파라미터: url - 사용자가 입력한 URL</li>
    <li>반환 값: 새로운 URL</li>
  </ul>
  
  <li>사용자가 입력한 URL을 사용하여 웹 페이지에 HTTP GET 요청</li>
  <ul>
    <li>requests.get(url): 입력된 URL에 HTTP GET request 후 response</li>
    <li>응답 상태 코드가 200인 경우에만 HTML을 파싱</li>
  </ul>
  
  <li>BeautifulSoup을 사용하여 HTML을 파싱하고, 웹 페이지에서 사용된 CSS 파일의 링크를 찾음</li>
  <ul>
    <li>soup.find_all('link', rel='stylesheet'): HTML 문서에서 모든 <link> 태그를 찾아옴</li>
    <li>rel='stylesheet' 속성을 가진 태그를 필터링하여 CSS 파일의 링크를 가져옴</li>
  </ul>

  <li>HTML과 CSS 내용을 각각의 문자열로 저장</li>
  <ul>
    <li>HTML 내용: html_content</li>
    <li>CSS 내용: css_content</li>
  </ul>
  
  <li>새로운 HTML 파일(index.html)과 CSS 파일(styles.css)을 생성하고 내용을 각 파일에 기록</li>
  <ul>
    <li>open('index.html', 'w'): index.html 파일을 쓰기 모드로 열어서 HTML 내용을 기록</li>
    <li>open('styles.css', 'w'): styles.css 파일을 쓰기 모드로 열어서 CSS 내용을 기록</li>
  </ul>

  <li>GitHub API를 사용하여 새로운 HTML 파일과 CSS 파일을 업로드</li>
  <ul>
    <li>os.system(f'curl -u {github_username}:{github_token} -X PUT -d @index.html https://api.github.com/repos/{github_username}/{github_repo}/contents/index.html')</li>
    <li>: curl 명령어를 사용하여 GitHub API를 호출하여 새로운 HTML, CSS 파일 upload</li>
  </ul>
  
  <li>GitHub Pages를 사용하여 새로운 URL을 생성</li>
  <ul>
    <li>return f'https://{github_username}.github.io/{github_repo}/index.html'</li>
    <li>: GitHub Pages를 사용하여 새로운 HTML 파일을 호스팅하는 URL을 생성</li>
  </ul>

  <li>generate_new_url() 함수를 실행하여 새로운 URL을 생성하고 출력</li>
  
</ol>
