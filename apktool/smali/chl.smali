.class public final Lchl;
.super Lhbw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbw",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcho;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/apps/hangouts/hangout/IncomingRing;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/IncomingRing;Z)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lchl;->b:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    iput-boolean p2, p0, Lchl;->a:Z

    invoke-direct {p0}, Lhbw;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6736
    new-instance v1, Lcho;

    .line 7107
    invoke-direct {v1}, Lcho;-><init>()V

    .line 8036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 6738
    const-class v2, Lekq;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekq;

    iget-object v2, p0, Lchl;->b:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    .line 8083
    iget-object v2, v2, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->c:Lbfd;

    .line 6739
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lekq;->d(I)Z

    move-result v0

    iput-boolean v0, v1, Lcho;->b:Z

    .line 6741
    const-string v2, "Babel_IncomingRing"

    const-string v3, "shouldVibrate=%s silent=%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-boolean v0, v1, Lcho;->b:Z

    if-eqz v0, :cond_1

    .line 6744
    const-string v0, "yes"

    :goto_0
    aput-object v0, v4, v5

    iget-boolean v0, p0, Lchl;->a:Z

    if-eqz v0, :cond_2

    .line 6745
    const-string v0, "yes"

    :goto_1
    aput-object v0, v4, v6

    .line 6741
    invoke-static {v2, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6746
    iget-object v0, p0, Lchl;->b:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    .line 9772
    iget-boolean v2, v0, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->g:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9773
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    sget v3, Laal;->hG:I

    .line 9775
    invoke-static {v3}, Lezc;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 9773
    invoke-static {v0, v2}, Leyt;->a(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6746
    :goto_2
    iput-object v0, v1, Lcho;->a:Landroid/net/Uri;

    .line 733
    return-object v1

    .line 6744
    :cond_1
    const-string v0, "no"

    goto :goto_0

    .line 6745
    :cond_2
    const-string v0, "no"

    goto :goto_1

    .line 9779
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->j()Ljava/lang/String;

    move-result-object v2

    .line 9780
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->c:Lbfd;

    invoke-static {v0}, Laal;->b(Lbfd;)Ljava/lang/String;

    move-result-object v0

    .line 9782
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    sget v0, Laal;->hL:I

    .line 9786
    invoke-static {v0}, Lezc;->b(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 9782
    invoke-static {v3, v4}, Leyt;->a(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 733
    check-cast p1, Lcho;

    .line 1752
    iget-object v0, p0, Lchl;->b:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    .line 2083
    iget-boolean v0, v0, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->f:Z

    .line 1752
    if-eqz v0, :cond_1

    .line 1753
    const-string v0, "Babel_IncomingRing"

    const-string v1, "ringing has been stopped"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1754
    :cond_0
    :goto_0
    return-void

    .line 1756
    :cond_1
    iget-object v0, p1, Lcho;->a:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1757
    const-string v0, "Babel_IncomingRing"

    const-string v1, "play ringtone"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1758
    iget-object v0, p0, Lchl;->b:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    .line 3083
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->e:Leyh;

    .line 1758
    iget-object v1, p1, Lcho;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Leyh;->a(Landroid/net/Uri;)V

    .line 1760
    :cond_2
    iget-boolean v0, p1, Lcho;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lchl;->a:Z

    if-nez v0, :cond_0

    .line 1761
    const-string v0, "Babel_IncomingRing"

    const-string v1, "start vibration"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1762
    iget-object v1, p0, Lchl;->b:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1762
    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 4083
    iput-object v0, v1, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->d:Landroid/os/Vibrator;

    .line 1763
    iget-object v0, p0, Lchl;->b:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    .line 5083
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->d:Landroid/os/Vibrator;

    .line 6083
    sget-object v1, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->a:[J

    .line 1763
    invoke-virtual {v0, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0
.end method
