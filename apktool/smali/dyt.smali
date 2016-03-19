.class final Ldyt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldys;


# direct methods
.method constructor <init>(Ldys;J)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Ldyt;->b:Ldys;

    iput-wide p2, p0, Ldyt;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Ldvd;->g()[I

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    .line 55
    invoke-static {v3}, Ldvd;->e(I)Lbfd;

    move-result-object v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    invoke-static {v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e(Lbfd;)V

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Ldyt;->b:Ldys;

    .line 1018
    iget-object v0, v0, Ldys;->b:Landroid/os/Handler;

    .line 60
    iget-wide v2, p0, Ldyt;->a:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void
.end method
