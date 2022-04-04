#language: ru

@tree
@Отчеты

Функционал: проверка отчета по продажам

Как тестировщик я хочу
проверить отображение данных в отчёте по продажам

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: _hw0402_01 подготовка данных
	Когда Экспорт документов продаж
	И я выполняю код встроенного языка на сервере
		| 'Documents.SalesInvoice.FindByNumber(1).GetObject().Write(DocumentWriteMode.Posting);'   |
		| 'Documents.SalesInvoice.FindByNumber(2).GetObject().Write(DocumentWriteMode.Posting);'   |

Сценарий: _hw0402_02 проверка отчета о продажах
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormGenerate'
	Тогда Табличный документ 'Result' равен макету "D2001 default"
