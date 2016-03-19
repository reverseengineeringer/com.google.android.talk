.class public final Ldjr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Ldjr;->b:Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;

    iput-object p2, p0, Ldjr;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 492
    new-instance v0, Lafo;

    invoke-direct {v0}, Lafo;-><init>()V

    .line 493
    new-instance v2, Lafy;

    invoke-direct {v2}, Lafy;-><init>()V

    .line 499
    :try_start_0
    iget-object v3, p0, Ldjr;->b:Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;

    iget-object v4, p0, Ldjr;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 500
    invoke-static {v3, v4, v5, v2, v6}, Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;->a(Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;Landroid/net/Uri;ILafq;Z)Z
    :try_end_0
    .catch Lage; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 514
    :goto_0
    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Ldjr;->b:Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;

    .line 1081
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;->q:Landroid/os/Handler;

    .line 515
    new-instance v1, Ldjs;

    invoke-direct {v1, p0}, Ldjs;-><init>(Ldjr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 526
    :goto_1
    return-void

    :catch_0
    move-exception v3

    .line 504
    :try_start_1
    invoke-virtual {v2}, Lafy;->c()I

    move-result v3

    .line 507
    iget-object v4, p0, Ldjr;->b:Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;

    iget-object v5, p0, Ldjr;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v0, v6}, Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;->a(Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;Landroid/net/Uri;ILafq;Z)Z
    :try_end_1
    .catch Lage; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 508
    :catch_1
    move-exception v0

    .line 510
    const-string v3, "Babel"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Must not reach here. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, p0, Ldjr;->b:Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;

    iget-object v1, p0, Ldjr;->a:Landroid/net/Uri;

    .line 2081
    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/hangouts/phone/ViewVCardActivity;->a(Landroid/net/Uri;Lafy;)V

    goto :goto_1
.end method
