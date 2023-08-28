array = [17,3,6,9,15,8,6,1,10]


def stock_picker(array)
    max = array.max(2)
    min = array.min(2)
    values = [max, min].flatten
end

def day_checker(array, days)
    # dia da compra antes da venda


puts stock_picker(array)