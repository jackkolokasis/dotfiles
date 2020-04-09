set disassembly-flavor intel
set confirm off
layout src
set print pretty on

define s
step
refresh
end

define n
next
refresh
end

define r
run
refresh
end

define c
continue
refresh
end

define finish
finish
refresh
end
