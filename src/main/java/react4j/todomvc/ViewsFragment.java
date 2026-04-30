package react4j.todomvc;

import sting.Fragment;

@Fragment( includes = { FooterFactory.class,
                        FooterTodoCountFactory.class,
                        TodoItemFactory.class,
                        TodoListFactory.class,
                        TodoEntryFactory.class } )
public interface ViewsFragment
{
}
