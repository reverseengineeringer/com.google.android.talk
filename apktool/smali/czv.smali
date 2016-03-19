.class final Lczv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liol;


# instance fields
.field final synthetic a:Lczt;


# direct methods
.method constructor <init>(Lczt;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lczv;->a:Lczt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lioz;)V
    .locals 3

    .prologue
    .line 184
    instance-of v0, p1, Lilu;

    if-eqz v0, :cond_0

    .line 185
    check-cast p1, Lilu;

    iget-object v0, p0, Lczv;->a:Lczt;

    .line 1052
    iget-object v0, v0, Lczt;->aj:Lill;

    .line 185
    iget-object v1, p0, Lczv;->a:Lczt;

    .line 2052
    iget-object v1, v1, Lczt;->ak:Lilh;

    .line 185
    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lilu;->a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V

    .line 187
    :cond_0
    return-void
.end method
