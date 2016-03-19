.class final Lgwp;
.super Lgwo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lgwo;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 5

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    .line 36
    invoke-super {p0, p1}, Lgwo;->a(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lgwp;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lfgk;->c(Landroid/content/Context;Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Lfhq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lfhp; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Lgxh;

    .line 42
    invoke-virtual {v0}, Lfhq;->a()I

    move-result v2

    invoke-virtual {v0}, Lfhq;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lfhq;->b()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lgxh;-><init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/Throwable;)V

    throw v1

    .line 43
    :catch_1
    move-exception v0

    .line 44
    new-instance v1, Lgxg;

    iget v2, v0, Lfhp;->a:I

    invoke-direct {v1, v2, v0}, Lgxg;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method
