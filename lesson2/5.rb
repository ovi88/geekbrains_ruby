
#циклы
def fib limit
  a = [0,1]
  n=0
  while n<limit do
    b = a[-2] + a[-1]
    a.push(b)
    n+=1
  end
  puts a
end

fib 500

#рекурсия
def fib n
  if n==0 || n==1 then return 1 end
  fib(n-1) + fib(n-2)
end
#fib 500
n=0
limit=5;
while n<limit do
  puts fib n
  n+=1
end
