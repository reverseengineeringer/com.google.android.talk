.class final Lhdj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhcd;

.field final synthetic b:Lhdi;


# direct methods
.method constructor <init>(Lhdi;Lhcd;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lhdj;->b:Lhdi;

    iput-object p2, p0, Lhdj;->a:Lhcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lhdj;->a:Lhcd;

    invoke-virtual {v0}, Lhcd;->d()Lhci;

    move-result-object v0

    iget-object v1, p0, Lhdj;->b:Lhdi;

    .line 1018
    iget-object v1, v1, Lhdi;->b:Lhdm;

    .line 68
    invoke-virtual {v0, v1}, Lhci;->a(Lhcu;)V

    .line 69
    return-void
.end method
