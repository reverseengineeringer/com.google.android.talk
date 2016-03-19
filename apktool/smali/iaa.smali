.class final Liaa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Liaj;

.field final b:Ljava/lang/Runnable;

.field final synthetic c:Lhzy;


# direct methods
.method constructor <init>(Lhzy;Liaj;)V
    .locals 1

    .prologue
    .line 80
    iput-object p1, p0, Liaa;->c:Lhzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p2}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liaj;

    iput-object v0, p0, Liaa;->a:Liaj;

    .line 82
    new-instance v0, Liab;

    invoke-direct {v0, p0, p1, p2}, Liab;-><init>(Liaa;Lhzy;Liaj;)V

    invoke-static {v0}, Ljua;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Liaa;->b:Ljava/lang/Runnable;

    .line 89
    return-void
.end method
