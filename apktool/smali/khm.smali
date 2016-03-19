.class public final Lkhm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkhf;

.field public b:[Lkcr;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4162
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5167
    iput-object v1, p0, Lkhm;->a:Lkhf;

    .line 5168
    invoke-static {}, Lkcr;->d()[Lkcr;

    move-result-object v0

    iput-object v0, p0, Lkhm;->b:[Lkcr;

    .line 5169
    iput-object v1, p0, Lkhm;->c:Ljava/lang/Boolean;

    .line 5170
    iput-object v1, p0, Lkhm;->d:Ljava/lang/Boolean;

    .line 5171
    iput-object v1, p0, Lkhm;->e:Ljava/lang/Boolean;

    .line 5172
    iput-object v1, p0, Lkhm;->eD:Llyd;

    .line 5173
    const/4 v0, -0x1

    iput v0, p0, Lkhm;->eE:I

    .line 4164
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8239
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8240
    sparse-switch v0, :sswitch_data_0

    .line 8244
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8245
    :sswitch_0
    return-object p0

    .line 8250
    :sswitch_1
    iget-object v0, p0, Lkhm;->a:Lkhf;

    if-nez v0, :cond_1

    .line 8251
    new-instance v0, Lkhf;

    invoke-direct {v0}, Lkhf;-><init>()V

    iput-object v0, p0, Lkhm;->a:Lkhf;

    .line 8253
    :cond_1
    iget-object v0, p0, Lkhm;->a:Lkhf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8257
    :sswitch_2
    const/16 v0, 0x12

    .line 8258
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 8259
    iget-object v0, p0, Lkhm;->b:[Lkcr;

    if-nez v0, :cond_3

    move v0, v1

    .line 8260
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcr;

    .line 8262
    if-eqz v0, :cond_2

    .line 8263
    iget-object v3, p0, Lkhm;->b:[Lkcr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8265
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 8266
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 8267
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 8268
    invoke-virtual {p1}, Llxy;->a()I

    .line 8265
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8259
    :cond_3
    iget-object v0, p0, Lkhm;->b:[Lkcr;

    array-length v0, v0

    goto :goto_1

    .line 8271
    :cond_4
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 8272
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 8273
    iput-object v2, p0, Lkhm;->b:[Lkcr;

    goto :goto_0

    .line 8277
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkhm;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 8281
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkhm;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 8285
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkhm;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 8240
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 4180
    iget-object v0, p0, Lkhm;->a:Lkhf;

    if-eqz v0, :cond_0

    .line 4181
    const/4 v0, 0x1

    iget-object v1, p0, Lkhm;->a:Lkhf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4183
    :cond_0
    iget-object v0, p0, Lkhm;->b:[Lkcr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkhm;->b:[Lkcr;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 4184
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkhm;->b:[Lkcr;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 4185
    iget-object v1, p0, Lkhm;->b:[Lkcr;

    aget-object v1, v1, v0

    .line 4186
    if-eqz v1, :cond_1

    .line 4187
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 4184
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4191
    :cond_2
    iget-object v0, p0, Lkhm;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 4192
    const/4 v0, 0x3

    iget-object v1, p0, Lkhm;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 4194
    :cond_3
    iget-object v0, p0, Lkhm;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 4195
    const/4 v0, 0x4

    iget-object v1, p0, Lkhm;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 4197
    :cond_4
    iget-object v0, p0, Lkhm;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 4198
    const/4 v0, 0x5

    iget-object v1, p0, Lkhm;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 4200
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4201
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 4205
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4206
    iget-object v1, p0, Lkhm;->a:Lkhf;

    if-eqz v1, :cond_0

    .line 4207
    const/4 v1, 0x1

    iget-object v2, p0, Lkhm;->a:Lkhf;

    .line 4208
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4210
    :cond_0
    iget-object v1, p0, Lkhm;->b:[Lkcr;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkhm;->b:[Lkcr;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 4211
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkhm;->b:[Lkcr;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 4212
    iget-object v2, p0, Lkhm;->b:[Lkcr;

    aget-object v2, v2, v0

    .line 4213
    if-eqz v2, :cond_1

    .line 4214
    const/4 v3, 0x2

    .line 4215
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4211
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 4219
    :cond_3
    iget-object v1, p0, Lkhm;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 4220
    const/4 v1, 0x3

    iget-object v2, p0, Lkhm;->c:Ljava/lang/Boolean;

    .line 4221
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4221
    add-int/2addr v0, v1

    .line 4223
    :cond_4
    iget-object v1, p0, Lkhm;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 4224
    const/4 v1, 0x4

    iget-object v2, p0, Lkhm;->d:Ljava/lang/Boolean;

    .line 4225
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4225
    add-int/2addr v0, v1

    .line 4227
    :cond_5
    iget-object v1, p0, Lkhm;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 4228
    const/4 v1, 0x5

    iget-object v2, p0, Lkhm;->e:Ljava/lang/Boolean;

    .line 4229
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4229
    add-int/2addr v0, v1

    .line 4231
    :cond_6
    return v0
.end method
