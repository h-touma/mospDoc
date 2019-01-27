CREATE TABLE tmd_man_hour
(
  tmd_man_hour_id bigint NOT NULL DEFAULT 0,
  personal_id character varying(10) NOT NULL DEFAULT ''::character varying,
  ticket_no integer NOT NULL, 
  work_date date NOT NULL,
  man_hour timestamp without time zone,
  task_comment text NOT NULL DEFAULT ''::character varying,
  task_type_id integer NOT NULL DEFAULT 0,
  insert_date timestamp without time zone NOT NULL DEFAULT current_timestamp,
  insert_user character varying(50) NOT NULL DEFAULT ''::character varying,
  update_date timestamp without time zone NOT NULL DEFAULT current_timestamp,
  update_user character varying(50) NOT NULL DEFAULT ''::character varying,
  CONSTRAINT tmd_man_hour_pkey PRIMARY KEY (tmd_man_hour_id)
)
;
COMMENT ON TABLE tmd_man_hour IS '工数データ';
COMMENT ON COLUMN tmd_man_hour.tmd_man_hour_id IS 'レコード識別ID';
COMMENT ON COLUMN tmd_man_hour.personal_id IS '個人ID';
COMMENT ON COLUMN tmd_man_hour.ticket_no IS 'チケット';
COMMENT ON COLUMN tmd_man_hour.work_date IS '日付';
COMMENT ON COLUMN tmd_man_hour.man_hour IS '時間';
COMMENT ON COLUMN tmd_man_hour.task_comment IS 'コメント';
COMMENT ON COLUMN tmd_man_hour.task_type_id IS '活動ID';
COMMENT ON COLUMN tmd_man_hour.insert_date IS '登録日';
COMMENT ON COLUMN tmd_man_hour.insert_user IS '登録者';
COMMENT ON COLUMN tmd_man_hour.update_date IS '更新日';
COMMENT ON COLUMN tmd_man_hour.update_user IS '更新者';

--ALTER TABLE  tmd_man_hour ADD FOREIGN KEY (ticket_no) REFERENCES 工数マスタテーブル (チケット番号) ;
--ALTER TABLE  tmd_man_hour ADD FOREIGN KEY (task_type_id) REFERENCES 活動マスタテーブル (活動ID) ;


CREATE SEQUENCE public.tmd_man_hour_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.tmd_man_hour_id_seq
    OWNER TO postgres;

GRANT ALL ON SEQUENCE public.tmd_man_hour_id_seq TO postgres;

GRANT ALL ON SEQUENCE public.tmd_man_hour_id_seq TO usermosp;