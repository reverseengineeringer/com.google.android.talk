.class final Libr;
.super Lhtu;
.source "SourceFile"


# instance fields
.field private final a:Libw;


# direct methods
.method public constructor <init>(Ljava/lang/String;Libw;)V
    .locals 0

    .prologue
    .line 914
    invoke-direct {p0, p1}, Lhtu;-><init>(Ljava/lang/String;)V

    .line 915
    iput-object p2, p0, Libr;->a:Libw;

    .line 916
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lhus;
    .locals 4

    .prologue
    .line 920
    iget-object v0, p0, Libr;->a:Libw;

    invoke-virtual {v0}, Libw;->a()Z

    move-result v0

    .line 921
    new-instance v1, Lhus;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lhus;-><init>(Z)V

    .line 922
    invoke-virtual {v1}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "are_accounts_ready_for_login"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 923
    return-object v1
.end method
