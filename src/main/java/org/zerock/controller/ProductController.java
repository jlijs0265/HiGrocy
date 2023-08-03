package org.zerock.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.BomVO;
import org.zerock.domain.ProductVO;
import org.zerock.service.ProductService;
import org.zerock.service.RawMaterialService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class ProductController {
	
	private ProductService service;
	
	private RawMaterialService rawService;
	
	@GetMapping("/product")
	public String product(Model model) {
		model.addAttribute("productList", service.getProductList());
		// 원자재 목록 가져오기
		model.addAttribute("rawList", rawService.getRawMaterialList());
		return "/item/product";
	}
	
	@PostMapping("/product")
	public String registerProduct(ProductVO vo, @RequestParam(value = "raw_material_code") int[] raw_material_code, @RequestParam(value = "amount") int[] amount) {
		
		// bom 등록
		ArrayList<BomVO> bomList = new ArrayList<BomVO>();
		for(int i = 0; i < raw_material_code.length; i++) {
			BomVO bom = new BomVO();
			bom.setRaw_materials_code(raw_material_code[i]);
			bom.setAmount(amount[i]);
			bomList.add(bom);
		}
		
		service.registerProduct(vo, bomList);
		return "redirect:/product";
	}
}
