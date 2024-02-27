# flutter_provider_basic

Provider package 연습 레포지토리 입니다.

## Provider

- Bloc과 Provider
1. MVVM 구조에서 view model 을 Bloc으로 대체가 가능하다.
2. Bloc은 간단한 로직을 하나 구현하려 해도 패턴을 적용하면 최소 4개의 Class를 필요로 하여 코드가 복잡해진다.
3. 이러한 불편함을 해결하려 나온 것이 Provider 이다.
4. Provider는 상대적으로 패턴이 간단하여 데이터 공유와 로직의 분리를 좀 더 쉽게 할 수 있다.

- 사용 목적
1. 둘 다 `상태 관리`를 위한 패키지이다.
2. `UI와 비즈니스 로직을 분리`하기 위한 목적을 가지고 있다.
3. 중규모 프로젝트에서는 `Provider`
4. 대규모 프로젝트에서는 `Bloc`

## Usage

- 구독 설정
  - ChangeNotifierProvider(
        create: (BuildContext context) ⇒ Provider(),
        child: View(),
        )
  - 하나의 View에 하나의 provider만 추가
  - child 하위 View들은 전부 provider에 접근 가능
    - child 상위 Widget은 provider에 접근 불가
         
- 구독 방식
    - provider.of<T>(context)
        - 상태 변경 시, 해당 위젯이 포함된 builder를 다시 build
    - provider.of<T>(context, listen: false)
        - 해당 provider를 딱 한번 호출하고 구독하지 않는 방식
    - consumer<T>(builder: (context, provider, child) { return ~ })
        - consumer 안에 builder만 다시 build 하도록 한다.
