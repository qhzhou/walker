[33mcommit 6ebc807c7df45298951b7bba286fb0ad233ea9b9[m
Author: Zhou Qianhao <z.qianhao@gmail.com>
Date:   Mon Mar 26 15:11:43 2012 +0800

    new framework

[1mdiff --git a/.classpath b/.classpath[m
[1mnew file mode 100644[m
[1mindex 0000000..a4763d1[m
[1m--- /dev/null[m
[1m+++ b/.classpath[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<classpath>[m
[32m+[m	[32m<classpathentry kind="src" path="src"/>[m
[32m+[m	[32m<classpathentry kind="src" path="gen"/>[m
[32m+[m	[32m<classpathentry kind="con" path="com.android.ide.eclipse.adt.ANDROID_FRAMEWORK"/>[m
[32m+[m	[32m<classpathentry kind="con" path="com.android.ide.eclipse.adt.LIBRARIES"/>[m
[32m+[m	[32m<classpathentry kind="output" path="bin/classes"/>[m
[32m+[m[32m</classpath>[m
[1mdiff --git a/.project b/.project[m
[1mnew file mode 100644[m
[1mindex 0000000..f6e31f0[m
[1m--- /dev/null[m
[1m+++ b/.project[m
[36m@@ -0,0 +1,33 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<projectDescription>[m
[32m+[m	[32m<name>Walker</name>[m
[32m+[m	[32m<comment></comment>[m
[32m+[m	[32m<projects>[m
[32m+[m	[32m</projects>[m
[32m+[m	[32m<buildSpec>[m
[32m+[m		[32m<buildCommand>[m
[32m+[m			[32m<name>com.android.ide.eclipse.adt.ResourceManagerBuilder</name>[m
[32m+[m			[32m<arguments>[m
[32m+[m			[32m</arguments>[m
[32m+[m		[32m</buildCommand>[m
[32m+[m		[32m<buildCommand>[m
[32m+[m			[32m<name>com.android.ide.eclipse.adt.PreCompilerBuilder</name>[m
[32m+[m			[32m<arguments>[m
[32m+[m			[32m</arguments>[m
[32m+[m		[32m</buildCommand>[m
[32m+[m		[32m<buildCommand>[m
[32m+[m			[32m<name>org.eclipse.jdt.core.javabuilder</name>[m
[32m+[m			[32m<arguments>[m
[32m+[m			[32m</arguments>[m
[32m+[m		[32m</buildCommand>[m
[32m+[m		[32m<buildCommand>[m
[32m+[m			[32m<name>com.android.ide.eclipse.adt.ApkBuilder</name>[m
[32m+[m			[32m<arguments>[m
[32m+[m			[32m</arguments>[m
[32m+[m		[32m</buildCommand>[m
[32m+[m	[32m</buildSpec>[m
[32m+[m	[32m<natures>[m
[32m+[m		[32m<nature>com.android.ide.eclipse.adt.AndroidNature</nature>[m
[32m+[m		[32m<nature>org.eclipse.jdt.core.javanature</nature>[m
[32m+[m	[32m</natures>[m
[32m+[m[32m</projectDescription>[m
[1mdiff --git a/AndroidManifest.xml b/AndroidManifest.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..d0fc30a[m
[1m--- /dev/null[m
[1m+++ b/AndroidManifest.xml[m
[36m@@ -0,0 +1,32 @@[m
[32m+[m[32m<?xml version="1.0" encoding="utf-8"?>[m
[32m+[m[32m<manifest xmlns:android="http://schemas.android.com/apk/res/android"[m
[32m+[m[32m    package="com.ricelake.walker"[m
[32m+[m[32m    android:versionCode="1"[m
[32m+[m[32m    android:versionName="1.0" >[m
[32m+[m
[32m+[m[32m    <uses-sdk android:minSdkVersion="15" />[m
[32m+[m
[32m+[m[32m    <application[m
[32m+[m[32m        android:debuggable="true"[m
[32m+[m[32m        android:icon="@drawable/icon"[m
[32m+[m[32m        android:label="@string/app_name" >[m
[32m+[m[32m        <activity[m
[32m+[m[32m            android:name=".module.splash.SplashController"[m
[32m+[m[32m            android:label="@string/app_name"[m
[32m+[m[32m            android:theme="@android:style/Theme.NoTitleBar.Fullscreen" >[m
[32m+[m[32m            <intent-filter>[m
[32m+[m[32m                <action android:name="android.intent.action.MAIN" />[m
[32m+[m
[32m+[m[32m                <category android:name="android.intent.category.LAUNCHER" />[m
[32m+[m[32m            </intent-filter>[m
[32m+[m[32m        </activity>[m
[32m+[m[32m        <activity[m
[32m+[m[32m            android:name=".module.login.LoginController"[m
[32m+[m[32m            android:theme="@android:style/Theme.NoTitleBar.OverlayActionModes" >[m
[32m+[m[32m            <intent-filter>[m
[32m+[m[32m                <category android:name="android.intent.category.LAUNCHER" />[m
[32m+[m[32m            </intent-filter>[m
[32m+[m[32m        </activity>[m
[32m+[m[32m    </application>[m
[32m+[m
[32m+[m[32m</manifest>[m
\ No newline at end of file[m
[1mdiff --git a/bin/Walker.apk b/bin/Walker.apk[m
[1mnew file mode 100644[m
[1mindex 0000000..e76f8df[m
Binary files /dev/null and b/bin/Walker.apk differ
[1mdiff --git a/bin/classes.dex b/bin/classes.dex[m
[1mnew file mode 100644[m
[1mindex 0000000..5aaabc7[m
Binary files /dev/null and b/bin/classes.dex differ
[1mdiff --git a/bin/classes/com/ricelake/walker/R$MvcConstants.class b/bin/classes/com/ricelake/walker/R$MvcConstants.class[m
[1mnew file mode 100644[m
[1mindex 0000000..9b7a5dc[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/R$MvcConstants.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/R$attr.class b/bin/classes/com/ricelake/walker/R$attr.class[m
[1mnew file mode 100644[m
[1mindex 0000000..8490d4e[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/R$attr.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/R$drawable.class b/bin/classes/com/ricelake/walker/R$drawable.class[m
[1mnew file mode 100644[m
[1mindex 0000000..ca317b1[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/R$drawable.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/R$id.class b/bin/classes/com/ricelake/walker/R$id.class[m
[1mnew file mode 100644[m
[1mindex 0000000..b7e1acd[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/R$id.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/R$layout.class b/bin/classes/com/ricelake/walker/R$layout.class[m
[1mnew file mode 100644[m
[1mindex 0000000..090657b[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/R$layout.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/R$string.class b/bin/classes/com/ricelake/walker/R$string.class[m
[1mnew file mode 100644[m
[1mindex 0000000..05af8a5[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/R$string.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/R.class b/bin/classes/com/ricelake/walker/R.class[m
[1mnew file mode 100644[m
[1mindex 0000000..fe79a05[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/R.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/log/Logger.class b/bin/classes/com/ricelake/walker/log/Logger.class[m
[1mnew file mode 100644[m
[1mindex 0000000..51f2966[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/log/Logger.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/module/login/LoginController.class b/bin/classes/com/ricelake/walker/module/login/LoginController.class[m
[1mnew file mode 100644[m
[1mindex 0000000..41ddd42[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/module/login/LoginController.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/module/login/LoginModel.class b/bin/classes/com/ricelake/walker/module/login/LoginModel.class[m
[1mnew file mode 100644[m
[1mindex 0000000..037934e[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/module/login/LoginModel.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/module/login/LoginView.class b/bin/classes/com/ricelake/walker/module/login/LoginView.class[m
[1mnew file mode 100644[m
[1mindex 0000000..990b3ce[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/module/login/LoginView.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/module/splash/SplashController.class b/bin/classes/com/ricelake/walker/module/splash/SplashController.class[m
[1mnew file mode 100644[m
[1mindex 0000000..af3de70[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/module/splash/SplashController.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/module/splash/SplashModel.class b/bin/classes/com/ricelake/walker/module/splash/SplashModel.class[m
[1mnew file mode 100644[m
[1mindex 0000000..e0385e6[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/module/splash/SplashModel.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/module/splash/SplashView.class b/bin/classes/com/ricelake/walker/module/splash/SplashView.class[m
[1mnew file mode 100644[m
[1mindex 0000000..054115f[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/module/splash/SplashView.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/mvc/AbstractController.class b/bin/classes/com/ricelake/walker/mvc/AbstractController.class[m
[1mnew file mode 100644[m
[1mindex 0000000..dbd65b7[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/mvc/AbstractController.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/mvc/AbstractModel.class b/bin/classes/com/ricelake/walker/mvc/AbstractModel.class[m
[1mnew file mode 100644[m
[1mindex 0000000..1c42803[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/mvc/AbstractModel.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/mvc/AbstractMvcDispatcher.class b/bin/classes/com/ricelake/walker/mvc/AbstractMvcDispatcher.class[m
[1mnew file mode 100644[m
[1mindex 0000000..a59b9d8[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/mvc/AbstractMvcDispatcher.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/mvc/AbstractView.class b/bin/classes/com/ricelake/walker/mvc/AbstractView.class[m
[1mnew file mode 100644[m
[1mindex 0000000..6838cab[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/mvc/AbstractView.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/mvc/DataForm.class b/bin/classes/com/ricelake/walker/mvc/DataForm.class[m
[1mnew file mode 100644[m
[1mindex 0000000..ae09f39[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/mvc/DataForm.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/mvc/IMvcConstants.class b/bin/classes/com/ricelake/walker/mvc/IMvcConstants.class[m
[1mnew file mode 100644[m
[1mindex 0000000..cc038ac[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/mvc/IMvcConstants.class differ
[1mdiff --git a/bin/classes/com/ricelake/walker/mvc/IMvcDispatcherListener.class b/bin/classes/com/ricelake/walker/mvc/IMvcDispatcherListener.class[m
[1mnew file mode 100644[m
[1mindex 0000000..c644bd7[m
Binary files /dev/null and b/bin/classes/com/ricelake/walker/mvc/IMvcDispatcherListener.class differ
[1mdiff --git a/bin/res/drawable-hdpi/icon.png b/bin/res/drawable-hdpi/icon.png[m
[1mnew file mode 100644[m
[1mindex 0000000..882eb14[m
Binary files /dev/null and b/bin/res/drawable-hdpi/icon.png differ
[1mdiff --git a/bin/res/drawable-ldpi/icon.png b/bin/res/drawable-ldpi/icon.png[m
[1mnew file mode 100644[m
[1mindex 0000000..18689f6[m
Binary files /dev/null and b/bin/res/drawable-ldpi/icon.png differ
[1mdiff --git a/bin/res/drawable-mdpi/icon.png b/bin/res/drawable-mdpi/icon.png[m
[1mnew file mode 100644[m
[1mindex 0000000..02e96b9[m
Binary files /dev/null and b/bin/res/drawable-mdpi/icon.png differ
[1mdiff --git a/bin/res/drawable/splash_logo_portrait.png b/bin/res/drawable/splash_logo_portrait.png[m
[1mnew file mode 100644[m
[1mindex 0000000..15286c9[m
Binary files /dev/null and b/bin/res/drawable/splash_logo_portrait.png differ
[1mdiff --git a/bin/resources.ap_ b/bin/resources.ap_[m
[1mnew file mode 100644[m
[1mindex 0000000..6849a40[m
Binary files /dev/null and b/bin/resources.ap_ differ
[1mdiff --git a/gen/com/ricelake/walker/R.java b/gen/com/ricelake/walker/R.java[m
[1mnew file mode 100644[m
[1mindex 0000000..e751d2f[m
[1m--- /dev/null[m
[1m+++ b/gen/com/ricelake/walker/R.java[m
[36m@@ -0,0 +1,40 @@[m
[32m+[m[32m/* AUTO-GENERATED FILE.  DO NOT MODIFY.[m
[32m+[m[32m *[m
[32m+[m[32m * This class was automatically generated by the[m
[32m+[m[32m * aapt tool from the resource data it found.  It[m
[32m+[m[32m * should not be modified by hand.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32mpackage com.ricelake.walker;[m
[32m+[m
[32m+[m[32mpublic final class R {[m
[32m+[m[32m    public static final class MvcConstants {[m
[32m+[m[32m        public static final int CONTROLLER_MAIN=0x7f040000;[m
[32m+[m[32m    }[m
[32m+[m[32m    public static final class attr {[m
[32m+[m[32m    }[m
[32m+[m[32m    public static final class drawable {[m
[32m+[m[32m        public static final int icon=0x7f020000;[m
[32m+[m[32m        public static final int splash_logo_portrait=0x7f020001;[m
[32m+[m[32m    }[m
[32m+[m[32m    public static final class id {[m
[32m+[m[32m        public static final int imageView1=0x7f060009;[m
[32m+[m[32m        public static final int linearLayout1=0x7f060000;[m
[32m+[m[32m        public static final int linearLayout2=0x7f060003;[m
[32m+[m[32m        public static final int linearLayout3=0x7f060006;[m
[32m+[m[32m        public static final int login=0x7f060007;[m
[32m+[m[32m        public static final int password=0x7f060005;[m
[32m+[m[32m        public static final int register=0x7f060008;[m
[32m+[m[32m        public static final int textView1=0x7f060001;[m
[32m+[m[32m        public static final int textView2=0x7f060004;[m
[32m+[m[32m        public static final int username=0x7f060002;[m
[32m+[m[32m    }[m
[32m+[m[32m    public static final class layout {[m
[32m+[m[32m        public static final int login=0x7f030000;[m
[32m+[m[32m        public static final int splash=0x7f030001;[m
[32m+[m[32m    }[m
[32m+[m[32m    public static final class string {[m
[32m+[m[32m        public static final int app_name=0x7f050001;[m
[32m+[m[32m        public static final int hello=0x7f050000;[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/project.properties b/project.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..8da376a[m
[1m--- /dev/null[m
[1m+++ b/project.properties[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32m# This file is automatically generated by Android Tools.[m
[32m+[m[32m# Do not modify this file -- YOUR CHANGES WILL BE ERASED![m
[32m+[m[32m#[m
[32m+[m[32m# This file must be checked in Version Control Systems.[m
[32m+[m[32m#[m
[32m+[m[32m# To customize properties used by the Ant build system use,[m
[32m+[m[32m# "ant.properties", and override values to adapt the script to your[m
[32m+[m[32m# project structure.[m
[32m+[m
[32m+[m[32m# Project target.[m
[32m+[m[32mtarget=android-15[m
[1mdiff --git a/res/drawable-hdpi/icon.png b/res/drawable-hdpi/icon.png[m
[1mnew file mode 100644[m
[1mindex 0000000..8074c4c[m
Binary files /dev/null and b/res/drawable-hdpi/icon.png differ
[1mdiff --git a/res/drawable-ldpi/icon.png b/res/drawable-ldpi/icon.png[m
[1mnew file mode 100644[m
[1mindex 0000000..1095584[m
Binary files /dev/null and b/res/drawable-ldpi/icon.png differ
[1mdiff --git a/res/drawable-mdpi/icon.png b/res/drawable-mdpi/icon.png[m
[1mnew file mode 100644[m
[1mindex 0000000..a07c69f[m
Binary files /dev/null and b/res/drawable-mdpi/icon.png differ
[1mdiff --git a/res/drawable/splash_logo_portrait.png b/res/drawable/splash_logo_portrait.png[m
[1mnew file mode 100644[m
[1mindex 0000000..319ace3[m
Binary files /dev/null and b/res/drawable/splash_logo_portrait.png differ
[1mdiff --git a/res/layout/login.xml b/res/layout/login.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..be0300a[m
[1m--- /dev/null[m
[1m+++ b/res/layout/login.xml[m
[36m@@ -0,0 +1,18 @@[m
[32m+[m[32m<?xml version="1.0" encoding="utf-8"?>[m
[32m+[m[32m<LinearLayout[m
[32m+[m[32m  xmlns:android="http://schemas.android.com/apk/res/android"[m
[32m+[m[32m  android:layout_width="match_parent"[m
[32m+[m[32m  android:layout_height="match_parent" android:orientation="vertical">[m
[32m+[m[32m    <LinearLayout android:layout_height="wrap_content" android:id="@+id/linearLayout1" android:layout_width="match_parent">[m
[32m+[m[32m        <TextView android:text="UserName:" android:id="@+id/textView1" android:layout_width="wrap_content" android:layout_height="wrap_content"></TextView>[m
[32m+[m[32m        <EditText android:layout_height="wrap_content" android:tag="DataForm" android:id="@+id/username" android:layout_width="wrap_content" android:text="EditText"></EditText>[m
[32m+[m[32m    </LinearLayout>[m
[32m+[m[32m    <LinearLayout android:layout_height="wrap_content" android:id="@+id/linearLayout2" android:layout_width="match_parent">[m
[32m+[m[32m        <TextView android:text="PassWord:" android:id="@+id/textView2" android:layout_width="wrap_content" android:layout_height="wrap_content"></TextView>[m
[32m+[m[32m        <EditText android:layout_height="wrap_content" android:tag="DataForm" android:id="@+id/password" android:layout_width="wrap_content" android:text="EditText"></EditText>[m
[32m+[m[32m    </LinearLayout>[m
[32m+[m[32m    <LinearLayout android:layout_height="wrap_content" android:id="@+id/linearLayout3" android:layout_width="match_parent">[m
[32m+[m[32m        <Button android:id="@+id/login" android:onClick="dispatchMvcEvent" android:text="Login" android:layout_height="wrap_content" android:layout_width="wrap_content"></Button>[m
[32m+[m[32m        <Button android:id="@+id/register" android:onClick="dispatchMvcEvent" android:text="Register" android:layout_height="wrap_content" android:layout_width="wrap_content"></Button>[m
[32m+[m[32m    </LinearLayout>[m
[32m+[m[32m</LinearLayout>[m
[1mdiff --git a/res/layout/splash.xml b/res/layout/splash.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..4f20a16[m
[1m--- /dev/null[m
[1m+++ b/res/layout/splash.xml[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m<?xml version="1.0" encoding="utf-8"?>[m
[32m+[m[32m<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"[m
[32m+[m	[32mandroid:orientation="vertical" android:layout_width="fill_parent"[m
[32m+[m	[32mandroid:layout_height="fill_parent">[m
[32m+[m[32m    <ImageView android:id="@+id/imageView1" android:layout_height="wrap_content" android:src="@drawable/splash_logo_portrait" android:layout_width="wrap_content"></ImageView>[m
[32m+[m[32m</LinearLayout>[m
[1mdiff --git a/res/values/MvcConstants.xml b/res/values/MvcConstants.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..8afa263[m
[1m--- /dev/null[m
[1m+++ b/res/values/MvcConstants.xml[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32m<?xml version="1.0" encoding="utf-8"?>[m
[32m+[m[32m<resources>[m
[32m+[m	[32m<item type="MvcConstants" name="CONTROLLER_MAIN"/>[m
[32m+[m[32m</resources>[m
[1mdiff --git a/res/values/strings.xml b/res/values/strings.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..ab3a33a[m
[1m--- /dev/null[m
[1m+++ b/res/values/strings.xml[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m<?xml version="1.0" encoding="utf-8"?>[m
[32m+[m[32m<resources>[m
[32m+[m
[32m+[m[32m    <string name="hello">Hello World, WalkerActivity!</string>[m
[32m+[m[32m    <string name="app_name">Walker</string>[m
[32m+[m
[32m+[m[32m</resources>[m
\ No newline at end of file[m
[1mdiff --git a/src/com/ricelake/walker/log/Logger.java b/src/com/ricelake/walker/log/Logger.java[m
[1mnew file mode 100644[m
[1mindex 0000000..d6d31e0[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/log/Logger.java[m
[36m@@ -0,0 +1,31 @@[m
[32m+[m[32mpackage com.ricelake.walker.log;[m
[32m+[m
[32m+[m[32mimport java.util.Map;[m
[32m+[m
[32m+[m[32mimport android.util.Log;[m
[32m+[m
[32m+[m[32mpublic class Logger[m
[32m+[m[32m{[m
[32m+[m[32m    public static final int DEBUG = 5;[m
[32m+[m
[32m+[m[32m    public static final int INFO = 6;[m
[32m+[m
[32m+[m[32m    public static final int WARN = 7;[m
[32m+[m
[32m+[m[32m    public static final int ERROR = 8;[m
[32m+[m
[32m+[m[32m    public static void log(int level, Class<?> z, String message)[m
[32m+[m[32m    {[m
[32m+[m[32m        log(level, z, message, null, null);[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static void log(int level, Class<?> z, String message, Throwable t)[m
[32m+[m[32m    {[m
[32m+[m[32m        log(level, z, message, t, null);[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static void log(int level, Class<?> z, String message, Throwable t, Map<String, ?> params)[m
[32m+[m[32m    {[m
[32m+[m[32m        Log.i("test", message);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/com/ricelake/walker/module/login/LoginController.java b/src/com/ricelake/walker/module/login/LoginController.java[m
[1mnew file mode 100644[m
[1mindex 0000000..3f7a5ef[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/module/login/LoginController.java[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32mpackage com.ricelake.walker.module.login;[m
[32m+[m
[32m+[m[32mimport android.view.Window;[m
[32m+[m
[32m+[m[32mimport com.ricelake.walker.mvc.AbstractController;[m
[32m+[m[32mimport com.ricelake.walker.mvc.DataForm;[m
[32m+[m
[32m+[m[32mpublic class LoginController extends AbstractController[m
[32m+[m[32m{[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    protected void setup(DataForm<String, Object> dataForm)[m
[32m+[m[32m    {[m
[32m+[m[32m        this.model = new LoginModel();[m
[32m+[m[32m        this.view = new LoginView();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    protected boolean doControl(String action)[m
[32m+[m[32m    {[m
[32m+[m[32m        // TODO Auto-generated method stub[m
[32m+[m[32m        return false;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m}[m
[1mdiff --git a/src/com/ricelake/walker/module/login/LoginModel.java b/src/com/ricelake/walker/module/login/LoginModel.java[m
[1mnew file mode 100644[m
[1mindex 0000000..6afe548[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/module/login/LoginModel.java[m
[36m@@ -0,0 +1,18 @@[m
[32m+[m[32mpackage com.ricelake.walker.module.login;[m
[32m+[m
[32m+[m[32mimport com.ricelake.walker.R;[m
[32m+[m[32mimport com.ricelake.walker.mvc.AbstractModel;[m
[32m+[m
[32m+[m[32mpublic class LoginModel extends AbstractModel[m
[32m+[m[32m{[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public boolean doAction(String action)[m
[32m+[m[32m    {[m
[32m+[m[32m        if (action.equals(ACTION_PREFIX_VIEW_EVENT_CLICK + R.id.login))[m
[32m+[m[32m        {[m
[32m+[m[32m            //start network request...[m
[32m+[m[32m        }[m
[32m+[m[32m        return false;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m}[m
[1mdiff --git a/src/com/ricelake/walker/module/login/LoginView.java b/src/com/ricelake/walker/module/login/LoginView.java[m
[1mnew file mode 100644[m
[1mindex 0000000..d4a65aa[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/module/login/LoginView.java[m
[36m@@ -0,0 +1,47 @@[m
[32m+[m[32mpackage com.ricelake.walker.module.login;[m
[32m+[m
[32m+[m[32mimport java.io.File;[m
[32m+[m
[32m+[m[32mimport android.app.ProgressDialog;[m
[32m+[m[32mimport android.view.View;[m
[32m+[m[32mimport android.widget.Toast;[m
[32m+[m
[32m+[m[32mimport com.ricelake.walker.R;[m
[32m+[m[32mimport com.ricelake.walker.mvc.AbstractView;[m
[32m+[m
[32m+[m
[32m+[m[32mpublic class LoginView extends AbstractView[m
[32m+[m[32m{[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public boolean handleUiEvent(String action, View view)[m
[32m+[m[32m    {[m
[32m+[m[41m        [m
[32m+[m[32m        switch(view.getId())[m
[32m+[m[32m        {[m
[32m+[m[32m            case R.id.login:[m
[32m+[m[32m            {[m
[32m+[m[32m//                TextView tv = (TextView)activity.findViewById(R.id.textView1);[m
[32m+[m[32m//                tv.setEnabled(false);[m
[32m+[m[32m//[m[41m                [m
[32m+[m[32m//                Button b = (Button)view;[m
[32m+[m[32m//                b.setTextColor(0xffFF00FF);[m
[32m+[m[32m//[m[41m                [m
[32m+[m[32m//                ProgressDialog pd = new ProgressDialog(this.activity);[m
[32m+[m[32m//                pd.setTitle(this.dataForm.getString(R.id.username + "") + ", " + this.dataForm.getString(R.id.password + ""));[m
[32m+[m[32m//                pd.show();[m
[32m+[m[41m            [m	[32mFile file = new File("/data/data/com.telenav.app.android.cingular_tablet/cache");[m
[32m+[m[41m            	[m
[32m+[m[41m            [m	[32mToast.makeText(activity,  file.exists() + " " + file.isDirectory(), 0).show();[m
[32m+[m[32m                break;[m
[32m+[m[32m            }[m
[32m+[m[32m            case R.id.register:[m
[32m+[m[32m            {[m
[32m+[m[32m                ProgressDialog pd = new ProgressDialog(this.activity);[m
[32m+[m[32m                pd.show();[m
[32m+[m[32m                break;[m
[32m+[m[32m            }[m
[32m+[m[32m        }[m
[32m+[m[32m        return false;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m}[m
[1mdiff --git a/src/com/ricelake/walker/module/splash/SplashController.java b/src/com/ricelake/walker/module/splash/SplashController.java[m
[1mnew file mode 100644[m
[1mindex 0000000..0e0afc5[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/module/splash/SplashController.java[m
[36m@@ -0,0 +1,67 @@[m
[32m+[m[32mpackage com.ricelake.walker.module.splash;[m
[32m+[m
[32m+[m[32mimport android.content.Intent;[m
[32m+[m[32mimport android.os.Bundle;[m
[32m+[m[32mimport android.view.Window;[m
[32m+[m
[32m+[m[32mimport com.ricelake.walker.R;[m
[32m+[m[32mimport com.ricelake.walker.module.login.LoginController;[m
[32m+[m[32mimport com.ricelake.walker.mvc.AbstractController;[m
[32m+[m[32mimport com.ricelake.walker.mvc.DataForm;[m
[32m+[m
[32m+[m
[32m+[m[32mpublic class SplashController extends AbstractController implements Runnable[m
[32m+[m[32m{[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    protected void onCreate(Bundle savedInstanceState)[m
[32m+[m[32m    {[m
[32m+[m[32m        requestWindowFeature(Window.FEATURE_NO_TITLE);[m
[32m+[m[41m        [m
[32m+[m[32m        super.onCreate(savedInstanceState);[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    @Override[m
[32m+[m[32m    protected void setup(DataForm<String, Object> dataForm)[m
[32m+[m[32m    {[m
[32m+[m[32m        this.model = new SplashModel();[m
[32m+[m[32m        this.view = new SplashView();[m
[32m+[m[41m        [m
[32m+[m[32m        Thread t = new Thread(this);[m
[32m+[m[32m        t.start();[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    @Override[m
[32m+[m[32m    protected boolean doControl(String action)[m
[32m+[m[32m    {[m
[32m+[m[32m        if (action.equals(ACTION_PREFIX_CONTROLLER + R.MvcConstants.CONTROLLER_MAIN))[m
[32m+[m[32m        {[m
[32m+[m[32m            Intent i = new Intent();[m
[32m+[m[32m            i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);[m
[32m+[m[32m            i.setClass(this, LoginController.class);[m
[32m+[m[32m            this.startActivity(i);[m
[32m+[m[32m            this.finish();[m
[32m+[m[32m            return true;[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        return false;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    @Override[m
[32m+[m[32m    public void run()[m
[32m+[m[32m    {[m
[32m+[m[32m        synchronized (this)[m
[32m+[m[32m        {[m
[32m+[m[32m            try[m
[32m+[m[32m            {[m
[32m+[m[32m                this.wait(2500);[m
[32m+[m[41m                [m
[32m+[m[32m                this.postControllerEvent(R.MvcConstants.CONTROLLER_MAIN);[m
[32m+[m[32m            }[m
[32m+[m[32m            catch (InterruptedException e)[m
[32m+[m[32m            {[m
[32m+[m[32m                e.printStackTrace();[m
[32m+[m[32m            }[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/src/com/ricelake/walker/module/splash/SplashModel.java b/src/com/ricelake/walker/module/splash/SplashModel.java[m
[1mnew file mode 100644[m
[1mindex 0000000..ccb7ce2[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/module/splash/SplashModel.java[m
[36m@@ -0,0 +1,14 @@[m
[32m+[m[32mpackage com.ricelake.walker.module.splash;[m
[32m+[m
[32m+[m[32mimport com.ricelake.walker.mvc.AbstractModel;[m
[32m+[m
[32m+[m[32mpublic class SplashModel extends AbstractModel[m
[32m+[m[32m{[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public boolean doAction(String action)[m
[32m+[m[32m    {[m
[32m+[m[32m        // TODO Auto-generated method stub[m
[32m+[m[32m        return false;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m}[m
[1mdiff --git a/src/com/ricelake/walker/module/splash/SplashView.java b/src/com/ricelake/walker/module/splash/SplashView.java[m
[1mnew file mode 100644[m
[1mindex 0000000..770c7a0[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/module/splash/SplashView.java[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32mpackage com.ricelake.walker.module.splash;[m
[32m+[m
[32m+[m[32mimport android.view.View;[m
[32m+[m
[32m+[m[32mimport com.ricelake.walker.mvc.AbstractView;[m
[32m+[m
[32m+[m[32mpublic class SplashView extends AbstractView[m
[32m+[m[32m{[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public boolean handleUiEvent(String action, View view)[m
[32m+[m[32m    {[m
[32m+[m[32m        // TODO Auto-generated method stub[m
[32m+[m[32m        return false;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m}[m
[1mdiff --git a/src/com/ricelake/walker/mvc/AbstractController.java b/src/com/ricelake/walker/mvc/AbstractController.java[m
[1mnew file mode 100644[m
[1mindex 0000000..a43d0c6[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/mvc/AbstractController.java[m
[36m@@ -0,0 +1,201 @@[m
[32m+[m[32mpackage com.ricelake.walker.mvc;[m
[32m+[m
[32m+[m[32mimport java.lang.reflect.Field;[m
[32m+[m
[32m+[m[32mimport android.app.Activity;[m
[32m+[m[32mimport android.content.Intent;[m
[32m+[m[32mimport android.os.Bundle;[m
[32m+[m[32mimport android.view.View;[m
[32m+[m[32mimport android.view.ViewGroup;[m
[32m+[m[32mimport android.widget.TextView;[m
[32m+[m
[32m+[m[32mimport com.ricelake.walker.R;[m
[32m+[m[32mimport com.ricelake.walker.log.Logger;[m
[32m+[m
[32m+[m
[32m+[m[32mpublic abstract class AbstractController extends Activity implements IMvcConstants, IMvcDispatcherListener[m
[32m+[m[32m{[m
[32m+[m[32m    protected AbstractModel model;[m
[32m+[m
[32m+[m[32m    protected AbstractView view;[m
[32m+[m
[32m+[m[32m    protected DataForm<String, Object> dataForm;[m
[32m+[m
[32m+[m[32m    public AbstractController()[m
[32m+[m[32m    {[m
[32m+[m[32m        dataForm = new DataForm<String, Object>();[m
[32m+[m
[32m+[m[32m        setup(dataForm);[m
[32m+[m
[32m+[m[32m        if (view == null && model == null)[m
[32m+[m[32m        {[m
[32m+[m[32m            throw new IllegalStateException("setup failed... view and model are both empty...");[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        if(view != null)[m
[32m+[m[32m        {[m
[32m+[m[32m            view.dataForm = dataForm;[m
[32m+[m[32m            view.activity = this;[m
[32m+[m[32m            view.dispatcherListener = this;[m
[32m+[m[32m        }[m
[32m+[m[41m        [m
[32m+[m[32m        if(model != null)[m
[32m+[m[32m        {[m
[32m+[m[32m            model.dataForm = dataForm;[m
[32m+[m[32m            model.dispatcherListener = this;[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    protected void onCreate(Bundle savedInstanceState)[m
[32m+[m[32m    {[m
[32m+[m[32m        Logger.log(Logger.INFO, this.getClass(), "---onCreate---");[m
[32m+[m[41m        [m
[32m+[m[32m        super.onCreate(savedInstanceState);[m
[32m+[m
[32m+[m[32m        try[m
[32m+[m[32m        {[m
[32m+[m[32m            String className = this.getClass().getName();[m
[32m+[m[32m            String layoutName = className.substring(className.lastIndexOf(".") + 1, className.indexOf("Controller")).toLowerCase();[m
[32m+[m
[32m+[m[32m            Logger.log(Logger.INFO, this.getClass(), "layout name: " + layoutName);[m
[32m+[m
[32m+[m[32m            Field f = R.layout.class.getDeclaredField(layoutName);[m
[32m+[m[32m            int value = f.getInt(null);[m
[32m+[m
[32m+[m[32m            this.setContentView(value);[m
[32m+[m[32m        }[m
[32m+[m[32m        catch (Exception e)[m
[32m+[m[32m        {[m
[32m+[m[32m            Logger.log(Logger.ERROR, this.getClass(), "init controller failed...", e);[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    @Override[m
[32m+[m[32m    protected void onStart()[m
[32m+[m[32m    {[m
[32m+[m[32m        Logger.log(Logger.INFO, this.getClass(), "---onStart---");[m
[32m+[m[41m        [m
[32m+[m[32m        super.onStart();[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    @Override[m
[32m+[m[32m    protected void onResume()[m
[32m+[m[32m    {[m
[32m+[m[32m        Logger.log(Logger.INFO, this.getClass(), "---onResume---");[m
[32m+[m[41m        [m
[32m+[m[32m        super.onResume();[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    @Override[m
[32m+[m[32m    protected void onPause()[m
[32m+[m[32m    {[m
[32m+[m[32m        Logger.log(Logger.INFO, this.getClass(), "---onPause---");[m
[32m+[m[41m        [m
[32m+[m[32m        super.onPause();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    protected void onStop()[m
[32m+[m[32m    {[m
[32m+[m[32m        Logger.log(Logger.INFO, this.getClass(), "---onStop---");[m
[32m+[m[41m        [m
[32m+[m[32m        super.onStop();[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    @Override[m
[32m+[m[32m    protected void onDestroy()[m
[32m+[m[32m    {[m
[32m+[m[32m        Logger.log(Logger.INFO, this.getClass(), "---onDestroy---");[m
[32m+[m[41m        [m
[32m+[m[32m        super.onDestroy();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public void startActivityForResult(Intent intent, int requestCode)[m
[32m+[m[32m    {[m
[32m+[m[32m        boolean isFromDoControl = false;[m
[32m+[m[32m        StackTraceElement[] elements = Thread.currentThread().getStackTrace();[m
[32m+[m[32m        for(StackTraceElement element : elements)[m
[32m+[m[32m        {[m
[32m+[m[41m        [m	[32m//if the code is obfuscated, then what?[m
[32m+[m[32m            if ("doControl".equals(element.getMethodName()))[m
[32m+[m[32m            {[m
[32m+[m[32m                isFromDoControl = true;[m
[32m+[m[32m                break;[m
[32m+[m[32m            }[m
[32m+[m[32m        }[m
[32m+[m[41m        [m
[32m+[m[32m        if(!isFromDoControl)[m
[32m+[m[32m        {[m
[32m+[m[32m            throw new IllegalStateException("startActivity() need be invoked from doControl() method.");[m
[32m+[m[32m        }[m
[32m+[m[41m        [m
[32m+[m[32m        super.startActivityForResult(intent, requestCode);[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    protected abstract void setup(DataForm<String, Object> dataForm);[m
[32m+[m
[32m+[m[32m    public final void dispatchMvcEvent(View v)[m
[32m+[m[32m    {[m
[32m+[m[41m    [m	[32mif (model.needPrefillDataForm()) {[m
[32m+[m[41m    [m		[32mprefillDataForm(v.getRootView());[m
[32m+[m[41m    [m	[32m}[m
[32m+[m[41m        [m
[32m+[m[32m        this.dispatchEvent(ACTION_PREFIX_VIEW_EVENT_CLICK + v.getId(), v);[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public final void dispatchMvcEvent(String event)[m
[32m+[m[32m    {[m
[32m+[m[32m        dispatchEvent(event, null);[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    final void dispatchEvent(String event, View v)[m
[32m+[m[32m    {[m
[32m+[m[32m        boolean isHandled = view.handleUiEvent(event, v);[m
[32m+[m
[32m+[m[32m        if (!isHandled)[m
[32m+[m[32m        {[m
[32m+[m[32m            isHandled = model.doAction(event);[m
[32m+[m[32m        }[m
[32m+[m[41m        [m
[32m+[m[32m        if (!isHandled)[m
[32m+[m[32m        {[m
[32m+[m[32m            isHandled = doControl(event);[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    protected void postControllerEvent(int viewEvent)[m
[32m+[m[32m    {[m
[32m+[m[32m        this.dispatchMvcEvent(ACTION_PREFIX_CONTROLLER + viewEvent);[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    protected abstract boolean doControl(String action);[m
[32m+[m[41m    [m
[32m+[m[32m    protected void prefillDataForm(View v)[m
[32m+[m[32m    {[m
[32m+[m[32m        if(!(v instanceof ViewGroup))[m
[32m+[m[32m        {[m
[32m+[m[41m        [m	[32m//if v is a TextView, this will skip the pre-filling[m[41m [m
[32m+[m[32m            return;[m
[32m+[m[32m        }[m
[32m+[m[41m        [m
[32m+[m[32m        ViewGroup vg = (ViewGroup)v;[m
[32m+[m[41m        [m
[32m+[m[32m        for (int i = vg.getChildCount() - 1; i >= 0; i--)[m
[32m+[m[32m        {[m
[32m+[m[32m            View child = vg.getChildAt(i);[m
[32m+[m[32m            if (child instanceof TextView)[m
[32m+[m[32m            {[m
[32m+[m[32m                if (child.getTag() != null && "dataform".equals(child.getTag().toString().toLowerCase()))[m
[32m+[m[32m                {[m
[32m+[m[32m                    this.dataForm.put(child.getId() + "", ((TextView) child).getText());[m
[32m+[m[32m                }[m
[32m+[m[32m            }[m
[32m+[m[32m            else[m
[32m+[m[32m            {[m
[32m+[m[32m                prefillDataForm(child);[m
[32m+[m[32m            }[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/com/ricelake/walker/mvc/AbstractModel.java b/src/com/ricelake/walker/mvc/AbstractModel.java[m
[1mnew file mode 100644[m
[1mindex 0000000..1a606b0[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/mvc/AbstractModel.java[m
[36m@@ -0,0 +1,18 @@[m
[32m+[m[32mpackage com.ricelake.walker.mvc;[m
[32m+[m
[32m+[m[32mpublic abstract class AbstractModel extends AbstractMvcDispatcher[m
[32m+[m[32m{[m
[32m+[m[32m    protected DataForm<String, ?> dataForm;[m
[32m+[m
[32m+[m[32m    protected boolean needPrefillDataForm()[m
[32m+[m[32m    {[m
[32m+[m[32m        return true;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    protected abstract boolean doAction(String action);[m
[32m+[m[41m    [m
[32m+[m[32m    protected void postModelEvent(int modelEvent)[m
[32m+[m[32m    {[m
[32m+[m[32m        this.dispatchEvent(ACTION_PREFIX_MODEL + modelEvent);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/com/ricelake/walker/mvc/AbstractMvcDispatcher.java b/src/com/ricelake/walker/mvc/AbstractMvcDispatcher.java[m
[1mnew file mode 100644[m
[1mindex 0000000..0df7b3d[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/mvc/AbstractMvcDispatcher.java[m
[36m@@ -0,0 +1,43 @@[m
[32m+[m[32mpackage com.ricelake.walker.mvc;[m
[32m+[m
[32m+[m[32mabstract class AbstractMvcDispatcher implements IMvcConstants[m
[32m+[m[32m{[m
[32m+[m[32m    IMvcDispatcherListener dispatcherListener;[m
[32m+[m[41m    [m
[32m+[m[32m    public static boolean isModelAction(String action)[m
[32m+[m[32m    {[m
[32m+[m[32m        if(action.startsWith(ACTION_PREFIX_MODEL))[m
[32m+[m[32m            return true;[m
[32m+[m[41m        [m
[32m+[m[32m        return false;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static boolean isViewAction(String action)[m
[32m+[m[32m    {[m
[32m+[m[32m        if(action.startsWith(ACTION_PREFIX_VIEW))[m
[32m+[m[32m            return true;[m
[32m+[m[41m        [m
[32m+[m[32m        return false;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static boolean isControllerAction(String action)[m
[32m+[m[32m    {[m
[32m+[m[32m        if(action.startsWith(ACTION_PREFIX_CONTROLLER))[m
[32m+[m[32m            return true;[m
[32m+[m[41m        [m
[32m+[m[32m        return false;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public static boolean isViewEventClickAction(String action)[m
[32m+[m[32m    {[m
[32m+[m[32m        if(action.startsWith(ACTION_PREFIX_VIEW_EVENT_CLICK))[m
[32m+[m[32m            return true;[m
[32m+[m[41m        [m
[32m+[m[32m        return false;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    protected final void dispatchEvent(String event)[m
[32m+[m[32m    {[m
[32m+[m[32m        dispatcherListener.dispatchMvcEvent(event);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/com/ricelake/walker/mvc/AbstractView.java b/src/com/ricelake/walker/mvc/AbstractView.java[m
[1mnew file mode 100644[m
[1mindex 0000000..7b98a77[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/mvc/AbstractView.java[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32mpackage com.ricelake.walker.mvc;[m
[32m+[m
[32m+[m[32mimport android.app.Activity;[m
[32m+[m[32mimport android.view.View;[m
[32m+[m
[32m+[m[32mpublic abstract class AbstractView extends AbstractMvcDispatcher[m
[32m+[m[32m{[m
[32m+[m[32m    protected Activity activity;[m
[32m+[m[32m    protected DataForm<String, ?> dataForm;[m
[32m+[m
[32m+[m[32m    public abstract boolean handleUiEvent(String action, View view);[m
[32m+[m[41m    [m
[32m+[m[32m    protected void postViewEvent(int viewEvent)[m
[32m+[m[32m    {[m
[32m+[m[32m        this.dispatchEvent(ACTION_PREFIX_VIEW + viewEvent);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/com/ricelake/walker/mvc/DataForm.java b/src/com/ricelake/walker/mvc/DataForm.java[m
[1mnew file mode 100644[m
[1mindex 0000000..62a3b69[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/mvc/DataForm.java[m
[36m@@ -0,0 +1,94 @@[m
[32m+[m[32mpackage com.ricelake.walker.mvc;[m
[32m+[m
[32m+[m[32mimport java.io.Serializable;[m
[32m+[m[32mimport java.util.Hashtable;[m
[32m+[m
[32m+[m[32mpublic class DataForm<K, V> extends Hashtable<K, V> implements Serializable, IMvcConstants[m
[32m+[m[32m{[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     *[m[41m [m
[32m+[m[32m     */[m
[32m+[m[32m    private static final long serialVersionUID = 3736134699556993557L;[m
[32m+[m
[32m+[m[32m    public String getString(String key)[m
[32m+[m[32m    {[m
[32m+[m[32m        return this.get(key).toString();[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public Boolean getBoolean(String key)[m
[32m+[m[32m    {[m
[32m+[m[32m        String s = getString(key);[m
[32m+[m[32m        try[m
[32m+[m[32m        {[m
[32m+[m[32m            return Boolean.parseBoolean(s);[m
[32m+[m[32m        }[m
[32m+[m[32m        catch (Exception e)[m
[32m+[m[32m        {[m
[32m+[m[32m            return false;[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public Integer getInteger(String key)[m
[32m+[m[32m    {[m
[32m+[m[32m        String s = getString(key);[m
[32m+[m[32m        try[m
[32m+[m[32m        {[m
[32m+[m[32m            return Integer.parseInt(s);[m
[32m+[m[32m        }[m
[32m+[m[32m        catch (Exception e)[m
[32m+[m[32m        {[m
[32m+[m[32m            return -1;[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public Long getLong(String key)[m
[32m+[m[32m    {[m
[32m+[m[32m        String s = getString(key);[m
[32m+[m[32m        try[m
[32m+[m[32m        {[m
[32m+[m[32m            return Long.parseLong(s);[m
[32m+[m[32m        }[m
[32m+[m[32m        catch (Exception e)[m
[32m+[m[32m        {[m
[32m+[m[32m            return -1L;[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public Double getDouble(String key)[m
[32m+[m[32m    {[m
[32m+[m[32m        String s = getString(key);[m
[32m+[m[32m        try[m
[32m+[m[32m        {[m
[32m+[m[32m            return Double.parseDouble(s);[m
[32m+[m[32m        }[m
[32m+[m[32m        catch (Exception e)[m
[32m+[m[32m        {[m
[32m+[m[32m            return -1d;[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public Float getFloat(String key)[m
[32m+[m[32m    {[m
[32m+[m[32m        String s = getString(key);[m
[32m+[m[32m        try[m
[32m+[m[32m        {[m
[32m+[m[32m            return Float.parseFloat(s);[m
[32m+[m[32m        }[m
[32m+[m[32m        catch (Exception e)[m
[32m+[m[32m        {[m
[32m+[m[32m            return -1f;[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    public byte[] getBytes(String key)[m
[32m+[m[32m    {[m
[32m+[m[32m        Object o = this.get(key);[m
[32m+[m[32m        if(o instanceof byte[])[m
[32m+[m[32m        {[m
[32m+[m[32m            return (byte[])o;[m
[32m+[m[32m        }[m
[32m+[m[41m        [m
[32m+[m[32m        return null;[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/com/ricelake/walker/mvc/IMvcConstants.java b/src/com/ricelake/walker/mvc/IMvcConstants.java[m
[1mnew file mode 100644[m
[1mindex 0000000..cc58540[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/mvc/IMvcConstants.java[m
[36m@@ -0,0 +1,12 @@[m
[32m+[m[32mpackage com.ricelake.walker.mvc;[m
[32m+[m
[32m+[m[32minterface IMvcConstants[m
[32m+[m[32m{[m
[32m+[m[32m    public final static String ACTION_PREFIX_MODEL = "model_";[m
[32m+[m[41m    [m
[32m+[m[32m    public final static String ACTION_PREFIX_VIEW = "view_";[m
[32m+[m[41m    [m
[32m+[m[32m    public final static String ACTION_PREFIX_CONTROLLER = "controller_";[m
[32m+[m[41m    [m
[32m+[m[32m    public final static String ACTION_PREFIX_VIEW_EVENT_CLICK = "view_event_click_";[m
[32m+[m[32m}[m
[1mdiff --git a/src/com/ricelake/walker/mvc/IMvcDispatcherListener.java b/src/com/ricelake/walker/mvc/IMvcDispatcherListener.java[m
[1mnew file mode 100644[m
[1mindex 0000000..89f0d8c[m
[1m--- /dev/null[m
[1m+++ b/src/com/ricelake/walker/mvc/IMvcDispatcherListener.java[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32mpackage com.ricelake.walker.mvc;[m
[32m+[m
[32m+[m[32minterface IMvcDispatcherListener[m
[32m+[m[32m{[m
[32m+[m[32m    public void dispatchMvcEvent(String event);[m
[32m+[m[32m}[m
