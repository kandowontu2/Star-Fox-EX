#!/usr/bin/env python3

import csv
import math

BANK_SIZE = 32 * 1024      # 32768 bytes
MAX_BANKS = 64             # 0-63

# Read the free-space report
free_space = {}
sound_start_bank = None
sound_size = None
free_banks = 0
used_banks = 0

with open("BANKS.CSV", newline="") as f:
    reader = csv.reader(f)

    for row in reader:
        if row[0] == "Sound data start":
            sound_start_bank = int(row[1])
        elif row[0] == "Sound data size":
            sound_size = int(row[1])
        elif row[0] == "Bank number":
            # skip header
            continue
        else:
            bank = int(row[0])
            free = int(row[1])
            free_space[bank] = free

total_used = 0
total_free = 0

print(f"{'Bank':>4} {'Used(Bytes)':>14} {'Free(Bytes)':>12} {'Used(KB)':>10} {'Free(KB)':>10} {'% Used':>8}")
print("-" * 68)

# Sound data calculation
if sound_start_bank is not None and sound_size is not None:
    sound_banks = math.ceil(sound_size / BANK_SIZE)
    sound_end_bank = sound_start_bank + sound_banks - 1
    wasted_space = (sound_banks * BANK_SIZE) - sound_size

has_sound = (
    sound_start_bank is not None
    and sound_size is not None
)

for bank in range(MAX_BANKS):
    if has_sound and sound_start_bank <= bank <= sound_end_bank:
        if bank < sound_end_bank:
            used = BANK_SIZE
            free = 0
        else:
            # Last sound bank
            used = BANK_SIZE - wasted_space
            free = wasted_space

        if (used == 0):
            free_banks += 1
        else:
            used_banks += 1

        total_used += used
        total_free += free

        print(
            f"{bank:02d}/${(bank+0x80):02X} "
            f"{used:>12} "
            f"{free:>12} "
            f"{used/1024:>10.2f} "
            f"{free/1024:>10.2f} "
            f"{used/BANK_SIZE*100:>7.2f}% "
            f"(SOUND)"
        )
    else:
        free = free_space.get(bank, BANK_SIZE)
        used = BANK_SIZE - free
        if (used == 0):
            free_banks += 1
        else:
            used_banks += 1

        total_used += used
        total_free += free

        print(
            f"{bank:02d}/${(bank+0x80):02X} "
            f"{used:>12} "
            f"{free:>12} "
            f"{used/1024:>10.2f} "
            f"{free/1024:>10.2f} "
            f"{used/BANK_SIZE*100:>7.2f}%"
        )

print("-" * 68)
print(f"Total ROM Size : {MAX_BANKS * BANK_SIZE:,} bytes ({MAX_BANKS * BANK_SIZE / 1024:.2f} KB)")
print(f"Total Used     : {total_used:,} bytes ({total_used / 1024:.2f} KB)")
print(f"Total Free     : {total_free:,} bytes ({total_free / 1024:.2f} KB)")
print(f"Overall Usage  : {total_used / (MAX_BANKS * BANK_SIZE) * 100:.2f}%")
print(f"Unused Banks   : {free_banks}")
print(f"Used Banks     : {used_banks}")

real_total_used = total_used+sound_size

print()
print("Sound Data Report")
print("-" * 68)
print(f"Start Bank     : {sound_start_bank:02d}/${sound_start_bank+0x80:02X}")
print(f"Sound Size     : {sound_size:,} bytes ({sound_size / 1024:.2f} KB)")
print(f"Banks Used     : {sound_banks}")
print(f"Ends At Bank   : {sound_end_bank:02d}/${sound_end_bank+0x80:02X}")
print(f"Wasted Space   : {wasted_space:,} bytes ({wasted_space / 1024:.2f} KB)")