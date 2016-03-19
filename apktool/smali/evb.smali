.class public final Levb;
.super Leap;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:[Ldqx;

.field final synthetic c:Ljava/util/concurrent/Semaphore;

.field final synthetic d:Leqo;


# direct methods
.method public constructor <init>(Leqo;I[Ldqx;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Levb;->d:Leqo;

    iput p2, p0, Levb;->a:I

    iput-object p3, p0, Levb;->b:[Ldqx;

    iput-object p4, p0, Levb;->c:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Leap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILbfd;Leau;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    iget v0, p0, Levb;->a:I

    if-ne v0, p1, :cond_0

    .line 144
    invoke-virtual {p3}, Leau;->c()Ldqf;

    move-result-object v0

    check-cast v0, Ldqx;

    .line 145
    if-eqz v0, :cond_1

    .line 146
    iget-object v1, p0, Levb;->b:[Ldqx;

    aput-object v0, v1, v2

    .line 151
    :goto_0
    iget-object v0, p0, Levb;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 153
    :cond_0
    return-void

    .line 148
    :cond_1
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHangoutsService.getCallRateResponseBlocking, response could not be decoded"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
