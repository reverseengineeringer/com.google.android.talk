.class public final Lcyi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpw;
.implements Lilu;
.implements Liov;
.implements Lioz;


# instance fields
.field private a:Lhpu;

.field private b:Lcyh;


# direct methods
.method public constructor <init>(Liog;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1, p0}, Liog;->a(Lioz;)Lioz;

    .line 26
    return-void
.end method


# virtual methods
.method public X_()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcyi;->b:Lcyh;

    iget-object v1, p0, Lcyi;->a:Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcyh;->d(I)V

    .line 38
    return-void
.end method

.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lhpu;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lcyi;->a:Lhpu;

    .line 31
    iget-object v0, p0, Lcyi;->a:Lhpu;

    invoke-interface {v0, p0}, Lhpu;->a(Lhpw;)Lhpu;

    .line 32
    const-class v0, Lcyh;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyh;

    iput-object v0, p0, Lcyi;->b:Lcyh;

    .line 33
    return-void
.end method

.method public a(ZLhpv;Lhpv;II)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lhpv;->c:Lhpv;

    if-ne p3, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcyi;->b:Lcyh;

    invoke-interface {v0, p5}, Lcyh;->d(I)V

    .line 50
    :cond_0
    return-void
.end method
