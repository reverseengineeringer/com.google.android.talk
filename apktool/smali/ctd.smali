.class public final Lctd;
.super Limg;
.source "SourceFile"

# interfaces
.implements Liam;


# instance fields
.field public a:Lawm;

.field public b:Lhpz;

.field c:Liad;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Limg;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lctd;->d:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 83
    iput p1, p0, Lctd;->d:I

    .line 84
    iget-object v0, p0, Lctd;->b:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lctd;->a:Lawm;

    invoke-interface {v1, v0}, Lawm;->a(Lhqb;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1094
    iget-object v0, p0, Lctd;->a:Lawm;

    new-instance v1, Lawn;

    .line 1098
    invoke-direct {v1, p0}, Lawn;-><init>(Lctd;)V

    .line 1094
    invoke-interface {v0, v1}, Lawm;->a(Lawn;)V

    .line 1095
    iget-object v0, p0, Lctd;->a:Lawm;

    invoke-interface {v0, p1}, Lawm;->b(I)V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lctd;->c:Liad;

    const-string v2, "account_name"

    .line 89
    invoke-interface {v0, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "effective_gaia_id"

    invoke-interface {v0, v3}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-interface {v1, v2, v0}, Liad;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 76
    iget-object v0, p0, Lctd;->binder:Lilh;

    const-class v1, Lawm;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawm;

    iput-object v0, p0, Lctd;->a:Lawm;

    .line 77
    iget-object v0, p0, Lctd;->binder:Lilh;

    const-class v1, Lhpz;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lctd;->b:Lhpz;

    .line 78
    iget-object v0, p0, Lctd;->binder:Lilh;

    const-class v1, Liad;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liad;

    iput-object v0, p0, Lctd;->c:Liad;

    .line 79
    return-void
.end method
