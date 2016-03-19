.class final Lhcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lhci;


# direct methods
.method constructor <init>(Lhci;Z)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lhcm;->b:Lhci;

    iput-boolean p2, p0, Lhcm;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 826
    iget-object v0, p0, Lhcm;->b:Lhci;

    .line 1121
    iget-object v0, v0, Lhci;->c:Lhcs;

    .line 826
    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lhcm;->b:Lhci;

    iget-object v1, p0, Lhcm;->b:Lhci;

    .line 2121
    iget-object v1, v1, Lhci;->c:Lhcs;

    .line 827
    invoke-virtual {v1}, Lhcs;->m()Lhip;

    move-result-object v1

    new-instance v2, Lhij;

    iget-boolean v3, p0, Lhcm;->a:Z

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lhij;-><init>(ZLhil;)V

    invoke-static {v0, v1, v2}, Lhci;->a(Lhci;Lhil;Latn;)V

    .line 829
    :cond_0
    return-void
.end method
