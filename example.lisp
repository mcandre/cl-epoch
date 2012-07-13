(load 'cl-epoch)

(format t "The current UNIX Epoch time is ~a" (cl-epoch:get-epoch-time))