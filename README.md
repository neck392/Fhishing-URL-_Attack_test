# Fhishing-URL-_Attack_test
### Study Spearphishing Link Attack
<ol>
<li>requests 및 BeautifulSoup 라이브러리 import</li>

requests: HTTP 요청을 보내고 응답을 받는 데 사용
BeautifulSoup: HTML 및 XML 문서를 파싱하고 구문 분석하는 데 사용
<li>generate_new_url() 함수를 정의합니다. 이 함수는 사용자가 입력한 URL을 받아와서 새로운 URL을 생성하는 역할</li>

입력 파라미터: url - 사용자가 입력한 URL.
반환 값: 새로운 URL.
<li>사용자가 입력한 URL을 사용하여 웹 페이지에 HTTP GET 요청</li>

requests.get(url): 입력된 URL에 HTTP GET request 후 response
응답 상태 코드가 200인 경우에만 HTML을 파싱
<li>BeautifulSoup을 사용하여 HTML을 파싱하고, 웹 페이지에서 사용된 CSS 파일의 링크를 찾음</li>

soup.find_all('link', rel='stylesheet'): HTML 문서에서 모든 <link> 태그를 찾아오고, rel='stylesheet' 속성을 가진 태그를 필터링하여 CSS 파일의 링크를 가져옴
<li>HTML과 CSS 내용을 각각의 문자열로 저장</li>

HTML 내용: html_content
CSS 내용: css_content
<li>새로운 HTML 파일(index.html)과 CSS 파일(styles.css)을 생성하고 내용을 각 파일에 기록</li>

open('index.html', 'w'): index.html 파일을 쓰기 모드로 열어서 HTML 내용을 기록
open('styles.css', 'w'): styles.css 파일을 쓰기 모드로 열어서 CSS 내용을 기록
<li>GitHub API를 사용하여 새로운 HTML 파일과 CSS 파일을 업로드</li>

os.system(f'curl -u {github_username}:{github_token} -X PUT -d @index.html https://api.github.com/repos/{github_username}/{github_repo}/contents/index.html'): curl 명령어를 사용하여 GitHub API를 호출하여 새로운 HTML, CSS 파일 upload
<li>GitHub Pages를 사용하여 새로운 URL을 생성</li>

return f'https://{github_username}.github.io/{github_repo}/index.html': GitHub Pages를 사용하여 새로운 HTML 파일을 호스팅하는 URL을 생성
<li>generate_new_url() 함수를 실행하여 새로운 URL을 생성하고 출력</li>
</ol>
