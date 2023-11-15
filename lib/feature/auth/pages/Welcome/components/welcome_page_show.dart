import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BilgilendirmeMetni extends StatelessWidget {
  const BilgilendirmeMetni({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: context.sized.width / 3,
              child: Column(children: [
                Text("Avare Business",
                    style: context.general.textTheme.displayLarge),
                Text(
                    "Zamanınızı Değerli Kılın: Avare ile Hızlı ve Güvenilir Randevular Planlayın",
                    // "İşinizi, 7/24 çevrimiçi randevu rezervasyonu, hatırlatıcılar, personel yönetimi ve daha fazlasını sunan ücretsiz rezervasyon sayfanızla organize edin.",
                    style: context.general.textTheme.headlineSmall)
              ])))
    ]);
  }
}

class BilgilendirmeMetni1 extends StatelessWidget {
  const BilgilendirmeMetni1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: context.sized.width / 3,
              child: Column(children: [
                Text(
                    "Düşünün ki, bir berber dükkanınız, güzellik merkeziniz, otomobil tamirciniz veya veteriner kliniğiniz var. Müşterilerinize daha hızlı ve verimli bir hizmet sunmak ister misiniz? İşte bu noktada Avare devreye giriyor. Avare, işletmenizin randevu alımını, iletişimini ve değerlendirmelerini kolaylaştırırken müşterilerinize daha iyi bir deneyim sunar. Artık bekleme sıralarında zaman harcamak yerine anında randevular alabilirsiniz.",
                    // "Avare, kullanıcıların randevuları kolayca oluşturmasına, güncellemesine ve yönetmesine olanak tanıyarak planlama sürecini basitleştirir. Sezgisel bir arayüz ile işletme sahipleri, müşteri rezervasyonlarını, personel müsaitliğini ve hizmet tekliflerini verimli bir şekilde yönetebilir.",
                    style: context.general.textTheme.titleLarge)
              ])))
    ]);
  }
}
