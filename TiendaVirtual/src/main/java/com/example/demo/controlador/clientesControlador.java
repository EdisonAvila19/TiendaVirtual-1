package com.example.demo.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("clientes")
public class clientesControlador {

	@GetMapping
	public String getClientes() {
		return "clientes";
	}
}
