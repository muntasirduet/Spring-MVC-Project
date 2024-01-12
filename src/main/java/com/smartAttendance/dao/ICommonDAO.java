package com.smartAttendance.dao;

import java.util.List;
import java.util.Map;
import java.util.UUID;

public interface ICommonDAO<TDoc> {
	public List<TDoc> getAllDoc();

	public TDoc getDocById(UUID id);

	public List<TDoc> getDocs(Map<String, String> params);

	public UUID insertDoc(TDoc doc);

	public UUID updateDoc(TDoc doc);

	public UUID deleteDoc(UUID id);
}