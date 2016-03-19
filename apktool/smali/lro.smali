.class public final Llro;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llro;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Llsj;

.field public c:Lltq;

.field public d:Llgz;

.field public e:[Llgj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Llyb;-><init>()V

    .line 49
    const/high16 v0, -0x80000000

    iput v0, p0, Llro;->a:I

    .line 50
    iput-object v1, p0, Llro;->b:Llsj;

    .line 51
    iput-object v1, p0, Llro;->c:Lltq;

    .line 52
    iput-object v1, p0, Llro;->d:Llgz;

    .line 53
    invoke-static {}, Llgj;->d()[Llgj;

    move-result-object v0

    iput-object v0, p0, Llro;->e:[Llgj;

    .line 54
    iput-object v1, p0, Llro;->eD:Llyd;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Llro;->eE:I

    .line 56
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1120
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1121
    sparse-switch v0, :sswitch_data_0

    .line 1125
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    :sswitch_0
    return-object p0

    .line 1131
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1132
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1137
    :pswitch_0
    iput v0, p0, Llro;->a:I

    goto :goto_0

    .line 1143
    :sswitch_2
    iget-object v0, p0, Llro;->b:Llsj;

    if-nez v0, :cond_1

    .line 1144
    new-instance v0, Llsj;

    invoke-direct {v0}, Llsj;-><init>()V

    iput-object v0, p0, Llro;->b:Llsj;

    .line 1146
    :cond_1
    iget-object v0, p0, Llro;->b:Llsj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1150
    :sswitch_3
    iget-object v0, p0, Llro;->c:Lltq;

    if-nez v0, :cond_2

    .line 1151
    new-instance v0, Lltq;

    invoke-direct {v0}, Lltq;-><init>()V

    iput-object v0, p0, Llro;->c:Lltq;

    .line 1153
    :cond_2
    iget-object v0, p0, Llro;->c:Lltq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1157
    :sswitch_4
    iget-object v0, p0, Llro;->d:Llgz;

    if-nez v0, :cond_3

    .line 1158
    new-instance v0, Llgz;

    invoke-direct {v0}, Llgz;-><init>()V

    iput-object v0, p0, Llro;->d:Llgz;

    .line 1160
    :cond_3
    iget-object v0, p0, Llro;->d:Llgz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1164
    :sswitch_5
    const/16 v0, 0x2a

    .line 1165
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1166
    iget-object v0, p0, Llro;->e:[Llgj;

    if-nez v0, :cond_5

    move v0, v1

    .line 1167
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llgj;

    .line 1169
    if-eqz v0, :cond_4

    .line 1170
    iget-object v3, p0, Llro;->e:[Llgj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1172
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1173
    new-instance v3, Llgj;

    invoke-direct {v3}, Llgj;-><init>()V

    aput-object v3, v2, v0

    .line 1174
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1175
    invoke-virtual {p1}, Llxy;->a()I

    .line 1172
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1166
    :cond_5
    iget-object v0, p0, Llro;->e:[Llgj;

    array-length v0, v0

    goto :goto_1

    .line 1178
    :cond_6
    new-instance v3, Llgj;

    invoke-direct {v3}, Llgj;-><init>()V

    aput-object v3, v2, v0

    .line 1179
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1180
    iput-object v2, p0, Llro;->e:[Llgj;

    goto/16 :goto_0

    .line 1121
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 1132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 61
    iget v0, p0, Llro;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 62
    const/4 v0, 0x1

    iget v1, p0, Llro;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 64
    :cond_0
    iget-object v0, p0, Llro;->b:Llsj;

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x2

    iget-object v1, p0, Llro;->b:Llsj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 67
    :cond_1
    iget-object v0, p0, Llro;->c:Lltq;

    if-eqz v0, :cond_2

    .line 68
    const/4 v0, 0x3

    iget-object v1, p0, Llro;->c:Lltq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 70
    :cond_2
    iget-object v0, p0, Llro;->d:Llgz;

    if-eqz v0, :cond_3

    .line 71
    const/4 v0, 0x4

    iget-object v1, p0, Llro;->d:Llgz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 73
    :cond_3
    iget-object v0, p0, Llro;->e:[Llgj;

    if-eqz v0, :cond_5

    iget-object v0, p0, Llro;->e:[Llgj;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 74
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llro;->e:[Llgj;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 75
    iget-object v1, p0, Llro;->e:[Llgj;

    aget-object v1, v1, v0

    .line 76
    if-eqz v1, :cond_4

    .line 77
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 74
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 82
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 86
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 87
    iget v1, p0, Llro;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 88
    const/4 v1, 0x1

    iget v2, p0, Llro;->a:I

    .line 89
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_0
    iget-object v1, p0, Llro;->b:Llsj;

    if-eqz v1, :cond_1

    .line 92
    const/4 v1, 0x2

    iget-object v2, p0, Llro;->b:Llsj;

    .line 93
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_1
    iget-object v1, p0, Llro;->c:Lltq;

    if-eqz v1, :cond_2

    .line 96
    const/4 v1, 0x3

    iget-object v2, p0, Llro;->c:Lltq;

    .line 97
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_2
    iget-object v1, p0, Llro;->d:Llgz;

    if-eqz v1, :cond_3

    .line 100
    const/4 v1, 0x4

    iget-object v2, p0, Llro;->d:Llgz;

    .line 101
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_3
    iget-object v1, p0, Llro;->e:[Llgj;

    if-eqz v1, :cond_6

    iget-object v1, p0, Llro;->e:[Llgj;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 104
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llro;->e:[Llgj;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 105
    iget-object v2, p0, Llro;->e:[Llgj;

    aget-object v2, v2, v0

    .line 106
    if-eqz v2, :cond_4

    .line 107
    const/4 v3, 0x5

    .line 108
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 104
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 112
    :cond_6
    return v0
.end method
