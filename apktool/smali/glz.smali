.class public final Lglz;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lfic;Ljava/lang/String;Ljava/lang/String;J)Lfij;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfij",
            "<",
            "Lfim;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 4000
    new-instance v1, Lgdi;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move v9, v8

    invoke-direct/range {v1 .. v9}, Lgdi;-><init>(Lglz;Lfic;Ljava/lang/String;Ljava/lang/String;JZZ)V

    invoke-interface {p1, v1}, Lfic;->a(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lfic;Ljava/lang/String;Ljava/lang/String;J)Lfij;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lfij",
            "<",
            "Lfim;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 2000
    const-string v0, "PeopleClientCall"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 1000
    if-eqz v0, :cond_0

    const-string v0, "requestSync"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct/range {p0 .. p5}, Lglz;->b(Lfic;Ljava/lang/String;Ljava/lang/String;J)Lfij;

    move-result-object v0

    return-object v0
.end method
