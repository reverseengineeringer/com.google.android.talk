.class public final Lbwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbwe;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ldlv;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lbwf;

    invoke-direct {v0}, Lbwf;-><init>()V

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 25
    const-class v0, Lhpu;

    .line 27
    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 26
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    move v0, v1

    .line 39
    :goto_0
    return v0

    .line 34
    :cond_0
    invoke-static {v0}, Laal;->c(Lbfd;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-static {p1, v0}, Lbff;->a(Landroid/content/Context;Lbfd;)V

    move v0, v1

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p1, v0}, Lbff;->b(Landroid/content/Context;Lbfd;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 44
    sget v0, Laal;->le:I

    return v0
.end method
