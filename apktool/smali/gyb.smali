.class public final Lgyb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GR::",
        "Lavb;",
        "R::",
        "Lfim;",
        ">",
        "Ljava/lang/Object;",
        "Lfin",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lgxq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgxq",
            "<TGR;>;"
        }
    .end annotation
.end field

.field private final b:Lgyh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgyh",
            "<TGR;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgxq;Lgyh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgxq",
            "<TGR;>;",
            "Lgyh",
            "<TGR;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgyb;->a:Lgxq;

    .line 23
    iput-object p2, p0, Lgyb;->b:Lgyh;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lfim;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lgyb;->a:Lgxq;

    iget-object v1, p0, Lgyb;->b:Lgyh;

    invoke-interface {v1, p1}, Lgyh;->a(Lfim;)Lavb;

    move-result-object v1

    invoke-interface {v0, v1}, Lgxq;->a(Lavb;)V

    .line 29
    return-void
.end method
