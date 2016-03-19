.class public final Lctj;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lhzx;


# instance fields
.field private a:Liad;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Limg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Liaj;)V
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p0}, Lctj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lctj;->a:Liad;

    const-string v2, "account_name"

    .line 36
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "effective_gaia_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-interface {v1, v2, v0}, Liad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 29
    iget-object v0, p0, Lctj;->binder:Lilh;

    const-class v1, Liad;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liad;

    iput-object v0, p0, Lctj;->a:Liad;

    .line 30
    return-void
.end method
