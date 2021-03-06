#language: ru

@tree
@ДоступностьПолей

Функционал: Тестирование доступности полей

Как тестировщик я хочу
убедиться в логической связи доступности полей 
чтобы пользователь не мог заполнять зависимые поля при незаполненных основных

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

//Сценарий: _hw0401_01 Подготовка данных
//	Когда экспорт основных данных

Сценарий: _hw0401_02 Тестирование доступности полей заказа покупателя
* Открытие формы заказа
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"	
	И я нажимаю на кнопку с именем 'FormCreate'
* Проверка полей после открытия	
	Тогда элемент формы "Партнер" доступен
	Тогда элемент формы "Соглашение" доступен
	Тогда элемент формы "Контрагент" не доступен
* Заполнение партнера, проверка доступности контрагента	
	И я нажимаю кнопку выбора у поля с именем "Partner"	
	И я нажимаю на кнопку с именем 'FormChoose'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	И в таблице "List" я перехожу к строке
		| 'Наименование'            |
		| 'Клиент 1 (1 соглашение)' |
	И я нажимаю на кнопку 'Выбрать'	
	Тогда элемент формы "Партнер" доступен
	Тогда элемент формы "Соглашение" доступен
	Тогда элемент формы "Контрагент" доступен
* Проверка полей после очистки партнера
	И в поле с именем 'Partner' я ввожу текст ''
	Тогда элемент формы "Партнер" доступен
	Тогда элемент формы "Соглашение" доступен
	Тогда элемент формы "Контрагент" не доступен				