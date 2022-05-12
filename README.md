# Transaction_Rollback
* TRIGGER Nedir? - Tetikleyici demek
** Trigger kelime anlamı olarak tetikleyici demektir. Trigger, SQL’de bir sorgu
çalıştırdığımızda, başka bir sorgunun çalışmasını sağlamak için yazılan koddur. Mesela bir tablodan kayıt sildiğimizde, başka bir tablodan onunla ilgili bir kaydın silinmesi için kullanabiliriz. Yada bir tabloya ekleme yaptığımızda başka bir tabloya da onunla ilgili olan bilgileri eklemek için kullanabiliriz.

* TRANSACTİON nedir? -İşlem 
** Transaction", daha küçük parçalara ayrılamayan en küçük işlem yığınına denir. Belirli bir grup işlemin arka arkaya gerçekleşmesine rağmen, işlemlerin seri ya da toplu halde değerlendirilip hepsinin düzgün bir şekilde ele alınması gerektiğinde kullanılır. 

* ROLLBACK nedir? - Geri alma
** Rollback, Yapılan işlemleri geri alır. Örneğin bir tablodaki verileri DELETE, UPDATE, INSERT gibi işlemler yapılırken ROLLBACK ile işlemi geri alır.

-----Çoklu işlem yapılırken hata varsa işlemi geri alma----

** Çoklu işlemler yapılırken işlem sırasında bir hata varsa başarılı olan işlemlerde dahil işlemleri geri almasını sağlar. Eğer bir hata yoksa commit transaction gerçekleşerek işlemler tamamlanmış olur.


DEVAMI GELECEKKK
