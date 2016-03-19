.class public final Lcth;
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
    .line 20
    invoke-direct {p0}, Limg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Liaj;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcth;->a:Liad;

    invoke-interface {v0}, Liad;->b()V

    .line 32
    return-void
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcth;->binder:Lilh;

    const-class v1, Liad;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liad;

    iput-object v0, p0, Lcth;->a:Liad;

    .line 27
    return-void
.end method
