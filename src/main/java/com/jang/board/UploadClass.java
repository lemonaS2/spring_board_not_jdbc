package com.jang.board;

import java.util.UUID;

public class UploadClass {
	
	//÷���� ���ϸ��� �޾Ƽ� Ȯ���ڸ� ����, //��Ʈ������ �Ѿ���� ���ϸ��� fileName
	//static ���̸� �ٸ������� ����Ҷ� ��ü�� �����ʿ䰡 ����
	public static String getExt(String fileName){
		//abcdef.jps => .jpg
		//adc.def.png => .png
		
		int last = fileName.lastIndexOf(".");
//		 "unhappy".substring(2) returns "happy"
//		 "Harbison".substring(3) returns "bison"
//		 "emptiness".substring(9) returns "" (an empty string)
		return fileName.substring(last);
	
	}
		//UUID�� ����ƽ Ŭ����(���� �ƹ��ų� �������� ��������), toString���� ���ڷ� �ٲ�, replaceAll( ) <-�ȿ����� �����Ų�ٴ¶�
		//ex)123213123123123<--Ÿ�ӽ����� asdasdasdsa-djasldkajkldasjldk
		public static String getUUid(){
			//replaceAll asdsad-sadads ���̿� - ����
			String tmp = UUID.randomUUID().toString().replaceAll("-", "");
			//�ߺ��� �ȴٸ� System.currentTimeMillis()+�� �̿��ؼ� �ð����༭ �ߺ��� ����,Ÿ�ӽ�����
			return System.currentTimeMillis()+tmp;
		}
	
	
}