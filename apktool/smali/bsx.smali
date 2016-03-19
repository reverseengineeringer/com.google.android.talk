.class final Lbsx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbsn;


# instance fields
.field final synthetic a:Lbsw;


# direct methods
.method constructor <init>(Lbsw;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lbsx;->a:Lbsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 35
    sget v0, Laen;->hO:I

    return v0
.end method

.method public a(Lbfd;Lbpq;)Z
    .locals 1

    .prologue
    .line 27
    if-eqz p2, :cond_0

    .line 28
    invoke-interface {p2}, Lbpq;->e()Z

    move-result v0

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Lbrb;
    .locals 5

    .prologue
    .line 40
    new-instance v0, Lbrb;

    const/16 v1, 0xa63

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lbrb;-><init>(I[Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lbsr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-class v0, Lbsr;

    return-object v0
.end method
