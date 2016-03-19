.class public final Lmcs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmcs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Llur;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:[Lmci;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    invoke-static {}, Llur;->d()[Llur;

    move-result-object v0

    iput-object v0, p0, Lmcs;->a:[Llur;

    .line 39
    iput-object v1, p0, Lmcs;->b:Ljava/lang/Integer;

    .line 40
    iput-object v1, p0, Lmcs;->c:Ljava/lang/Integer;

    .line 41
    invoke-static {}, Lmci;->d()[Lmci;

    move-result-object v0

    iput-object v0, p0, Lmcs;->d:[Lmci;

    .line 42
    iput-object v1, p0, Lmcs;->eD:Llyd;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lmcs;->eE:I

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
    const/16 v0, 0xa

    .line 1123
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1124
    iget-object v0, p0, Lmcs;->a:[Llur;

    if-nez v0, :cond_2

    move v0, v1

    .line 1125
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llur;

    .line 1127
    if-eqz v0, :cond_1

    .line 1128
    iget-object v3, p0, Lmcs;->a:[Llur;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1130
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1131
    new-instance v3, Llur;

    invoke-direct {v3}, Llur;-><init>()V

    aput-object v3, v2, v0

    .line 1132
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1133
    invoke-virtual {p1}, Llxy;->a()I

    .line 1130
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1124
    :cond_2
    iget-object v0, p0, Lmcs;->a:[Llur;

    array-length v0, v0

    goto :goto_1

    .line 1136
    :cond_3
    new-instance v3, Llur;

    invoke-direct {v3}, Llur;-><init>()V

    aput-object v3, v2, v0

    .line 1137
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1138
    iput-object v2, p0, Lmcs;->a:[Llur;

    goto :goto_0

    .line 1142
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmcs;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1146
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmcs;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1150
    :sswitch_4
    const/16 v0, 0x22

    .line 1151
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1152
    iget-object v0, p0, Lmcs;->d:[Lmci;

    if-nez v0, :cond_5

    move v0, v1

    .line 1153
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmci;

    .line 1155
    if-eqz v0, :cond_4

    .line 1156
    iget-object v3, p0, Lmcs;->d:[Lmci;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1158
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1159
    new-instance v3, Lmci;

    invoke-direct {v3}, Lmci;-><init>()V

    aput-object v3, v2, v0

    .line 1160
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1161
    invoke-virtual {p1}, Llxy;->a()I

    .line 1158
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1152
    :cond_5
    iget-object v0, p0, Lmcs;->d:[Lmci;

    array-length v0, v0

    goto :goto_3

    .line 1164
    :cond_6
    new-instance v3, Lmci;

    invoke-direct {v3}, Lmci;-><init>()V

    aput-object v3, v2, v0

    .line 1165
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1166
    iput-object v2, p0, Lmcs;->d:[Lmci;

    goto/16 :goto_0

    .line 1112
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lmcs;->a:[Llur;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmcs;->a:[Llur;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 50
    :goto_0
    iget-object v2, p0, Lmcs;->a:[Llur;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 51
    iget-object v2, p0, Lmcs;->a:[Llur;

    aget-object v2, v2, v0

    .line 52
    if-eqz v2, :cond_0

    .line 53
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lmcs;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 58
    const/4 v0, 0x2

    iget-object v2, p0, Lmcs;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 60
    :cond_2
    iget-object v0, p0, Lmcs;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 61
    const/4 v0, 0x3

    iget-object v2, p0, Lmcs;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 63
    :cond_3
    iget-object v0, p0, Lmcs;->d:[Lmci;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmcs;->d:[Lmci;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 64
    :goto_1
    iget-object v0, p0, Lmcs;->d:[Lmci;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 65
    iget-object v0, p0, Lmcs;->d:[Lmci;

    aget-object v0, v0, v1

    .line 66
    if-eqz v0, :cond_4

    .line 67
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 64
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

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
    iget-object v2, p0, Lmcs;->a:[Llur;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmcs;->a:[Llur;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 78
    :goto_0
    iget-object v3, p0, Lmcs;->a:[Llur;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 79
    iget-object v3, p0, Lmcs;->a:[Llur;

    aget-object v3, v3, v0

    .line 80
    if-eqz v3, :cond_0

    .line 81
    const/4 v4, 0x1

    .line 82
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 86
    :cond_2
    iget-object v2, p0, Lmcs;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 87
    const/4 v2, 0x2

    iget-object v3, p0, Lmcs;->b:Ljava/lang/Integer;

    .line 88
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 90
    :cond_3
    iget-object v2, p0, Lmcs;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 91
    const/4 v2, 0x3

    iget-object v3, p0, Lmcs;->c:Ljava/lang/Integer;

    .line 92
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 94
    :cond_4
    iget-object v2, p0, Lmcs;->d:[Lmci;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lmcs;->d:[Lmci;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 95
    :goto_1
    iget-object v2, p0, Lmcs;->d:[Lmci;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 96
    iget-object v2, p0, Lmcs;->d:[Lmci;

    aget-object v2, v2, v1

    .line 97
    if-eqz v2, :cond_5

    .line 98
    const/4 v3, 0x4

    .line 99
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 95
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_6
    return v0
.end method
