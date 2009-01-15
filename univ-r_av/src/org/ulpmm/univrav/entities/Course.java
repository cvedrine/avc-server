package org.ulpmm.univrav.entities;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class Course {

	private int courseid;
	private Timestamp date;
	private String type;
	private String title;
	private String description;
	private String formation;
	private String name;
	private String firstname;
	private String ipaddress;
	private int duration;
	private String genre;
	private boolean visible;
	private int consultations;
	private String timing;
	private String mediaFolder;

	/**
	 * Default constructor
	 */
	public Course() {
	}

	/**
	 * constructor : creates a course by providing all the information
	 * 
	 * @param courseid
	 * @param date
	 * @param type
	 * @param title
	 * @param description
	 * @param formation
	 * @param name
	 * @param firstname
	 * @param ipaddress
	 * @param duration
	 * @param genre
	 * @param visible
	 * @param consultations
	 * @param timing
	 */
	public Course(int courseid, Timestamp date, String type, String title, String description, String formation, String name, String firstname, String ipaddress, int duration, String genre, boolean visible, int consultations, String timing, String mediaFolder) {
		this.courseid = courseid;
		this.date = date;
		this.type = type;
		this.title = title;
		this.description = description;
		this.formation = formation;
		this.name = name;
		this.firstname = firstname;
		this.ipaddress = ipaddress;
		this.duration = duration;
		this.genre = genre;
		this.visible = visible;
		this.consultations = consultations;
		this.timing = timing;
		this.mediaFolder = mediaFolder;
	}
	
	/**
	 * Returns a string representation of the object
	 */
	public String toString() {
		return "[" + courseid + "," + getDateString() + "," + type + "," + title + ","
			+ description + "," + formation + "," + name + "," + firstname + ","
			+ ipaddress + "," + getDurationString() + "," + genre + "," + visible + ","
			+ consultations + "," + timing + "]";
	}
	
	/**
	 * @return the consultations
	 */
	public int getConsultations() {
		return consultations;
	}

	/**
	 * @return the courseid
	 */
	public int getCourseid() {
		return courseid;
	}

	/**
	 * @return the date
	 */
	public Timestamp getDate() {
		return date;
	}
	
	/**
	 * @return the date in the convenient String format
	 */
	public String getDateString() {
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");	
		return sdf.format(date);
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @return the duration
	 */
	public int getDuration() {
		return duration;
	}
	
	/**
	 * @return the duration in a String
	 */
	public String getDurationString() {
		String res = "";
		int durationHour = duration / 3600;
		int durationMinute = (duration % 3600) / 60 ;
		int durationSecond = ((duration % 3600) % 60) ;
		res += durationHour > 0 ? durationHour + "h" : "";
    	res += durationHour > 0 || durationMinute > 0 ? durationMinute + "min" : "";
    	res += durationSecond + "sec";
		return res;
	}
	
	/**
	 * @return the formation
	 */
	public String getFormation() {
		return formation;
	}

	/**
	 * @return the firstname
	 */
	public String getFirstname() {
		return firstname;
	}

	/**
	 * @return the genre
	 */
	public String getGenre() {
		return genre;
	}

	/**
	 * @return the ipaddress
	 */
	public String getIpaddress() {
		return ipaddress;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @return the timing
	 */
	public String getTiming() {
		return timing;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @return the visible
	 */
	public boolean isVisible() {
		return visible;
	}
	
	/**
	 * @ return the name used by the media files of this course
	 */
	public String getMediasFileName() {
		String mediasFileName="";
		
		if( title != null && ! title.equals("") ) {
			for(int i=0 ; i< title.length() ; i++) {
				char car = title.charAt(i);
				if( ! ((car >= 'a' && car <='z') | (car >= 'A' && car <='Z') | (car >= '0' && car <='9')))
					car = '_';
				
				mediasFileName += car;
			}
		}
		else
			mediasFileName = "course_" + courseid;
		
		return mediasFileName;
	}
	
	/**
	 * @return the mediaFolder
	 */
	public String getMediaFolder() {
		return mediaFolder;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @param duration the duration to set
	 */
	public void setDuration(int duration) {
		this.duration = duration;
	}

	/**
	 * @param mediaFolder the mediaFolder to set
	 */
	public void setMediaFolder(String mediaFolder) {
		this.mediaFolder = mediaFolder;
	}

	/**
	 * @param date the date to set
	 */
	public void setDate(Timestamp date) {
		this.date = date;
	}

	/**
	 * @param visible the visible to set
	 */
	public void setVisible(boolean visible) {
		this.visible = visible;
	}
	
	/**
	 * @param timing the timing to set
	 */
	public void setTiming(String timing) {
		this.timing = timing;
	}
}