package com.hanweihu.SSM.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanweihu.SSM.mapper.ItemsMapper;
import com.hanweihu.SSM.pojo.Items;
import com.hanweihu.SSM.service.ItemsService;

@Service
@Transactional
public class ItemsServiceImpl implements ItemsService{
	
	@Autowired
	private ItemsMapper itemsMapper;

	// 添加商品
	@Override
	public void saveItems(Items items) {
		// 调用mapper代理接口实现类的方法
		this.itemsMapper.addItems(items);
	}
	
	// 查询商品列表
	@Override
	public List<Items> showItemsList() {
		return this.itemsMapper.showItemsList();
	}
	
	// 根据id批量删除用户
	@Override
	public void deleteByIds(Integer id) {
		this.itemsMapper.deleteByIds(id);
	}
	
	// 根据id删除单个商品
	@Override
	public void deleteOneById(Integer id) {
		this.itemsMapper.deleteOneById(id);
	}
	
	// 根据id查到个商品
	@Override
	public Items selectByID(Integer id) {
		return this.itemsMapper.selectByID(id);
	}
	
	// 根据id修改商品
	@Override
	public void updateOne(Items items) {
		this.itemsMapper.updateOne(items);		
	}
}
