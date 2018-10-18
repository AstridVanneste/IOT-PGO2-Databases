package be.uantwerpen.iot.databases.sql.model;

public class Music
{
    private String title;
    private String artist;
    private int year;

    public Music(String title, String artist, int year)
    {
        this.title = title;
        this.artist = artist;
        this.year = year;
    }

    public String getTitle()
    {
        return this.title;
    }

    public String getArtist()
    {
        return this.artist;
    }

    public int getYear()
    {
        return this.year;
    }
}
