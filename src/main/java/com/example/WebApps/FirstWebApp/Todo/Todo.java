package com.example.WebApps.FirstWebApp.Todo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import org.springframework.stereotype.Service;

import java.time.LocalDate;

@Service
@Entity
public class Todo {
	@Id
	@GeneratedValue
	private int id;
	private String name;
	@Size(min=10,message = "Enter Atleat 10 Characters")
	private String description;
	private LocalDate targetDate;
	private boolean isDone;

	public Todo() {
	}

	public Todo(int id, String name, String description, LocalDate targetDate, boolean isDone) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.targetDate = targetDate;
		this.isDone = isDone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public LocalDate getTargetDate() {
		return targetDate;
	}

	public void setTargetDate(LocalDate targetDate) {
		this.targetDate = targetDate;
	}

	public boolean isDone() {
		return isDone;
	}

	public void setDone(boolean done) {
		isDone = done;
	}

	@Override
	public String toString() {
		return "Todo{" +
				"id=" + id +
				", name='" + name + '\'' +
				", description='" + description + '\'' +
				", targetDate=" + targetDate +
				", isDone=" + isDone +
				'}';
	}
}
