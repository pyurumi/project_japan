package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import logic.ReadCatalog;

@Controller
public class ReadController {
	@Autowired
	private ReadCatalog readCatalog;
}
