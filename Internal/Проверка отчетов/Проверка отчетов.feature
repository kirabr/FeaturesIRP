#language: ru

@tree
@Отчеты

Функционал: Тестирование отчетов

Как тестировщик я хочу
протестировать отчеты 
чтобы проверить что у пользователя не возникнет проблем 

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: _0901 подготоваительный сценарий (для тестирования отчетов)
	Когда Экспорт основных данных
	Когда Экспорт документов закупок
	И я выполняю код встроенного языка на сервере
		| 'Documents.PurchaseOrder.FindByNumber(1).GetObject().Write(DocumentWriteMode.Posting);'   |
		| 'Documents.PurchaseOrder.FindByNumber(2).GetObject().Write(DocumentWriteMode.Posting);'   |
		| 'Documents.PurchaseOrder.FindByNumber(3).GetObject().Write(DocumentWriteMode.Posting);'   |
		| 'Documents.PurchaseInvoice.FindByNumber(1).GetObject().Write(DocumentWriteMode.Posting);' |
		| 'Documents.PurchaseInvoice.FindByNumber(2).GetObject().Write(DocumentWriteMode.Posting);' |
	
Сценарий: _0902 Проверка отчёта Информация по номенклатуре
	И В командном интерфейсе я выбираю 'Отчеты' 'D0010 Информация по товарам'
	И я нажимаю на кнопку с именем 'FormGenerate'
	Дано Табличный документ "Result" равен макету "ИнфоПоТоварам1"
	
