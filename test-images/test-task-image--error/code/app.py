"""Test task code for ETL jobs using Fargate."""
import time


print("## Start task")
for i in range(1, 30):
    print("Running loop:", i)
    time.sleep(1)

    if 15 < i:
        raise Exception("!!Test exception!!")


print("## End task")
