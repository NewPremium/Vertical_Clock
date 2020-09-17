#-*- coding: utf-8 -*-

# Modules import
import platform
import datetime
import time
import os

if __name__ == "__main__":

    # 기초 설정

    # 시계 새로고침 기준(초)
    refreshtime = 10

    if platform.system() == "Windows":
        clean_code = "cls"
        # Set window size
        os.system("mode.com con cols=30 lines=22")
    else:
        clean_code = "clear"

    print("""
    1. 12시간 기준 시계
    2. 24시간 기준 시계
""")
    clock_layout = input("당신의 선택은?(1/2) : ")

    while True:

        # 시간 업데이트
        now = datetime.datetime.now()

        # 화면 초기화
        os.system(clean_code)

        # 시계 시간 기준 설정
        if clock_layout == 1:
            hour = now.hour
            if now.hour >= 13:
                hour -= 12
        else:
            hour = now.hour

        # 출력 숫자 파일명 설정
        if hour >= 0 and hour < 10:
            hour = "0%s" %hour
        hour = str(hour)
        
        # 시 출력 설정
        file = open("num/%s.txt" %hour , "r", encoding = 'UTF-8')
        TimeHour = file.read()
        file.close()

        # 분 설정
        minute = now.minute
        if minute >= 0 and minute < 10:
            minute = "0%s" %minute
        minute = str(minute)

        # 분 출력 설정
        file = open("num/%s.txt" %minute , "r", encoding = 'UTF-8')
        TimeMinute = file.read()
        file.close()
        
        # 출력
        print("\033[37m" + TimeHour + "\033[0m")
        print("\033[37m" + "==============================")
        print("\033[37m" + f"   {now.year} - {now.month} - {now.day}" + "\033[0m")
        print("\033[37m" + "==============================" + "\033[0m")
        print("\033[37m" + TimeMinute + "\033[0m")

        # 변수 초기화
        hour = ""
        minute = ""
        TimeHour = ""
        TimeMinute = ""

        try:
            time.sleep(refreshtime)
        except KeyboardInterrupt:
            print("종료합니다.")
            exit()