.class final Lenj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/net/Uri;

.field final b:Z

.field c:Z

.field d:I

.field e:[B

.field private f:I


# direct methods
.method constructor <init>(Landroid/net/Uri;Z)V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lenj;->c:Z

    .line 315
    iput-object p1, p0, Lenj;->a:Landroid/net/Uri;

    .line 316
    iput-boolean p2, p0, Lenj;->b:Z

    .line 317
    return-void
.end method


# virtual methods
.method a()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x2

    .line 327
    iget v2, p0, Lenj;->d:I

    packed-switch v2, :pswitch_data_0

    .line 347
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 329
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 337
    goto :goto_0

    .line 341
    :pswitch_3
    iget v2, p0, Lenj;->f:I

    const/16 v3, 0x194

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 344
    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method a(II[B)V
    .locals 1

    .prologue
    .line 320
    iput p1, p0, Lenj;->d:I

    .line 321
    iput p2, p0, Lenj;->f:I

    .line 322
    iput-object p3, p0, Lenj;->e:[B

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lenj;->c:Z

    .line 324
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    const-string v1, "MmsSendResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v1, " pduContentUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lenj;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    const-string v1, " resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lenj;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    const-string v1, " httpStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lenj;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
