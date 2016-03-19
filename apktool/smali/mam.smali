.class public final Lmam;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmam;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llzr;

.field public b:[Llzt;

.field public c:Llzt;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Llyb;-><init>()V

    .line 47
    iput-object v1, p0, Lmam;->a:Llzr;

    .line 1021
    sget-object v0, Llzt;->b:[Llzt;

    .line 48
    iput-object v0, p0, Lmam;->b:[Llzt;

    .line 49
    iput-object v1, p0, Lmam;->c:Llzt;

    .line 50
    const/high16 v0, -0x80000000

    iput v0, p0, Lmam;->d:I

    .line 51
    iput-object v1, p0, Lmam;->eD:Llyd;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lmam;->eE:I

    .line 53
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1111
    sparse-switch v0, :sswitch_data_0

    .line 1115
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    :sswitch_0
    return-object p0

    .line 1121
    :sswitch_1
    iget-object v0, p0, Lmam;->a:Llzr;

    if-nez v0, :cond_1

    .line 1122
    new-instance v0, Llzr;

    invoke-direct {v0}, Llzr;-><init>()V

    iput-object v0, p0, Lmam;->a:Llzr;

    .line 1124
    :cond_1
    iget-object v0, p0, Lmam;->a:Llzr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1128
    :sswitch_2
    const/16 v0, 0x12

    .line 1129
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1130
    iget-object v0, p0, Lmam;->b:[Llzt;

    if-nez v0, :cond_3

    move v0, v1

    .line 1131
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llzt;

    .line 1133
    if-eqz v0, :cond_2

    .line 1134
    iget-object v3, p0, Lmam;->b:[Llzt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1136
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1137
    new-instance v3, Llzt;

    invoke-direct {v3}, Llzt;-><init>()V

    aput-object v3, v2, v0

    .line 1138
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1139
    invoke-virtual {p1}, Llxy;->a()I

    .line 1136
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1130
    :cond_3
    iget-object v0, p0, Lmam;->b:[Llzt;

    array-length v0, v0

    goto :goto_1

    .line 1142
    :cond_4
    new-instance v3, Llzt;

    invoke-direct {v3}, Llzt;-><init>()V

    aput-object v3, v2, v0

    .line 1143
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1144
    iput-object v2, p0, Lmam;->b:[Llzt;

    goto :goto_0

    .line 1148
    :sswitch_3
    iget-object v0, p0, Lmam;->c:Llzt;

    if-nez v0, :cond_5

    .line 1149
    new-instance v0, Llzt;

    invoke-direct {v0}, Llzt;-><init>()V

    iput-object v0, p0, Lmam;->c:Llzt;

    .line 1151
    :cond_5
    iget-object v0, p0, Lmam;->c:Llzt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1155
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1156
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1162
    :pswitch_0
    iput v0, p0, Lmam;->d:I

    goto :goto_0

    .line 1111
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 1156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lmam;->a:Llzr;

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iget-object v1, p0, Lmam;->a:Llzr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lmam;->b:[Llzt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmam;->b:[Llzt;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 62
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmam;->b:[Llzt;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 63
    iget-object v1, p0, Lmam;->b:[Llzt;

    aget-object v1, v1, v0

    .line 64
    if-eqz v1, :cond_1

    .line 65
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lmam;->c:Llzt;

    if-eqz v0, :cond_3

    .line 70
    const/4 v0, 0x3

    iget-object v1, p0, Lmam;->c:Llzt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 72
    :cond_3
    iget v0, p0, Lmam;->d:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_4

    .line 73
    const/4 v0, 0x4

    iget v1, p0, Lmam;->d:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 75
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 76
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 80
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 81
    iget-object v1, p0, Lmam;->a:Llzr;

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x1

    iget-object v2, p0, Lmam;->a:Llzr;

    .line 83
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_0
    iget-object v1, p0, Lmam;->b:[Llzt;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmam;->b:[Llzt;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 86
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmam;->b:[Llzt;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 87
    iget-object v2, p0, Lmam;->b:[Llzt;

    aget-object v2, v2, v0

    .line 88
    if-eqz v2, :cond_1

    .line 89
    const/4 v3, 0x2

    .line 90
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 86
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 94
    :cond_3
    iget-object v1, p0, Lmam;->c:Llzt;

    if-eqz v1, :cond_4

    .line 95
    const/4 v1, 0x3

    iget-object v2, p0, Lmam;->c:Llzt;

    .line 96
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_4
    iget v1, p0, Lmam;->d:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_5

    .line 99
    const/4 v1, 0x4

    iget v2, p0, Lmam;->d:I

    .line 100
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_5
    return v0
.end method
