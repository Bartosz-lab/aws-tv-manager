import json
import boto3
import psycopg2
import os
import datetime

def default(o):
    if isinstance(o, (datetime.date, datetime.datetime)):
        return o.isoformat()


def updateTvTimestamp(cursor, ip):
    query ='''INSERT INTO public."TVS" (ip_addr, supervisor_id, location_id, available, last_seen) \
    VALUES('{0}', 1, 1, true, NOW()) \
    ON CONFLICT (ip_addr) \
    DO UPDATE SET last_seen = NOW();'''.format(ip)
    cursor.execute(query)
    
  
def getCredentials():
    return {
        'username': os.environ['username'],
        'password': os.environ['password'],
        'host': os.environ['host_writer'],
        'db': os.environ['db']
    }
    
def lambda_handler(event, context):
    credential = getCredentials()
    connection = psycopg2.connect(
        user=credential['username'],
        password=credential['password'],
        host=credential['host'],
        database=credential['db']
    )
    
    cursor = connection.cursor()
    updateTvTimestamp(cursor, event['IP'])
  
    cursor.close()
    connection.commit()
  
    return "Updated timestamp for {0}".format(event['IP'])