import random
import string

def cena_na_liczbe(text):
    clean_text = text.replace('zł', '').replace(',', '.')
    float_value = float(clean_text)
    return float_value

def generate_random_string(length=10, chars=string.ascii_lowercase + string.digits):
    return ''.join(random.choice(chars) for _ in range(length))