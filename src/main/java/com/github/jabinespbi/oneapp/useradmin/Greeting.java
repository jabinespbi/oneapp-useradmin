package com.github.jabinespbi.oneapp.useradmin;

public class Greeting {
    public long id;
    public String content;
    public Greeting(long incrementAndGet, String content) {
        this.id = incrementAndGet;
        this.content = content;
    }
}
