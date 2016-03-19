.class public final Ljqd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljqd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljqc;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8101
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9106
    invoke-static {}, Ljqc;->d()[Ljqc;

    move-result-object v0

    iput-object v0, p0, Ljqd;->a:[Ljqc;

    .line 9107
    iput-object v1, p0, Ljqd;->b:Ljava/lang/Boolean;

    .line 9108
    iput-object v1, p0, Ljqd;->eD:Llyd;

    .line 9109
    const/4 v0, -0x1

    iput v0, p0, Ljqd;->eE:I

    .line 8103
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 10154
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10155
    sparse-switch v0, :sswitch_data_0

    .line 10159
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10160
    :sswitch_0
    return-object p0

    .line 10165
    :sswitch_1
    const/16 v0, 0xa

    .line 10166
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 10167
    iget-object v0, p0, Ljqd;->a:[Ljqc;

    if-nez v0, :cond_2

    move v0, v1

    .line 10168
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljqc;

    .line 10170
    if-eqz v0, :cond_1

    .line 10171
    iget-object v3, p0, Ljqd;->a:[Ljqc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10173
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 10174
    new-instance v3, Ljqc;

    invoke-direct {v3}, Ljqc;-><init>()V

    aput-object v3, v2, v0

    .line 10175
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 10176
    invoke-virtual {p1}, Llxy;->a()I

    .line 10173
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10167
    :cond_2
    iget-object v0, p0, Ljqd;->a:[Ljqc;

    array-length v0, v0

    goto :goto_1

    .line 10179
    :cond_3
    new-instance v3, Ljqc;

    invoke-direct {v3}, Ljqc;-><init>()V

    aput-object v3, v2, v0

    .line 10180
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 10181
    iput-object v2, p0, Ljqd;->a:[Ljqc;

    goto :goto_0

    .line 10185
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljqd;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 10155
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 8116
    iget-object v0, p0, Ljqd;->a:[Ljqc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljqd;->a:[Ljqc;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 8117
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljqd;->a:[Ljqc;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 8118
    iget-object v1, p0, Ljqd;->a:[Ljqc;

    aget-object v1, v1, v0

    .line 8119
    if-eqz v1, :cond_0

    .line 8120
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 8117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8124
    :cond_1
    iget-object v0, p0, Ljqd;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 8125
    const/4 v0, 0x2

    iget-object v1, p0, Ljqd;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 8127
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8128
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 8132
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 8133
    iget-object v0, p0, Ljqd;->a:[Ljqc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljqd;->a:[Ljqc;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 8134
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljqd;->a:[Ljqc;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 8135
    iget-object v2, p0, Ljqd;->a:[Ljqc;

    aget-object v2, v2, v0

    .line 8136
    if-eqz v2, :cond_0

    .line 8137
    const/4 v3, 0x1

    .line 8138
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 8134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8142
    :cond_1
    iget-object v0, p0, Ljqd;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 8143
    const/4 v0, 0x2

    iget-object v2, p0, Ljqd;->b:Ljava/lang/Boolean;

    .line 8144
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9620
    invoke-static {v0}, Llxz;->f(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 8144
    add-int/2addr v1, v0

    .line 8146
    :cond_2
    return v1
.end method
