```
  public static void main(String[] args) {
        int[] cnt = new int[9]; // 0~8
        int num;
        String str = "";
        String result = "1";
       

        System.out.println(result); //1행으로 시작(결과값 1)

        for (int i = 0; i < 10; i++) { // limit 10

            str = result;
            result = ""; //초기화

            for (int k = 0; k < str.length(); k++) { //열 반복
                num = str.charAt(k) - '0'; // 숫자 구함
                cnt[num - 1]++; //숫자 개수 세기

                //마지막 인덱스이거나  or  현재인덱스의 숫자가 다음인덱스의 숫자와 다르면
                if ((k == str.length()-1) || (str.charAt(k) != str.charAt(k+1))) {
                    result += num+""+cnt[num-1]; //숫자 숫자개수 추가
                    cnt[num - 1] = 0; //현재인덱스의 개수 초기화
                }
            }
            System.out.println(result); 
        }
    }

}
```
