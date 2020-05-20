package com.lagou.edu.service;

import com.lagou.edu.pojo.Resume;

import java.util.List;

public interface ResumeService {
    List<Resume> queryResumeList() throws Exception;
    void deleteByID(Integer id) throws Exception;
    void update(Resume resume) throws Exception;
}
