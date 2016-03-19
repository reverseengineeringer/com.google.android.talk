.class final Lbsl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbsh;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbsk;


# direct methods
.method constructor <init>(Lbsk;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lbsl;->b:Lbsk;

    iput-object p2, p0, Lbsl;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 35
    sget v0, Laal;->kx:I

    return v0
.end method

.method public a(Lbfd;Lbpq;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 25
    if-eqz p2, :cond_0

    .line 26
    invoke-interface {p2}, Lbpq;->e()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 30
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbsl;->a:Landroid/content/Context;

    const-class v2, Lbva;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbva;

    invoke-virtual {v0}, Lbva;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public b()Lbrb;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lbsi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const-class v0, Lbsi;

    return-object v0
.end method
