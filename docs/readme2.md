%APPDATA%\mpv\scripts

https://mpv.io/manual/master/#mp-functions


utils.getcwd()
Returns the directory that mpv was launched from. On error, nil, error is returned.


mp.utils.getenv(name)
Returns the value of the host environment variable name, or undefined if the variable is not defined.

mp.utils.get_user_path(path)
Expands (mpv) meta paths like ~/x, ~~/y, ~~desktop/z etc. read_file, write_file and require already use this internaly.

mp.utils.read_file(fname [,max])
Returns the content of file fname as string. If max is provided and not negative, limit the read to max bytes.

mp.utils.write_file(fname, str)
(Over)write file fname with text content str. fname must be prefixed with file:// as simple protection against accidental arguments switch, e.g. mp.utils.write_file("file://~/abc.txt", "hello world").
Note: read_file and write_file throw on errors, allow text content only.




mp.msg functions
This module allows outputting messages to the terminal, and can be loaded with require 'mp.msg'.

msg.log(level, ...)
The level parameter is the message priority. It's a string and one of fatal, error, warn, info, v, debug, trace. The user's settings will determine which of these messages will be visible. Normally, all messages are visible, except v, debug and trace.

The parameters after that are all converted to strings. Spaces are inserted to separate multiple parameters.

You don't need to add newlines.

msg.fatal(...), msg.error(...), msg.warn(...), msg.info(...), msg.verbose(...),  msg.debug(...), msg.trace(...)
All of these are shortcuts and equivalent to the corresponding msg.log(level, ...) call.