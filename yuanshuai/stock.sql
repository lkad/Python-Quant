CREATE TABLE "STOCK_000001"(
            UUID VARCHAR2(80) PRIMARY KEY,
            "DATE" DATE NOT NULL,
            CODE VARCHAR2(20),
            NAME VARCHAR2(80),
            INDUSTRY VARCHAR2(80),
            CLASSIFY VARCHAR(80),
            OPEN NUMBER(20, 2),
            CLOSE NUMBER(20, 2),
            HIGH NUMBER(20, 2),
            LOW NUMBER(20, 2),
            VOLUME NUMBER(20, 1),
            AMOUNT NUMBER(20, 1),
            Y_CLOSE NUMBER(20, 2),
            P_CHANGE NUMBER(20, 2),
            P_CHANGE_RATE NUMBER(20, 6)
        );

COMMENT ON TABLE STOCK_000001 IS '平安银行',
COMMENT ON COLUMN STOCK_000001.UUID IS 'UUID';
COMMENT ON COLUMN STOCK_000001."DATE" IS '日期';
COMMENT ON COLUMN STOCK_000001.CODE IS '股票代码';
COMMENT ON COLUMN STOCK_000001.NAME IS '股票名称';
COMMENT ON COLUMN STOCK_000001.INDUSTRY IS '所属行业';
COMMENT ON COLUMN STOCK_000001.CLASSIFY IS '类别';
COMMENT ON COLUMN STOCK_000001.OPEN IS '开盘价';
COMMENT ON COLUMN STOCK_000001.CLOSE IS '收盘价';
COMMENT ON COLUMN STOCK_000001.HIGH IS '最高价';
COMMENT ON COLUMN STOCK_000001.LOW IS '最低价';
COMMENT ON COLUMN STOCK_000001.VOLUME IS '成交量';
COMMENT ON COLUMN STOCK_000001.AMOUNT IS '成交金额';
COMMENT ON COLUMN STOCK_000001.Y_CLOSE IS '昨收盘';
COMMENT ON COLUMN STOCK_000001.P_CHANGE IS '涨跌额';
COMMENT ON COLUMN STOCK_000001.P_CHANGE_RATE IS '涨跌幅';


# 上市公司基本信息表创建脚本
CREATE TABLE "YS"."STOCK_BASICS"
   ("CODE" VARCHAR2(10) PRIMARY KEY,  --股票代码
	"NAME" VARCHAR2(50),  --股票名称
	"INDUSTRY" VARCHAR2(50),  --所属产业
	"AREA" VARCHAR2(50),  --地区
	"PE" NUMBER(20,4),  --市盈率
	"OUTSTANDING" NUMBER(20,4),  --流通股本（亿）
	"TOTALS" NUMBER(20,4),  --总股本（亿）
	"TOTALASSETS" NUMBER(20,4),  --总资产（亿）
	"LIQUIDASSETS" NUMBER(20,4),  --流动资产（亿）
	"FIXEDASSETS" NUMBER(20,4),  --固定资产（亿）
	"RESERVED" NUMBER(20,4),  --公积金
	"RESERVEDPERSHARE" NUMBER(20,4),  --每股公积金
	"ESP" NUMBER(20,4),  --每股收益
	"BVPS" NUMBER(20,4),  --每股净资
	"PB" NUMBER(20,4),  --市净率
	"TIMETOMARKET" DATE,  --上市日期
	"UNDP" NUMBER(20,4),  -- 未分利润
	"PERUNDP" NUMBER(20,4),  --每股未分配
	"REV" NUMBER(20,4),  --收入同比（%）
	"PROFIT" NUMBER(20,4),  --利润同比（%）
	"GPR" NUMBER(20,4),  --毛利率（%）
	"NPR" NUMBER(20,4),  --净利润率（%）
	"HOLDERS" NUMBER(20,4),  --股东人数
	)