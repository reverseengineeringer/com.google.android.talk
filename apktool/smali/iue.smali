.class public final Liue;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liue;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Liuf;

.field public c:[Litr;

.field public d:Liug;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    iput-object v1, p0, Liue;->a:Ljava/lang/Integer;

    .line 39
    invoke-static {}, Liuf;->d()[Liuf;

    move-result-object v0

    iput-object v0, p0, Liue;->b:[Liuf;

    .line 40
    invoke-static {}, Litr;->d()[Litr;

    move-result-object v0

    iput-object v0, p0, Liue;->c:[Litr;

    .line 41
    iput-object v1, p0, Liue;->d:Liug;

    .line 42
    iput-object v1, p0, Liue;->eD:Llyd;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Liue;->eE:I

    .line 44
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1111
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1112
    sparse-switch v0, :sswitch_data_0

    .line 1116
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1117
    :sswitch_0
    return-object p0

    .line 1122
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liue;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1126
    :sswitch_2
    const/16 v0, 0x12

    .line 1127
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1128
    iget-object v0, p0, Liue;->b:[Liuf;

    if-nez v0, :cond_2

    move v0, v1

    .line 1129
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Liuf;

    .line 1131
    if-eqz v0, :cond_1

    .line 1132
    iget-object v3, p0, Liue;->b:[Liuf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1134
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1135
    new-instance v3, Liuf;

    invoke-direct {v3}, Liuf;-><init>()V

    aput-object v3, v2, v0

    .line 1136
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1137
    invoke-virtual {p1}, Llxy;->a()I

    .line 1134
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1128
    :cond_2
    iget-object v0, p0, Liue;->b:[Liuf;

    array-length v0, v0

    goto :goto_1

    .line 1140
    :cond_3
    new-instance v3, Liuf;

    invoke-direct {v3}, Liuf;-><init>()V

    aput-object v3, v2, v0

    .line 1141
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1142
    iput-object v2, p0, Liue;->b:[Liuf;

    goto :goto_0

    .line 1146
    :sswitch_3
    const/16 v0, 0x1a

    .line 1147
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1148
    iget-object v0, p0, Liue;->c:[Litr;

    if-nez v0, :cond_5

    move v0, v1

    .line 1149
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Litr;

    .line 1151
    if-eqz v0, :cond_4

    .line 1152
    iget-object v3, p0, Liue;->c:[Litr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1154
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1155
    new-instance v3, Litr;

    invoke-direct {v3}, Litr;-><init>()V

    aput-object v3, v2, v0

    .line 1156
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1157
    invoke-virtual {p1}, Llxy;->a()I

    .line 1154
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1148
    :cond_5
    iget-object v0, p0, Liue;->c:[Litr;

    array-length v0, v0

    goto :goto_3

    .line 1160
    :cond_6
    new-instance v3, Litr;

    invoke-direct {v3}, Litr;-><init>()V

    aput-object v3, v2, v0

    .line 1161
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1162
    iput-object v2, p0, Liue;->c:[Litr;

    goto/16 :goto_0

    .line 1166
    :sswitch_4
    iget-object v0, p0, Liue;->d:Liug;

    if-nez v0, :cond_7

    .line 1167
    new-instance v0, Liug;

    invoke-direct {v0}, Liug;-><init>()V

    iput-object v0, p0, Liue;->d:Liug;

    .line 1169
    :cond_7
    iget-object v0, p0, Liue;->d:Liug;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1112
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
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Liue;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-object v2, p0, Liue;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 52
    :cond_0
    iget-object v0, p0, Liue;->b:[Liuf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Liue;->b:[Liuf;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 53
    :goto_0
    iget-object v2, p0, Liue;->b:[Liuf;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 54
    iget-object v2, p0, Liue;->b:[Liuf;

    aget-object v2, v2, v0

    .line 55
    if-eqz v2, :cond_1

    .line 56
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Liue;->c:[Litr;

    if-eqz v0, :cond_4

    iget-object v0, p0, Liue;->c:[Litr;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 61
    :goto_1
    iget-object v0, p0, Liue;->c:[Litr;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 62
    iget-object v0, p0, Liue;->c:[Litr;

    aget-object v0, v0, v1

    .line 63
    if-eqz v0, :cond_3

    .line 64
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 61
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    :cond_4
    iget-object v0, p0, Liue;->d:Liug;

    if-eqz v0, :cond_5

    .line 69
    const/4 v0, 0x4

    iget-object v1, p0, Liue;->d:Liug;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 71
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 72
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 77
    iget-object v2, p0, Liue;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 78
    const/4 v2, 0x1

    iget-object v3, p0, Liue;->a:Ljava/lang/Integer;

    .line 79
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 81
    :cond_0
    iget-object v2, p0, Liue;->b:[Liuf;

    if-eqz v2, :cond_3

    iget-object v2, p0, Liue;->b:[Liuf;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 82
    :goto_0
    iget-object v3, p0, Liue;->b:[Liuf;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 83
    iget-object v3, p0, Liue;->b:[Liuf;

    aget-object v3, v3, v0

    .line 84
    if-eqz v3, :cond_1

    .line 85
    const/4 v4, 0x2

    .line 86
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 82
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 90
    :cond_3
    iget-object v2, p0, Liue;->c:[Litr;

    if-eqz v2, :cond_5

    iget-object v2, p0, Liue;->c:[Litr;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 91
    :goto_1
    iget-object v2, p0, Liue;->c:[Litr;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 92
    iget-object v2, p0, Liue;->c:[Litr;

    aget-object v2, v2, v1

    .line 93
    if-eqz v2, :cond_4

    .line 94
    const/4 v3, 0x3

    .line 95
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 91
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_5
    iget-object v1, p0, Liue;->d:Liug;

    if-eqz v1, :cond_6

    .line 100
    const/4 v1, 0x4

    iget-object v2, p0, Liue;->d:Liug;

    .line 101
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_6
    return v0
.end method
