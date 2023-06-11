for /f "Tokens=*" %%f in ('dir /l/b') do (rename "%%f" "%%f")
for /r /d %%x in (*) do (
    pushd "%%x"
    for /f "Tokens=*" %%f in ('dir /l/b') do (rename "%%f" "%%f")
    popd
)