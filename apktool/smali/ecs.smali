.class public final Lecs;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leyu",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbfd;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfd;",
            "Ljava/util/List",
            "<",
            "Leyu",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 15
    iput-object p2, p0, Lecs;->a:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ldpv;

    iget-object v1, p0, Lecs;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ldpv;-><init>(Ljava/util/List;)V

    .line 22
    invoke-virtual {p0, v0}, Lecs;->a(Leff;)V

    .line 23
    return-void
.end method
