package com.ricelake.walker.log;

import java.util.Map;

import android.util.Log;

public class Logger
{
    public static final int DEBUG = 5;

    public static final int INFO = 6;

    public static final int WARN = 7;

    public static final int ERROR = 8;

    public static void log(int level, Class<?> z, String message)
    {
        log(level, z, message, null, null);
    }
    
    public static void log(int level, Class<?> z, String message, Throwable t)
    {
        log(level, z, message, t, null);
    }
    
    public static void log(int level, Class<?> z, String message, Throwable t, Map<String, ?> params)
    {
        Log.i("test", message);
    }
}
