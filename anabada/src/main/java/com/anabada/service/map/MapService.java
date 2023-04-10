package com.anabada.service.map;

import org.springframework.stereotype.Service;

import com.anabada.domain.Location;

@Service
public interface MapService {

    Location findLocation(String loc_id);

    int insertLocation(Location location);

    Location findBoardLocation(String board_no);

    int updateLocation(Location location);
    
}
