min_threads = Integer(ENV['MIN_THREADS'] || 5)
max_threads = Integer(ENV['MAX_THREADS'] || 5)

threads min_threads, max_threads
workers Integer(ENV['WORKER_COUNT'] || 1)
