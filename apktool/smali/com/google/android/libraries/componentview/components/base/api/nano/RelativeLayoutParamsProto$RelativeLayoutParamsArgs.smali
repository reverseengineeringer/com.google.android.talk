.class public final Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;",
            "Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;


# instance fields
.field public b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

.field public c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

.field public d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const-class v0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;

    const-wide/32 v2, 0x33af3de2

    .line 18
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->a:Llyc;

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;

    sput-object v0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->e:[Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0}, Llyb;-><init>()V

    .line 247
    iput v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    .line 248
    iput-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 249
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->g:Ljava/lang/String;

    .line 250
    iput-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    .line 251
    iput-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->h:Ljava/lang/String;

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->i:Ljava/lang/String;

    .line 254
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->j:Ljava/lang/String;

    .line 255
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->k:Ljava/lang/String;

    .line 256
    iput-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->l:Z

    .line 257
    iput-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->m:Z

    .line 258
    iput-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->n:Z

    .line 259
    iput-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->o:Z

    .line 260
    iput-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->p:Z

    .line 261
    iput-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->eD:Llyd;

    .line 262
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->eE:I

    .line 263
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 6373
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6374
    sparse-switch v0, :sswitch_data_0

    .line 6378
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6379
    :sswitch_0
    return-object p0

    .line 6384
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-nez v0, :cond_1

    .line 6385
    new-instance v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 6387
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6391
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->g:Ljava/lang/String;

    .line 6392
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    goto :goto_0

    .line 6396
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    if-nez v0, :cond_2

    .line 6397
    new-instance v0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    .line 6399
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6403
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    if-nez v0, :cond_3

    .line 6404
    new-instance v0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    .line 6406
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6410
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->h:Ljava/lang/String;

    .line 6411
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    goto :goto_0

    .line 6415
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->i:Ljava/lang/String;

    .line 6416
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    goto :goto_0

    .line 6420
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->j:Ljava/lang/String;

    .line 6421
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    goto :goto_0

    .line 6425
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->k:Ljava/lang/String;

    .line 6426
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    goto/16 :goto_0

    .line 6430
    :sswitch_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->l:Z

    .line 6431
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    goto/16 :goto_0

    .line 6435
    :sswitch_a
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->m:Z

    .line 6436
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    goto/16 :goto_0

    .line 6440
    :sswitch_b
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->n:Z

    .line 6441
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    goto/16 :goto_0

    .line 6445
    :sswitch_c
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->o:Z

    .line 6446
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    goto/16 :goto_0

    .line 6450
    :sswitch_d
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->p:Z

    .line 6451
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    goto/16 :goto_0

    .line 6374
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 271
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 272
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    if-eqz v0, :cond_2

    .line 275
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    if-eqz v0, :cond_3

    .line 278
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 280
    :cond_3
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 281
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 283
    :cond_4
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 284
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 286
    :cond_5
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 287
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 289
    :cond_6
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 290
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 292
    :cond_7
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 293
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->l:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 295
    :cond_8
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 296
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->m:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 298
    :cond_9
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    .line 299
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->n:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 301
    :cond_a
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    .line 302
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->o:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 304
    :cond_b
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    .line 305
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->p:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 307
    :cond_c
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 308
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 312
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 313
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-eqz v1, :cond_0

    .line 314
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 315
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_0
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 318
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->g:Ljava/lang/String;

    .line 319
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    if-eqz v1, :cond_2

    .line 322
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    .line 323
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    if-eqz v1, :cond_3

    .line 326
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->d:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Dimension;

    .line 327
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_3
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 330
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->h:Ljava/lang/String;

    .line 331
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_4
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 334
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->i:Ljava/lang/String;

    .line 335
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_5
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 338
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->j:Ljava/lang/String;

    .line 339
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_6
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    .line 342
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->k:Ljava/lang/String;

    .line 343
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_7
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    .line 346
    const/16 v1, 0x9

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 347
    add-int/2addr v0, v1

    .line 349
    :cond_8
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    .line 350
    const/16 v1, 0xa

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 351
    add-int/2addr v0, v1

    .line 353
    :cond_9
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_a

    .line 354
    const/16 v1, 0xb

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 355
    add-int/2addr v0, v1

    .line 357
    :cond_a
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_b

    .line 358
    const/16 v1, 0xc

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 359
    add-int/2addr v0, v1

    .line 361
    :cond_b
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/RelativeLayoutParamsProto$RelativeLayoutParamsArgs;->f:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_c

    .line 362
    const/16 v1, 0xd

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 363
    add-int/2addr v0, v1

    .line 365
    :cond_c
    return v0
.end method
