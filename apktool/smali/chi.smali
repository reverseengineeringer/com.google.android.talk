.class public final Lchi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfd;

.field final synthetic b:Litg;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;Lbfd;Litg;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lchi;->g:Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;

    iput-object p2, p0, Lchi;->a:Lbfd;

    iput-object p3, p0, Lchi;->b:Litg;

    iput-object p4, p0, Lchi;->c:Ljava/lang/String;

    iput-object p5, p0, Lchi;->d:Ljava/lang/String;

    iput-wide p6, p0, Lchi;->e:J

    iput-wide p8, p0, Lchi;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1046
    sget-object v0, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a:Landroid/os/PowerManager$WakeLock;

    .line 297
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 1134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 299
    new-instance v0, Lbfz;

    iget-object v1, p0, Lchi;->g:Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;

    iget-object v2, p0, Lchi;->a:Lbfd;

    .line 300
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 301
    iget-object v1, p0, Lchi;->b:Litg;

    iget-object v1, v1, Litg;->e:Ljava/lang/Integer;

    .line 2043
    const/4 v2, 0x0

    invoke-static {v1, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 303
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 306
    const/16 v8, 0x14

    .line 308
    :goto_0
    iget-object v1, p0, Lchi;->a:Lbfd;

    iget-object v2, p0, Lchi;->c:Ljava/lang/String;

    iget-object v3, p0, Lchi;->d:Ljava/lang/String;

    iget-wide v4, p0, Lchi;->e:J

    iget-wide v6, p0, Lchi;->f:J

    invoke-virtual/range {v0 .. v8}, Lbfz;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 310
    iget-object v0, p0, Lchi;->g:Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2046
    invoke-static {v0}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->b(Landroid/content/Context;)V

    .line 311
    return-void

    .line 307
    :cond_0
    const/16 v8, 0xa

    goto :goto_0
.end method
