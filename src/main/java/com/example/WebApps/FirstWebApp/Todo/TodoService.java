package com.example.WebApps.FirstWebApp.Todo;
import jakarta.validation.Valid;
import org.springframework.stereotype.Service;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

@Service
public class TodoService {
	private static int todoCount = 0;
	private static List<Todo> list = new ArrayList<>();

	static {
		list.add(new Todo(++todoCount, "Aman", "Prepare for exams", LocalDate.now().plusYears(1), false));
		list.add(new Todo(++todoCount, "Aman", "Practice dance routines", LocalDate.now().plusYears(1), false));
		list.add(new Todo(++todoCount, "Aman", "Get 8 hours of sleep", LocalDate.now().plusYears(1), false));
		list.add(new Todo(++todoCount, "Aman", "Eat healthy meals", LocalDate.now().plusYears(1), false));
	}

	public Todo findById(int id) {
		return list.stream().filter(todo -> todo.getId() == id).findFirst().orElse(null);
	}

	public List<Todo> findByUsername(String username){
		Predicate<? super Todo> predicate =
				todo -> todo.getName().equalsIgnoreCase(username);
		return list.stream().filter(predicate).toList();
	}

	public void addTodo(String name, String description, LocalDate localDate, Boolean isDone) {
		Todo todo = new Todo(++todoCount, name, description, localDate, isDone);
		list.add(todo);
	}

	public void deleteTodo(int id) {
		list.removeIf(todo -> todo.getId() == id);
	}

	public void updateTodo(Todo todo) {
		deleteTodo(todo.getId());
		list.add(todo);
	}

}
