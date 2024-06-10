package com.localstack.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.Bucket;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;
import com.amazonaws.util.IOUtils;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class S3Service {

	@Autowired
	AmazonS3 amazonS3;

// -------------------------------------------------------------------------------------------
	public String createBucket(String name) {
		try {
			if (!amazonS3.doesBucketExistV2(name)) {
				amazonS3.createBucket(name);
			}
			return "File Created Successfully " + name;
		} catch (Exception e) {
			e.printStackTrace();
			return "File Created Failed " + e.getMessage();
		}
	}

// -------------------------------------------------------------------------------------------
	public String deleteBucket(String name) {
		try {
			if (amazonS3.doesBucketExistV2(name)) {
				amazonS3.deleteBucket(name);
			}
			return "File Deleted Successfully " + name;
		} catch (Exception e) {
			e.printStackTrace();
			return "File Deleted Failed " + e.getMessage();
		}
	}

// -------------------------------------------------------------------------------------------
	public List<Bucket> listAllBucket() {
		return amazonS3.listBuckets();
	}

// -------------------------------------------------------------------------------------------
	public String uploadFile(MultipartFile file, String bucketName) {
		String fileName = file.getOriginalFilename();
		try {
			amazonS3.putObject(new PutObjectRequest(bucketName, fileName, file.getInputStream(), null));
			return "File Uploaded Successfully " + fileName;
		} catch (Exception e) {
			e.printStackTrace();
			return "File Upload Failed " + e.getMessage();
		}
	}

// -------------------------------------------------------------------------------------------
	public String deleteUploadedFile(String bucketName, String fileName) {
		try {
			amazonS3.deleteObject(bucketName, fileName);
			return bucketName + " bucket " + fileName + " File Deleted Successfully";
		} catch (Exception e) {
			e.printStackTrace();
			return " File Deleted Failed " + e.getMessage();
		}
	}

// -------------------------------------------------------------------------------------------
	public byte[] downloadFile(String fileName, String bucketName) {
		try {
			S3Object s3Object = amazonS3.getObject(bucketName, fileName);
			System.out.println(s3Object + "**************");
			S3ObjectInputStream objectContent = s3Object.getObjectContent();
			return IOUtils.toByteArray(objectContent);
		} catch (IOException e) {
			e.printStackTrace();
			return new byte[0];
		}
	}

}
