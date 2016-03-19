.class public final Llyv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llyv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:[Llzs;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    iput-object v1, p0, Llyv;->a:Ljava/lang/Long;

    .line 39
    iput-object v1, p0, Llyv;->b:Ljava/lang/String;

    .line 40
    invoke-static {}, Llzs;->d()[Llzs;

    move-result-object v0

    iput-object v0, p0, Llyv;->c:[Llzs;

    .line 41
    iput-object v1, p0, Llyv;->d:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Llyv;->eD:Llyd;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Llyv;->eE:I

    .line 44
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1101
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1102
    sparse-switch v0, :sswitch_data_0

    .line 1106
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    :sswitch_0
    return-object p0

    .line 1112
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llyv;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1116
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyv;->b:Ljava/lang/String;

    goto :goto_0

    .line 1120
    :sswitch_3
    const/16 v0, 0x1a

    .line 1121
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1122
    iget-object v0, p0, Llyv;->c:[Llzs;

    if-nez v0, :cond_2

    move v0, v1

    .line 1123
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llzs;

    .line 1125
    if-eqz v0, :cond_1

    .line 1126
    iget-object v3, p0, Llyv;->c:[Llzs;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1128
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1129
    new-instance v3, Llzs;

    invoke-direct {v3}, Llzs;-><init>()V

    aput-object v3, v2, v0

    .line 1130
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1131
    invoke-virtual {p1}, Llxy;->a()I

    .line 1128
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1122
    :cond_2
    iget-object v0, p0, Llyv;->c:[Llzs;

    array-length v0, v0

    goto :goto_1

    .line 1134
    :cond_3
    new-instance v3, Llzs;

    invoke-direct {v3}, Llzs;-><init>()V

    aput-object v3, v2, v0

    .line 1135
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1136
    iput-object v2, p0, Llyv;->c:[Llzs;

    goto :goto_0

    .line 1140
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyv;->d:Ljava/lang/String;

    goto :goto_0

    .line 1102
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Llyv;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Llyv;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 52
    :cond_0
    iget-object v0, p0, Llyv;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x2

    iget-object v1, p0, Llyv;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 55
    :cond_1
    iget-object v0, p0, Llyv;->c:[Llzs;

    if-eqz v0, :cond_3

    iget-object v0, p0, Llyv;->c:[Llzs;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 56
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llyv;->c:[Llzs;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 57
    iget-object v1, p0, Llyv;->c:[Llzs;

    aget-object v1, v1, v0

    .line 58
    if-eqz v1, :cond_2

    .line 59
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 56
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Llyv;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 64
    const/4 v0, 0x4

    iget-object v1, p0, Llyv;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 66
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 67
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 71
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 72
    iget-object v1, p0, Llyv;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x1

    iget-object v2, p0, Llyv;->a:Ljava/lang/Long;

    .line 74
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_0
    iget-object v1, p0, Llyv;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 77
    const/4 v1, 0x2

    iget-object v2, p0, Llyv;->b:Ljava/lang/String;

    .line 78
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_1
    iget-object v1, p0, Llyv;->c:[Llzs;

    if-eqz v1, :cond_4

    iget-object v1, p0, Llyv;->c:[Llzs;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 81
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llyv;->c:[Llzs;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 82
    iget-object v2, p0, Llyv;->c:[Llzs;

    aget-object v2, v2, v0

    .line 83
    if-eqz v2, :cond_2

    .line 84
    const/4 v3, 0x3

    .line 85
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 89
    :cond_4
    iget-object v1, p0, Llyv;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 90
    const/4 v1, 0x4

    iget-object v2, p0, Llyv;->d:Ljava/lang/String;

    .line 91
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_5
    return v0
.end method
