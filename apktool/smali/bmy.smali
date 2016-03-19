.class final Lbmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbmx;


# direct methods
.method constructor <init>(Lbmx;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lbmy;->a:Lbmx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1388

    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 68
    iget-object v0, p0, Lbmy;->a:Lbmx;

    .line 1384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1385
    iget-object v1, v0, Lbmx;->b:Lcom/google/android/apps/hangouts/conversation/v2/MessageEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/conversation/v2/MessageEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1386
    iget v4, v0, Lbmx;->d:I

    packed-switch v4, :pswitch_data_0

    .line 1411
    :cond_0
    :goto_0
    iget v1, v0, Lbmx;->d:I

    if-ne v1, v6, :cond_1

    .line 1412
    iget-object v1, v0, Lbmx;->j:Ljava/lang/Runnable;

    .line 2089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1413
    iget-object v1, v0, Lbmx;->j:Ljava/lang/Runnable;

    invoke-static {v1, v8, v9}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 1414
    iput-wide v2, v0, Lbmx;->e:J

    .line 69
    :cond_1
    return-void

    .line 1388
    :pswitch_0
    if-lez v1, :cond_0

    .line 1389
    iput v6, v0, Lbmx;->d:I

    .line 1390
    iget v1, v0, Lbmx;->d:I

    invoke-virtual {v0, v1}, Lbmx;->a(I)V

    goto :goto_0

    .line 1394
    :pswitch_1
    if-nez v1, :cond_2

    .line 1395
    iput v5, v0, Lbmx;->d:I

    goto :goto_0

    .line 1397
    :cond_2
    iput v6, v0, Lbmx;->d:I

    .line 1398
    iget v1, v0, Lbmx;->d:I

    invoke-virtual {v0, v1}, Lbmx;->a(I)V

    goto :goto_0

    .line 1402
    :pswitch_2
    if-nez v1, :cond_3

    .line 1403
    iput v5, v0, Lbmx;->d:I

    .line 1404
    iget v1, v0, Lbmx;->d:I

    invoke-virtual {v0, v1}, Lbmx;->a(I)V

    goto :goto_0

    .line 1405
    :cond_3
    iget-wide v4, v0, Lbmx;->e:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v8

    if-lez v1, :cond_0

    .line 1406
    const/4 v1, 0x2

    iput v1, v0, Lbmx;->d:I

    .line 1407
    iget v1, v0, Lbmx;->d:I

    invoke-virtual {v0, v1}, Lbmx;->a(I)V

    goto :goto_0

    .line 1386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
