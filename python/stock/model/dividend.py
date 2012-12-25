import uuid

from sqlalchemy import Column, Float, Integer, String, DateTime, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.ext.declarative import declarative_base

from utils.app_util import get_now, get_data

Base = declarative_base()

class Dividend(Base):
	__tablename__ = 'dividend'

	id=Column(String, primary_key=True)
	stock_code = Column(String)
	stock_name = Column(String)
	created_time = Column(String)

	register_date = Column(String)
	stock_count = Column(Float)
	trans_date = Column(String)
	end_value = Column(Float)
	trans_value = Column(Float)
	unit_tax = Column(Float)
	unit_no_tax = Column(Float)

	def __init__(self, stock, data):
		self.id = uuid.uuid1()
		self.stock_code = stock.code
		self.stock_name = stock.name
		self.created_time = get_now(0)

		self.register_date = get_data(data[0])
		self.stock_count =  get_data(data[1])
		self.trans_date =  get_data(data[2])
		self.end_value =  get_data(data[3])
		self.trans_value = get_data(data[4])
		self.unit_tax =  get_data(data[5])
		self.unit_no_tax =  get_data(data[6])
