hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

arr = []
color_arr = []


hsh.select do |key, value|
    if value[:type] == 'fruit' then
      value[:colors].map do |color_val|
        color_arr << color_val.capitalize
      end
      arr << color_arr
      next
    else arr << value[:size]
    end
  end

p arr