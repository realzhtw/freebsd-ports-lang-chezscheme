--- c/version.h.orig	2016-11-08 16:51:18.000000000 +0100
+++ c/version.h	2016-11-08 16:49:40.000000000 +0100
@@ -140,7 +140,7 @@
 #define NSECATIME(sb) (sb).st_atimespec.tv_nsec
 #define NSECCTIME(sb) (sb).st_ctimespec.tv_nsec
 #define NSECMTIME(sb) (sb).st_mtimespec.tv_nsec
-#define ICONV_INBUF_TYPE const char **
+#define ICONV_INBUF_TYPE char **
 #define UNUSED __attribute__((__unused__))
 #endif
 
