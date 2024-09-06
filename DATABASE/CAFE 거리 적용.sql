/* 1. distance.py 실행해서 카페 거리 추출 */

/* 2. distance.py을 통해서 추출된 DISTANCE.csv를 import할 cafe_distance 테이블 생성*/
CREATE TABLE CAFE_DISTANCE (
  CAFE_ID INT NOT NULL,
  CAFE_NAME VARCHAR(100) NULL,
  LATITUDE DOUBLE NULL,
  LONGITUDE DOUBLE NULL,
  DISTANCE INT NULL,
  METER INT NULL,  
  PRIMARY KEY (CAFE_ID)
);    

/* 3. DISTANCE.csv import */

/* 4.  CAFE_DISTANCE.DISTANCE 를 CAFE.DISTANCE 에 적용*/
UPDATE CAFE
JOIN CAFE_DISTANCE ON CAFE.CAFE_ID = CAFE_DISTANCE.CAFE_ID
SET 
    CAFE.DISTANCE = CAFE_DISTANCE.DISTANCE,
    CAFE.METER = CAFE_DISTANCE.METER;


/* 5. DROP CAFE_DISTANCE  */
DROP TABLE CAFE_DISTANCE;

