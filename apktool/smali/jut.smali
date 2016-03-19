.class public final Ljut;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljut;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljuu;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljum;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5087
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6092
    invoke-static {}, Ljuu;->d()[Ljuu;

    move-result-object v0

    iput-object v0, p0, Ljut;->a:[Ljuu;

    .line 6093
    iput-object v1, p0, Ljut;->b:Ljava/lang/Integer;

    .line 6094
    iput-object v1, p0, Ljut;->c:Ljava/lang/Integer;

    .line 6095
    iput-object v1, p0, Ljut;->d:Ljava/lang/Integer;

    .line 6096
    iput-object v1, p0, Ljut;->e:Ljum;

    .line 6097
    iput-object v1, p0, Ljut;->eD:Llyd;

    .line 6098
    const/4 v0, -0x1

    iput v0, p0, Ljut;->eE:I

    .line 5089
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 6164
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6165
    sparse-switch v0, :sswitch_data_0

    .line 6169
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6170
    :sswitch_0
    return-object p0

    .line 6175
    :sswitch_1
    const/16 v0, 0xb

    .line 6176
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6177
    iget-object v0, p0, Ljut;->a:[Ljuu;

    if-nez v0, :cond_2

    move v0, v1

    .line 6178
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljuu;

    .line 6180
    if-eqz v0, :cond_1

    .line 6181
    iget-object v3, p0, Ljut;->a:[Ljuu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6183
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 6184
    new-instance v3, Ljuu;

    invoke-direct {v3}, Ljuu;-><init>()V

    aput-object v3, v2, v0

    .line 6185
    aget-object v3, v2, v0

    invoke-virtual {p1, v3, v4}, Llxy;->a(Llyi;I)V

    .line 6186
    invoke-virtual {p1}, Llxy;->a()I

    .line 6183
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6177
    :cond_2
    iget-object v0, p0, Ljut;->a:[Ljuu;

    array-length v0, v0

    goto :goto_1

    .line 6189
    :cond_3
    new-instance v3, Ljuu;

    invoke-direct {v3}, Ljuu;-><init>()V

    aput-object v3, v2, v0

    .line 6190
    aget-object v0, v2, v0

    invoke-virtual {p1, v0, v4}, Llxy;->a(Llyi;I)V

    .line 6191
    iput-object v2, p0, Ljut;->a:[Ljuu;

    goto :goto_0

    .line 6195
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 6196
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6200
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljut;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 6206
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljut;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 6210
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljut;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 6214
    :sswitch_5
    iget-object v0, p0, Ljut;->e:Ljum;

    if-nez v0, :cond_4

    .line 6215
    new-instance v0, Ljum;

    invoke-direct {v0}, Ljum;-><init>()V

    iput-object v0, p0, Ljut;->e:Ljum;

    .line 6217
    :cond_4
    iget-object v0, p0, Ljut;->e:Ljum;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 6165
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0x78 -> :sswitch_2
        0x80 -> :sswitch_3
        0x88 -> :sswitch_4
        0x92 -> :sswitch_5
    .end sparse-switch

    .line 6196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 5105
    iget-object v0, p0, Ljut;->a:[Ljuu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljut;->a:[Ljuu;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 5106
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljut;->a:[Ljuu;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 5107
    iget-object v1, p0, Ljut;->a:[Ljuu;

    aget-object v1, v1, v0

    .line 5108
    if-eqz v1, :cond_0

    .line 5109
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILlyi;)V

    .line 5106
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5113
    :cond_1
    iget-object v0, p0, Ljut;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 5114
    const/16 v0, 0xf

    iget-object v1, p0, Ljut;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5116
    :cond_2
    iget-object v0, p0, Ljut;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 5117
    const/16 v0, 0x10

    iget-object v1, p0, Ljut;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5119
    :cond_3
    iget-object v0, p0, Ljut;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 5120
    const/16 v0, 0x11

    iget-object v1, p0, Ljut;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5122
    :cond_4
    iget-object v0, p0, Ljut;->e:Ljum;

    if-eqz v0, :cond_5

    .line 5123
    const/16 v0, 0x12

    iget-object v1, p0, Ljut;->e:Ljum;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5125
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5126
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 5130
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 5131
    iget-object v0, p0, Ljut;->a:[Ljuu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljut;->a:[Ljuu;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 5132
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljut;->a:[Ljuu;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 5133
    iget-object v2, p0, Ljut;->a:[Ljuu;

    aget-object v2, v2, v0

    .line 5134
    if-eqz v2, :cond_0

    .line 5135
    const/4 v3, 0x1

    .line 5136
    invoke-static {v3, v2}, Llxz;->c(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5140
    :cond_1
    iget-object v0, p0, Ljut;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 5141
    const/16 v0, 0xf

    iget-object v2, p0, Ljut;->b:Ljava/lang/Integer;

    .line 5142
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 5144
    :cond_2
    iget-object v0, p0, Ljut;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 5145
    const/16 v0, 0x10

    iget-object v2, p0, Ljut;->c:Ljava/lang/Integer;

    .line 5146
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 5148
    :cond_3
    iget-object v0, p0, Ljut;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 5149
    const/16 v0, 0x11

    iget-object v2, p0, Ljut;->d:Ljava/lang/Integer;

    .line 5150
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 5152
    :cond_4
    iget-object v0, p0, Ljut;->e:Ljum;

    if-eqz v0, :cond_5

    .line 5153
    const/16 v0, 0x12

    iget-object v2, p0, Ljut;->e:Ljum;

    .line 5154
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 5156
    :cond_5
    return v1
.end method
