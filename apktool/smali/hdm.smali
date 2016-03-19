.class final Lhdm;
.super Lhcv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhdi;


# direct methods
.method constructor <init>(Lhdi;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lhdm;->a:Lhdi;

    invoke-direct {p0}, Lhcv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkjs;)V
    .locals 2

    .prologue
    .line 222
    if-eqz p1, :cond_0

    iget-object v0, p1, Lkjs;->c:Lkjt;

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lhdm;->a:Lhdi;

    iget-object v0, v0, Lhdi;->d:Lhee;

    new-instance v1, Lhdn;

    invoke-direct {v1, p0, p1}, Lhdn;-><init>(Lhdm;Lkjs;)V

    invoke-virtual {v0, v1}, Lhee;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
