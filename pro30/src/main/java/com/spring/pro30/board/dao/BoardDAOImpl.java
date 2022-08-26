package com.spring.pro30.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.pro30.board.vo.ArticleVO;


@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO{
	@Autowired
	private SqlSession sqlSession;

	
	@Override
	public List selectAllArticlesList() throws Exception {
		List<ArticleVO> articlesList= sqlSession.selectList("mappers.board.selectAllArticlesList");
		return articlesList;
	}
//	새글 쓰기 
	@Override
	public int insertNewArticle(Map articleMap) throws Exception{
		int articleNO = selectNewArticleNO();
		System.out.println("articleNO :"+articleNO);
		articleMap.put("articleNO", articleNO);
		int result =sqlSession.insert("mappers.board.insertNewArticle", articleMap);
		return result;
	}
//	새글의 아이디 가져오기


	private int selectNewArticleNO() throws DataAccessException{
		return sqlSession.selectOne("mappers.board.selectNewArticleNO");
	}
// 	상세 글 보기	
	@Override
	public ArticleVO selectArticle(int articleNO) throws DataAccessException{
		return sqlSession.selectOne("mappers.board.selectArticle",articleNO);
	}

	@Override
	public void updateArticle(Map articleMap) throws  DataAccessException{
		sqlSession.update("mappers.board.updateArticle",articleMap);
	}
	
	@Override
	public void deleteArticle(int articleNO) throws  DataAccessException{
		sqlSession.delete("mappers.board.deleteArticle",articleNO);
	}
//	@Override
//	public List selectImageFileList(int articleNO) throws DataAccessException {
//		List<ImageVO> imageFileList =null;
//		imageFileList = sqlSession.selectList("mapper.board.selectImageFileList",articleNO);
//		return imageFileList;
//	}
}
