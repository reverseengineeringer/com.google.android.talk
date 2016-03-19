.class final Lctc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lial;
.implements Liaw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lial",
        "<",
        "Lctd;",
        ">;",
        "Liaw;"
    }
.end annotation


# instance fields
.field private a:Lawm;

.field private b:Lhpz;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Lawm;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawm;

    iput-object v0, p0, Lctc;->a:Lawm;

    .line 29
    const-class v0, Lhpz;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lctc;->b:Lhpz;

    .line 30
    return-void
.end method


# virtual methods
.method public synthetic a()Lav;
    .locals 1

    .prologue
    .line 1048
    new-instance v0, Lctd;

    invoke-direct {v0}, Lctd;-><init>()V

    .line 21
    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lctc;->a:Lawm;

    invoke-interface {v0, p1}, Lawm;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lctc;->b:Lhpz;

    .line 54
    invoke-interface {v0, p1}, Lhpz;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lctc;->a:Lawm;

    invoke-interface {v0, p1}, Lawm;->b(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public e(Lhqb;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
