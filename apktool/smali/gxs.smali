.class public final Lgxs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgxl;


# instance fields
.field a:Lfid;

.field b:Lgyf;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lfid;

    invoke-direct {v0, p1}, Lfid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgxs;->a:Lfid;

    .line 35
    new-instance v0, Lgyf;

    invoke-direct {v0}, Lgyf;-><init>()V

    iput-object v0, p0, Lgxs;->b:Lgyf;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 1021
    invoke-direct {p0, p1}, Lgxs;-><init>(Landroid/content/Context;)V

    .line 1022
    return-void
.end method


# virtual methods
.method public a()Lgxk;
    .locals 4

    .prologue
    .line 1030
    new-instance v0, Lgyg;

    iget-object v1, p0, Lgxs;->a:Lfid;

    invoke-virtual {v1}, Lfid;->b()Lfic;

    move-result-object v1

    iget-object v2, p0, Lgxs;->b:Lgyf;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgyg;-><init>(Lfic;Lgyf;B)V

    return-object v0
.end method

.method public a(Lgxj;)Lgxl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgxj",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lgxl;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lgxs;->a:Lfid;

    iget-object v1, p0, Lgxs;->b:Lgyf;

    invoke-virtual {v1, p1}, Lgyf;->a(Lgxj;)Lfhw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfid;->a(Lfhw;)Lfid;

    .line 55
    return-object p0
.end method

.method public a(Lgxn;)Lgxl;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lgxs;->a:Lfid;

    iget-object v1, p0, Lgxs;->b:Lgyf;

    invoke-virtual {v1, p1}, Lgyf;->a(Lgxn;)Lfif;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfid;->a(Lfif;)Lfid;

    .line 62
    return-object p0
.end method

.method public a(Lgxo;)Lgxl;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lgxs;->a:Lfid;

    iget-object v1, p0, Lgxs;->b:Lgyf;

    invoke-virtual {v1, p1}, Lgyf;->a(Lgxo;)Lfih;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfid;->a(Lfih;)Lfid;

    .line 69
    return-object p0
.end method
