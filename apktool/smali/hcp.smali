.class final Lhcp;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lhci;


# direct methods
.method constructor <init>(Lhci;)V
    .locals 1

    .prologue
    .line 1502
    iput-object p1, p0, Lhcp;->b:Lhci;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhcp;->a:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1507
    invoke-static {}, Laal;->w()V

    .line 1508
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1509
    if-nez v0, :cond_1

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1513
    :cond_1
    iget-object v0, p0, Lhcp;->b:Lhci;

    .line 2121
    invoke-virtual {v0}, Lhci;->c()Z

    move-result v0

    .line 1513
    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lhcp;->b:Lhci;

    .line 3121
    iget-object v0, v0, Lhci;->b:Landroid/net/ConnectivityManager;

    .line 1520
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    move v0, v3

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 1521
    invoke-static {}, Lhlk;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1522
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1523
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1b

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", connected? "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1525
    :cond_2
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v1

    .line 1520
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1530
    :cond_4
    if-eqz v0, :cond_5

    .line 1531
    iput-boolean v1, p0, Lhcp;->a:Z

    goto :goto_0

    .line 1533
    :cond_5
    iget-boolean v0, p0, Lhcp;->a:Z

    if-eqz v0, :cond_0

    .line 1535
    const-string v0, "vclib"

    const-string v1, "We lost our connection. Give it some time to recover then  terminate the call if it can\'t."

    .line 4081
    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1537
    iput-boolean v3, p0, Lhcp;->a:Z

    .line 1541
    new-instance v0, Lhcq;

    invoke-direct {v0, p0}, Lhcq;-><init>(Lhcp;)V

    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
