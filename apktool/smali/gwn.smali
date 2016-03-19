.class final Lgwn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgwi;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 1006
    invoke-direct {p0}, Lgwn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    :try_start_0
    invoke-static {p1, p2, p3}, Lfgk;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lfgj; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Landroid/accounts/AuthenticatorException;

    const-string v2, "Cannot get Oauth2 token from GMS"

    invoke-direct {v1, v2, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 35
    :try_start_0
    invoke-static {p1, p2}, Lfgk;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lfgl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lfgj; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Landroid/accounts/AuthenticatorException;

    const-string v2, "Cannot invalidate token"

    invoke-direct {v1, v2, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 38
    :catch_1
    move-exception v0

    .line 39
    new-instance v1, Landroid/accounts/AuthenticatorException;

    const-string v2, "Cannot invalidate token"

    invoke-direct {v1, v2, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
