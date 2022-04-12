#include <stdio.h>
extern short massiv(short * a, short c, short d, short num, short l);

int main() {
    short N, L;
    puts("Сколько элементов в массиве?: ");
    scanf("%hi", &N);
    short a[N];
    int c, d;
    puts("Введите c, d:");
    scanf("%d%d", &c, &d);
    puts("Введите L: ");
    scanf("%hi", &L);
    printf("Введите массив %d элементов( a[i] = [-32,768 : 32,767] )\n", N);
    for (int i = 0; i < N; i++) {
        printf("a[%d] = ", i);
        scanf("%hi", &a[i]);
    }
    printf("Произведение = %hi\n", massiv(a, c, d, N, L));
    return 0;
}
