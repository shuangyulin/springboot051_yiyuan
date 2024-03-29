package com.entity.vo;

import com.entity.BingchuangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 病床
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-04-15 15:10:24
 */
public class BingchuangVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 病床类型
	 */
	
	private String bingchuangleixing;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 病床号
	 */
	
	private String bingchuanghao;
		
	/**
	 * 使用状态
	 */
	
	private String shiyongzhuangtai;
				
	
	/**
	 * 设置：病床类型
	 */
	 
	public void setBingchuangleixing(String bingchuangleixing) {
		this.bingchuangleixing = bingchuangleixing;
	}
	
	/**
	 * 获取：病床类型
	 */
	public String getBingchuangleixing() {
		return bingchuangleixing;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：病床号
	 */
	 
	public void setBingchuanghao(String bingchuanghao) {
		this.bingchuanghao = bingchuanghao;
	}
	
	/**
	 * 获取：病床号
	 */
	public String getBingchuanghao() {
		return bingchuanghao;
	}
				
	
	/**
	 * 设置：使用状态
	 */
	 
	public void setShiyongzhuangtai(String shiyongzhuangtai) {
		this.shiyongzhuangtai = shiyongzhuangtai;
	}
	
	/**
	 * 获取：使用状态
	 */
	public String getShiyongzhuangtai() {
		return shiyongzhuangtai;
	}
			
}
