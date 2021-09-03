#  명언 생성기

## 기능
- 버튼을 누를 때마다 랜덤으로 명언이 생성된다

## 활용 기술
- Storyboard
- AutoLayout
- UILabel
- UIButton

---

### 난수 생성하기(정수)
- arc4random() -> UInt32
    - 0부터 4294967295(2^32 - 1) 사이의 난수를 생성한다
- arc4random_uniform(__upper_bound: UInt32) -> UInt32
    - 0부터 (지정한 수 - 1) 사이의 난수를 생성한다
    - ex) arc4random_uniform(5) // 0~4 사이의 난수를 반환(UInt32)


### 버튼을 누를 때 마다 UILabel의 text 변경
- 먼저 IBOutlet으로 UILabel을 변수로 설정하고(`quoteLabel`)
- 버튼을 IBAction으로 눌렀을 때의 함수(`tapQuoteGeneratorButton`)를 만든다
- `tapQuoteGeneratorButton` 안에
    - self.quoteLabel.text = "" 라고 하면 Label의 text를 변경할 수 있다


### Label Lines
- Label의 text가 몇 줄이 나올 것인지 설정하는 것
- 2으로 설정하면 2줄까지 나온다
- 0으로 설정하면 줄의 제한이 없다


### Content Hugging VS Compression Resistance
- UILabel, UIButton 등과 같이 기본적으로 크기가 결정된 view들이
- 다른 view들과의 제약에 의해 원래 본인의 사이즈보다 늘어나거나 줄어들 수 있다
- Content Hugging : 늘어나는 것에 대한 저항
    - 우선순위(priority)가 **높을 수록** 크기를 유지
    - 우선순위가 낮으면 크기가 늘어난다
- Content Compression Resistance : 줄어드는 것에 대한 저항
    - 우선순위(priority)가 **높을 수록** 크기를 유지
    - 우선순위가 낮으면 크기가 줄어든다
