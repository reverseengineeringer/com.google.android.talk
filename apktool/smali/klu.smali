.class public final Lklu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lklu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Lklu;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1331
    iput-object v0, p0, Lklu;->a:Ljava/lang/Integer;

    .line 1332
    iput-object v0, p0, Lklu;->b:Ljava/lang/Integer;

    .line 1333
    iput-object v0, p0, Lklu;->c:Ljava/lang/Integer;

    .line 1334
    iput-object v0, p0, Lklu;->d:Ljava/lang/Long;

    .line 1335
    iput-object v0, p0, Lklu;->eD:Llyd;

    .line 1336
    const/4 v0, -0x1

    iput v0, p0, Lklu;->eE:I

    .line 328
    return-void
.end method

.method public static d()[Lklu;
    .locals 2

    .prologue
    .line 301
    sget-object v0, Lklu;->e:[Lklu;

    if-nez v0, :cond_1

    .line 302
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_0
    sget-object v0, Lklu;->e:[Lklu;

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x0

    new-array v0, v0, [Lklu;

    sput-object v0, Lklu;->e:[Lklu;

    .line 307
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_1
    sget-object v0, Lklu;->e:[Lklu;

    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1385
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1386
    sparse-switch v0, :sswitch_data_0

    .line 1390
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1391
    :sswitch_0
    return-object p0

    .line 1396
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1397
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1513
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklu;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1519
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1520
    sparse-switch v0, :sswitch_data_2

    goto :goto_0

    .line 1636
    :sswitch_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklu;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1642
    :sswitch_5
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lklu;->d:Ljava/lang/Long;

    goto :goto_0

    .line 1646
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1647
    sparse-switch v0, :sswitch_data_3

    goto :goto_0

    .line 1736
    :sswitch_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklu;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1386
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x18 -> :sswitch_5
        0x20 -> :sswitch_6
    .end sparse-switch

    .line 1397
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_2
        0x69 -> :sswitch_2
        0x6a -> :sswitch_2
        0x6b -> :sswitch_2
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
        0x6e -> :sswitch_2
        0x6f -> :sswitch_2
        0x70 -> :sswitch_2
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0xcc -> :sswitch_2
        0xcd -> :sswitch_2
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x130 -> :sswitch_2
        0x131 -> :sswitch_2
        0x132 -> :sswitch_2
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x135 -> :sswitch_2
        0x136 -> :sswitch_2
        0x137 -> :sswitch_2
        0x138 -> :sswitch_2
        0x139 -> :sswitch_2
        0x13a -> :sswitch_2
        0x13b -> :sswitch_2
        0x13c -> :sswitch_2
        0x13d -> :sswitch_2
        0x13e -> :sswitch_2
        0x13f -> :sswitch_2
        0x140 -> :sswitch_2
        0x141 -> :sswitch_2
        0x142 -> :sswitch_2
        0x143 -> :sswitch_2
        0x144 -> :sswitch_2
        0x145 -> :sswitch_2
        0x146 -> :sswitch_2
        0x147 -> :sswitch_2
        0x148 -> :sswitch_2
        0x149 -> :sswitch_2
        0x14a -> :sswitch_2
        0x14b -> :sswitch_2
        0x14c -> :sswitch_2
        0x14d -> :sswitch_2
        0x14e -> :sswitch_2
        0x14f -> :sswitch_2
        0x150 -> :sswitch_2
        0x151 -> :sswitch_2
        0x152 -> :sswitch_2
        0x153 -> :sswitch_2
        0x154 -> :sswitch_2
        0x155 -> :sswitch_2
        0x156 -> :sswitch_2
        0x157 -> :sswitch_2
        0x158 -> :sswitch_2
        0x159 -> :sswitch_2
        0x15a -> :sswitch_2
        0x15b -> :sswitch_2
        0x15c -> :sswitch_2
        0x15d -> :sswitch_2
        0x15e -> :sswitch_2
        0x15f -> :sswitch_2
        0x160 -> :sswitch_2
        0x161 -> :sswitch_2
        0x162 -> :sswitch_2
        0x163 -> :sswitch_2
        0x164 -> :sswitch_2
        0x165 -> :sswitch_2
        0x166 -> :sswitch_2
        0x167 -> :sswitch_2
        0x168 -> :sswitch_2
        0x169 -> :sswitch_2
        0x16a -> :sswitch_2
        0x16b -> :sswitch_2
        0x190 -> :sswitch_2
        0x191 -> :sswitch_2
        0x192 -> :sswitch_2
        0x193 -> :sswitch_2
        0x194 -> :sswitch_2
        0x195 -> :sswitch_2
        0x196 -> :sswitch_2
        0x197 -> :sswitch_2
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_2
        0x1f6 -> :sswitch_2
        0x1f7 -> :sswitch_2
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_2
        0x3ed -> :sswitch_2
        0x44c -> :sswitch_2
        0x44d -> :sswitch_2
    .end sparse-switch

    .line 1520
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0x64 -> :sswitch_4
        0x65 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
        0x69 -> :sswitch_4
        0x6a -> :sswitch_4
        0x6b -> :sswitch_4
        0x6c -> :sswitch_4
        0x6d -> :sswitch_4
        0x6e -> :sswitch_4
        0x6f -> :sswitch_4
        0x70 -> :sswitch_4
        0x71 -> :sswitch_4
        0x72 -> :sswitch_4
        0xc8 -> :sswitch_4
        0xc9 -> :sswitch_4
        0xca -> :sswitch_4
        0xcb -> :sswitch_4
        0xcc -> :sswitch_4
        0xcd -> :sswitch_4
        0x12c -> :sswitch_4
        0x12d -> :sswitch_4
        0x12e -> :sswitch_4
        0x12f -> :sswitch_4
        0x130 -> :sswitch_4
        0x131 -> :sswitch_4
        0x132 -> :sswitch_4
        0x133 -> :sswitch_4
        0x134 -> :sswitch_4
        0x135 -> :sswitch_4
        0x136 -> :sswitch_4
        0x137 -> :sswitch_4
        0x138 -> :sswitch_4
        0x139 -> :sswitch_4
        0x13a -> :sswitch_4
        0x13b -> :sswitch_4
        0x13c -> :sswitch_4
        0x13d -> :sswitch_4
        0x13e -> :sswitch_4
        0x13f -> :sswitch_4
        0x140 -> :sswitch_4
        0x141 -> :sswitch_4
        0x142 -> :sswitch_4
        0x143 -> :sswitch_4
        0x144 -> :sswitch_4
        0x145 -> :sswitch_4
        0x146 -> :sswitch_4
        0x147 -> :sswitch_4
        0x148 -> :sswitch_4
        0x149 -> :sswitch_4
        0x14a -> :sswitch_4
        0x14b -> :sswitch_4
        0x14c -> :sswitch_4
        0x14d -> :sswitch_4
        0x14e -> :sswitch_4
        0x14f -> :sswitch_4
        0x150 -> :sswitch_4
        0x151 -> :sswitch_4
        0x152 -> :sswitch_4
        0x153 -> :sswitch_4
        0x154 -> :sswitch_4
        0x155 -> :sswitch_4
        0x156 -> :sswitch_4
        0x157 -> :sswitch_4
        0x158 -> :sswitch_4
        0x159 -> :sswitch_4
        0x15a -> :sswitch_4
        0x15b -> :sswitch_4
        0x15c -> :sswitch_4
        0x15d -> :sswitch_4
        0x15e -> :sswitch_4
        0x15f -> :sswitch_4
        0x160 -> :sswitch_4
        0x161 -> :sswitch_4
        0x162 -> :sswitch_4
        0x163 -> :sswitch_4
        0x164 -> :sswitch_4
        0x165 -> :sswitch_4
        0x166 -> :sswitch_4
        0x167 -> :sswitch_4
        0x168 -> :sswitch_4
        0x169 -> :sswitch_4
        0x16a -> :sswitch_4
        0x16b -> :sswitch_4
        0x190 -> :sswitch_4
        0x191 -> :sswitch_4
        0x192 -> :sswitch_4
        0x193 -> :sswitch_4
        0x194 -> :sswitch_4
        0x195 -> :sswitch_4
        0x196 -> :sswitch_4
        0x197 -> :sswitch_4
        0x1f4 -> :sswitch_4
        0x1f5 -> :sswitch_4
        0x1f6 -> :sswitch_4
        0x1f7 -> :sswitch_4
        0x3e8 -> :sswitch_4
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_4
        0x44c -> :sswitch_4
        0x44d -> :sswitch_4
    .end sparse-switch

    .line 1647
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_7
        0x2 -> :sswitch_7
        0x4 -> :sswitch_7
        0x5 -> :sswitch_7
        0x6 -> :sswitch_7
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0xf -> :sswitch_7
        0x10 -> :sswitch_7
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
        0x68 -> :sswitch_7
        0x69 -> :sswitch_7
        0x6b -> :sswitch_7
        0x6c -> :sswitch_7
        0x6e -> :sswitch_7
        0x6f -> :sswitch_7
        0x70 -> :sswitch_7
        0x71 -> :sswitch_7
        0xc8 -> :sswitch_7
        0xc9 -> :sswitch_7
        0xca -> :sswitch_7
        0xcb -> :sswitch_7
        0xcc -> :sswitch_7
        0x12c -> :sswitch_7
        0x12d -> :sswitch_7
        0x12e -> :sswitch_7
        0x12f -> :sswitch_7
        0x130 -> :sswitch_7
        0x131 -> :sswitch_7
        0x132 -> :sswitch_7
        0x133 -> :sswitch_7
        0x134 -> :sswitch_7
        0x135 -> :sswitch_7
        0x136 -> :sswitch_7
        0x137 -> :sswitch_7
        0x138 -> :sswitch_7
        0x139 -> :sswitch_7
        0x13a -> :sswitch_7
        0x13b -> :sswitch_7
        0x13c -> :sswitch_7
        0x13d -> :sswitch_7
        0x13e -> :sswitch_7
        0x13f -> :sswitch_7
        0x140 -> :sswitch_7
        0x141 -> :sswitch_7
        0x142 -> :sswitch_7
        0x143 -> :sswitch_7
        0x144 -> :sswitch_7
        0x145 -> :sswitch_7
        0x146 -> :sswitch_7
        0x147 -> :sswitch_7
        0x148 -> :sswitch_7
        0x149 -> :sswitch_7
        0x14a -> :sswitch_7
        0x14b -> :sswitch_7
        0x14c -> :sswitch_7
        0x14d -> :sswitch_7
        0x14e -> :sswitch_7
        0x14f -> :sswitch_7
        0x150 -> :sswitch_7
        0x151 -> :sswitch_7
        0x152 -> :sswitch_7
        0x153 -> :sswitch_7
        0x154 -> :sswitch_7
        0x155 -> :sswitch_7
        0x190 -> :sswitch_7
        0x191 -> :sswitch_7
        0x192 -> :sswitch_7
        0x193 -> :sswitch_7
        0x194 -> :sswitch_7
        0x195 -> :sswitch_7
        0x196 -> :sswitch_7
        0x197 -> :sswitch_7
        0x198 -> :sswitch_7
        0x1f4 -> :sswitch_7
        0x1f5 -> :sswitch_7
        0x1f6 -> :sswitch_7
        0x3e8 -> :sswitch_7
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_7
        0x3eb -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 343
    iget-object v0, p0, Lklu;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x1

    iget-object v1, p0, Lklu;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 346
    :cond_0
    iget-object v0, p0, Lklu;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 347
    const/4 v0, 0x2

    iget-object v1, p0, Lklu;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 349
    :cond_1
    iget-object v0, p0, Lklu;->d:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 350
    const/4 v0, 0x3

    iget-object v1, p0, Lklu;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 352
    :cond_2
    iget-object v0, p0, Lklu;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 353
    const/4 v0, 0x4

    iget-object v1, p0, Lklu;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 355
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 356
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 360
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 361
    iget-object v1, p0, Lklu;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 362
    const/4 v1, 0x1

    iget-object v2, p0, Lklu;->b:Ljava/lang/Integer;

    .line 363
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_0
    iget-object v1, p0, Lklu;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 366
    const/4 v1, 0x2

    iget-object v2, p0, Lklu;->c:Ljava/lang/Integer;

    .line 367
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_1
    iget-object v1, p0, Lklu;->d:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 370
    const/4 v1, 0x3

    iget-object v2, p0, Lklu;->d:Ljava/lang/Long;

    .line 371
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_2
    iget-object v1, p0, Lklu;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 374
    const/4 v1, 0x4

    iget-object v2, p0, Lklu;->a:Ljava/lang/Integer;

    .line 375
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_3
    return v0
.end method
