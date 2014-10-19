(in-package :libuv.accessors)

(defmacro make-accessors (c-struct)
  `(progn
     ,@(loop for slot-name in (foreign-slot-names `(:struct ,(intern (string c-struct) :libuv)))
             for accessor-name = (intern (concatenate 'string (symbol-name c-struct)
                                                      "-"
                                                      (symbol-name slot-name)))
             append (list `(defmacro ,accessor-name (ptr)
 (list 'foreign-slot-value ptr ''(:struct ,(intern (string c-struct) :libuv)) '',slot-name))
                          `(export ',accessor-name :libuv.accessors)))))

(make-accessors #.(libuv::lispify "addrinfo" 'classname))
(make-accessors #.(libuv::lispify "sockaddr_in" 'classname))
(make-accessors #.(libuv::lispify "sockaddr_in6" 'classname))
(make-accessors #.(libuv::lispify "uv_buf_t_win" 'classname))
(make-accessors #.(libuv::lispify "uv__work" 'classname))
(make-accessors #.(libuv::lispify "uv__io_s" 'classname))
(make-accessors #.(libuv::lispify "uv__async" 'classname))
(make-accessors #.(libuv::lispify "uv_buf_t" 'classname))
(make-accessors #.(libuv::lispify "uv_lib_t" 'classname))
(make-accessors #.(libuv::lispify "uv_timespec_t" 'classname))
(make-accessors #.(libuv::lispify "uv_stat_t" 'classname))
(make-accessors #.(libuv::lispify "uv_req_s" 'classname))
(make-accessors #.(libuv::lispify "uv_shutdown_s" 'classname))
(make-accessors #.(libuv::lispify "uv_handle_s" 'classname))
(make-accessors #.(libuv::lispify "uv_stream_s" 'classname))
(make-accessors #.(libuv::lispify "uv_write_s" 'classname))
(make-accessors #.(libuv::lispify "uv_tcp_s" 'classname))
(make-accessors #.(libuv::lispify "uv_connect_s" 'classname))
(make-accessors #.(libuv::lispify "uv_udp_s" 'classname))
(make-accessors #.(libuv::lispify "uv_udp_send_s" 'classname))
(make-accessors #.(libuv::lispify "uv_tty_s" 'classname))
(make-accessors #.(libuv::lispify "uv_pipe_s" 'classname))
(make-accessors #.(libuv::lispify "uv_poll_s" 'classname))
(make-accessors #.(libuv::lispify "uv_prepare_s" 'classname))
(make-accessors #.(libuv::lispify "uv_check_s" 'classname))
(make-accessors #.(libuv::lispify "uv_idle_s" 'classname))
(make-accessors #.(libuv::lispify "uv_async_s" 'classname))
(make-accessors #.(libuv::lispify "uv_timer_s" 'classname))
(make-accessors #.(libuv::lispify "uv_getaddrinfo_s" 'classname))
(make-accessors #.(libuv::lispify "uv_getnameinfo_s" 'classname))
(make-accessors #.(libuv::lispify "uv_stdio_container_t" 'classname))
(make-accessors #.(libuv::lispify "uv_process_options_t" 'classname))
(make-accessors #.(libuv::lispify "uv_process_s" 'classname))
(make-accessors #.(libuv::lispify "uv_work_s" 'classname))
(make-accessors #.(libuv::lispify "uv_cpu_info_s" 'classname))
(make-accessors #.(libuv::lispify "uv_cpu_info_s_cpu_times_s" 'classname))
(make-accessors #.(libuv::lispify "uv_interface_address_s" 'classname))
(make-accessors #.(libuv::lispify "uv_dirent_s" 'classname))
(make-accessors #.(libuv::lispify "uv_timeval_t" 'classname))
(make-accessors #.(libuv::lispify "uv_rusage_t" 'classname))
(make-accessors #.(libuv::lispify "uv_fs_s" 'classname))
(make-accessors #.(libuv::lispify "uv_fs_event_s" 'classname))
(make-accessors #.(libuv::lispify "uv_fs_poll_s" 'classname))
(make-accessors #.(libuv::lispify "uv_signal_s" 'classname))
(make-accessors #.(libuv::lispify "uv_signal_s_tree_entry_s" 'classname))
(make-accessors #.(libuv::lispify "uv_loop_s" 'classname))
(make-accessors #.(libuv::lispify "uv_loop_s_timer_heap" 'classname))
