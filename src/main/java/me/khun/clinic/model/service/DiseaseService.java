package me.khun.clinic.model.service;

import java.util.List;

import me.khun.clinic.model.entity.Disease;

public interface DiseaseService {

	public List<Disease> search(String keyword, Boolean deleted);

	public Disease save(Disease disease);

	public Disease findById(long id);

	public boolean deleteById(long id);

	public boolean restoreById(long id);

}