#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

//Контекст:
//	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Заполнение поля Организация в заказе покупателя, если не заполнилось из соглашения
// 	Предусловие - есть открытая форма с каким-то заказом покупателя. Если формы нет, можно раскомментировать код ниже
//	* Закрываем все окна и открываем список заказов покупателей, создаём заказ покупателя
//		И я закрываю все окна клиентского приложения
//		И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
//		И я нажимаю на кнопку с именем 'FormCreate'		
	* Выбираем "наугад" соглашение.
		И я нажимаю кнопку выбора у поля с именем "Agreement"
		И в таблице 'List' я перехожу к первой строке
	* Запоминаем наименование организации из соглашения
		И в таблице "List" я нажимаю на кнопку с именем 'ListContextMenuChange'
		И я запоминаю значение поля с именем 'Company' как 'Company'
		И я закрываю текущее окно
	* Выставляем соглашение, смотрим, что оказалось в поле Организация
		И я нажимаю на кнопку с именем 'FormChoose'
		Если элемент формы с именем 'Company' стал равен '$Company$' Тогда
		Иначе			
			Если переменная "Company" имеет значение "" Тогда
				И в поле с именем 'Company' я ввожу текст ''
			Иначе
				И я нажимаю кнопку выбора у поля с именем "Company"
				Тогда открылось окно 'Организации'
				И в таблице "List" я перехожу к строке:
					| 'Наименование' |
					| '$Company$'    |
				И я нажимаю на кнопку с именем 'FormChoose'