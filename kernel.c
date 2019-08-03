void printtext(char *text)
{
	char *mem = (char*)0xb8000;
	while (*text)
	{
		*mem++ = *text++;
		*mem++ = 0x3;
	}
}
void kernel_main()
{
	printtext("HelloWorld!");
}
