.class final Lejo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijh;


# instance fields
.field final synthetic a:Lejl;


# direct methods
.method constructor <init>(Lejl;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lejo;->a:Lejl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 118
    iget-object v0, p0, Lejo;->a:Lejl;

    .line 1038
    iput-boolean v4, v0, Lejl;->d:Z

    .line 119
    iget-object v0, p0, Lejo;->a:Lejl;

    .line 2038
    iget-object v0, v0, Lejl;->c:Lhty;

    .line 119
    new-instance v1, Lejq;

    iget-object v2, p0, Lejo;->a:Lejl;

    .line 3038
    iget-object v2, v2, Lejl;->context:Lill;

    .line 119
    iget-object v3, p0, Lejo;->a:Lejl;

    .line 4038
    iget-object v3, v3, Lejl;->a:Lhpu;

    .line 119
    invoke-interface {v3}, Lhpu;->a()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lejq;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lhty;->a(Lhtu;)V

    .line 120
    return v4
.end method
