.class final Lhro;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqk;


# instance fields
.field private final a:Lgwk;


# direct methods
.method constructor <init>(Lgwk;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lhro;->a:Lgwk;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhqi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lhro;->a:Lgwk;

    const-string v1, "com.google"

    invoke-interface {v0, v1}, Lgwk;->a(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lgxh; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lgxg; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 43
    new-instance v3, Lhqj;

    aget-object v4, v1, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lhqj;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lhqj;->b()Lhqi;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 39
    :goto_1
    new-instance v1, Lhqn;

    invoke-direct {v1, v0}, Lhqn;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 45
    :cond_0
    return-object v2

    .line 36
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
