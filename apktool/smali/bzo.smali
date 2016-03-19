.class final Lbzo;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbzn;


# direct methods
.method constructor <init>(Lbzn;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lbzo;->a:Lbzn;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lbzo;->a:Lbzn;

    invoke-virtual {v0}, Lbzn;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbzo;->a:Lbzn;

    invoke-virtual {v0}, Lbzn;->notifyDataSetInvalidated()V

    .line 69
    return-void
.end method
