package com.hanweihu.SSM.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanweihu.SSM.pojo.Items;
import com.hanweihu.SSM.service.ItemsService;

@Controller
@RequestMapping("/items") // 根路径
public class ItemsController {
	@Autowired
	private ItemsService itemsService;

	// 添加商品
	@RequestMapping("addItems")
	public String addItems(Items items) {
		this.itemsService.saveItems(items);
		// 重定向到商品列表		
		return "redirect:itemsList.do";
	}
	
	// 查询商品列表
	@RequestMapping("itemsList")
	public String itemsList(Model model) {
		List<Items>itemsList =  this.itemsService.showItemsList();
		// 把列表封装到model中
		model.addAttribute("itemsList", itemsList);
		return "itemsList";
	}
	
	// 根据id删除单个用户
	@RequestMapping("deleteOneById")
	public String deleteOneById(Integer id) {
		this.itemsService.deleteOneById(id);
		return "redirect:itemsList.do";
	}
	
	// 根据id批量删除用户
	@RequestMapping("deleteByIds")
	public String deleteByIds(Integer[] ids) {
		for (Integer id : ids) {
			this.itemsService.deleteByIds(id);
		}
		return "redirect:itemsList.do";
	}
	
	// 根据id查到用户
	@RequestMapping("selectByID")
	public String selectByID(Model model,Integer id) {
		Items items =  this.itemsService.selectByID(id);
		// 把列表封装到model中
		model.addAttribute("items", items);
		return "updateItems";
	}
	
	// 根据id修改用户
	@RequestMapping("updateOne")
	public String updateOne(Items items) {
		this.itemsService.updateOne(items);
		return "redirect:itemsList.do";
	}
	
	// 跳转
	@RequestMapping("toAddItems")
	public String toAddItems() {
		return "items";
	}
}
