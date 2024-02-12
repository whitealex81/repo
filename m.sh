#!/bin/bash

# Функция для отображения сообщения в стиле "Матрицы"
function show_matrix_message {
    message=$1
    words=($message)

    # Очистка экрана перед первой строкой
    clear

    for word in "${words[@]}"; do
        for ((i = 0; i < ${#word}; i++)); do
            echo -n -e "\e[32m${word:$i:1}\e[0m"
            sleep 0.1  # Подстраивайте продолжительность паузы при необходимости
        done
        echo -n " "  # Добавление пробела между словами
    done

    echo
    sleep 3
    clear  # Очистка экрана перед следующей строкой
}

# Обработка сигнала прерывания для выхода из скрипта
trap 'echo -e "\nСкрипт завершен."; tput sgr0; exit' INT

# Установка цвета терминала на зеленый текст на черном фоне
tput setab 0
tput setaf 2

# Отображение сообщений в стиле "Матрицы"
show_matrix_message "Wake up, Neo..."
show_matrix_message "The Matrix has you..."
show_matrix_message "Follow the white rabbit."
show_matrix_message "Knock, knock, Neo."

# Восстановление стандартных цветов и шрифта
tput sgr0
