writer:
	gcc writer.c -o ../writer
aarch64-none-linux-gnu-:
	arch64-none-linux-gnu-gcc finder-app/writer.c -o writer
clean:
	rm -f writer
