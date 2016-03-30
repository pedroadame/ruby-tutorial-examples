public class Main {
    public static void main(String[] args){
	public String MP3_JAZZ = 1;
	public String TRAD_JAZZ = 2;
	public String JAZZ = 3;
	public String OTHER = 4;

	String type = MP3_JAZZ;
	String song_type = null;
	if(true) { // Compare if the MP3 is jazz
	    if (true) { //Compare song date
		song_type = TRAD_JAZZ;
	    }else{
		song_type = JAZZ;
	    }
	}else{
	    song_type = OTHER;
	}
    }
}
