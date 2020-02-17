package react4j.todomvc.model;

import sting.Fragment;

@Fragment
public interface BrowserLocationFragment
{
  default BrowserLocation createBrowserLocation()
  {
    return new Arez_BrowserLocation();
  }
}
