.class public final Llsa;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llsa;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    iput-object v1, p0, Llsa;->a:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Llsa;->b:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Llsa;->c:Ljava/lang/Integer;

    .line 41
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Llsa;->d:[Ljava/lang/String;

    .line 42
    iput-object v1, p0, Llsa;->eD:Llyd;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Llsa;->eE:I

    .line 44
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1106
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1107
    sparse-switch v0, :sswitch_data_0

    .line 1111
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    :sswitch_0
    return-object p0

    .line 1117
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llsa;->a:Ljava/lang/String;

    goto :goto_0

    .line 1121
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llsa;->b:Ljava/lang/String;

    goto :goto_0

    .line 1125
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llsa;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1129
    :sswitch_4
    const/16 v0, 0x22

    .line 1130
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1131
    iget-object v0, p0, Llsa;->d:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 1132
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1133
    if-eqz v0, :cond_1

    .line 1134
    iget-object v3, p0, Llsa;->d:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1136
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1137
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1138
    invoke-virtual {p1}, Llxy;->a()I

    .line 1136
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1131
    :cond_2
    iget-object v0, p0, Llsa;->d:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 1141
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1142
    iput-object v2, p0, Llsa;->d:[Ljava/lang/String;

    goto :goto_0

    .line 1107
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Llsa;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Llsa;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 52
    :cond_0
    iget-object v0, p0, Llsa;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x2

    iget-object v1, p0, Llsa;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 55
    :cond_1
    iget-object v0, p0, Llsa;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 56
    const/4 v0, 0x3

    iget-object v1, p0, Llsa;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 58
    :cond_2
    iget-object v0, p0, Llsa;->d:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Llsa;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 59
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llsa;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 60
    iget-object v1, p0, Llsa;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 61
    if-eqz v1, :cond_3

    .line 62
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 59
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 67
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 72
    iget-object v2, p0, Llsa;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 73
    const/4 v2, 0x1

    iget-object v3, p0, Llsa;->a:Ljava/lang/String;

    .line 74
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 76
    :cond_0
    iget-object v2, p0, Llsa;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 77
    const/4 v2, 0x2

    iget-object v3, p0, Llsa;->b:Ljava/lang/String;

    .line 78
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 80
    :cond_1
    iget-object v2, p0, Llsa;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 81
    const/4 v2, 0x3

    iget-object v3, p0, Llsa;->c:Ljava/lang/Integer;

    .line 82
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 84
    :cond_2
    iget-object v2, p0, Llsa;->d:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Llsa;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v1

    move v3, v1

    .line 87
    :goto_0
    iget-object v4, p0, Llsa;->d:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 88
    iget-object v4, p0, Llsa;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 89
    if-eqz v4, :cond_3

    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 92
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 87
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_4
    add-int/2addr v0, v2

    .line 96
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 98
    :cond_5
    return v0
.end method
