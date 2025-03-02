import 'package:dimipay/app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TermsOfServicePage extends StatelessWidget {
  final String termsOfServiceText = '''
      제1조 목적 이 약관은 디미고사회적협동조합(이하 "회사"라 합니다)이 제공하는 디미페이 서비스(이하 "서비스"라 합니다)와 관련하여, 회사와 이용 고객간에 서비스의 이용조건 및 절차, 회사와 이용 고객간의 권리, 의무 및 기타 필요한 사항을 규정함을 목적으로 합니다. 본 약관은 PC통신, 스마트폰(안드로이드폰, 아이폰 등) 앱 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 준용됩니다.
      
      제2조 정의
      1 "사이트"란 "업주"가 재화 또는 서비스 상품(이하 "재화 등"이라 합니다)을 "이용자"에게 판매하기 위하여, "회사"가 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정하여 제공하는 가상의 영업장을 말합니다. 
      2 "이용자"라 함은 이 약관에 따라 회사가 제공하는 서비스를 받는 회원과 비회원을 말합니다. 
      3 "회원"이라 함은 회사에 개인정보를 직접 또는 제3자제공을 통해 회원 등록을 한 자로서, 회사의 정보를 지속적으로 제공받으며 계속적으로 사이트의 서비스를 이용할 수 있는 자를 말합니다. 
      4 "비회원"이라 함은 회원에 가입하지 않고 서비스를 이용하는 자를 말합니다. 회사는 비회원에 대한 서비스 범위를 회원과 다르게 설정할 수 있으며 비회원에 대하여는 회사가 사이트에서 비회원의 접근 및 이용을 허용하는 등으로 제공하고 있는 서비스에 한하여 본 약관이 적용됩니다.
      5 "아이디(ID)"라 함은 회원의 식별과 서비스의 이용을 위하여 회원이 설정하고 회사가 승인하여 등록된 전자우편주소, 회원의 인터넷 포털 사이트·사회관계망 서비스(Social Network Service) 등의 아이디를 말합니다. 
      6 "비밀번호(Password)"라 함은 회원의 동일성 확인 및 회원의 권익과 개인정보의 보호를 위하여 회원 스스로가 설정하여 사이트에 등록한 문자, 숫자 또는 특수문자의 조합을 말합니다. 
      7 "할인쿠폰"이라 함은 이용자가 사이트에서 재화를 구매할 때나 회사가 제공하는 서비스를 이용할 때 표시된 금액 또는 비율만큼 할인 받는 등의 혜택을 받을 수 있도록 전자적 방법으로 발행되는 증권을 말합니다. 
      8 "제휴업체"라 함은 회사와 계약관계에 있는 업체를 말합니다. 
      9 이 약관에서 정의되지 않은 용어는 일반적인 거래 관행 및 관련 법령에 따릅니다.
      
      제3조 약관의 명시와 설명 및 개정
      1 회사는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호, 모사전송번호, 전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보 보호책임자 등을 이용자가 쉽게 확인할 수 있도록 사이트 내의 "나의 메뉴" 서비스 화면에 게시합니다. 다만 이 약관의 구체적인 내용은 이용자가 연결화면을 통해 볼 수 있습니다. 
      2 회사는 『전자상거래 등에서의 소비자보호에 관한 법률』, 『약관의 규제에 관한 법률』, 『전자문서 및 전자거래 기본법』, 『전자금융거래법』, 『전자서명법』, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』, 『소비자기본법』 등 관련 법령을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. 
      3 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 사이트의 해당화면에 그 적용일자 7일 (단, 이용자에게 불리한 내용으로 변경하는 경우에는 30일) 이전부터 적용일자 전일까지 공지합니다. 
      4 제3항에 따라 변경된 약관은 법령의 특별한 규정이나 부득이한 사유가 없는 한 소급하여 적용되지 아니합니다. 
      5 제3항에 따라 공지된 적용일자 이후에 이용자가 명시적으로 거부의사를 표명하지 않을 경우에는 개정된 약관에 동의하는 것으로 봅니다. 
      6 회사는 개별 재화나 서비스에 관하여 이 약관에 우선하는 별도의 약관 및 이용조건을 둘 수 있으며, 개별 서비스에서 별도로 적용되는 약관에 대한 동의는 이용자가 개별 서비스를 최초로 이용할 경우 별도의 동의절차를 거치게 됩니다. 
      7 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 『전자상거래 등에서의 소비자보호에 관한 법률』, 『약관의 규제에 관한 법률』 등 관련 법령 및 상관례에 따릅니다.
      
      제4조 회원가입
      1 회사가 제공하는 회원서비스에 관한 이용계약(이하 "이용계약"이라고 합니다)은 서비스를 이용하고자 하는 자의 이용신청을 회사가 승낙함으로써 성립하며, 이 때 해당 이용자는 사이트의 회원으로 가입됩니다. 
      2 회원으로 가입하고자 하는 자는 회사가 온라인으로 제공하는 신청 양식에 따라 필요한 각각의 항목에 해당 내용을 기재한 후 이 약관 및 개인정보처리방침에 동의한다는 의사 표시를 해야 합니다. 회사는 이러한 신청에 있어 회원에게 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다. 
      3 SNS(Social Networking Service) 계정을 통해 사이트의 회원으로 가입하고자 하는 자는 SNS 서비스 제공자가 회사에 개인정보를 제공하는 것에 동의한다는 의사표시를 해야 합니다. 또한, 회사는 SNS 계정을 통한 가입신청에 있어 가입신청 이용자에게 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다. 
      4 "회사"는 다음 각 호에 해당하는 신청에 대하여는 승인을 하지 않거나 사후에 이용계약을 해지할 수 있습니다. ◦ 가입신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우. 다만, 회원자격 상실 후 3년이 경과한 자로서 회사의 회원 재가입 승낙을 얻은 경우에는 예외로 함 ◦ 실명이 아니거나 타인의 명의를 이용한 경우 ◦ 회사가 실명확인절차를 실시할 경우에 이용자의 실명가입신청이 사실 아님이 확인된 경우 ◦ 등록내용에 허위의 정보를 기재하거나, 기재누락, 오기가 있는 경우 ◦ 이미 가입된 회원과 전화번호나 전자우편주소가 동일한 경우 ◦ 부정한 용도 또는 영리를 추구할 목적으로 본 서비스를 이용하고자 하는 경우 ◦ 기타 이 약관에 위배되거나 위법 또는 부당한 이용신청임이 확인된 경우 및 회사가 합리적인 판단에 의하여 필요하다고 인정하는 경우 
      5 회원가입 및 사이트의 이용계약 성립 시기는 회사의 승낙이 가입 신청자에게 도달한 시점으로 합니다. 
      6 회원은 회원가입 시 등록한 사항에 변경이 있는 경우 회원정보 수정 등의 방법으로 회사에 대하여 그 변경사항을 알려야 하며, 회원이 변경사항을 고지하지 않음으로 인하여 발생하는 불이익은 회사가 책임지지 않습니다.
      
      제5조 회원 탈퇴 및 자격 상실 등
      1 회원은 회사에 대하여 언제든지 회원 탈퇴를 요청하여 이용계약을 해지할 수 있으며, 회사는 30일의 유예기간을 두며 이후 회원탈퇴 처리를 합니다. 단, 이용계약의 해지는 해지시까지 발생한 법률 관계에 영향을 미치지 않습니다. 
      2 "회원"이 계약을 해지하는 경우 "회원"이 보유하고 있는 포인트 전액 및 구매한 내역은 삭제되며 "회원"이 작성한 게시물은 삭제되지 않습니다. 
      3 회원이 다음 각 호의 사유에 해당하는 경우 회사는 회원자격을 제한, 정지 또는 상실시킬 수 있습니다. ◦ 회원가입 신청 시에 허위 내용을 등록하거나 타인의 정보를 도용한 경우 ◦ 다른 사람의 사이트 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 해치는 경우 ◦ 사이트를 이용하여 법령 또는 이 약관이 금지하는 행위, 공서양속에 반하는 행위 (법령의 미비나 회사의 착오를 이용하여 사회통념상 부당한 이익을 얻는 행위를 포함) 등을 하는 경우 ◦ 회사가 제공하는 서비스의 원활한 진행을 방해하는 행위를 하거나 이를 시도하는 경우 ◦ 부당한 권리주장 등으로 회사의 업무를 방해하는 행위를 하거나 이를 시도하는 경우 ◦ 회원이 사이트 내∙외에서 부정한 방법으로 포인트, 할인쿠폰을 획득한 경우 ◦ 기타 이 약관에 따른 의무를 준수하지 않은 경우 
      4 회사가 회원자격을 상실시키는 경우에는 회원등록을 말소하며, 이 경우 회원에게 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여 및 통지합니다. 단, 회원의 소재불명 등으로 인하여 소명의 수신이 어렵거나 본문의 기간 내에 소명이 없는 경우 회사는 회원 등록을 말소할 수 있습니다. 
      5 본 조에 따라 회원자격이 제한, 정지, 상실된 회원이 회원탈퇴 또는 회원자격 상실 후 재가입 신청을 하는 경우 회사는 그 승낙을 거절할 수 있습니다. 
      6 회원탈퇴 등에 따른 회원자격의 상실과 동시에 포인팅 기타 회원에게 제공되는 모든 혜택은 소멸합니다.
      
      제6조 회원의 아이디 및 비밀번호에 대한 의무
      1 아이디와 비밀번호에 관한 관리책임은 회원에게 있으며, 이를 소홀히 하여 발생한 모든 민·형사상의 책임은 회원 자신에게 있습니다. 
      2 회원은 자신의 아이디 및 비밀번호를 제3자에게 이용하게 해서는 안 됩니다. 
      3 회원이 자신의 아이디 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 즉시 회사에 통보하고 회사의 안내가 있는 경우에는 그에 따라야 합니다. 
      4 회원이 제3항에 따른 통지를 하지 않거나 회사의 조치에 응하지 아니하여 발생하는 모든 불이익에 대한 책임은 회원에게 있습니다.
      
      제7조 이용자에 대한 통지
      1 회사가 이용자에 대하여 통지를 하는 경우 이용자가 제출한 전자우편주소, 휴대폰 번호 등의 연락처를 이용할 수 있습니다. 
      2 회사는 불특정다수 이용자에 대한 통지의 경우 1주일 이상 사이트에 게시함으로써 개별 통지를 갈음할 수 있습니다. 단, 이용자 본인의 거래에 관하여 중대한 영향을 미치는 사항에 대하여는 개별 통지합니다.
      
      제8조 개인정보보호
      1 회사는 이용자의 개인정보를 보호하기 위하여 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 및 『개인정보 보호법』 등 관련 법령에서 정하는 바를 준수합니다. 개인정보의 보호 및 사용에 대해서는 관련 법령 및 회사의 개인정보처리방침이 적용됩니다. 
      2 회사는 이용자의 개인정보를 보호하기 위하여 개인정보처리방침을 제정하고 이를 사이트의 서비스 초기화면에 게시합니다. 다만 개인정보처리방침의 구체적 내용은 연결화면을 통하여 볼 수 있습니다. 
      3 회사는 서비스 이용을 위하여 이용자가 제공한 정보를 회사의 서비스 운영을 위한 목적 이외의 용도로 사용하거나 이용자의 동의 없이 제3자에게 제공하지 않습니다. 단, 다음 각 호의 경우는 예외로 합니다. ◦ 법령 또는 이 약관에 근거하여 이용자 개인정보의 이용과 제3자에 대한 정보제공이 허용되는 경우 ◦ 거래 이행에 필요한 최소한의 이용자 개인정보(성명, 주소, 연락처 등)를 제3자에게 알려주는 경우 ◦ 기타 회사의 약관 및 정책에 따라 이용자의 동의를 얻은 경우
      
      제9조 주문 및 결제
      1 "재화 등"에 대한 매매계약은 "회원"이 "업주"가 제시한 상품의 판매 조건에 응하여 청약의 의사표시를 하고 이에 대하여 "회원"과 "회사"간에 체결됩니다. 
      2 "회원"은 다음 또는 이와 유사한 방법에 의한 구매를 신청할 수 있습니다. ◦ 간편 결제 서비스 ◦ 일반 결제 서비스 
      3 "회사"가 "업주" 등 제3자에게 이용자의 개인정보를 제공할 필요가 있는 경우 ① 개인정보를 제공받는 자, ② 개인정보를 제공받는 자의 개인정보 이용목적, ③ 제공하는 개인정보의 항목, ④ 개인정보를 제공받는 자의 개인정보 보유 및 이용기간을 구매자에게 알리고 동의를 받습니다. 
      4 "회사"가 제3자에게 구매자의 개인정보를 취급할 수 있도록 업무를 위탁하는 경우에는 ① 개인정보 취급위탁을 받는 자, ② 개인정보 취급위탁을 하는 업무의 내용을 구매자에게 알리고 동의를 받습니다. 다만, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」에서 정하고 있는 방법으로 개인정보 취급방침을 통해 알림으로써 동의절차를 갈음할 수 있습니다. 
      5 "회사"는 결제 방식에 의한 대금지급방법으로 신용카드 결제, 포인트, 기타 "회사"가 추가 지정하는 결제수단 등을 제공할 수 있습니다. 
      6 "회사"는 "회원"의 결제내역을 서비스 화면을 통해 확인할 수 있도록 조치하며, 전자상거래등에서의 소비자보호에 관한 법률에 규정에 의해 일정기간 동안 보존 할 수 있습니다.
      
      제10조 이용자의 서비스 이용
      1 이용자는 사이트에서 다음 각 호 또는 이와 유사한 방법에 의하여 재화구매에 관한 서비스를 이용하며, 회사는 이용자가 서비스 이용을 함에 있어서 다음 각 호의 내용을 알기 쉽게 제공하여야 합니다. ◦ 재화의 검색 및 선택 ◦ 재화를 제공하는 곳에 위치, 전화번호, 운영시간, 휴무일 등 제공자 정보 ◦ 재화의 구매신청 또는 서비스 이용에 관한 확인 또는 회사의 확인에 대한 동의 ◦ 결제방법의 선택 
      2 이용자는 서비스를 이용하기 전 사이트 내의 상품정보, 거래조건 등을 정확하게 확인할 의무가 있습니다. 이를 이행하지 않아 발생하는 모든 책임은 이용자 본인에게 있습니다. 
      3 구매 대금의 결제와 관련하여 이용자가 입력한 정보의 허위, 상이 등으로 인하여 발생하는 책임은 이용자 본인에게 있습니다. 
      4 이용자가 청약한 재화의 구매 등은 이용자가 그 대금을 결제하기까지 주문 대기 상태로 취급되며, 청약일로부터 익일 자정까지 그 대금의 결제가 완료되지 않는 경우 이용자의 청약은 자동으로 취소됩니다. 
      5 회사는 이용자가 대금 결제 시 사용한 결제수단에 관하여 이용자가 정당한 사용권한을 가지고 있는지 여부를 확인할 수 있으며, 이에 관한 확인이 완료될 때까지 당해 거래의 진행을 중지할 수 있습니다. 이용자에게 정당한 사용권한이 없는 것으로 확인되는 경우 회사는 당해 거래를 취소할 수 있습니다.
      
      제11조 계약의 성립
      1 회사는 재화 구매 등 서비스의 이용에 관한 이용자의 청약에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. ◦ 신청 내용에 허위, 기재누락, 오기가 있는 경우 ◦ 기타 이용 신청에 승낙하는 것이 회사의 기술상 현저히 지장이 있다고 판단되는 경우 ◦ 서비스 이용 신청 고객의 회원자격이 제5조에 따라 제한, 정지 또는 상실된 경우
      2 회사의 승낙이 제16조 제1항의 청약수신확인 통지 형태로 이용자에게 도달한 시점에 재화의 구매계약이 성립한 것으로 봅니다. 
      3 회사의 승낙의 의사표시에는 이용자의 청약에 대한 확인 및 사용가능 여부, 구매신청의 정정, 취소 등에 관한 정보 등이 포함됩니다.
      
      제12조 결제방법
      1 사이트에서 구매한 재화에 대한 대금의 지급방법은 다음 각 호의 방법 중 선택적으로 이용이 가능합니다. 단, 회사 또는 결제기관의 정책에 따라 결제수단 또는 수단별 결제금액이 제한될 수 있습니다. ◦ 선불카드, 직불카드, 신용카드 등의 각종 카드 결제 ◦ 할인쿠폰 등 회사가 인정하는 할인 결제 
      2 회사는 제1항의 결제방법에 대하여 어떠한 명목의 수수료도 추가하여 징수하지 않습니다. 
      3 이용자가 대금의 결제와 관련하여 입력한 정보 및 그 정보와 관련하여 발생한 책임과 불이익은 전적으로 이용자가 부담합니다.
      
      제13조 재화의 공급
      1 회사는 이용자와 재화의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날로부터 90일 이내에 재화를 공급할 수 있도록 제작, 의뢰 등 기타의 필요한 조치를 취합니다. 
      2 회사는 이용자가 재화의 공급절차 및 공급 진행사항을 확인할 수 있도록 적절한 조치를 합니다. 
      3 회사는 제휴업체에 한하여 재화를 제공합니다. 
      4 재화의 공급은 제휴업체 내에서만 이루어지며 "회원"이 사용의 의사표시를 하고 이에 대하여 "업주"가 승낙의 의사표시를 함으로써 "회원"과 "업주"간에 체결됩니다.
      
      제14조 청약철회 등
      1 회사의 재화의 구매 취소 및 환불 규정은 『전자상거래 등에서의 소비자보호에 관한 법률』등 관련 법령을 준수합니다. 
      2 회사와 재화의 구매에 관한 계약을 체결한 이용자는 『전자상거래 등에서의 소비자보호에 관한 법률』 제13조 제2항에 따른 계약내용에 관한 서면(구매 확인의 전자우편 또는 SMS 통지 등)을 받은 날 7일 이내에는 청약을 철회할 수 있습니다. 단, 청약철회에 관하여 『전자상거래 등에서의 소비자보호에 관한 법률』에 달리 정함이 있는 경우에는 동 법 규정을 따릅니다.
      
      제15조 청약철회 등의 효과
      1 회사는 이용자로부터 재화를 반환 받은 경우 3영업일 이내에 이미 지급받은 재화의 대금을 환급합니다. 이 경우 회사가 이용자에게 재화의 대금 환급을 지연한 때에는 이미 지급받은 재화의 대금에 그 지연기간에 대하여 『전자상거래 등에서의 소비자보호에 관한 법률 시행령』 제21조의2에서 정하는 지연이자율을 곱하여 산정한 지연이자를 가산하여 지급합니다. 
      2 회사는 재화의 대금을 환급함에 있어서 이용자가 신용카드 또는 포인트 등의 결제수단으로 재화의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화의 대금의 청구를 취소하도록 요청합니다. 
      3 회사는 재화의 대금 환급 시 회원이 사용한 "포인트"를 함께 환급합니다. 
      4 회사는 재화가 일부 소비된 경우에는 일부 소비에 의하여 이용자가 얻은 이익 또는 재화의 공급에 소요된 비용에 상당하는 금액을 차감하고 이용자에게 지급합니다. 5 기타 이 약관 및 사이트의 이용 안내에 규정되지 않은 취소 및 환불에 관한 사항에 대해서는 『소비자분쟁해결기준』에서 정한 바에 따릅니다.
      
      제16조 청약수신확인 통지 / 서비스 이용 신청 변경 및 취소
      1 회사는 이용자의 재화 구매의 청약 등 서비스 이용 신청이 있는 경우 이용자에게 수신확인 통지를 합니다. 
      2 수신확인 통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인 통지를 받은 후 즉시 서비스 이용 신청 변경 및 취소를 요청할 수 있고 회사는 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다.
      
      제17조 서비스의 중단
      1 회사는 컴퓨터 등 정보통신설비의 보수·점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다. 이 경우 서비스 일시 중단 사실과 그 사유를 사이트 초기화면에 공지합니다. 
      2 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우 서비스 제공을 제한하거나 일시 중단할 수 있습니다. 
      3 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 회사는 제7조에 정한 방법으로 이용자에게 통지하고, 이로 인하여 이용자가 손해를 입은 경우에는 회사가 정한 조건에 따라 이용자에게 보상합니다. 
      4 사이트 서비스 만료일을 기준으로 포인트 및 할인쿠폰은 소멸되며, 이는 사이트, 회원의 전자우편, SMS 등으로 사전 공지 및 통지합니다. 단, 회사가 사전 공지 및 통지를 하지 아니한 경우 서비스는 사이트에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 회원에게 지급합니다.
      
      제18조 할인쿠폰
      1 할인쿠폰은 발행처, 발행대상, 발행경로, 사용대상 등에 따라 구분될 수 있으며, 할인쿠폰의 세부구분, 할인금액(또는 할인율), 사용방법, 사용기한 및 제한에 대한 사항은 할인쿠폰 또는 사이트의 서비스 화면에 표시됩니다. 할인쿠폰의 종류 및 내용과 발급여부에 관하여는 회사의 정책에 따라 달라질 수 있습니다. 
      2 할인쿠폰은 현금으로 출금될 수 없으며, 할인쿠폰에 표시된 유효기간이 만료되거나 이용계약이 종료되면 소멸합니다. 
      3 할인쿠폰은 회사에서 별도로 명시한 경우를 제외하고는 타인에게 양도할 수 없으며, 부정한 목적이나 용도로 사용할 수 없습니다. 이를 위반한 경우 회사는 할인쿠폰을 소멸시키거나 회원자격을 정지할 수 있습니다.
      
      제19조 회사의 의무
      1 회사는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화를 제공하는데 최선을 다하여야 합니다. 
      2 회사는 이용자가 안전하게 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함) 보호를 위한 보안시스템을 갖추어야 하며, 개인정보처리방침을 공시하고 준수합니다. 
      3 회사는 이용자의 명시적인 사전 동의를 얻은 경우에만 영리목적의 광고성 정보를 이용자에게 전송합니다. 단, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 제50조 제1항 제1호 및 같은 법 시행령 제61조 제1항의 경우는 예외로 합니다. 
      4 회사는 이용자로부터 제기되는 의견이나 불만이 정당하다고 객관적으로 인정될 경우에는 적절한 절차를 거쳐 즉시 처리하여야 합니다. 단, 즉시 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 통보하여야 합니다.
      
      제20조 이용자의 의무
      1 이용자는 관련 법령, 이 약관의 규정, 이용안내 등 회사가 통지하는 사항을 준수하여야 하며, 기타 회사 업무에 방해되는 행위를 하여서는 안 됩니다. 
      2 이용자는 다음 각 호의 행위를 하여서는 안 됩니다. ◦ 서비스 이용 신청 또는 변경 시 허위 내용의 등록 ◦ 타인의 정보 도용 ◦ 사이트에 게시된 정보의 변경(단, 정보의 변경에 이용자의 권한이 있는 경우는 제외) ◦ 회사가 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시 ◦ 회사 기타 제3자의 저작권 등 지식재산권에 대한 침해 ◦ 회사 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위 ◦ 외설 또는 폭력적인 메시지·화상·음성 기타 공서양속에 반하는 정보를 사이트에 공개 또는 게시하는 행위 ◦ 회사의 동의 없이 영리를 목적으로 서비스를 사용하는 행위 ◦ 회원의 포인트·할인쿠폰을 제3자와 유상으로 거래하거나 현금으로 전환하는 행위 ◦ 사이트 내·외를 불문하고 위법하거나 이 약관에 위배되는 수단 또는 목적으로 포인트·할인쿠폰을 획득함으로써 회사 기타 제3자에게 유·무형의 피해를 입히는 행위 
      3 이용자가 이 약관 및 관련 법령을 위반한 경우 회사는 서비스 및 사이트에 관한 이용자의 권리를 제한·박탈할 수 있으며, 민사청구, 형사고발 등의 법적 조치를 취할 수 있습니다.
      
      제21조 저작권의 귀속 및 이용제한
      1 회사가 작성한 저작물에 대한 저작권 및 기타 지식재산권은 회사에 귀속합니다. 
      2 회사는 서비스와 관련하여 이용자에게 회사가 정한 이용조건에 따라 계정, 아이디, 콘텐츠 등을 이용할 수 있는 이용권만을 부여하며, 이용자는 서비스를 이용함으로써 얻은 정보 중 회사에게 지식재산권이 귀속된 정보를 회사의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송, 기타 방법에 의하여 영리 목적으로 이용하거나 제3자에게 이용하게 하여서는 안 됩니다.
      
      제22조 분쟁 해결
      1 회사는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위해서 피해보상처리기구(고객센터)를 설치·운영합니다. 
      2 이 약관의 규정이 대한민국의 강행법규와 상충하는 경우에는 그 강행법규에 따릅니다. 단, 이로 인해 이 약관 중 일부 조항이 무효로 되더라도 다른 조항의 효력에는 영향을 미치지 아니합니다.
      
      제23조 재판권 및 준거법
      1 이 약관의 해석 및 회사와 이용자 간의 분쟁에 관하여는 대한민국의 법률을 적용합니다. 
      2 이 약관 및 서비스 이용과 관련하여 회사와 이용자 사이에 분쟁이 발생하여 소송이 제기되는 경우에는 민사소송법에 따라 관할법원을 정합니다.
      
      부칙 (시행일) 본 약관은 2022년 10월 14일부터 시행합니다.
    ''';

  const TermsOfServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("서비스 이용약관"),
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
              child: Text(termsOfServiceText, style: DPTextTheme.DESCRIPTION_IMPORTANT),
            ),
          ),
        ),
      ),
    );
  }
}
