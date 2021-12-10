x="3,4,3,1,2"

starts =  map(i -> parse(Int64,i),split(x,","))

println(starts)

function Population(timeroffset::Int64, time::Int64, initialpop::Int64,rate::Int64)::Int64
  initialpop * 2 ^ ((time + timeroffset) ÷ rate)
end

function TotalPop(time)
  sum(map(start-> Population(start,time,1,7),starts))
end

for time in 1:18
  println(TotalPop(time))
end

