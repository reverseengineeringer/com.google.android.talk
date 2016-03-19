.class final Lhgm;
.super Lhcv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhge;


# direct methods
.method constructor <init>(Lhge;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lhgm;->a:Lhge;

    invoke-direct {p0}, Lhcv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhcs;)V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lhgm;->a:Lhge;

    .line 1024
    const/4 v1, 0x1

    iput-boolean v1, v0, Lhge;->h:Z

    .line 508
    iget-object v0, p0, Lhgm;->a:Lhge;

    .line 2024
    invoke-virtual {v0}, Lhge;->j()V

    .line 509
    return-void
.end method
