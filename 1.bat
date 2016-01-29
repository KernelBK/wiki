
for /f "delims=" %%a in ('dir/ad/b .') do (
	echo %%~nxa
	echo %%~a
)
