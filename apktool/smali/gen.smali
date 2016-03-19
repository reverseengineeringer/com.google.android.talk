.class public final Lgen;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgdw;


# direct methods
.method constructor <init>(Lgdw;)V
    .locals 0

    .prologue
    .line 3000
    iput-object p1, p0, Lgen;->a:Lgdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Lgeb;
    .locals 1

    .prologue
    .line 4000
    iget-object v0, p0, Lgen;->a:Lgdw;

    invoke-virtual {v0}, Lgdw;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgeb;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1000
    invoke-direct {p0}, Lgen;->c()Lgeb;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Lgen;->a:Lgdw;

    invoke-static {v0}, Lgdw;->a(Lgdw;)V

    return-void
.end method
