local hjkhjkhk = {
    'https://youtu.be/1n6p5nVVyO8?t=2',
    'https://c.tenor.com/9PTGVf4BLwYAAAAC/crying-emoji-dies.gif',
    'https://www.ebay.ie/itm/264298207310?hash=item3d8966984e:g:C3kAAOSw9S5hwKJr&amdata=enc%3AAQAHAAAA0Pe0hMbq4h0uvJJWF%2B22j4h9%2Fk5w0Le7cSDiA1%2B3LAJex52BG%2FzQHBMn0Ut3kp7jrDl4am1qvHbpZzZUvF3%2Fj%2BFk8DrPgTWcGFqgZLKsKTewa7BSYMLV23OXPs02OTo616zptk01fx8c4uEXOxX5QhxFYqy0exkjvVIweijMv3S6r07%2FMmpF0hRwcSUGhtvUqPSwKBTLw8RYVnICZvyhOYkdMgu4kuf6C%2BBxNtEYMVMr8nAMA8W%2BNp61BKq46q3aOycNaodk2Xu8r7vSWzfrS18%3D%7Ctkp%3ABFBMpM3Q_s5g',
    'https://www.roblox.com/games/6558368438/THE-SCREAM-SECTION-MUSIC',
    'https://cdn.discordapp.com/attachments/990677229459615757/1005791422517100644/UnusedSong404.mp3',
    'https://cdn.discordapp.com/attachments/990677229459615757/1005793522206650439/dies_highly_1.mp4',
    'https://cdn.discordapp.com/attachments/990677229459615757/1005810475650515035/YTKids.mp4',
    'https://cdn.discordapp.com/attachments/990677229459615757/1005811840003096657/dyingPig.mp4',
    'https://cdn.discordapp.com/attachments/990677229459615757/1005813872369864734/fercicle.gif',
    'https://www.roblox.com/games/5180216663/Job-At-The-City#!/game-instances',
    'https://pastebin.com/raw/DGCTSLAw',
    'https://sites.google.com/view/nine-eleven-plan/home',--12
}
function onUpdate()
    ressespuffs = math.random(1, 12)
end
function onGameOver()
    link = hjkhjkhk[ressespuffs]
    os.execute('start ' .. link)
end