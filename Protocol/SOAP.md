# SOAP
--------


### 🦻학습하게된 계기
- 고객으로부터 SOAP to DB 샘플 ETL JOB을 만들어달라고 하는 요청이 들어와서 작성합니다.
- SOAP에 대해서 자세히 알아야 원하는 요구사항의 샘플을 만들 수 있다고 판단하여 학습을 시작했습니다.
    
### 💡정의
- Simple Object Access Protocol의 약자로 컴퓨터 네트워크에서 웹 서비스 간에 구조화된 정보를 교환하기 위해 사용되는 메시지 프로토콜
- 웹 서비스에서 데이터를 주고받는 기본적인 메시지 전달 수단
  
### 💡구조
- Envelope 큰 틀안에 Header 와 Body, Fault 가 있습니다.
- Header에는 옵션값이 들어가고 Body는 실제 데이터가 있으며, Fault는 에러가 발생하였을 때, 에러 실패 이유가 들어가 있습니다.

### 💡장단점
- 장점: 에러 처리 기능이 기본 내장, 확장성 좋음, ACID 트랜잭션에 대한 규정 준수가 내장되어 있음.
- 단점: XML 기반이라 데이터 크기가 크고 상대적으로 무겁고 느림.

### 💡REST와 차이점 
REST도 SOAP처럼 인터넷 프로토콜인 HTTP를 사용하여 정보를 요청하고 받는 형태이다. 그럼 과연 어떤 점이 다를까  
  
1. 통신방식
- SOAP: HTTP, SMTP 등 다양한 전송 프로토콜 지원 / REST: HTTP,HTTPS 만 사용가능
  
2. 성능
- SOAP: 메시지 크기가 크고 복잡하여 느림 / REST : 메시지가 경량화되어 빠르고, 효율적 처리 가능
  
3. 보안
- SOAP : WS-Security , SSL 라는 자체 표준 보안 기능 탑재 / REST: HTTPS 지원하며, 가볍고 효율적인 기본 보안 처리 가능 
  
4. 사용용도
- SOAP : 금융, 기업 시스템 등 보안과 신뢰성이 중요한 환경 / REST : 웹, 모바일, 클라우드 등 다양한 서비스 환경  

### 💡참고 사이트
1. https://mutpp.tistory.com/entry/SOAP%EC%9D%84-%EC%95%8C%EC%95%84%EB%B3%B4%EC%9E%90  
2. https://ko.wikipedia.org/wiki/SOAP  
3. https://www.redhat.com/ko/topics/integration/whats-the-difference-between-soap-rest  
4. https://aws.amazon.com/ko/compare/the-difference-between-soap-rest/  
  
※ 샘플 작업할때, 테스트용으로 사용했던 사이트  
https://www.dataaccess.com/webservicesserver/numberconversion.wso?op=NumberToWords  
> SOAP으로 숫자를 REQUEST 하면 해당 숫자를 영어 단어로 변경하여 RESPONSE 합니다.