#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: Тест http-сервиса
	// открыли обработку "D:\Курсы-по-1С-РФ\QAB1101-All-Materials (after 25 01 2022)\030 Дополнительные методические материалы\Методические материалы к Модулю 5\ПроверкаЗначенияГода.epf"
	И в поле с именем 'ПроверитьГод' я ввожу текст '2021'
	И Я запоминаю в переменную "ОтветПолучен" значение "Нет"
	И я делаю 2 раз
		Попытка
			И я нажимаю на кнопку с именем 'ФормаПолучитьДанные'
			И элемент формы с именем 'ГодВысокосный' стал равен 'Нет'
			И Я запоминаю в переменную "ОтветПолучен" значение "Да"
			Тогда я прерываю цикл
		Исключение
			И Пауза 20
	Если переменная "ОтветПолучен" имеет значение "Нет" Тогда
		Затем я останавливаю выполнение сценария "Skipped"
	И В командном интерфейсе я выбираю "Склад" "Склады"	

Сценарий: регистрация ошибок
	попытка
		И Я подключаю клиент тестирования "ИмяПрофиля1TestClient" из таблицы клиентов тестирования
	исключение
		И я регистрирую ошибку "Первая ошибка" по данным исключения

	И Пауза 2

	попытка
		И Я подключаю клиент тестирования "ИмяПрофиля2TestClient" из таблицы клиентов тестирования
	исключение
		И я регистрирую ошибку "Вторая ошибка" по данным исключения
		
				