package react4j.todomvc.model;

import sting.Fragment;

@Fragment( includes = { TodoRepository.class, BrowserLocation.class, TodoService.class, ViewService.class } )
public interface ModelFragment
{
}
