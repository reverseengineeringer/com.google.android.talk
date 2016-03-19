.class final Lerr;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lgyt;

.field final synthetic c:Lerq;


# direct methods
.method constructor <init>(Lerq;JLgyt;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lerr;->c:Lerq;

    iput-wide p2, p0, Lerr;->a:J

    iput-object p4, p0, Lerr;->b:Lgyt;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lerr;->c:Lerq;

    .line 1030
    iget-object v0, v0, Lerq;->a:Ljava/util/concurrent/CountDownLatch;

    .line 73
    iget-wide v2, p0, Lerr;->a:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v1, "Babel_telephony"

    const-string v2, "TeleFeedbackSender.sendFeedback, exception"

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lerr;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1082
    iget-object v0, p0, Lerr;->c:Lerq;

    .line 2030
    iget-object v0, v0, Lerq;->b:Lgxk;

    .line 1082
    invoke-interface {v0}, Lgxk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    const-string v0, "Babel_telephony"

    const-string v1, "TeleFeedbackSender.sendFeedback, calling startFeedback"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1084
    iget-object v0, p0, Lerr;->c:Lerq;

    .line 3030
    iget-object v0, v0, Lerq;->c:Lgyr;

    .line 1084
    iget-object v1, p0, Lerr;->c:Lerq;

    .line 4030
    iget-object v1, v1, Lerq;->b:Lgxk;

    .line 1084
    invoke-interface {v0, v1}, Lgyr;->a(Lgxk;)Lgyq;

    move-result-object v0

    .line 1085
    iget-object v1, p0, Lerr;->b:Lgyt;

    invoke-virtual {v0, v1}, Lgyq;->b(Lgyt;)Lgxp;

    move-result-object v0

    .line 1086
    iget-object v1, p0, Lerr;->c:Lerq;

    invoke-virtual {v0, v1}, Lgxp;->a(Lgxq;)V

    .line 1087
    :goto_0
    return-void

    .line 1088
    :cond_0
    const-string v0, "Babel_telephony"

    const-string v1, "TeleFeedbackSender.sendFeedback, API not connected, skipping"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
