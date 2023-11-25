while true
    puts("Привіт, ви запустили 1 домашнє завдання, виберіть яке завдання ви хочете відкрити? [1-3]. Якщо хочете закінчити роботу програми, введіть [0]")
    input = gets.chomp
    numberTask = input.to_i
    if numberTask == 1 
        puts("Добре, ви вибрали 1 завдання, тепер виберіть, яке завдання ви хочете подивитись")
        puts("[1] Задача 16: Дано цілочисельний масив. Перевірити, чи утворюють елементи геометричну прогресію. Якщо так, то вивести знаменник прогресії, якщо ні - вивести nil.")
        puts("[2] Задача 97: Дано цілочисельний масив і число К. Вивести індекс останнього елемента, меншого за К.")
        puts("[3] Задача 80: Дано дипапазон a..b. Отримати масив із чисел, розташованих у цьому діапазоні (за винятком самих цих чисел), у порядку їхнього зростання, а також розмір цього масиву.")
        puts("[4] Задача 58: Дано цілочисельний масив. Знайти індекс останнього екстремального (тобто мінімального або максимального) елемента.")
        puts("[5] Задача 22: Дано цілочисельний масив. Визначити кількість ділянок, на яких його елементи монотонно спадають.")
        puts("[6] Задача 48: Дано цілочисельний масив та інтервал a..b. Знайти максимальний з елементів у цьому інтервалі.")
        puts("[7] Задача 14: Дано цілочисельний масив. Здійснити циклічний зсув елементів масиву вправо на одну позицію.")
        puts("[8] Задача 66: Дано цілочисельний масив. Вивести спочатку всі його непарні елементи, а потім - парні.")
        puts("[9] Задача 75: Дано цілочисельний масив. Знайти середнє арифметичне модулів його елементів.")
        puts("[10] Задача 35: Дано цілочисельний масив. Знайти індекс першого мінімального елемента.")
        puts("[11] Задача 27: Дано цілочисельний масив. Перетворити його, вставивши після кожного додатного елемента нульовий елемент.")
        puts("[12] Задача 67: Дано цілочисельний масив. Перевірити, чи чергуються в ньому парні та непарні числа.")
        puts("[13] Задача 45: Дано цілочисельний масив. Знайти мінімальний додатний елемент.")
        puts("[14] Задача 87: Дано цілочисельний масив. Знайти всі парні елементи.")
        puts("[15] Задача 105: Дано цілочисельний масив. Якщо цей масив утворює спадну послідовність, то вивести nil, інакше вивести номер першого числа, що порушує закономірність.")
        puts("Якщо хочете вийти назад, введіть [0]")
        input = gets.chomp
        numberHomeWork = input.to_i
        if numberHomeWork == 1
            def geometric_progression(arr)
                return "nil" if arr.length < 3
                
                ratio = arr[1] / arr[0].to_f
                
                arr.each_with_index do |num, index|
                  return "nil" if index.positive? && arr[index] != arr[index - 1] * ratio
                end
                
                ratio
              end
              
              array1 = [2, 4, 8, 16, 32] 
              array2 = [6, 9, 12, 15, 27]
              array3 = [2, 5, 10, 20, 40]
              
              puts "Знаменник прогресії: #{geometric_progression(array1)}"
              puts "Знаменник прогресії: #{geometric_progression(array2)}"
              puts "Знаменник прогресії: #{geometric_progression(array3)}"
                  
        end
        if numberHomeWork == 2
            def find_last_smaller_index(array, k)
                last_smaller_index = nil
              
                array.each_with_index do |num, index|
                  if num < k
                    last_smaller_index = index
                  end
                end
              
                last_smaller_index
              end
              
              arr = [10, 5, 8, 3, 7, 12]
              k = 8
              
              last_smaller_index = find_last_smaller_index(arr, k)
              if last_smaller_index.nil?
                puts "У масиві немає елементів менших за #{k}"
              else
                puts "Індекс останнього елемента, меншого за #{k}: #{last_smaller_index}"
              end          
        end
        if numberHomeWork == 3
            def generate_array_excluding_bounds(range)
                arr = (range.first + 1...range.last).to_a  
                [arr, arr.size]  
              end
              
              
              my_range = 1..10
              result_array, size = generate_array_excluding_bounds(my_range)
              
              puts "Масив без крайніх чисел: #{result_array}"
              puts "Розмір масиву: #{size}"
        end
        if numberHomeWork == 4
            def last_extreme_index(array)
                max_value = nil
                min_value = nil
                max_index = nil
                min_index = nil
              
                array.each_with_index do |num, index|
                  if max_value.nil? || num >= max_value
                    max_value = num
                    max_index = index
                  end
              
                  if min_value.nil? || num <= min_value
                    min_value = num
                    min_index = index
                  end
                end
              
                return max_index if max_index == min_index
    
                [max_index, min_index].compact.max 
              end
              
              arr = [2, 5, 8, 3, 8, 10, 1]
              last_extreme = last_extreme_index(arr)
              
              if last_extreme.nil?
                puts "Масив порожній або має лише один елемент"
              else
                puts "Індекс останнього екстремального елемента: #{last_extreme}"
              end
              
              
        end
        if numberHomeWork == 5
            def count_decreasing_ranges(array)
                count = 0
                is_decreasing = false
              
                for i in 1...array.length
                  if array[i] < array[i - 1] 
                    unless is_decreasing  
                      count += 1
                      is_decreasing = true
                    end
                  else
                    is_decreasing = false 
                  end
                end
              
                count
              end
              
              arr = [10, 8, 6, 7, 5, 3, 4, 1, 3, 2, 0]
              result = count_decreasing_ranges(arr)
              puts "Кількість ділянок з монотонним спаданням: #{result}"
              
    
        end
        if numberHomeWork == 6
            def max_in_range(array, range)
                elements_in_range = array.select { |num| range.cover?(num) } 
              
                if elements_in_range.empty?
                  puts "У цьому інтервалі немає елементів з масиву."
                  return nil
                end
              
                max_element = elements_in_range.max 
              
                max_element
              end
              
              arr = [3, 9, 5, 12, 7, 15, 21, 4]
              interval = 5..15
              result = max_in_range(arr, interval)
              
              if result.nil?
                puts "Не можливо знайти максимальний елемент у вказаному інтервалі."
              else
                puts "Максимальний елемент у вказаному інтервалі: #{result}"
            end
              
        end
        if numberHomeWork == 7
            def cyclic_shift_right(array)
                return array if array.empty?
              
                last_element = array.pop 
                array.unshift(last_element)
              
                array
              end

              arr = [3, 9, 5, 12, 7, 15]
              puts "Наш масив #{arr}"
              result = cyclic_shift_right(arr)
              puts "Масив після циклічного зсуву вправо: #{result}"
              
        end
        if numberHomeWork == 8
            def odd_even_sort(array)
                odd_elements = array.select { |num| num.odd? } 
                even_elements = array.select { |num| num.even? } 
              
                odd_elements + even_elements 
              end
              
              # Приклад використання функції:
              arr = [3, 6, 8, 9, 12, 7, 5, 4]
              puts "Наш масив #{arr}"
              result = odd_even_sort(arr)
              puts "Спочатку непарні, потім парні елементи: #{result}"
        end
        if numberHomeWork == 9
            def average_absolute(arr)
                return 0 if arr.empty? 
                absolute_values_sum = arr.map(&:abs).sum 
                average = absolute_values_sum.to_f / arr.length 
              
                average
              end
              
              # Приклад використання функції:
              array = [3, -6, 8, -9, 12, -7, 5, -4]
              puts "Наш масив #{array}"
              result = average_absolute(array)
              puts "Середнє арифметичне модулів елементів: #{result}"
              
        end
        if numberHomeWork == 10
            def index_of_first_minimum(array)
                return nil if array.empty? # Перевірка на пустий масив
              
                min_index = array.index(array.min) # Знаходимо індекс першого мінімального елемента
              
                min_index
              end
              
              # Приклад використання функції:
              arr = [3, -6, 8, 2, 12, -7, 5, -4]
              puts "Наш масив #{arr}"
              result = index_of_first_minimum(arr)
              
              if result.nil?
                puts "Масив порожній."
              else
                puts "Індекс першого мінімального елемента: #{result}"
              end
              
        end
        if numberHomeWork == 11
            def insert_zeros_after_positive(array)
                result = []
              
                array.each do |num|
                  result << num  
                  if num.positive?
                    result << 0
                  end
                end
                result  
              end
              
              # Приклад використання функції:
              arr = [3, -6, 8, 2, -4, 7, 5, -1]
              puts "Наш масив #{arr}"
              result = insert_zeros_after_positive(arr)
              
              puts "Масив після вставлення нулів після кожного додатного елемента: #{result}"
              
        end
        if numberHomeWork == 12
            def alternate_even_odd?(array)
                return false if array.empty? || array.length < 2  
                array.each_cons(2).all? { |a, b| a.even? != b.even? }  
              end
              arr1 = [2, 5, 6, 7, 8, 9] 
              arr2 = [2, 5, 6, 8, 9]    
              puts "Наш перший масив #{arr1}"
              puts "Наш другий масив #{arr2}"
              puts "Чи чергуються парні та непарні числа в масиві arr1? #{alternate_even_odd?(arr1)}"
              puts "Чи чергуються парні та непарні числа в масиві arr2? #{alternate_even_odd?(arr2)}"
        end
        if numberHomeWork == 13
            def min_positive_element(array)
                positive_numbers = array.select { |num| num.positive? } 
              
                if positive_numbers.empty?
                  puts "У масиві немає додатніх елементів."
                  return nil
                end
              
                min_positive = positive_numbers.min 
              
                min_positive
              end
              arr = [-3, 6, 8, -2, 12, -7, 5, -4]
              result = min_positive_element(arr)
              puts "Наш масив #{arr}"
              if result.nil?
                puts "Не можливо знайти мінімальний додатній елемент."
              else
                puts "Мінімальний додатній елемент: #{result}"
              end
              
        end
        if numberHomeWork == 14
            def find_even_elements(array)
                even_numbers = array.select { |num| num.even? } 
                if even_numbers.empty?
                  puts "У масиві немає парних елементів."
                  return []
                end
                even_numbers
              end

              arr = [-3, 6, 8, -2, 12, -7, 5, -4]
              puts "Наш масив #{arr}"
              result = find_even_elements(arr)
              if result.empty?
                puts "Не знайдено парних елементів."
              else
                puts "Парні елементи: #{result}"
              end
        end
        if numberHomeWork == 15
            def check_sequence(array)
                return 'nil' if array.empty? || array.length < 2
              
                violations = array.each_cons(2).find_index { |a, b| a <= b }
                return 'nil' if violations.nil?
                
                violations.zero? ? 'nil' : (violations + 1).to_s
              end
              
              # Приклад використання функції:
              arr1 = [10, 9, 8, 7, 6, 5] # Утворює спадну послідовність
              arr2 = [10, 8, 6, 7, 5]    # Порушення закономірності між 6 та 7
              puts "Наш перший масив #{arr1}"
              puts "Наш другий масив #{arr2}"
              puts "Результат для першого масива: #{check_sequence(arr1)}"
              puts "Результат для другого масива: #{check_sequence(arr2)}"
              
        end
    end
    if numberTask == 2 
        puts("Добре, ви вибрали 2 завдання: Базовий калькулятор ")
        def calculator(input)
            parts = input.split(' ')
            return "Неправильний формат. Введіть операцію у форматі 'число операція число' (наприклад, '2 + 3')." if parts.length != 3
            num1 = parts[0].to_i
            operator = parts[1]
            num2 = parts[2].to_i
            case operator
            when '+'
              num1 + num2
            when '-'
              num1 - num2
            when '*'
              num1 * num2
            when '/'
              num2.zero? ? "Ділення на нуль!" : num1 / num2.to_f
            else
              "Невідома операція"
            end
          end
          # Приклад використання калькулятора:
          puts "Введіть операцію у форматі 'число операція число' (наприклад, '2 + 3'):"
          user_input = gets.chomp
          result = calculator(user_input)
          puts "Результат: #{result}"
    end
    if numberTask == 3 
      puts("3.1 sidekiq - Одна з найбільш широко використовуваних інфраструктурних фонових завдань, які можна реалізувати у прикладі Rails. Вона заснована на системі зберігання пар ключ-значення в оперативній пам'яті Redis , що відрізняється гнучкістю і високою продуктивністю. Sidekiq використовує Redis як сховище для керування задачами, щоб обробляти тисячі задач у секунду . https://www.ruby-toolbox.com/projects/sidekiq")
      puts("3.2 Shrine - Це багатофункціональна бібліотека для обробки та завантаження файлів в Ruby. Вона призначена для керування файлами будь-якого типу, включаючи зображення, відео, документи тощо. Shrine надає зручний спосіб завантаження файлів, обробки їх, включаючи зміну розміру зображень, збереження в різних сховищах (локально, на хмарних сервісах) і їхнє вилучення. https://www.ruby-toolbox.com/projects/shrine")
      puts("3.3 will_paginate - це гем для розділення списку об'єктів на сторінки в Ruby on Rails додатках. Він надає зручний спосіб створення 'сторінкованого' перегляду для списків об'єктів, таких як статті, товари або будь-які інші дані. https://www.ruby-toolbox.com/projects/will_paginate")
    end
    if numberTask == 0
       exit(0) 
    end
end