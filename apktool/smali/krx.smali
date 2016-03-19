.class public final Lkrx;
.super Lkso;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkso",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lkso;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Lksm;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1207
    iget v0, p0, Lkrx;->c:I

    packed-switch v0, :pswitch_data_0

    .line 1220
    iget-object v0, p0, Lkrx;->a:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    .line 1221
    iget-boolean v0, p0, Lkrx;->d:Z

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lkrx;->b:[Lkss;

    iget v2, p0, Lkrx;->c:I

    invoke-static {v0, v2}, Lkxi;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkss;

    iput-object v0, p0, Lkrx;->b:[Lkss;

    .line 1224
    :cond_0
    iget-object v0, p0, Lkrx;->b:[Lkss;

    iget v2, p0, Lkrx;->c:I

    iget-object v3, p0, Lkrx;->a:Ljava/util/Comparator;

    .line 1228
    invoke-static {v3}, Lkxj;->a(Ljava/util/Comparator;)Lkxj;

    move-result-object v3

    invoke-static {}, Lkwj;->b()Lknj;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkxj;->a(Lknj;)Lkxj;

    move-result-object v3

    .line 1224
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1230
    :cond_1
    iget v0, p0, Lkrx;->c:I

    iget-object v2, p0, Lkrx;->b:[Lkss;

    array-length v2, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lkrx;->d:Z

    .line 1231
    iget v0, p0, Lkrx;->c:I

    iget-object v1, p0, Lkrx;->b:[Lkss;

    invoke-static {v0, v1}, Lkxm;->a(I[Ljava/util/Map$Entry;)Lkxm;

    move-result-object v0

    .line 1211
    :goto_1
    return-object v0

    .line 2042
    :pswitch_0
    sget-object v0, Lkxm;->b:Lkxm;

    goto :goto_1

    .line 1211
    :pswitch_1
    iget-object v0, p0, Lkrx;->b:[Lkss;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lkss;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lkrx;->b:[Lkss;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lkss;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkrw;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkrw;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1230
    goto :goto_0

    .line 1207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;
    .locals 0

    .prologue
    .line 2139
    invoke-super {p0, p1, p2}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    .line 121
    return-object p0
.end method
