.class public final Lglg;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfic;Lglj;)Lfij;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "Lglj;",
            ")",
            "Lfij",
            "<",
            "Lglk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2000
    const-string v0, "PeopleClientCall"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 1000
    if-eqz v0, :cond_0

    const-string v0, "loadOwners"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    :goto_0
    new-instance v0, Lgcv;

    invoke-direct {v0, p0, p1, p2}, Lgcv;-><init>(Lglg;Lfic;Lglj;)V

    invoke-interface {p1, v0}, Lfic;->a(Lfir;)Lfir;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object p2, Lglj;->a:Lglj;

    goto :goto_0
.end method

.method public a(Lfic;Ljava/lang/String;Ljava/lang/String;Lglh;)Lfij;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lglh;",
            ")",
            "Lfij",
            "<",
            "Lgli;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 6000
    const-string v0, "PeopleClientCall"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 5000
    if-eqz v0, :cond_0

    const-string v0, "loadAggregatedPeople"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lgcz;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgcz;-><init>(Lglg;Lfic;Ljava/lang/String;Ljava/lang/String;Lglh;)V

    invoke-interface {p1, v0}, Lfic;->a(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method

.method public a(Lfic;Ljava/lang/String;Ljava/lang/String;Lgll;)Lfij;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgll;",
            ")",
            "Lfij",
            "<",
            "Lglm;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 4000
    const-string v0, "PeopleClientCall"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 3000
    if-eqz v0, :cond_0

    const-string v0, "loadPeople"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lgcx;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgcx;-><init>(Lglg;Lfic;Ljava/lang/String;Ljava/lang/String;Lgll;)V

    invoke-interface {p1, v0}, Lfic;->a(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method
