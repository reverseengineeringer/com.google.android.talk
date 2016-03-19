.class public final Ljke;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljke;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljkw;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10093
    invoke-direct {p0}, Llyb;-><init>()V

    .line 11188
    sget-object v0, Ljkw;->c:[Ljkw;

    .line 11098
    iput-object v0, p0, Ljke;->a:[Ljkw;

    .line 11099
    iput-object v1, p0, Ljke;->b:Ljava/lang/Integer;

    .line 11100
    iput-object v1, p0, Ljke;->c:Ljava/lang/Boolean;

    .line 11101
    iput-object v1, p0, Ljke;->eD:Llyd;

    .line 11102
    const/4 v0, -0x1

    iput v0, p0, Ljke;->eE:I

    .line 10095
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 12150
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 12151
    sparse-switch v0, :sswitch_data_0

    .line 12155
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12156
    :sswitch_0
    return-object p0

    .line 12161
    :sswitch_1
    const/16 v0, 0xa

    .line 12162
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 12163
    iget-object v0, p0, Ljke;->a:[Ljkw;

    if-nez v0, :cond_2

    move v0, v1

    .line 12164
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljkw;

    .line 12166
    if-eqz v0, :cond_1

    .line 12167
    iget-object v3, p0, Ljke;->a:[Ljkw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12169
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 12170
    new-instance v3, Ljkw;

    invoke-direct {v3}, Ljkw;-><init>()V

    aput-object v3, v2, v0

    .line 12171
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 12172
    invoke-virtual {p1}, Llxy;->a()I

    .line 12169
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12163
    :cond_2
    iget-object v0, p0, Ljke;->a:[Ljkw;

    array-length v0, v0

    goto :goto_1

    .line 12175
    :cond_3
    new-instance v3, Ljkw;

    invoke-direct {v3}, Ljkw;-><init>()V

    aput-object v3, v2, v0

    .line 12176
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 12177
    iput-object v2, p0, Ljke;->a:[Ljkw;

    goto :goto_0

    .line 12181
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljke;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 12185
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljke;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 12151
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 10109
    iget-object v0, p0, Ljke;->a:[Ljkw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljke;->a:[Ljkw;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 10110
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljke;->a:[Ljkw;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 10111
    iget-object v1, p0, Ljke;->a:[Ljkw;

    aget-object v1, v1, v0

    .line 10112
    if-eqz v1, :cond_0

    .line 10113
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 10110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10117
    :cond_1
    const/4 v0, 0x2

    iget-object v1, p0, Ljke;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 10118
    iget-object v0, p0, Ljke;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 10119
    const/4 v0, 0x3

    iget-object v1, p0, Ljke;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 10121
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 10122
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 10126
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 10127
    iget-object v0, p0, Ljke;->a:[Ljkw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljke;->a:[Ljkw;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 10128
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljke;->a:[Ljkw;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 10129
    iget-object v2, p0, Ljke;->a:[Ljkw;

    aget-object v2, v2, v0

    .line 10130
    if-eqz v2, :cond_0

    .line 10131
    const/4 v3, 0x1

    .line 10132
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 10128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10136
    :cond_1
    const/4 v0, 0x2

    iget-object v2, p0, Ljke;->b:Ljava/lang/Integer;

    .line 10137
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 10138
    iget-object v1, p0, Ljke;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 10139
    const/4 v1, 0x3

    iget-object v2, p0, Ljke;->c:Ljava/lang/Boolean;

    .line 10140
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 10140
    add-int/2addr v0, v1

    .line 10142
    :cond_2
    return v0
.end method
