#include <stdbool.h>
#include <stddef.h>

typedef struct {
    const char *key;
    void *value;
} ht_entry;

typedef struct {
    ht_entry *ht_entries;
    long capacity;
    long length;
} ht;

ht *create_ht() { return NULL; }

void destroy_ht(ht *_ht) { return; }

char *ht_get(ht *_ht, char *key) { return NULL; }

int ht_set(ht *_ht, char *key, void *value) { return 0; }

bool ht_del(ht *_ht, char *key) { return 0; }

long ht_length(ht *_ht) { return 0; }