.class final Lkxu;
.super Lktu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lktu",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final c:Lkxu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkxu",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient d:Lksf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lksf",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lkxu;

    .line 3064
    sget-object v1, Lkxr;->a:Lksf;

    .line 3147
    sget-object v2, Lkxf;->a:Lkxf;

    .line 49
    invoke-direct {v0, v1, v2}, Lkxu;-><init>(Lksf;Ljava/util/Comparator;)V

    sput-object v0, Lkxu;->c:Lkxu;

    .line 48
    return-void
.end method

.method constructor <init>(Lksf;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lksf",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p2}, Lktu;-><init>(Ljava/util/Comparator;)V

    .line 55
    iput-object p1, p0, Lkxu;->d:Lksf;

    .line 56
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 280
    if-nez p1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    :try_start_0
    iget-object v1, p0, Lkxu;->d:Lksf;

    .line 2264
    iget-object v2, p0, Lkxu;->a:Ljava/util/Comparator;

    .line 286
    sget-object v3, Lkyh;->a:Lkyh;

    sget-object v4, Lkyd;->c:Lkyd;

    .line 285
    invoke-static {v1, p1, v2, v3, v4}, Laal;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lkyh;Lkyd;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 290
    if-ltz v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method a([Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lkxu;->d:Lksf;

    invoke-virtual {v0, p1, p2}, Lksf;->a([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method a(Ljava/lang/Object;Z)Lktu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lkxu;->e(Ljava/lang/Object;Z)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkxu;->a(II)Lkxu;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lktu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0, p1, p2}, Lkxu;->b(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lktu;->a(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    return-object v0
.end method

.method a(II)Lkxu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkxu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 268
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lkxu;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 274
    :goto_0
    return-object p0

    .line 270
    :cond_0
    if-ge p1, p2, :cond_1

    .line 271
    new-instance v0, Lkxu;

    iget-object v1, p0, Lkxu;->d:Lksf;

    .line 272
    invoke-virtual {v1, p1, p2}, Lksf;->a(II)Lksf;

    move-result-object v1

    iget-object v2, p0, Lkxu;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lkxu;-><init>(Lksf;Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lkxu;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lkxu;->a(Ljava/util/Comparator;)Lkxu;

    move-result-object p0

    goto :goto_0
.end method

.method public a()Lkyp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkyp",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lkxu;->d:Lksf;

    invoke-virtual {v0}, Lksf;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/Object;Z)Lktu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0, p1, p2}, Lkxu;->f(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lkxu;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkxu;->a(II)Lkxu;

    move-result-object v0

    return-object v0
.end method

.method public c()Lkyp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkyp",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lkxu;->d:Lksf;

    invoke-virtual {v0}, Lksf;->d()Lksf;

    move-result-object v0

    invoke-virtual {v0}, Lksf;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lkxu;->f(Ljava/lang/Object;Z)I

    move-result v0

    .line 216
    invoke-virtual {p0}, Lkxu;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lkxu;->d:Lksf;

    invoke-virtual {v1, v0}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 77
    if-eqz p1, :cond_0

    .line 1135
    :try_start_0
    iget-object v1, p0, Lkxu;->d:Lksf;

    .line 1264
    iget-object v2, p0, Lkxu;->a:Ljava/util/Comparator;

    .line 1135
    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 79
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    instance-of v2, p1, Lkxe;

    if-eqz v2, :cond_0

    .line 90
    check-cast p1, Lkxe;

    invoke-interface {p1}, Lkxe;->a()Ljava/util/Set;

    move-result-object p1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lkxu;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v2, p1}, Laal;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-gt v2, v0, :cond_3

    .line 93
    :cond_1
    invoke-super {p0, p1}, Lktu;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 131
    :cond_2
    :goto_0
    return v0

    .line 100
    :cond_3
    invoke-virtual {p0}, Lkxu;->a()Lkyp;

    move-result-object v2

    invoke-static {v2}, Lkty;->d(Ljava/util/Iterator;)Lkxk;

    move-result-object v3

    .line 101
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 102
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 106
    :cond_4
    :goto_1
    :try_start_0
    invoke-interface {v3}, Lkxk;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 108
    invoke-interface {v3}, Lkxk;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lkxu;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 110
    if-gez v5, :cond_5

    .line 111
    invoke-interface {v3}, Lkxk;->next()Ljava/lang/Object;

    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 112
    :cond_5
    if-nez v5, :cond_6

    .line 114
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_1

    .line 121
    :cond_6
    if-lez v5, :cond_4

    move v0, v1

    .line 122
    goto :goto_0

    .line 128
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 131
    goto :goto_0
.end method

.method d()Lktu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lkxu;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lkxj;->a(Ljava/util/Comparator;)Lkxj;

    move-result-object v0

    invoke-virtual {v0}, Lkxj;->c()Lkxj;

    move-result-object v1

    .line 301
    invoke-virtual {p0}, Lkxu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {v1}, Lkxu;->a(Ljava/util/Comparator;)Lkxu;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkxu;

    iget-object v2, p0, Lkxu;->d:Lksf;

    invoke-virtual {v2}, Lksf;->d()Lksf;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lkxu;-><init>(Lksf;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lkxu;->c()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method e(Ljava/lang/Object;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v1, p0, Lkxu;->d:Lksf;

    .line 233
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 234
    invoke-virtual {p0}, Lkxu;->comparator()Ljava/util/Comparator;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 235
    sget-object v0, Lkyh;->d:Lkyh;

    :goto_0
    sget-object v4, Lkyd;->b:Lkyd;

    .line 231
    invoke-static {v1, v2, v3, v0, v4}, Laal;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lkyh;Lkyd;)I

    move-result v0

    return v0

    .line 235
    :cond_0
    sget-object v0, Lkyh;->c:Lkyh;

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lkxu;->d:Lksf;

    invoke-virtual {v0}, Lksf;->e()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    if-ne p1, p0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_2

    move v0, v1

    .line 154
    goto :goto_0

    .line 157
    :cond_2
    check-cast p1, Ljava/util/Set;

    .line 158
    invoke-virtual {p0}, Lkxu;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 159
    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p0}, Lkxu;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    iget-object v2, p0, Lkxu;->a:Ljava/util/Comparator;

    invoke-static {v2, p1}, Laal;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 165
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lkxu;->a()Lkyp;

    move-result-object v3

    .line 168
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 171
    if-eqz v5, :cond_5

    invoke-virtual {p0, v4, v5}, Lkxu;->a(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_4

    :cond_5
    move v0, v1

    .line 172
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 179
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 182
    :cond_6
    invoke-virtual {p0, p1}, Lkxu;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method f(Ljava/lang/Object;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v1, p0, Lkxu;->d:Lksf;

    .line 253
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 254
    invoke-virtual {p0}, Lkxu;->comparator()Ljava/util/Comparator;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 255
    sget-object v0, Lkyh;->c:Lkyh;

    :goto_0
    sget-object v4, Lkyd;->b:Lkyd;

    .line 251
    invoke-static {v1, v2, v3, v0, v4}, Laal;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lkyh;Lkyd;)I

    move-result v0

    return v0

    .line 255
    :cond_0
    sget-object v0, Lkyh;->d:Lkyh;

    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lkxu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Lkxu;->d:Lksf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lkxu;->e(Ljava/lang/Object;Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 210
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lkxu;->d:Lksf;

    invoke-virtual {v1, v0}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method g()Lksf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lksf",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lkxu;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lkxu;->d:Lksf;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lktn;

    iget-object v1, p0, Lkxu;->d:Lksf;

    invoke-direct {v0, p0, v1}, Lktn;-><init>(Lktu;Lksf;)V

    goto :goto_0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkxu;->f(Ljava/lang/Object;Z)I

    move-result v0

    .line 222
    invoke-virtual {p0}, Lkxu;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lkxu;->d:Lksf;

    invoke-virtual {v1, v0}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lkxu;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0}, Lkxu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lkxu;->d:Lksf;

    invoke-virtual {p0}, Lkxu;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkxu;->e(Ljava/lang/Object;Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 204
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lkxu;->d:Lksf;

    invoke-virtual {v1, v0}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lkxu;->d:Lksf;

    invoke-virtual {v0}, Lksf;->size()I

    move-result v0

    return v0
.end method
