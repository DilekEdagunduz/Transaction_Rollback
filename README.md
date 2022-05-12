# Transaction_Rollback

* TRIGGER Nedir? - Tetikleyici demek
** Trigger kelime anlamı olarak tetikleyici demektir. Trigger, SQL’de bir sorgu çalıştırdığımızda, başka bir sorgunun çalışmasını sağlamak için yazılan koddur. Mesela bir tablodan kayıt sildiğimizde, başka bir tablodan onunla ilgili bir kaydın silinmesi için kullanabiliriz. Yada bir tabloya ekleme yaptığımızda başka bir tabloya da onunla ilgili olan bilgileri eklemek için kullanabiliriz.

* TRANSACTİON nedir? -İşlem 
** Transaction", daha küçük parçalara ayrılamayan en küçük işlem yığınına denir. Belirli bir grup işlemin arka arkaya gerçekleşmesine rağmen, işlemlerin seri ya da toplu halde değerlendirilip hepsinin düzgün bir şekilde ele alınması gerektiğinde kullanılır. 

* ROLLBACK nedir? - Geri alma
** Rollback, Yapılan işlemleri geri alır. Örneğin bir tablodaki verileri DELETE, UPDATE, INSERT gibi işlemler yapılırken ROLLBACK ile işlemi geri alır.

-----Çoklu işlem yapılırken hata varsa işlemi geri alma----

** Çoklu işlemler yapılırken işlem sırasında bir hata varsa başarılı olan işlemlerde dahil işlemleri geri almasını sağlar (Rollback). Eğer bir hata yoksa commit transaction gerçekleşerek işlemler tamamlanmış olur.

* insert into : Bir tabloya yeni kayıt eklemek için kullanılır

* İNSTERTED : Eklenen satırı verir.

* @@IDENTITY : Veritabanına eklenen son satırı verir.

*  SQL COMMİT : Transaction da yapılan işlemleri eğer hata yoksa kaydeder.

*  SQL ROLLBACK : Transaction da yapılan işlemler de eğer hata varsa 
değişiklik yapmadan verileri aynı şekilde korunmasını sağlayan işlemdir. Yani yapılan işlemleri geri alır

* SQL FUNCTION : Functionlar genel olarak sql development kısmında yardımcı olurlar. Functionlar istenilen değer tipine dönüş yapabilir ,
 Upper, Lower, Sum gibi sql içerisine gömülü functionlar da bulunmaktadır.
 
 * STORE PROCEDURE  : C# daki metodlar gibidir ama metod değildir. Yazılan sorguyu çalıştırır ve bir sonuç kümesi döndürür.
her seferin de kodu tekrar yazmak yerine store procedure ile sorguyu yazarız ve sonuç gelir.

DEVAMI GELECEKKK
