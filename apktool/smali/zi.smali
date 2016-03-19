.class final Lzi;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lza;


# direct methods
.method constructor <init>(Lza;)V
    .locals 0

    .prologue
    .line 1769
    iput-object p1, p0, Lzi;->a:Lza;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lzi;->a:Lza;

    invoke-virtual {v0}, Lza;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lzi;->a:Lza;

    invoke-virtual {v0}, Lza;->c()V

    .line 1776
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lzi;->a:Lza;

    invoke-virtual {v0}, Lza;->k()V

    .line 1781
    return-void
.end method
