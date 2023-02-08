package com.newlecture.web.poly;

public class ExamConsole {
	static void printIntro(Banner banner) {
		
		System.out.println("┌────────────────────────────────┐");
		System.out.println("              베너");
		System.out.println("메인 메뉴 항목들....");
		banner.print();
		System.out.println("└────────────────────────────────┘");
	}
}
