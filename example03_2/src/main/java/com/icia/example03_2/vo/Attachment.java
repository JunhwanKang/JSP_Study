package com.icia.example03_2.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Attachment {
	private List<MultipartFile> sajins;
}
