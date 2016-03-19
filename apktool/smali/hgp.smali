.class final Lhgp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhgn;

.field final synthetic b:Lhla;

.field final synthetic c:Lhgo;


# direct methods
.method constructor <init>(Lhgo;Lhgn;Lhla;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lhgp;->c:Lhgo;

    iput-object p2, p0, Lhgp;->a:Lhgn;

    iput-object p3, p0, Lhgp;->b:Lhla;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 130
    const-string v0, "vclib"

    const-string v1, "bindVideoToSurface after unbind source=%s, surface=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lhgp;->a:Lhgn;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lhgp;->b:Lhla;

    aput-object v4, v2, v3

    .line 1077
    const/4 v3, 0x3

    invoke-static {v3, v0, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lhgp;->a:Lhgn;

    iget-object v1, p0, Lhgp;->b:Lhla;

    invoke-virtual {v0, v1}, Lhgn;->a(Lhla;)V

    .line 133
    iget-object v0, p0, Lhgp;->c:Lhgo;

    .line 2026
    iget-object v0, v0, Lhgo;->b:Ljava/util/List;

    .line 133
    iget-object v1, p0, Lhgp;->a:Lhgn;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method
