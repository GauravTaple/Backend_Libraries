package com.localstack.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.services.s3.model.Bucket;
import com.localstack.service.S3Service;

@RestController
@RequestMapping(value="localstack/")
public class S3Controller {
	
	@Autowired
	S3Service s3Service; 

// -------------------------------------------------------------------------------------------
	// Create bucket
	@PostMapping(value = "create",consumes= {"application/json"})
	public String createBucket(@RequestParam(name="bucketName") String bucketName) {
		return s3Service.createBucket(bucketName);	
	}
	
// -------------------------------------------------------------------------------------------
	// Delete bucket
	@DeleteMapping(value = "delete",consumes= {"application/json"})
	public String deleteBucket(@RequestParam(name="bucketName") String bucketName) {
		return s3Service.deleteBucket(bucketName);		
	}

// -------------------------------------------------------------------------------------------
	// List all bucket
	@GetMapping(value = "list",consumes= {"application/json"})
	public List<Bucket> listAllBucket() {
		return s3Service.listAllBucket();	
	}

// -------------------------------------------------------------------------------------------
	// Upload file in bucket
	@PostMapping("/upload/{bucketName}")
	public String uploadFile(@RequestParam("file") MultipartFile file,@PathVariable String bucketName) {
		return s3Service.uploadFile(file,bucketName);
	}

// -------------------------------------------------------------------------------------------
    // Delete uploaded file
	@DeleteMapping("/delete-upload/{bucketName}/file/{fileName}")
	public String deleteUploadedFile(@PathVariable String bucketName,@PathVariable String fileName) {
		return s3Service.deleteUploadedFile(bucketName,fileName);
	}
	
// -------------------------------------------------------------------------------------------
	// Download file	
	 @GetMapping("/download-image/{fileName}/{bucketName}")
	  public ResponseEntity<ByteArrayResource> downloadImage(@PathVariable String fileName, @PathVariable String bucketName) {
	    byte[] dwFile = s3Service.downloadFile(fileName, bucketName);
	    ByteArrayResource resource = new ByteArrayResource(dwFile);
	    return ResponseEntity.ok()
	        .contentType(MediaType.IMAGE_PNG)
	        .body(resource);
	  }

}