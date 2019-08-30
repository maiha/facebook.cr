# recoverable error (5xx)
class Facebook::Error < Exception
end

# fatal error (bug)
class Facebook::Fatal < Facebook::Error
end

# unrecoverable error (4xx)
class Facebook::Denied < Facebook::Fatal
end
