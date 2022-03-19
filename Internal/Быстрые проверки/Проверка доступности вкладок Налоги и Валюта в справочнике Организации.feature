﻿#language: ru

@tree
@БыстрыеПроверки

Функционал: проверка формы элемента справочника "Организации"

Как тестировщик я хочу
проверить доступность вкладок "Налоги" и "Валюты" 
чтобы убедиться, что пользователь не ошибётся при вводе данных 

Сценарий: проверка доступности вкладок "Налоги" и "Валюта" в справочнике "Организации"
	* Открытие элемента справочника Организации
		И В командном интерфейсе я выбираю 'Справочники' 'Организации'
		Тогда открылось окно 'Организации'
		И я нажимаю на кнопку с именем 'FormCreate'
		Тогда открылось окно 'Организация (создание)'
	* Установка флага Наша организация, проверка присутствия вкладок "Валюты" и "Вид налога" на форме
		И я устанавливаю флаг с именем 'OurCompany'
		И элемент формы "Валюты" присутствует на форме
		И элемент формы "Вид налога" присутствует на форме
	* Снятияе флалга Наша организация, проверка отсутствия вкладок "Валюты" и "Вид налога" на форме
		И я снимаю флаг с именем "OurCompany"
		И элемент формы "Валюты" существует и невидим на форме
		И элемент формы "Вид налога" существует и невидим на форме
		