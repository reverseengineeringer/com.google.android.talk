.class final Ldgg;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldfq;


# direct methods
.method constructor <init>(Ldfq;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 417
    iput-object p1, p0, Ldgg;->b:Ldfq;

    iput-wide p3, p0, Ldgg;->a:J

    invoke-direct {p0, p2}, Ldgz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 420
    iget-object v0, p0, Ldgg;->b:Ldfq;

    .line 1055
    iget-object v0, v0, Ldfq;->b:Lbfd;

    .line 420
    iget-wide v2, p0, Ldgg;->a:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Lbfd;J)V

    .line 421
    return-void
.end method
