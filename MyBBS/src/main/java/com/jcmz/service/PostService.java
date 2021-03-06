package com.jcmz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcmz.mapper.PostMapper;
import com.jcmz.model.Post;
import com.jcmz.model.User;

@Service
public class PostService {
	@Autowired
	private PostMapper pm;

	public void canclePraise(int po_id) {
		// TODO Auto-generated method stub
		pm.canclePraise(po_id);
	}

	public void addOnePraise(int po_id) {
		// TODO Auto-generated method stub
		pm.addOnePraise(po_id);
	}

	public void subCollectedNumInPostTable(int po_id) {
		// TODO Auto-generated method stub
		pm.subCollectedNumInPostTable(po_id);
	}

	public void addCollectedNumInPostTable(int po_id) {
		// TODO Auto-generated method stub
		pm.addCollectedNumInPostTable(po_id);
	}

	public void insetPostConImg(Post post) {
		// TODO Auto-generated method stub
		pm.insert(post);
	}

	public List<Post> getAllPostAndItsBlockPage() {
		// TODO Auto-generated method stub
		return pm.getAllPostAndItsBlockPage();
	}

	public int getAllPostAndItsBlockPageCount() {
		// TODO Auto-generated method stub
		return pm.getAllPostAndItsBlockPageCount();
	}

	public List<Post> getPostByName(String search) {
		// TODO Auto-generated method stub
		return pm.getPostByName(search);
	}

	public List<Post> getPrisePostById(int id) {
		// TODO Auto-generated method stub
		return pm.getPrisePostByUserId(id);
	}

	public List<Post> getMyPostById(int id) {
		// TODO Auto-generated method stub
		return pm.getMyPostById(id);
	}

	
	
}
