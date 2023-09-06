package com.service;

import com.model.Image;

import java.util.List;

public interface IImageService extends ICrudService<Image>{
    List<Image> getAllImageByAccountId(long id);
}
