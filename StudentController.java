package com.swapnika;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@Controller
public class StudentController {
	
	
	@RequestMapping("/home")
	public ModelAndView helloWorld6(){ 

		ModelAndView modelandview = new ModelAndView ("home");
		return modelandview;
	}
	
	@RequestMapping("/cbit")
	public ModelAndView helloWorld7(){ 

		ModelAndView modelandview = new ModelAndView ("cbit");
		return modelandview;
	}
	@RequestMapping("/welcome1")
	public ModelAndView helloWorld8(){ 

		ModelAndView modelandview = new ModelAndView ("welcome1");
		return modelandview;
	}
		@RequestMapping("/welcome")
		public ModelAndView helloWorld(){ 
	
			ModelAndView modelandview = new ModelAndView ("studentform");
			return modelandview;
		}

		@RequestMapping("/studentformonsubmit")
		public ModelAndView helloWorld2(){ 
	
			ModelAndView modelandview = new ModelAndView ("studentformonsubmit");
			return modelandview;
		}
		
		@RequestMapping("/signin")
		public ModelAndView helloWorld3(){ 
	
			ModelAndView modelandview = new ModelAndView ("signin");
			return modelandview;
		}
		@RequestMapping("/validate")
		public ModelAndView helloWorld4(){ 
	
			ModelAndView modelandview = new ModelAndView ("validate");
			return modelandview;
		}
		@RequestMapping("/details")
		public ModelAndView helloWorld5(){ 
	
			ModelAndView modelandview = new ModelAndView ("details");
			return modelandview;
		}
		
		
		
	
}
