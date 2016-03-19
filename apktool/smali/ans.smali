.class final enum Lans;
.super Lanq;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x2

    .line 1195
    invoke-direct {p0, p1, v0}, Lanq;-><init>(Ljava/lang/String;I)V

    .line 214
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0, p1}, Lanq;->a(Ljava/lang/Throwable;)V

    .line 218
    if-eqz p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Request threw uncaught throwable"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 221
    :cond_0
    return-void
.end method
