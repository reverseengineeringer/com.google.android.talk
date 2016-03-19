.class Lgwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgwk;


# static fields
.field private static final b:J


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lgwo;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lgwo;->a:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lgwo;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lfgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lfgl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lfgm; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lfgj; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Lgwl;

    .line 48
    invoke-virtual {v0}, Lfgl;->a()I

    move-result v2

    invoke-virtual {v0}, Lfgl;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lfgl;->b()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lgwl;-><init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/Exception;)V

    throw v1

    .line 49
    :catch_1
    move-exception v0

    .line 50
    new-instance v1, Lgwm;

    invoke-virtual {v0}, Lfgm;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lfgm;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgwm;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    throw v1

    .line 51
    :catch_2
    move-exception v0

    .line 52
    new-instance v1, Lgwj;

    invoke-direct {v1, v0}, Lgwj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lgwo;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method
