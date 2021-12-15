package com.my.app.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.anot.GradeService;

@Controller
public class GradeController {
	@Autowired
	GradeService gradeService;
	public String username;
	
	@RequestMapping(value = "/grade/list", method = RequestMethod.GET)
	public String gradelist(Model model) {
		model.addAttribute("list", gradeService.getGradeList());
		return "grade";
	}
	
	@RequestMapping(value = "/grade/{name}", method = RequestMethod.GET)
	public String gradelist(@PathVariable("name") String name, Model model) {
		model.addAttribute("list", gradeService.getMyGrade(name));
		username = name;
		return "grade";
	}
	
	@RequestMapping(value = "/grade/add", method = RequestMethod.GET)
	public String addGrade() {
		return "addgradeform";
	}
	
	@RequestMapping(value = "/grade/addok", method = RequestMethod.POST)
	public String addGradeOK(GradeVO vo) {
		int i = gradeService.insertGrade(vo);
		if (i == 0) {
			System.out.println("데이터 추가 실패");
		} else {
			System.out.println("데이터 추가 성공!");
		}
		return "redirect:" + username;
	}
	
	@RequestMapping(value = "/grade/editpost/{id}", method = RequestMethod.GET)
	public String editGrade(@PathVariable("id") int id, Model model) {
		GradeVO gradeVO = gradeService.getGrade(id);
		model.addAttribute("gradeVO", gradeVO);
		return "editgradeform";
	}
	
	@RequestMapping(value = "/grade/editok", method = RequestMethod.POST)
	public String editGradeOK(GradeVO vo) {
		int i = gradeService.updateGrade(vo);
		if (i == 0) {
			System.out.println("데이터 수정 실패");
		} else {
			System.out.println("데이터 수정 성공!");
		}
		return "redirect:" + username;
	}
	
	@RequestMapping(value = "/grade/deleteok/{id}", method = RequestMethod.GET)
	public String deleteGrade(@PathVariable("id") int id) {
		int i = gradeService.deleteGrade(id);
		if (i == 0) {
			System.out.println("데이터 삭제 실패");
		} else {
			System.out.println("데이터 삭제 성공!");
		}
		return "redirect:../" + username;
	}
}
