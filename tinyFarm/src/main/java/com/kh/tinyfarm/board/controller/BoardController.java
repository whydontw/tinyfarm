package com.kh.tinyfarm.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.tinyfarm.board.model.service.BoardService;
import com.kh.tinyfarm.board.model.vo.Board;
import com.kh.tinyfarm.board.model.vo.BoardLike;
import com.kh.tinyfarm.board.model.vo.BoardReply;
import com.kh.tinyfarm.common.model.vo.PageInfo;
import com.kh.tinyfarm.common.template.Pagination;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	
	//페이징처리한 boardList
	@RequestMapping("list.bo")
	//@GetMapping("list.bo")
	public String selectBoardList(@RequestParam(value="currentPage",defaultValue="1")int currentPage,Model model) {
			
		//총 게시글 리스트 개수 가져오기
		int listCount = boardService.boardListCount();
		
		int boardLimit = 5;
		int pageLimit = 5;
		
		
		PageInfo pi= Pagination.getPageInfo(listCount,currentPage,boardLimit,pageLimit);
		ArrayList<Board> blist = boardService.selectBoardList(pi);
		System.out.println("blist : "+blist);
		model.addAttribute("pi", pi);
		model.addAttribute("blist",blist);
		
		return "board/boardList";
	}
	
	@RequestMapping("detail.bo")
	public String boardDetail(int boardNo,Model model) {
		//조회수 증가랑 bno넘겨서 detail정보 가져오기 그 후 가져온 객체를 detailview에 보내기
		int result = boardService.boardIncreaseCount(boardNo);
		
		if(result>0) {
			Board boardInfo = boardService.boardDetail(boardNo);
			model.addAttribute("boardInfo", boardInfo);
			//System.out.println("boardInfo : "+boardInfo);
			
		}else {
			return "common/errorPage";
		}
		
		return "board/boardDetail";
	}
	
	@GetMapping("insert.bo")
	public String moveBoardEnroll() {
		return "board/boardEnroll";
	}
	
	
	@PostMapping("insert.bo")
	public String boardInsert(Board b,HttpSession session) {
		
		int result = boardService.insertBoard(b);
		
		if(result>0) {
			session.setAttribute("alertMsg", "게시글 작성이 성공하셨습니다.");
			return "redirect:list.bo";
		}else {
			session.setAttribute("alertMsg", "게시글 작성이 실패하셨습니다.");
			return "common/errorPage";
		}
	
		
	}
	
	@GetMapping("update.bo")
	public String moveBoardUpdate(int boardNo,Model model) {
		Board boardInfo = boardService.boardDetail(boardNo);
		model.addAttribute("boardInfo",boardInfo);
		
		return "board/boardUpdate";
	}
	
	@PostMapping("update.bo")
	public String boardUpdate(Board boardInfo,HttpSession session) {
		
		int result = boardService.boardUpdate(boardInfo);
		
		if(result>0) {
			session.setAttribute("alertMsg", "게시글 수정이 성공하셨습니다.");
			return "redirect:detail.bo?boardNo="+boardInfo.getBoardNo();
		}else {
			session.setAttribute("alertMsg", "게시글 수정이 실패하셨습니다.");
			return "common/errorPage";
		}
	}
	
	
	@PostMapping("delete.bo")
	public String boardDelete(int boardNo,HttpSession session) {
		
		int result = boardService.boardDelete(boardNo);
		
		if(result>0) {
			session.setAttribute("alertMsg", "게시글을 삭제하였습니다.");
			return "redirect:list.bo";
		}else {
			session.setAttribute("alertMsg", "게시글 삭제가 실패했습니다.");
			return "common/errorPage";
		}
		
	}
	
	@ResponseBody
	@RequestMapping(value="boardReplyList.bo",produces ="application/json; charset=UTF-8")
	//@RequestMapping("boardReplyList.bo")
	public ArrayList<BoardReply> boardReplyList(int boardNo){
		
		ArrayList<BoardReply> rlist = new ArrayList<>();
		rlist = boardService.boardReplyList(boardNo);
		
		
		return rlist;
	}
	
	@ResponseBody
	@RequestMapping(value="insertReply.bo", produces="application/json; charset=UTF-8")
	public int insertReply(BoardReply br) {
		System.out.println("이것도 안나올까??");
		System.out.println("br : "+br);
		int result = boardService.insertReply(br);
		System.out.println("result : "+result);
		return result;
	}
	
	@PostMapping("updateReply.bo")
	public String updateReply(int replyNo) {
		System.out.println(replyNo);
		
		int result = boardService.updateReply(replyNo);
		
		return "";
	}
	
	
	@PostMapping("deleteReply.bo")
	public String deleteReply(int replyNo) {
		System.out.println(replyNo);
		int result = boardService.deleteReply(replyNo);
		
		
		return "";
	}
	
	
	@ResponseBody
	@RequestMapping(value="dolike.bo",produces = "application/json; charset=UTF-8")
	public int doLike(BoardLike bl) {
		
		int result1 = boardService.likeIncreaseCount(bl);
		if(result1>0) {			
			int result2 = boardService.doLike(bl);
			
			return result2;
		}else {
			return result1;
		}
		
		
	}
	
	
	
}
