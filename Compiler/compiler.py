from enum import Enum

INSTRUCTIONS = ["add","addeq","addlt","addgt","addle",
                "adr","sub","subeq","sublt","subgt","suble",
                "mul","muleq","mullt","mulgt","mulle",
                "div","diveq","divlt","divgt","divle",
                "adc","mov","asr","lsl","lsr","cmp","bnd","pxl",
                "inv","iin","gtc","adr"]

BRANCHES =["b","beq","blt","bgt","ble","bl","bleq","bllt","blgt","blle"]
CONDITIONS_BRANCH={"eq":"00001010","lt":"10111010","gt":"11001010","le":"11011010",
            "llt":"10111011","lgt":"11001011","lle":"11011011", "l":"00001011"}

CONDITIONS={"eq":"0000","lt":"1011","gt":"1100","le":"1101",
            "llt":"1011","lgt":"1100","lle":"1101", "l":"0000"}

CURRENT_INSTR = 0

LABELS=[]

#Los labels deben llevar un punto al inicio

def read_file():
    file = open("file.dat","r")
    cont = 0
    for line in file:
        linea=format_instruc(line)
        verify_instr(linea)
        index=0
        if has_label:
            LABELS.append([linea[0],cont])
            index=1
        '''if CURRENT_INSTR == Instruction_Enum.Label:
            if len(linea)>1: #label con instruccion en misma linea
              	verify_instr(linea[1])
            	LABELS.append([linea[0],cont])
                cont+=1
            else:
              	LABELS.append([linea[0],cont])'''
        if CURRENT_INSTR == Instruction_Enum.Branch:
            compile_branch(linea[index]) #le indico cual es el label
            cont+=1
        elif CURRENT_INSTR == Instruction_Enum.Other:
            compile_reg(linea[index:]) #le indico cual es el label
            cont+=1
        
    file.close()
    

def format_instruc(line):
    line=line.rstrip("\n")
    line = line.split(" ")
    while(True):
        if '' in line:
            line.remove('')
        else:
            break
    for i in range(0,len(line)):
        if ',' in line[i]:
            elem=line[i].split(",")
            if elem[1]=='':
                line[i] = elem[0]
            else:
                line.append(elem[1])
                break
    return line


#Input: la instruccion
def verify_instr(linea):
    global CURRENT_INSTR, has_label
    instr=linea[0]
    has_label=False
    if linea[0][0] ==".":
        has_label=True
        if len(linea)>1:
            instr=linea[1]
        else:
            CURRENT_INSTR = Instruction_Enum.Label
            return
          
    instr = instr.lower()
    if instr in INSTRUCTIONS:
    	CURRENT_INSTR = Instruction_Enum.Other
    elif instr in BRANCHES:
    	CURRENT_INSTR = Instruction_Enum.Branch
    else:
        print("Error 01: Instruction not found.")

def compile_branch(linea,current_add):
    found = False
    pos= 0
    condition-"00001010"
    for lista in LABELS:
        if label in lista:
            found = True
            pos=lista[1]
            break
    if found:
        for key, value in CONDITIONS_BRANCH.items():
            if key in linea[0]:
                condition=value
                break
        offset= current_add - LABELS.get(linea[1])
        offset = "{:024b}".format(offset)
        offset = "{:.24}".format(offset)
        #se concatena el condition con el offset
    else:
    	print("Error 02: No se encontro el label: "+label)


def compile_reg(lista):
    reg1= lista[1]
    if lista[2][0] == "r":
    	reg2=lista[2]
    else:
      	num= num_to_bin(lista[2])

def compile_reg_reg():
    a=1

def num_to_bin(num):
    if num[0]=='#':
        if '0x' in num:
            num="{0:b}".format(int(num[1:],16))
        else:
            num= "{0:b}".format(int(num[1:]))
    elif num[0]=='=':
        if '0x' in num:
            num="{0:b}".format(int(num[1:],16))
        else:
            num= "{0:b}".format(int(num[1:]))
    elif '0x' in num:
    	num="{0:b}".format(int(num,16))
    else:
      	print("Error 03: Numero no valido.")
    print (num)
    

class Instruction_Enum(Enum):
    Branch = 1
    Other = 2
    RegImm = 3
    RegReg = 4
    Label = 5
#"{0:b}".format(int("0xF",16))
read_file()
