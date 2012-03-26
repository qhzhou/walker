package com.ricelake.walker.mvc;

import java.io.Serializable;
import java.util.Hashtable;

public class DataForm<K, V> extends Hashtable<K, V> implements Serializable, IMvcConstants
{

    /**
     * 
     */
    private static final long serialVersionUID = 3736134699556993557L;

    public String getString(String key)
    {
        return this.get(key).toString();
    }
    
    public Boolean getBoolean(String key)
    {
        String s = getString(key);
        try
        {
            return Boolean.parseBoolean(s);
        }
        catch (Exception e)
        {
            return false;
        }
    }
    
    public Integer getInteger(String key)
    {
        String s = getString(key);
        try
        {
            return Integer.parseInt(s);
        }
        catch (Exception e)
        {
            return -1;
        }
    }
    
    public Long getLong(String key)
    {
        String s = getString(key);
        try
        {
            return Long.parseLong(s);
        }
        catch (Exception e)
        {
            return -1L;
        }
    }
    
    public Double getDouble(String key)
    {
        String s = getString(key);
        try
        {
            return Double.parseDouble(s);
        }
        catch (Exception e)
        {
            return -1d;
        }
    }
    
    public Float getFloat(String key)
    {
        String s = getString(key);
        try
        {
            return Float.parseFloat(s);
        }
        catch (Exception e)
        {
            return -1f;
        }
    }
    
    public byte[] getBytes(String key)
    {
        Object o = this.get(key);
        if(o instanceof byte[])
        {
            return (byte[])o;
        }
        
        return null;
    }
}
