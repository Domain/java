module java.util.Observer;

import java.util.Observable;

public interface Observer
{
	void update(Observable paramObservable, Object paramObject);
}