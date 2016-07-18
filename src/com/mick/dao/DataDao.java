package com.mick.dao;

import java.io.Serializable;
import java.util.List;
import com.mick.entity.Page;

/**
 * 数据层接口
 */
public interface DataDao<Obejct> {

	public int add(Obejct obj);

	public int delete(Serializable id);

	public int update(Obejct obj);

	public Obejct find(Serializable id);

	public List<Obejct> Query();

	public List<Obejct> findMore(Obejct obj);

	public Page pageQuery(Page page);

	public int getRows();
}
