def bubble_sort(arr)
  sorted = false
  scope = arr.length-1

  until sorted == true
    #Assume arr is sorted
    sorted = true
    for i in 0...scope
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        # if had to make a swap, not sorted yet
        sorted = false
      end
    end
    #last item is the biggest, can shrink the scope
    scope -= 1
  end
  p arr
end


bubble_sort([6,5,4,3,2,1])