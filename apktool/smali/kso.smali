.class public Lkso;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation
.end field

.field b:[Lkss;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkss",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lkso;-><init>(I)V

    .line 173
    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-array v0, p1, [Lkss;

    iput-object v0, p0, Lkso;->b:[Lkss;

    .line 178
    iput v1, p0, Lkso;->c:I

    .line 179
    iput-boolean v1, p0, Lkso;->d:Z

    .line 180
    return-void
.end method


# virtual methods
.method public a()Lksm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lksm",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 271
    iget v0, p0, Lkso;->c:I

    packed-switch v0, :pswitch_data_0

    .line 284
    iget-object v0, p0, Lkso;->a:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    .line 285
    iget-boolean v0, p0, Lkso;->d:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lkso;->b:[Lkss;

    iget v2, p0, Lkso;->c:I

    invoke-static {v0, v2}, Lkxi;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkss;

    iput-object v0, p0, Lkso;->b:[Lkss;

    .line 288
    :cond_0
    iget-object v0, p0, Lkso;->b:[Lkss;

    iget v2, p0, Lkso;->c:I

    iget-object v3, p0, Lkso;->a:Ljava/util/Comparator;

    .line 292
    invoke-static {v3}, Lkxj;->a(Ljava/util/Comparator;)Lkxj;

    move-result-object v3

    invoke-static {}, Lkwj;->b()Lknj;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkxj;->a(Lknj;)Lkxj;

    move-result-object v3

    .line 288
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 294
    :cond_1
    iget v0, p0, Lkso;->c:I

    iget-object v2, p0, Lkso;->b:[Lkss;

    array-length v2, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lkso;->d:Z

    .line 295
    iget v0, p0, Lkso;->c:I

    iget-object v1, p0, Lkso;->b:[Lkss;

    invoke-static {v0, v1}, Lkxs;->a(I[Ljava/util/Map$Entry;)Lkxs;

    move-result-object v0

    :goto_1
    return-object v0

    .line 3042
    :pswitch_0
    sget-object v0, Lkxm;->b:Lkxm;

    goto :goto_1

    .line 275
    :pswitch_1
    iget-object v0, p0, Lkso;->b:[Lkss;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lkss;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lkso;->b:[Lkss;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lkss;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3070
    invoke-static {v0, v1}, Lkrw;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkrw;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 294
    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lkso",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 196
    iget v0, p0, Lkso;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 1183
    iget-object v1, p0, Lkso;->b:[Lkss;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 1184
    iget-object v1, p0, Lkso;->b:[Lkss;

    iget-object v2, p0, Lkso;->b:[Lkss;

    array-length v2, v2

    .line 1186
    invoke-static {v2, v0}, Lksb;->a(II)I

    move-result v0

    .line 1185
    invoke-static {v1, v0}, Lkxi;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkss;

    iput-object v0, p0, Lkso;->b:[Lkss;

    .line 1187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkso;->d:Z

    .line 197
    :cond_0
    invoke-static {p1, p2}, Lksm;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkss;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lkso;->b:[Lkss;

    iget v2, p0, Lkso;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkso;->c:I

    aput-object v0, v1, v2

    .line 200
    return-object p0
.end method
