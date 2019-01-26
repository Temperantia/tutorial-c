/*

principes :

- si tu sais pas, tu google
- moins tu codes, mieux c'est
- plus tu commentes, moins tu te plantes
- t'as tort, la machine a raison (encore plus en C)
- des gens ont déjà fait, et mieux que toi
- cherche pas tu codes mal, prend un linter et une norme
- sois pas un fdp, nomme tout

compilation :

PHASE           =>         compilation                 assemblage     linkage
TYPE DE FICHIER => source     ---> compilé intermédiaire  ---> binaire  ---> éxécutable = code machine
EXTENSION       => hello.c    ---> hello.s                ---> hello.o  ---> hello.exe / hello

précompilation => conversion des # en code source


types => https://intellipaat.com/tutorial/c-tutorial/c-data-types/


1 char = 1 character = 1 octet = 8 bits = 00000000 = 128 64 32 16 8 4 2 1
1 bit = 0 ou 1
'A' = 65 = 01000001

1 octet = 1 byte = 8 bits
00000000 = 0
11111111 = 255

16 bits = 2 octets

unsigned

int i = 257;
unsigned char c = i;
printf("%d\n", i); // 257
printf("%d\n", c); // 2


*/


