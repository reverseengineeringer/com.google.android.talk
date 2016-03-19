.class final Loi;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Log;


# direct methods
.method constructor <init>(Log;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Loi;->a:Log;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Loi;->a:Log;

    const/4 v1, 0x1

    iput-boolean v1, v0, Log;->a:Z

    .line 473
    iget-object v0, p0, Loi;->a:Log;

    invoke-virtual {v0}, Log;->notifyDataSetChanged()V

    .line 474
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Loi;->a:Log;

    const/4 v1, 0x0

    iput-boolean v1, v0, Log;->a:Z

    .line 479
    iget-object v0, p0, Loi;->a:Log;

    invoke-virtual {v0}, Log;->notifyDataSetInvalidated()V

    .line 480
    return-void
.end method
