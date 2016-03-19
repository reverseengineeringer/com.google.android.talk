.class public final Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-direct {p0}, Llyb;-><init>()V

    .line 236
    iput v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->a:I

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->b:F

    .line 238
    iput v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->c:I

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->eD:Llyd;

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->eE:I

    .line 241
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2274
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2275
    sparse-switch v0, :sswitch_data_0

    .line 2279
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2280
    :sswitch_0
    return-object p0

    .line 2285
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->b:F

    .line 2286
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->a:I

    goto :goto_0

    .line 2290
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2291
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2295
    :pswitch_0
    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->c:I

    .line 2296
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->a:I

    goto :goto_0

    .line 2275
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 2291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->b:F

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 249
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 250
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 252
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 253
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 257
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 258
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 259
    const/4 v1, 0x1

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 260
    add-int/2addr v0, v1

    .line 262
    :cond_0
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 263
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;->c:I

    .line 264
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_1
    return v0
.end method
