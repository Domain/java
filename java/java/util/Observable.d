module java.util.Observable;

import java.util.Vector;

public class Observable
{
	private bool changed = false;
	private Vector obs;

	public this()
	{
		this.obs = new Vector();
	}

	public synchronized void addObserver(Observer paramObserver)
	{
		if (paramObserver == null)
			throw new NullPointerException();
		if (!this.obs.contains(paramObserver))
			this.obs.addElement(paramObserver);
	}

	public synchronized void deleteObserver(Observer paramObserver)
	{
		this.obs.removeElement(paramObserver);
	}

	public void notifyObservers()
	{
		notifyObservers(null);
	}

	public void notifyObservers(Object paramObject)
	{
		Object[] arrayOfObject;
		synchronized (this)
		{
			if (!this.changed)
				return;
			arrayOfObject = this.obs.toArray();
			clearChanged();
		}

		for (int i = arrayOfObject.length - 1; i >= 0; i--)
			(cast(Observer)arrayOfObject[i]).update(this, paramObject);
	}

	public synchronized void deleteObservers()
	{
		this.obs.removeAllElements();
	}

	protected synchronized void setChanged()
	{
		this.changed = true;
	}

	protected synchronized void clearChanged()
	{
		this.changed = false;
	}

	public synchronized bool hasChanged()
	{
		return this.changed;
	}

	public synchronized int countObservers()
	{
		return this.obs.size();
	}
}