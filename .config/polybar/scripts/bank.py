#!/home/iyed/.pyenv/versions/3.6.5/bin/python

import requests
from bs4 import BeautifulSoup as bs
import os
import sys
from ballpark import business

url = "https://webank.com.tn/fr/client/auth"

s = requests.Session()
s.get(url)
form_data = {
    "email": "iyed.ghdemsi@gmail.com",
    "password": "k*np8wJjpA",
    "csrf_md_cms": s.cookies.get("md_csrf_webank_name"),
}


r = s.post(url, data=form_data)
raw_solde_compte, raw_solde_disponible = [
    tag.text
    for tag in bs(r.content, "lxml").find_all("span", attrs={"class": "solde-compte"})
]

solde_compte = float(
    raw_solde_compte.replace(",", ".").replace(" ", "").replace("TND", "")
)
solde_disponible = float(
    raw_solde_disponible.replace(",", ".").replace(" ", "").replace("TND", "")
)
sys.stdout.write(f"{business(solde_compte)} | {business(solde_disponible)}")
