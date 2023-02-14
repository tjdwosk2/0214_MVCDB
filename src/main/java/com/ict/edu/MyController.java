package com.ict.edu;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ict.service.DAO;
import com.ict.service.VO;

@Controller
public class MyController {
	@Autowired
	private DAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(MyController.class);
	// 리스트
	@RequestMapping(value = "list.do", method = RequestMethod.GET)
	public ModelAndView getList() {
//		logger.info("getList() 도착");
		ModelAndView mv = new ModelAndView("list");
		List<VO> list = dao.getList();
		mv.addObject("list", list);
		
		return mv;
	}
		
		//삽입
		@RequestMapping(value = "insert.do", method = RequestMethod.POST)
		public ModelAndView getInsert(VO vo) {
			ModelAndView mv = new ModelAndView("index");
			int result = dao.getInsert(vo);
			if (result > 0) {
				
				return mv;
			}else {
				return new ModelAndView("error");
			}
		}
		//삭제
		@RequestMapping("delete.do")
		// 파라미터값이 m_idx 로 지정했으니가 getDelete 가 m_idx 로가져가면 삭제할수있다 
		public ModelAndView getDelete(@RequestParam("m_idx") String m_idx) {
			ModelAndView mv = new ModelAndView("redirect:list.do"); //index에서아닌 redirect 로 list로보내준다
			int result = dao.getDelete(m_idx);
			if (result>0) {
				return mv;
			}else {
				return new ModelAndView("error");
			}
		}
			
			
			
	} 

	
