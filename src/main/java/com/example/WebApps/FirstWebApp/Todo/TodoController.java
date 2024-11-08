package com.example.WebApps.FirstWebApp.Todo;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.time.LocalDate;
import java.util.List;

@Controller
@SessionAttributes("name")
public class TodoController {

	private final TodoService todoService;

	@Autowired
	public TodoController(TodoService todoService) {
		this.todoService = todoService;
	}

	@RequestMapping("todo-list")
	public String todoList(ModelMap model) {
		String username = getLoggedInUsername(model);
		List<Todo> todos = todoService.findByUsername(username);
		model.addAttribute("todos", todos);

		return "Todo";
	}
	@RequestMapping(value = "add-todo" , method= RequestMethod.GET)
	public String AddtodoList(ModelMap model) {
		Todo todo = new Todo(0,"","",LocalDate.now().plusYears(1),false);
		model.put("todo",todo);
		return "add_todo";
	}

	@RequestMapping(value = "add-todo", method = RequestMethod.POST)
	public String AddtodoListRedirect(ModelMap modelMap, @Valid Todo todo, BindingResult res) {
		if (res.hasErrors()) {
			return "add_todo";
		}
		String username = getLoggedInUsername(modelMap);
		todoService.addTodo(username, todo.getDescription(), LocalDate.now().plusYears(1), false);
		return "redirect:/todo-list";
	}

	@RequestMapping("delete-todo")
	public String DeleteTodo(@RequestParam int id) {
         todoService.deleteTodo(id);
		return "redirect:todo-list";
	}
	// Change static method calls to use the instance `todoService`
	@RequestMapping(value = "update-todo", method = RequestMethod.GET)
	public String UpdateTodoPage(@RequestParam int id, ModelMap model) {
		Todo todo = todoService.findById(id); // Use instance method
		model.put("todo", todo);
		return "add_todo";
	}

	@RequestMapping(value = "update-todo", method = RequestMethod.POST)
	public String AddtodoListRedirectAfterUpdate(ModelMap modelMap, @Valid Todo todo, BindingResult res) {
		if (res.hasErrors()) {
			return "add_todo";
		}
		String username = getLoggedInUsername(modelMap);
		todo.setName(username);
		todoService.updateTodo(todo);
		return "redirect:/todo-list";
	}

	private String getLoggedInUsername(ModelMap model) {
		Authentication authentication =
				SecurityContextHolder.getContext().getAuthentication();
		return authentication.getName();
	}
}