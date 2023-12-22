package com.kh.tinyfarm.product.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.tinyfarm.common.model.vo.Attachment;
import com.kh.tinyfarm.common.model.vo.PageInfo;
import com.kh.tinyfarm.product.model.vo.Category;
import com.kh.tinyfarm.product.model.vo.Product;

@Repository //퍼시스턴스 레이어, DB나 파일같은 외부 I/O 작업을 처리함
public class ProductDao {

	//상품 전체 개수
	public int listCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("productMapper.listCount");
	}

	//상품 리스트
	public ArrayList<Product> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		//몇개씩 보여줄지
		int limit = pi.getBoardLimit();
		//몇개를 건너뛸지 
		int offset = (pi.getCurrentPage() -1 ) * limit;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		//rowbounds 객체를 전달해야하는데 전달할 파라미터(전달값)이 없다면 null을 넣어서 메소드 호출하기.
		return (ArrayList)sqlSession.selectList("productMapper.selectList", null, rowBounds);
	}

	//상품 조회수 증가
	public int increaseCount(SqlSessionTemplate sqlSession, int pno) {
		
		return sqlSession.update("productMapper.increaseCount", pno);
	}

	//상품 조회
	public Product selectProduct(SqlSessionTemplate sqlSession, int pno) {
		
		return sqlSession.selectOne("productMapper.selectProduct", pno);
	}

	
	//카테고리 조회
	public ArrayList<Category> selectCategoryList(SqlSessionTemplate sqlSession) {

		return (ArrayList)sqlSession.selectList("productMapper.selectCategoryList");
	}

	//상품 등록
	public int insertProduct(SqlSessionTemplate sqlSession, Product p) {
		
		return sqlSession.insert("productMapper.insertProduct", p);
	}

	public int insertAttachment(SqlSessionTemplate sqlSession, Attachment a) {
		
		return sqlSession.insert("productMapper.insertAttachment", a);
	}

	//상품 수정
	public int updateProduct(SqlSessionTemplate sqlSession, Product p) {
		
		return sqlSession.update("productMapper.updateProduct", p);
	}

	public int updateAttachment(SqlSessionTemplate sqlSession, Attachment a) {
		
		return sqlSession.update("productMapper.updateAttachment", a);
	}

	//상품 삭제
	public int deleteProduct(SqlSessionTemplate sqlSession, int pno) {
		
		return sqlSession.delete("productMapper.deleteProduct", pno);
	}






}
