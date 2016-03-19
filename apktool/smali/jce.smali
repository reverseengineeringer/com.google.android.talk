.class public final Ljce;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljce;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljod;

.field public b:[Ljoo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1274
    iput-object v1, p0, Ljce;->a:Ljod;

    .line 1275
    invoke-static {}, Ljoo;->d()[Ljoo;

    move-result-object v0

    iput-object v0, p0, Ljce;->b:[Ljoo;

    .line 1276
    iput-object v1, p0, Ljce;->eD:Llyd;

    .line 1277
    const/4 v0, -0x1

    iput v0, p0, Ljce;->eE:I

    .line 271
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1322
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1323
    sparse-switch v0, :sswitch_data_0

    .line 1327
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1328
    :sswitch_0
    return-object p0

    .line 1333
    :sswitch_1
    iget-object v0, p0, Ljce;->a:Ljod;

    if-nez v0, :cond_1

    .line 1334
    new-instance v0, Ljod;

    invoke-direct {v0}, Ljod;-><init>()V

    iput-object v0, p0, Ljce;->a:Ljod;

    .line 1336
    :cond_1
    iget-object v0, p0, Ljce;->a:Ljod;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1340
    :sswitch_2
    const/16 v0, 0x12

    .line 1341
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1342
    iget-object v0, p0, Ljce;->b:[Ljoo;

    if-nez v0, :cond_3

    move v0, v1

    .line 1343
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljoo;

    .line 1345
    if-eqz v0, :cond_2

    .line 1346
    iget-object v3, p0, Ljce;->b:[Ljoo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1348
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1349
    new-instance v3, Ljoo;

    invoke-direct {v3}, Ljoo;-><init>()V

    aput-object v3, v2, v0

    .line 1350
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1351
    invoke-virtual {p1}, Llxy;->a()I

    .line 1348
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1342
    :cond_3
    iget-object v0, p0, Ljce;->b:[Ljoo;

    array-length v0, v0

    goto :goto_1

    .line 1354
    :cond_4
    new-instance v3, Ljoo;

    invoke-direct {v3}, Ljoo;-><init>()V

    aput-object v3, v2, v0

    .line 1355
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1356
    iput-object v2, p0, Ljce;->b:[Ljoo;

    goto :goto_0

    .line 1323
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Ljce;->a:Ljod;

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x1

    iget-object v1, p0, Ljce;->a:Ljod;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 287
    :cond_0
    iget-object v0, p0, Ljce;->b:[Ljoo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljce;->b:[Ljoo;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 288
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljce;->b:[Ljoo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 289
    iget-object v1, p0, Ljce;->b:[Ljoo;

    aget-object v1, v1, v0

    .line 290
    if-eqz v1, :cond_1

    .line 291
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 288
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 296
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 300
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 301
    iget-object v1, p0, Ljce;->a:Ljod;

    if-eqz v1, :cond_0

    .line 302
    const/4 v1, 0x1

    iget-object v2, p0, Ljce;->a:Ljod;

    .line 303
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 305
    :cond_0
    iget-object v1, p0, Ljce;->b:[Ljoo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljce;->b:[Ljoo;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 306
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljce;->b:[Ljoo;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 307
    iget-object v2, p0, Ljce;->b:[Ljoo;

    aget-object v2, v2, v0

    .line 308
    if-eqz v2, :cond_1

    .line 309
    const/4 v3, 0x2

    .line 310
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 306
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 314
    :cond_3
    return v0
.end method
