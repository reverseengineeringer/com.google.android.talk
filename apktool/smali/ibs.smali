.class final Libs;
.super Lhtu;
.source "SourceFile"


# instance fields
.field private final a:Lhql;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lhql;)V
    .locals 0

    .prologue
    .line 883
    invoke-direct {p0, p1}, Lhtu;-><init>(Ljava/lang/String;)V

    .line 884
    iput-object p2, p0, Libs;->a:Lhql;

    .line 885
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lhus;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1900
    :try_start_0
    iget-object v0, p0, Libs;->a:Lhql;

    invoke-interface {v0}, Lhql;->a()[Lhqi;

    move-result-object v2

    .line 1901
    array-length v0, v2

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    .line 1902
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 1903
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lhqi;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 891
    :cond_0
    new-instance v0, Lhus;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lhus;-><init>(Z)V

    .line 892
    invoke-virtual {v0}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "account_name_array"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lhqn; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lhus;

    invoke-direct {v0, v1}, Lhus;-><init>(Z)V

    goto :goto_1
.end method
