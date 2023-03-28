package com.anabada.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Auction {
	String auction_id;
	String user_email;
	String category_id;
	String auction_title;
	String auction_date;
	String auction_finish;
	int auction_price;
	String auction_content;
	String auction_quality;
	String auction_status;
	String uloc_id;
	String sloc_id;
}