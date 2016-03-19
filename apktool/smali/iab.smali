.class final Liab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhzy;

.field final synthetic b:Liaj;

.field final synthetic c:Liaa;


# direct methods
.method constructor <init>(Liaa;Lhzy;Liaj;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Liab;->c:Liaa;

    iput-object p2, p0, Liab;->a:Lhzy;

    iput-object p3, p0, Liab;->b:Liaj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Liab;->c:Liaa;

    iget-object v0, v0, Liaa;->c:Lhzy;

    .line 1037
    iget-object v0, v0, Lhzy;->b:Liaf;

    .line 85
    iget-object v1, p0, Liab;->c:Liaa;

    iget-object v1, v1, Liaa;->c:Lhzy;

    .line 2037
    iget-object v1, v1, Lhzy;->a:Lba;

    .line 85
    invoke-virtual {v1}, Lba;->C_()Lbg;

    move-result-object v1

    iget-object v2, p0, Liab;->b:Liaj;

    iget-object v3, p0, Liab;->c:Liaa;

    iget-object v3, v3, Liaa;->c:Lhzy;

    iget-object v3, v3, Lhzy;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Liaf;->a(Lbg;Liaj;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Liab;->c:Liaa;

    iget-object v0, v0, Liaa;->c:Lhzy;

    .line 3037
    const/4 v1, 0x0

    iput-object v1, v0, Lhzy;->d:Liaa;

    .line 87
    return-void
.end method
