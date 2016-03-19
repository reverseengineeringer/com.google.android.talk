.class final Lxj;
.super Lze;
.source "SourceFile"


# instance fields
.field final synthetic a:Lxl;

.field final synthetic b:Lxi;


# direct methods
.method constructor <init>(Lxi;Landroid/view/View;Lxl;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lxj;->b:Lxi;

    iput-object p3, p0, Lxj;->a:Lxl;

    invoke-direct {p0, p2}, Lze;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Lza;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lxj;->a:Lxl;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lxj;->b:Lxi;

    .line 1065
    iget-object v0, v0, Lxi;->b:Lxl;

    .line 262
    invoke-virtual {v0}, Lxl;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lxj;->b:Lxi;

    .line 2065
    iget-object v0, v0, Lxi;->b:Lxl;

    .line 263
    invoke-virtual {v0}, Lxl;->c()V

    .line 265
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
