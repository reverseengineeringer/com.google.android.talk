.class public final Lavs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lavz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lavz",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lavt;

    invoke-direct {v0}, Lavt;-><init>()V

    sput-object v0, Lavs;->a:Lavz;

    return-void
.end method

.method public static a()Lic;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lic",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1079
    new-instance v0, Lie;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lie;-><init>(I)V

    new-instance v1, Lavu;

    invoke-direct {v1}, Lavu;-><init>()V

    new-instance v2, Lavv;

    invoke-direct {v2}, Lavv;-><init>()V

    invoke-static {v0, v1, v2}, Lavs;->a(Lic;Lavw;Lavz;)Lic;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method public static a(ILavw;)Lic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lavy;",
            ">(I",
            "Lavw",
            "<TT;>;)",
            "Lic",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lie;

    invoke-direct {v0, p0}, Lie;-><init>(I)V

    invoke-static {v0, p1}, Lavs;->a(Lic;Lavw;)Lic;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lavw;)Lic;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lavy;",
            ">(I)",
            "Lic",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lid;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Lid;-><init>(I)V

    invoke-static {v0, p0}, Lavs;->a(Lic;Lavw;)Lic;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lic;Lavw;)Lic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lavy;",
            ">(",
            "Lic",
            "<TT;>;",
            "Lavw",
            "<TT;>;)",
            "Lic",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1103
    sget-object v0, Lavs;->a:Lavz;

    .line 93
    invoke-static {p0, p1, v0}, Lavs;->a(Lic;Lavw;Lavz;)Lic;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lic;Lavw;Lavz;)Lic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lic",
            "<TT;>;",
            "Lavw",
            "<TT;>;",
            "Lavz",
            "<TT;>;)",
            "Lic",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lavx;

    invoke-direct {v0, p0, p1, p2}, Lavx;-><init>(Lic;Lavw;Lavz;)V

    return-object v0
.end method
