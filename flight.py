#!/usr/bin/env python3
import pandas as pd
flight=pd.read_csv("flightdelays.csv")
print(flight[flight["Origin"]=="SFO")]["ArrDelay"].head(3))
print(flight["Dest"].value_counts().head(3))
