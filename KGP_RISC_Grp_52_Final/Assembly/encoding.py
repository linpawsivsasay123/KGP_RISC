OPCODE = {
    "add": 0, "comp": 0,
    "and": 0, "xor": 0,
    "diff": 0,
    "shll": 0, "shrl": 0,
    "shllv": 0, "shrlv": 0,
    "shra": 0, "shrav": 0,
    "addi": 8, "compi": 9,
    "lw": 16, "sw": 24,
    "b": 40, "br": 32,
    "bltz": 48, "bz": 49,
    "bnz": 50, "bl": 43,
    "bcy": 41, "bncy": 42,
    
}


RFORMATS = {
    "add", "comp",
    "and", "xor",
    "diff",
    "shll", "shrl",
    "shllv", "shrlv",
    "shra", "shrav",
    }


FUNCODE = {
    "add": 1, "comp": 5,
    "and": 2, "xor": 3,
    "diff": 4,
    "shll": 12, "shrl": 14,
    "shllv": 8, "shrlv": 10,
    "shra": 15, "shrav": 11,
    
}