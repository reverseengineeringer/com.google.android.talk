.class final Lhdl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhdi;


# direct methods
.method constructor <init>(Lhdi;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lhdl;->a:Lhdi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lhdl;->a:Lhdi;

    .line 1018
    iget-object v0, v0, Lhdi;->a:Lhcd;

    .line 194
    invoke-virtual {v0}, Lhcd;->d()Lhci;

    move-result-object v0

    iget-object v1, p0, Lhdl;->a:Lhdi;

    .line 2018
    iget-object v1, v1, Lhdi;->b:Lhdm;

    .line 194
    invoke-virtual {v0, v1}, Lhci;->b(Lhcu;)V

    .line 195
    return-void
.end method
