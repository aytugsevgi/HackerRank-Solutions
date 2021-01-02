def queensAttack(n, k, r_q, c_q, obstacles):
    solaUzaklik = c_q - 1
    sagaUzaklik = n - c_q
    yukariUzaklik = n - r_q
    asagiUzaklik = r_q - 1
    uzakliklar = [solaUzaklik,sagaUzaklik,yukariUzaklik,asagiUzaklik]
    uzakliklar = sorted(uzakliklar)
    a = uzakliklar[0]
    queen = [r_q,c_q]
    toplam = 3*(n-1) + 2*a
    temp = 0
    engelTopToplam = 0
    engelBottomToplam = 0
    engelLeftToplam = 0
    engelRightToplam = 0
    engelTopRightToplam = 0
    engelTopLeftToplam = 0
    engelBottomLeftToplam = 0
    engelBottomRightToplam = 0
    for obstacle in obstacles:
        if obstacle[1] == queen[1]: # Aynı dikey hizada
            if(obstacle[0] > queen[0]): #Engel üstte ise
                temp = n - obstacle[0] + 1
                if temp > engelTopToplam:
                    engelTopToplam = temp
            else:   # Engel altta ise
                temp = obstacle[0]
                if temp > engelBottomToplam:
                    engelBottomToplam = temp
        if obstacle[0] == queen[0]: # Aynı yatay hizada
            if obstacle[1] > queen[1]: # Engel sağda ise
                temp = n - obstacle[1] + 1
                if temp > engelRightToplam:
                    engelRightToplam = temp
            else: #Engel solda ise
                temp = obstacle[1]
                if temp >engelLeftToplam:
                    engelLeftToplam = temp
        if ((queen[0] - queen[1]) == (obstacle[0] - obstacle[1])): #Altsol-Üstsağ 
            if queen[0] > obstacle[0]: #Altsolda obstacle var
                if(obstacle[0]<obstacle[1]):
                    temp = obstacle[0]
                    if(temp>engelBottomLeftToplam):
                        engelBottomLeftToplam = temp
                else:
                    temp = obstacle[1]
                    if(temp>engelBottomLeftToplam):
                        engelBottomLeftToplam = temp
            else:  # Üstsağda obstacle var
                if(obstacle[0]>obstacle[1]):
                    temp = n - obstacle[0] + 1
                    if(temp>engelTopRightToplam):
                        engelTopRightToplam = temp
                else:
                    temp = n - obstacle[1] + 1
                    if(temp>engelTopRightToplam):
                        engelTopRightToplam = temp
        if ((queen[0]+queen[1])==(obstacle[0]+obstacle[1])) : #Altsağ-Üstsol çapraz
            if queen[0] > obstacle[0]: #Altsağda obstacle var
                if obstacle[0] < n - obstacle[1] + 1:
                    temp = obstacle[0]
                    if temp > engelBottomRightToplam:
                        engelBottomRightToplam = temp
                else:
                    temp = n - obstacle[1] + 1
                    if temp > engelBottomRightToplam:
                        engelBottomRightToplam = temp
            else:  #Üstsolda obstacle var
                if n - obstacle[0] + 1 > obstacle[1]:
                    temp =  obstacle[1] 
                    if temp > engelTopLeftToplam:
                        engelTopLeftToplam = temp
                else:
                    temp =  n - obstacle[0] + 1
                    if temp > engelTopLeftToplam:
                        engelTopLeftToplam = temp
    toplam = toplam - engelTopToplam - engelBottomToplam - engelLeftToplam 
    toplam = toplam - engelRightToplam - engelTopRightToplam - engelTopLeftToplam 
    toplam = toplam - engelBottomLeftToplam - engelBottomRightToplam 
     
    return toplam   
