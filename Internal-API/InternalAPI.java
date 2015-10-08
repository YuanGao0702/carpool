package FullStack.Java.GWUCarpool;

import java.util.ArrayList;
import java.util.Date;

public interface InternalAPI {
	public void register(String username, String password);

	public User login(String username, String password);

	public void createEvent(Date startTime, Date endTime, String startAddr,
			String endAddr, int capacity, String description);

	public ArrayList<Event> matchEvent(Date startTime, Date endTime,
			String startAddr, String endAddr);

	public void joinEvent(String username, int eventId);

	public void cancelEvent(int eventId);

	public void approveByDriver(int eventId, String username);

	public void declineByDriver(int eventId, String username);

	public void rate(String username, int reputation);

	public void startEvent(int eventId);

	public void endEvent(int eventId);
}
