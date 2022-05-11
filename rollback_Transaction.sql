--TRIGGER
--Ürün tablosuna bir veri eklendiğinde x işlemini yap.

--Ürün tablosundan bir veri güncellendiğinde y işlemini yap.

--Ürün tablosunda  bir veri silindiğinde z işlemini yap.


enable TRIGGER dbo.trg_add_category on Categories



create TRIGGER trg_delete_category
on Categories
AFTER DELETE
AS
BEGIN
    print('Bir kategori silindi')
END


--Kategori adının karakteri 3 den küçükse eklemesin!!
--Bir kategori eklendikten sonra ekrana yeni bir kategori eklendi yazsın.
--Category tablosu üzerinde çalışan AFTER INSTERT TRIGGER I
DROP TRIGGER trg_add_category
on Categories
AFTER INSERT
as
BEGIN
    if(LEN((select CategoryName
    from inserted)) < 3)
BEGIN
        print('UYARI Böyle Bir kategori eklenemez')
        rollback transaction
    END
END


--Ürün eklerken eğer stok 5 in altındaysa ürünü eklemesin
--inserted sql içerisine gömülü bir tablo! son eklenen insert işlemini bana verir
CREATE TRIGGER trg_add_product
on Products
AFTER INSERT
AS
BEGIN

    declare @newStock INT
    set @newStock = (select UnitsInStock
    from inserted)

    if(@newStock < 5)
BEGIN
        PRINT('Stok adedi 5 den küçük olduğu için eklenemez!')
        ROLLBACK TRANSACTION
    END
END


insert into Products
    (ProductName, UnitPrice, UnitsInStock)
values('IPhone', 333, 112)

select *
from Products
order by ProductID desc



--TRY CATCH
--https://www.sqlservertutorial.net/sql-server-stored-procedures/sql-server-try-catch/

BEGIN TRY
delete from Categories
END TRY
BEGIN CATCH
select ERROR_MESSAGE()
select ERROR_LINE()
END CATCH


--TRANSACTION

--Sipariş tablosuna insert atılsın ve sonra ürünün stoğundan düşülsün
--Dışarıdan ürün adı, fiyatı, stok ve kategori adı alan bir store proc yaz. Kategori yoksa yeni kategori oluştursun varsa mevctu kategorinin id sinin alsın.

alter proc addNewProduct(
    @productName nvarchar(MAX),
    @price money,
    @stock int,
    @categoryName NVARCHAR(MAX)
)
AS
BEGIN
    BEGIN TRAN
    BEGIN TRY
    declare @categoryId int

    if exists(select *
    from Categories
    where LOWER(CategoryName) = LOWER(@categoryName))
BEGIN
        set @categoryId = (select ID
        from Categories
        where LOWER(CategoryName) = LOWER(@categoryName))
    END
ELSE
BEGIN
        insert into Categories
            (CategoryName)
        values(@categoryName)
        set @categoryId = @@IDENTITY
    --set @categoryId = select top 1 ID from Categories order by ID desc
    END

    insert into Products
        (ProductName, UnitPrice, UnitsInStock, CategoryID)
    values(@productName, @price, @stock, @categoryId)
    COMMIT
    END TRY
    BEGIN CATCH
    print('category patladı')
    ROLLBACK
    END CATCH
END


exec addNewProduct ' Store Procedure, View, Function, Trigger Store Procedure, View, Function, Trigger',22,5,'XX'


select * from Categories order by ID desc
-- Store Procedure, View, Function, Trigger, Transaction


--SupplierID null OLMAYAN kaç adet ürün var?
select COUNT(*) from Products where SupplierID is not null



