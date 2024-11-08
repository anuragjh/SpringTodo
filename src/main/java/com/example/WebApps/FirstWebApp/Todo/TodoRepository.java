package com.example.WebApps.FirstWebApp.Todo;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TodoRepository extends JpaRepository<Todo,Integer> {
	public List<Todo> findAllByName(String name);
}
