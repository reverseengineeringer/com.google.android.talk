.class public final Lfzr;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfib",
            "<",
            "Lfzz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfib;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfib",
            "<",
            "Lfzz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzr;->a:Lfib;

    return-void
.end method


# virtual methods
.method public a(Lfic;)Lfij;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            ")",
            "Lfij",
            "<",
            "Lfzs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    new-instance v0, Lgcq;

    iget-object v1, p0, Lfzr;->a:Lfib;

    invoke-direct {v0, p0, v1, p1}, Lgcq;-><init>(Lfzr;Lfib;Lfic;)V

    invoke-interface {p1, v0}, Lfic;->a(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method
