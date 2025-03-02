import 'package:dimipay/app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  final String privacyPolicyText = '''
      디미고사회적협동조합(이하 '회사'라 한다)은 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법 등 관련 법령에 따라 이용자의 개인정보를 보호하고, 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보처리방침을 수립합니다. 개인정보처리방침은 이용자가 언제나 쉽게 열람할 수 있도록 서비스 초기화면을 통해 공개하고 있으며, 개인정보 관련법령, 지침, 고시 또는 포인트 서비스 정책의 변경에 따라 달라질 수 있습니다.
      
      개인정보의 수집·이용
          (1) 회원 정보의 수집·이용목적, 수집항목, 보유·이용기간은 아래와 같습니다. 
          수집•이용목적 수집 항목	보유•이용기간 ( '|' 기호에 따라 구분)
           - 회원가입 | 서비스 이용 및 상담	아이디(E-mail 주소), 비밀번호, 성명, 핸드폰 번호 | 목적달성(회원탈퇴 등) 후 지체 없이 파기 (단 관련법령 및 회사정책에 따라 별도 보관되는 정보는 예외) 아이디인 이메일은 부정이용 이슈 방지를 위해 탈퇴DB에서 3개월후 삭제 
           - 서비스이용기록 | 접속로그 | 회원 탈퇴 시 즉시 삭제 
           - 본인 확인 및 SMS 결제 | 핸드폰 번호 | 회원 탈퇴 시 즉시 삭제 
           - 주문 및 결제 서비스 | 상품결제정보(구매/취소반품교환/환불), 카드결제정보, 고객 얼굴 사진	| 목적달성(사용완료 등) 후 지체 없이 파기 단, 구매관련 정보의 경우 5년간 보관 (전자상거래 등에서의 소비자보호에 관한 법률)
          
      개인정보의 제 3자 제공
      회사는 이용자의 개인정보를 개인정보 수집·이용 목적에서 명시한 범위 내에서 사용하며, 이용자의 사전 동의 없이 개인정보 수집·이용 목적 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 제공하지 않습니다. 다만, 아래와 같이 양질의 서비스 제공을 위해 이용자의 개인정보를 협력업체와 공유할 필요가 있는 경우에는 제공 받는 자, 제공목적, 제공정보 항목, 이용 및 보유기간 등을 회원에게 고지하여 동의 구하거나 관련법령에 따른 경우는 예외로 합니다. 이용자가 사전에 공개 또는 제3자 제공에 동의한 경우 제공받는 자	제공 목적	제공 정보	개인정보를 제공 받는 자의 개인 정보보유 및 이용기간 결제상품 제공업체 (입점업체)	서비스제공, 구매자 확인	주문 정보, ID, 결제수단 및 서비스의 정보	재화 또는 서비스의 제공이 완료된 즉시 파기(단, 관계법령에 정해진 규정에 따라 법정기간 동안 보관) 
      (주) 나이스페이먼츠	| 결제서비스 처리	| 상품명, 상품결제금액, 결제 인증값, 카드번호	| 목적달성 후 즉시파기(단, 관련법령에 따라 별도 보관되는 정보는 예외)
      Amazon Web Services Inc. | 인프라 제공 | 서비스 이용 기록 또는 수집된 개인정보 | 서비스 변경 시까지(현재 회사가 이용 중인 클라우드 서비스 이용 변경 시까지)
      (주) 네이버클라우드 | FaceSign 서비스 사용 | 이름, 아이디(디미고 E-mail 주소), 얼굴 사진, 얼굴 인식 로그 | 서비스에서 얼굴 사진 삭제 진행 시 즉시 삭제
      
      개인정보의 파기절차 및 방법
          (1) 회사는 이용자의 개인정보를 원칙적으로 보유·이용기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다. (2) 회원으로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는 해당 개인정보를 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다. (3) 회사는 1년 동안 회사의 서비스를 이용하지 않은 회원의 개인정보는 '정보통신망 이용촉진 및 정보보호 등에 관한 법률 제29조' 에 근거하여 회원에게 사전통지하고 개인정보를 파기하거나 별도로 분리하여 저장 합니다.
              회사는 개인정보가 파기되거나 분리되어 저장•관리된다는 사실, 서비스 미이용 기간 만료일, 해당 개인정보의 항목을 공지사항, 전자우편 등의 방법으로 미이용 기간 30일 전에 회원에게 알립니다. 이를 위해 회원은 회사에게 정확한 연락처 정보를 알리거나 수정하여야 합니다.
          (2) 개인정보 파기의 절차 및 방법은 다음과 같습니다. 
            ① 파기절차 회사는 파기 사유가 발생한 개인정보를 개인정보 보호책임자의 승인 절차를 거쳐 파기합니다. 
            ② 파기방법 회사는 전자적 파일형태로 기록·저장된 개인정보는 기록을 재생할 수 없도록 기술적인 방법 또는 물리적인 방법을 이용하여 파기하며, 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각 등을 통하여 파기합니다.
    ''';
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("개인정보 보호방침"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Scrollbar(
          interactive: true,
          thumbVisibility: true,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(privacyPolicyText, style: DPTextTheme.DESCRIPTION_IMPORTANT),
            ),
          ),
        ),
      ),
    );
  }
}
